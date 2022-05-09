; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/sge.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/sge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cxgb4_map_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_map_skb\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_map_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_map_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_map_skb\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_map_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_reclaim_completed_tx\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_reclaim_completed_tx\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_reclaim_completed_tx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_reclaim_completed_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_reclaim_completed_tx\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_reclaim_completed_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_write_sgl\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_write_sgl\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_write_sgl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_write_sgl:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_write_sgl\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_write_sgl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_write_partial_sgl\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_write_partial_sgl\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_write_partial_sgl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_write_partial_sgl:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_write_partial_sgl\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_write_partial_sgl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_ring_tx_db\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_ring_tx_db\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_ring_tx_db\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_ring_tx_db:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_ring_tx_db\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_ring_tx_db:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_inline_tx_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_inline_tx_skb\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_inline_tx_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_inline_tx_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_inline_tx_skb\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_inline_tx_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_ofld_send\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_ofld_send\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_ofld_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_ofld_send:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_ofld_send\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_ofld_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_immdata_send\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_immdata_send\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_immdata_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_immdata_send:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_immdata_send\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_immdata_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_crypto_send\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_crypto_send\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_crypto_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_crypto_send:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_crypto_send\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_crypto_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_pktgl_to_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_pktgl_to_skb\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_pktgl_to_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_pktgl_to_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_pktgl_to_skb\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_pktgl_to_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.174 }
%struct.atomic_t = type { i32 }
%union.anon.174 = type { i32 }
%struct.sk_buff = type { %union.anon.52, %union.anon.55, %union.anon.56, [48 x i8], %union.anon.57, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.59, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr, %union.anon.54 }
%union.anon.54 = type { ptr }
%union.anon.55 = type { ptr }
%union.anon.56 = type { i64 }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { i32, ptr }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.61, i32, i32, i32, i16, i16, %union.anon.63, i32, %union.anon.64, %union.anon.65, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.61 = type { i32 }
%union.anon.63 = type { i32 }
%union.anon.64 = type { i32 }
%union.anon.65 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.172, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.172 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i16, i16, ptr, i32 }
%struct.tx_sw_desc = type { ptr, [18 x i32] }
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
%struct.sge_ctrl_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, [63 x i8] }
%struct.sk_buff_head = type { %union.anon.108, i32, %struct.spinlock }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.203, i32 }
%union.anon.203 = type { ptr }
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
%struct.sge_qstat = type { i32, i16, i16 }
%struct.ulptx_sge_pair = type { [2 x i32], [2 x i64] }
%struct.ulptx_sgl = type { i32, i32, i64, [0 x %struct.ulptx_sge_pair] }
%struct.tx_desc = type { [8 x i64] }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.112 }
%union.anon.112 = type { [4 x i32] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sge_eosw_txq = type { %struct.spinlock, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.tasklet_struct, %struct.completion }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.179, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.201, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.179 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.201 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.fw_eth_tx_pkt_vm_wr = type { i32, i32, [2 x i32], %union.anon.207 }
%union.anon.207 = type { %struct.anon.208 }
%struct.anon.208 = type { [6 x i8], [6 x i8], i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.cpl_tx_pkt_lso_core = type { i32, i16, i16, i32, i32 }
%struct.cpl_tx_pkt_core = type { i32, i16, i16, i64 }
%struct.cxgb4_tc_mqprio = type { %struct.refcount_struct, %struct.mutex, ptr }
%struct.cxgb4_tc_port_mqprio = type { i32, %struct.tc_mqprio_qopt_offload, ptr, [16 x i8] }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.210, i32, i32, i8, i8 }
%struct.anon.210 = type { i32, i32 }
%struct.cxgb4_uld_info = type { [16 x i8], ptr, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon.42, %union.anon.44, %union.anon.45, i16, i8, i8, i32, %union.anon.47, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.113, [0 x i32], %union.anon.114, i16, i16, %union.anon.115, %struct.refcount_struct, [0 x i32], %union.anon.116 }
%union.anon.42 = type { i64 }
%union.anon.44 = type { i32 }
%union.anon.45 = type { i32 }
%union.anon.47 = type { %struct.hlist_node }
%union.anon.113 = type { i32 }
%union.anon.114 = type { %struct.hlist_node }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.126, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.127, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.128, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.126 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.127 = type { ptr }
%union.anon.128 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.fw_eth_tx_pkt_wr = type { i32, i32, i64 }
%struct.cpl_tx_tnl_lso = type { i32, i16, i16, i64, i32, i16, i16, i32, i32 }
%struct.fw_eth_tx_eo_wr = type { i32, i32, i64, %union.fw_eth_tx_eo }
%union.fw_eth_tx_eo = type { %struct.fw_eth_tx_eo_udpseg }
%struct.fw_eth_tx_eo_udpseg = type { i8, i8, i16, i8, i8, i16, i16, i16, i32 }
%struct.eotid_entry = type { ptr }
%struct.fw_flowc_wr = type { i32, i32, [0 x %struct.fw_flowc_mnemval] }
%struct.fw_flowc_mnemval = type { i8, [3 x i8], i32 }
%struct.sge_ofld_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_ofld_stats, ptr, [68 x i8] }
%struct.sge_ofld_stats = type { i32, i32, i32, i32 }
%struct.sge_eohw_txq = type { %struct.spinlock, %struct.sge_txq, ptr, i32, i32, i32, i32, i32 }
%struct.sge_uld_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, i8, i32, [56 x i8] }
%struct.fw_wr_hdr = type { i32, i32 }
%struct.pkt_gl = type { i64, [17 x %struct.page_frag], ptr, i32, i32 }
%struct.cpl_fw4_msg = type { i8, i8, i16, i32, [2 x i64] }
%struct.cpl_sge_egr_update = type { i32, i16, i16 }
%struct.cpl_rx_pkt = type { %struct.rss_header, i8, i8, i16, i16, i16, i32, i16, i16 }
%struct.rss_header = type { i8, i8, i16, i32 }
%struct.port_info = type { ptr, i16, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i8, %struct.link_config, ptr, %struct.port_stats, %struct.port_dcb_info, %struct.cxgb_fcoe, i8, %struct.hwtstamp_config, i8, ptr, i32, i8, i8, i8, i8, i8, i16, i16, i32, %struct.mutex, %struct.cxgb4_ethtool_lb_test }
%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.port_dcb_info = type { i32, i32, i32, i8, i32, i8, i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x %struct.app_priority] }
%struct.app_priority = type { i8, i8, i16 }
%struct.cxgb_fcoe = type { i8 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cxgb4_ethtool_lb_test = type { %struct.completion, i32, i32 }
%struct.cpl_fw4_ack = type { %union.opcode_tid, i8, [2 x i8], i8, i32, i32, i64 }
%union.opcode_tid = type { i32 }
%struct.fw_iq_cmd = type { i32, i32, i16, i16, i16, i16, i32, i16, i16, i64, i32, i16, i16, i64, i32, i16, i16, i64 }
%struct.rsp_ctrl = type { i32, i32, %union.anon.214 }
%union.anon.214 = type { i64 }
%struct.rx_sw_desc = type { ptr, i32 }
%struct.fw_eq_eth_cmd = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.fw_eq_ctrl_cmd = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.fw_eq_ofld_cmd = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.msix_info = type { i16, [26 x i8], i32, ptr }

@__kstrtab_cxgb4_map_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_map_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_map_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_map_skb to i32), ptr @__kstrtab_cxgb4_map_skb, ptr @__kstrtabns_cxgb4_map_skb }, section "___ksymtab+cxgb4_map_skb", align 4
@__kstrtab_cxgb4_reclaim_completed_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_reclaim_completed_tx = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_reclaim_completed_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_reclaim_completed_tx to i32), ptr @__kstrtab_cxgb4_reclaim_completed_tx, ptr @__kstrtabns_cxgb4_reclaim_completed_tx }, section "___ksymtab+cxgb4_reclaim_completed_tx", align 4
@__kstrtab_cxgb4_write_sgl = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_write_sgl = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_write_sgl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_write_sgl to i32), ptr @__kstrtab_cxgb4_write_sgl, ptr @__kstrtabns_cxgb4_write_sgl }, section "___ksymtab+cxgb4_write_sgl", align 4
@__kstrtab_cxgb4_write_partial_sgl = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_write_partial_sgl = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_write_partial_sgl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_write_partial_sgl to i32), ptr @__kstrtab_cxgb4_write_partial_sgl, ptr @__kstrtabns_cxgb4_write_partial_sgl }, section "___ksymtab+cxgb4_write_partial_sgl", align 4
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/chelsio/cxgb4/sge.c\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_cxgb4_ring_tx_db = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_ring_tx_db = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_ring_tx_db = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_ring_tx_db to i32), ptr @__kstrtab_cxgb4_ring_tx_db, ptr @__kstrtabns_cxgb4_ring_tx_db }, section "___ksymtab+cxgb4_ring_tx_db", align 4
@__kstrtab_cxgb4_inline_tx_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_inline_tx_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_inline_tx_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_inline_tx_skb to i32), ptr @__kstrtab_cxgb4_inline_tx_skb, ptr @__kstrtabns_cxgb4_inline_tx_skb }, section "___ksymtab+cxgb4_inline_tx_skb", align 4
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CHELSIO_SELFTEST\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_cxgb4_ofld_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_ofld_send = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_ofld_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_ofld_send to i32), ptr @__kstrtab_cxgb4_ofld_send, ptr @__kstrtabns_cxgb4_ofld_send }, section "___ksymtab+cxgb4_ofld_send", align 4
@__kstrtab_cxgb4_immdata_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_immdata_send = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_immdata_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_immdata_send to i32), ptr @__kstrtab_cxgb4_immdata_send, ptr @__kstrtabns_cxgb4_immdata_send }, section "___ksymtab+cxgb4_immdata_send", align 4
@__kstrtab_cxgb4_crypto_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_crypto_send = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_crypto_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_crypto_send to i32), ptr @__kstrtab_cxgb4_crypto_send, ptr @__kstrtabns_cxgb4_crypto_send }, section "___ksymtab+cxgb4_crypto_send", align 4
@__kstrtab_cxgb4_pktgl_to_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_pktgl_to_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_pktgl_to_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_pktgl_to_skb to i32), ptr @__kstrtab_cxgb4_pktgl_to_skb, ptr @__kstrtabns_cxgb4_pktgl_to_skb }, section "___ksymtab+cxgb4_pktgl_to_skb", align 4
@t4_sge_alloc_rxq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 4543, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Failed to set Congestion Manager Context for Ingress Queue %d: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"t4_sge_alloc_rxq\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@t4_sge_alloc_rxq._entry_ptr = internal global ptr @t4_sge_alloc_rxq._entry, section ".printk_index", align 4
@t4_sge_alloc_ethofld_txq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&txq->lock\00", [21 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@t4_sge_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 5218, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported Chip version %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"t4_sge_init\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@t4_sge_init._entry_ptr = internal global ptr @t4_sge_init._entry, section ".printk_index", align 4
@t4_sge_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&s->rx_timer)\00", [17 x i8] zeroinitializer }, align 32
@t4_sge_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&s->tx_timer)\00", [17 x i8] zeroinitializer }, align 32
@t4_sge_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&s->intrq_lock\00", [17 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@cxgb4_vf_eth_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 1882, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: TX ring %u full while queue awake!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxgb4_vf_eth_xmit\00", [46 x i8] zeroinitializer }, align 32
@cxgb4_vf_eth_xmit._entry_ptr = internal global ptr @cxgb4_vf_eth_xmit._entry, section ".printk_index", align 4
@cxgb4_eth_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 1570, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Tx ring %u full while queue awake!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxgb4_eth_xmit\00", [17 x i8] zeroinitializer }, align 32
@cxgb4_eth_xmit._entry_ptr = internal global ptr @cxgb4_eth_xmit._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@t4_tx_completion_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 3615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: unexpected FW4/CPL %#x on Rx queue\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"t4_tx_completion_handler\00", [39 x i8] zeroinitializer }, align 32
@t4_tx_completion_handler._entry_ptr = internal global ptr @t4_tx_completion_handler._entry, section ".printk_index", align 4
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@timer_pkt_quota = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 1, i32 2, i32 3, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@init_txq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&q->db_lock\00", [20 x i8] zeroinitializer }, align 32
@t4_sge_init_soft._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 5091, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad SGE CPL MODE\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"t4_sge_init_soft\00", [47 x i8] zeroinitializer }, align 32
@t4_sge_init_soft._entry_ptr = internal global ptr @t4_sge_init_soft._entry, section ".printk_index", align 4
@t4_sge_init_soft._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str, i32 5125, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bad SGE FL page buffer sizes [%d, %d]\0A\00", [57 x i8] zeroinitializer }, align 32
@t4_sge_init_soft._entry_ptr.35 = internal global ptr @t4_sge_init_soft._entry.33, section ".printk_index", align 4
@t4_sge_init_soft._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str, i32 5134, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad SGE FL MTU sizes [%d, %d]\0A\00", [33 x i8] zeroinitializer }, align 32
@t4_sge_init_soft._entry_ptr.38 = internal global ptr @t4_sge_init_soft._entry.36, section ".printk_index", align 4
@switch.table.t4_sge_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 14, i32 16], [20 x i8] zeroinitializer }, align 32
@switch.table.t4_sge_init.39 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 63, i32 63, i32 255], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 165, i64 192]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1059, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 2722, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 4541, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 4842, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 5217, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 5228, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 5229, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 5231, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 326, i32 6 }
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 598, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1880, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1568, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 87, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1160, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 3614, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 717, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"timer_pkt_quota\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 188, i32 12 }
@___asan_gen_.167 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1984, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 4577, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 5091, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 5124, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [44 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/sge.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 5133, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [25 x i8] c"switch.table.t4_sge_init\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [28 x i8] c"switch.table.t4_sge_init.39\00", align 1
@llvm.compiler.used = appending global [67 x ptr] [ptr @__ksymtab_cxgb4_crypto_send, ptr @__ksymtab_cxgb4_immdata_send, ptr @__ksymtab_cxgb4_inline_tx_skb, ptr @__ksymtab_cxgb4_map_skb, ptr @__ksymtab_cxgb4_ofld_send, ptr @__ksymtab_cxgb4_pktgl_to_skb, ptr @__ksymtab_cxgb4_reclaim_completed_tx, ptr @__ksymtab_cxgb4_ring_tx_db, ptr @__ksymtab_cxgb4_write_partial_sgl, ptr @__ksymtab_cxgb4_write_sgl, ptr @cxgb4_eth_xmit._entry, ptr @cxgb4_eth_xmit._entry_ptr, ptr @cxgb4_vf_eth_xmit._entry, ptr @cxgb4_vf_eth_xmit._entry_ptr, ptr @t4_sge_alloc_rxq._entry, ptr @t4_sge_alloc_rxq._entry_ptr, ptr @t4_sge_init._entry, ptr @t4_sge_init._entry_ptr, ptr @t4_sge_init_soft._entry, ptr @t4_sge_init_soft._entry.33, ptr @t4_sge_init_soft._entry.36, ptr @t4_sge_init_soft._entry_ptr, ptr @t4_sge_init_soft._entry_ptr.35, ptr @t4_sge_init_soft._entry_ptr.38, ptr @t4_tx_completion_handler._entry, ptr @t4_tx_completion_handler._entry_ptr, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @t4_sge_alloc_ethofld_txq.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @t4_sge_init.__key, ptr @.str.11, ptr @t4_sge_init.__key.12, ptr @.str.13, ptr @t4_sge_init.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @init_completion.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @timer_pkt_quota, ptr @skb_queue_head_init.__key, ptr @.str.28, ptr @init_txq.__key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @switch.table.t4_sge_init, ptr @switch.table.t4_sge_init.39], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_sge_alloc_rxq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_sge_alloc_ethofld_txq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_sge_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_sge_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_sge_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_sge_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_vf_eth_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_eth_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_tx_completion_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_pkt_quota to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_txq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_sge_init_soft._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_sge_init_soft._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_sge_init_soft._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.t4_sge_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.t4_sge_init.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_map_skb(ptr noundef %dev, ptr nocapture noundef readonly %skb, ptr nocapture noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #17
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !112

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #17
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #17
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #17
  br label %cleanup

dma_map_single_attrs.exit:                        ; preds = %entry
  %sub.i = sub i32 %3, %5
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %1, i32 noundef %sub.i) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  %12 = ptrtoint ptr %1 to i32
  %sub.i43 = add i32 %12, 1073741824
  %shr.i = lshr i32 %sub.i43, 12
  %add.ptr.i = getelementptr %struct.page, ptr %11, i32 %shr.i
  %and.i = and i32 %12, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #17
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call41.i, ptr %addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i, align 4
  %frags = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 12
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nr_frags, align 2
  %idxprom = zext i8 %17 to i32
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %15, i32 0, i32 12, i32 %idxprom
  %cmp54 = icmp ult ptr %frags, %arrayidx
  br i1 %cmp54, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %fp.056 = phi ptr [ %incdec.ptr11, %for.inc.for.body_crit_edge ], [ %frags, %if.end.for.body_crit_edge ]
  %addr.addr.055 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %addr, %if.end.for.body_crit_edge ]
  %bv_len.i = getelementptr inbounds %struct.bio_vec, ptr %fp.056, i32 0, i32 1
  %18 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bv_len.i, align 4
  %20 = ptrtoint ptr %fp.056 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fp.056, align 4
  %bv_offset.i.i = getelementptr inbounds %struct.bio_vec, ptr %fp.056, i32 0, i32 2
  %22 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %21, i32 noundef %23, i32 noundef %19, i32 noundef 1, i32 noundef 0) #17
  %incdec.ptr = getelementptr i32, ptr %addr.addr.055, i32 1
  %24 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call2.i, ptr %incdec.ptr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call2.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i44.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i44.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  %cmp1557 = icmp ugt ptr %fp.056, %frags
  br i1 %cmp1557, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

for.inc:                                          ; preds = %for.body
  %incdec.ptr11 = getelementptr %struct.bio_vec, ptr %fp.056, i32 1
  %cmp = icmp ult ptr %incdec.ptr11, %arrayidx
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %fp.159 = phi ptr [ %incdec.ptr12, %while.body.while.body_crit_edge ], [ %fp.056, %while.cond.preheader.while.body_crit_edge ]
  %addr.addr.158 = phi ptr [ %incdec.ptr16, %while.body.while.body_crit_edge ], [ %incdec.ptr, %while.cond.preheader.while.body_crit_edge ]
  %incdec.ptr12 = getelementptr %struct.bio_vec, ptr %fp.159, i32 -1
  %incdec.ptr16 = getelementptr i32, ptr %addr.addr.158, i32 -1
  %25 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %incdec.ptr16, align 4
  %bv_len.i46 = getelementptr %struct.bio_vec, ptr %fp.159, i32 -1, i32 1
  %27 = ptrtoint ptr %bv_len.i46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bv_len.i46, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %26, i32 noundef %28, i32 noundef 1, i32 noundef 0) #17
  %cmp15 = icmp ugt ptr %incdec.ptr12, %frags
  br i1 %cmp15, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %addr.addr.1.lcssa = phi ptr [ %incdec.ptr, %while.cond.preheader.while.end_crit_edge ], [ %incdec.ptr16, %while.body.while.end_crit_edge ]
  %arrayidx18 = getelementptr i32, ptr %addr.addr.1.lcssa, i32 -1
  %29 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx18, align 4
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  %33 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i, align 8
  %sub.i49 = sub i32 %32, %34
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %30, i32 noundef %sub.i49, i32 noundef 1, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dma_map_single_attrs.exit.cleanup_crit_edge, %dma_map_single_attrs.exit.thread
  %retval.0 = phi i32 [ -12, %while.end ], [ -12, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_tx_desc(ptr nocapture noundef readonly %adap, ptr nocapture noundef %q, i32 noundef %n, i1 noundef zeroext %unmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cidx1 = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 3
  %0 = ptrtoint ptr %cidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cidx1, align 4
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not32 = icmp eq i32 %n, 0
  br i1 %tobool.not32, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdesc, align 4
  %arrayidx = getelementptr %struct.tx_sw_desc, ptr %3, i32 %1
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %size = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %while.body.lr.ph
  %dec36.in = phi i32 [ %n, %while.body.lr.ph ], [ %dec36, %if.end16.while.body_crit_edge ]
  %d.034 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %d.1, %if.end16.while.body_crit_edge ]
  %cidx.033 = phi i32 [ %1, %while.body.lr.ph ], [ %cidx.1, %if.end16.while.body_crit_edge ]
  %dec36 = add i32 %dec36.in, -1
  %4 = ptrtoint ptr %d.034 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d.034, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %while.body.if.end13_crit_edge, label %if.then

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then:                                          ; preds = %while.body
  br i1 %unmap, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %addr = getelementptr inbounds %struct.tx_sw_desc, ptr %d.034, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then6

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev_dev, align 16
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %11, %13
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %7, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #17
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i, align 4
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 12
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nr_frags.i, align 2
  %idxprom.i = zext i8 %17 to i32
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %15, i32 0, i32 12, i32 %idxprom.i
  %cmp13.i = icmp ult ptr %frags.i, %arrayidx.i
  br i1 %cmp13.i, label %if.then6.for.body.i_crit_edge, label %if.then6.unmap_skb.exit_crit_edge

if.then6.unmap_skb.exit_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %unmap_skb.exit

if.then6.for.body.i_crit_edge:                    ; preds = %if.then6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then6.for.body.i_crit_edge
  %addr.pn15.i = phi ptr [ %addr.addr.0.i, %for.body.i.for.body.i_crit_edge ], [ %addr, %if.then6.for.body.i_crit_edge ]
  %fp.014.i = phi ptr [ %incdec.ptr5.i, %for.body.i.for.body.i_crit_edge ], [ %frags.i, %if.then6.for.body.i_crit_edge ]
  %addr.addr.0.i = getelementptr i32, ptr %addr.pn15.i, i32 1
  %18 = ptrtoint ptr %addr.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.addr.0.i, align 4
  %bv_len.i.i = getelementptr inbounds %struct.bio_vec, ptr %fp.014.i, i32 0, i32 1
  %20 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bv_len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #17
  %incdec.ptr5.i = getelementptr %struct.bio_vec, ptr %fp.014.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr5.i, %arrayidx.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.unmap_skb.exit_crit_edge

for.body.i.unmap_skb.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unmap_skb.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

unmap_skb.exit:                                   ; preds = %for.body.i.unmap_skb.exit_crit_edge, %if.then6.unmap_skb.exit_crit_edge
  %22 = call ptr @memset(ptr %addr, i32 0, i32 72)
  br label %if.end

if.end:                                           ; preds = %unmap_skb.exit, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %23 = ptrtoint ptr %d.034 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d.034, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %24, i32 noundef 0) #17
  %25 = ptrtoint ptr %d.034 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %d.034, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end, %while.body.if.end13_crit_edge
  %incdec.ptr = getelementptr %struct.tx_sw_desc, ptr %d.034, i32 1
  %inc = add i32 %cidx.033, 1
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %27)
  %cmp = icmp eq i32 %inc, %27
  br i1 %cmp, label %if.then14, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdesc, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end13.if.end16_crit_edge
  %cidx.1 = phi i32 [ 0, %if.then14 ], [ %inc, %if.end13.if.end16_crit_edge ]
  %d.1 = phi ptr [ %29, %if.then14 ], [ %incdec.ptr, %if.end13.if.end16_crit_edge ]
  %tobool.not = icmp eq i32 %dec36, 0
  br i1 %tobool.not, label %if.end16.while.end_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %entry.while.end_crit_edge
  %cidx.0.lcssa = phi i32 [ %1, %entry.while.end_crit_edge ], [ %cidx.1, %if.end16.while.end_crit_edge ]
  %30 = ptrtoint ptr %cidx1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cidx.0.lcssa, ptr %cidx1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_reclaim_completed_tx(ptr nocapture noundef readonly %adap, ptr nocapture noundef %q, i1 noundef zeroext %unmap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %stat.i.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stat.i.i, align 4
  %cidx.i.i = getelementptr inbounds %struct.sge_qstat, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cidx.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load volatile i16, ptr %cidx.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %cidx1.i.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 3
  %4 = ptrtoint ptr %cidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cidx1.i.i, align 4
  %sub.i.i = sub i32 %conv.i.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %entry.reclaimable.exit.i_crit_edge

entry.reclaimable.exit.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %reclaimable.exit.i

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %size.i.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 2
  %6 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %7, %sub.i.i
  br label %reclaimable.exit.i

reclaimable.exit.i:                               ; preds = %cond.true.i.i, %entry.reclaimable.exit.i_crit_edge
  %cond.i.i = phi i32 [ %add.i.i, %cond.true.i.i ], [ %sub.i.i, %entry.reclaimable.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %tobool.not.i = icmp eq i32 %cond.i.i, 0
  br i1 %tobool.not.i, label %reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge, label %if.then.i

reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge: ; preds = %reclaimable.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %reclaim_completed_tx.exit

if.then.i:                                        ; preds = %reclaimable.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %8 = tail call i32 @llvm.smin.i32(i32 %cond.i.i, i32 32) #17
  tail call void @free_tx_desc(ptr noundef %adap, ptr noundef %q, i32 noundef %8, i1 noundef zeroext %unmap) #17
  %9 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %q, align 4
  %sub.i = sub i32 %10, %8
  store i32 %sub.i, ptr %q, align 4
  br label %reclaim_completed_tx.exit

reclaim_completed_tx.exit:                        ; preds = %if.then.i, %reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_write_sgl(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %q, ptr noundef %sgl, ptr noundef %end, i32 noundef %start, ptr nocapture noundef readonly %addr) #3 align 64 {
entry:
  %buf = alloca [9 x %struct.ulptx_sge_pair], align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %buf) #17
  %4 = call ptr @memset(ptr %buf, i32 255, i32 216)
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %start)
  %tobool.not = icmp eq i32 %sub.i, %start
  br i1 %tobool.not, label %if.else, label %if.then, !prof !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sub = sub i32 %sub.i, %start
  %len0 = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl, i32 0, i32 1
  %9 = ptrtoint ptr %len0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %len0, align 4
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %add = add i32 %11, %start
  %inc = add nuw nsw i32 %conv, 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %bv_len.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 0, i32 1
  %12 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_len.i, align 4
  %len07 = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl, i32 0, i32 1
  %14 = ptrtoint ptr %len07 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %len07, align 4
  %arrayidx8 = getelementptr i32, ptr %addr, i32 1
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv4.sink.in = phi i32 [ %16, %if.else ], [ %add, %if.then ]
  %nfrags.0 = phi i32 [ %conv, %if.else ], [ %inc, %if.then ]
  %conv4.sink = zext i32 %conv4.sink.in to i64
  %17 = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv4.sink, ptr %17, align 8
  %or = or i32 %nfrags.0, -2113929216
  %19 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %sgl, align 8
  %dec = add nsw i32 %nfrags.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end19, !prof !112

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %stat = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 10
  %20 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stat, align 4
  %cmp20 = icmp ult ptr %21, %end
  %sge = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl, i32 0, i32 3
  %cond = select i1 %cmp20, ptr %buf, ptr %sge
  %22 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nr_frags, align 2
  %conv24 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dec, i32 %conv24)
  %cmp25 = icmp ne i32 %dec, %conv24
  %conv26 = zext i1 %cmp25 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp27158.not = icmp eq i32 %dec, 1
  br i1 %cmp27158.not, label %if.end19.if.then51_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.if.then51_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then51

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end19.for.body_crit_edge
  %nfrags.1161 = phi i32 [ %sub49, %for.body.for.body_crit_edge ], [ %dec, %if.end19.for.body_crit_edge ]
  %to.0160 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %cond, %if.end19.for.body_crit_edge ]
  %i.0159 = phi i32 [ %inc44, %for.body.for.body_crit_edge ], [ %conv26, %if.end19.for.body_crit_edge ]
  %bv_len.i155 = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 %i.0159, i32 1
  %24 = ptrtoint ptr %bv_len.i155 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bv_len.i155, align 4
  %26 = ptrtoint ptr %to.0160 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %to.0160, align 8
  %inc35 = add i32 %i.0159, 1
  %bv_len.i156 = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 %inc35, i32 1
  %27 = ptrtoint ptr %bv_len.i156 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bv_len.i156, align 4
  %arrayidx39 = getelementptr [2 x i32], ptr %to.0160, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx39, align 4
  %arrayidx40 = getelementptr i32, ptr %addr, i32 %inc35
  %30 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx40, align 4
  %conv41 = zext i32 %31 to i64
  %addr42 = getelementptr inbounds %struct.ulptx_sge_pair, ptr %to.0160, i32 0, i32 1
  %32 = ptrtoint ptr %addr42 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv41, ptr %addr42, align 8
  %inc44 = add i32 %i.0159, 2
  %arrayidx45 = getelementptr i32, ptr %addr, i32 %inc44
  %33 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx45, align 4
  %conv46 = zext i32 %34 to i64
  %arrayidx48 = getelementptr %struct.ulptx_sge_pair, ptr %to.0160, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv46, ptr %arrayidx48, align 8
  %sub49 = add i32 %nfrags.1161, -2
  %incdec.ptr = getelementptr %struct.ulptx_sge_pair, ptr %to.0160, i32 1
  %cmp27 = icmp ugt i32 %sub49, 1
  br i1 %cmp27, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub49)
  %phi.cmp = icmp eq i32 %sub49, 0
  br i1 %phi.cmp, label %for.end.if.end64_crit_edge, label %for.end.if.then51_crit_edge

for.end.if.then51_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then51

for.end.if.end64_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

if.then51:                                        ; preds = %for.end.if.then51_crit_edge, %if.end19.if.then51_crit_edge
  %to.0.lcssa168 = phi ptr [ %incdec.ptr, %for.end.if.then51_crit_edge ], [ %cond, %if.end19.if.then51_crit_edge ]
  %i.0.lcssa167 = phi i32 [ %inc44, %for.end.if.then51_crit_edge ], [ %conv26, %if.end19.if.then51_crit_edge ]
  %bv_len.i157 = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 %i.0.lcssa167, i32 1
  %36 = ptrtoint ptr %bv_len.i157 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bv_len.i157, align 4
  %38 = ptrtoint ptr %to.0.lcssa168 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %to.0.lcssa168, align 8
  %arrayidx58 = getelementptr [2 x i32], ptr %to.0.lcssa168, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx58, align 4
  %add59 = add i32 %i.0.lcssa167, 1
  %arrayidx60 = getelementptr i32, ptr %addr, i32 %add59
  %40 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx60, align 4
  %conv61 = zext i32 %41 to i64
  %addr62 = getelementptr inbounds %struct.ulptx_sge_pair, ptr %to.0.lcssa168, i32 0, i32 1
  %42 = ptrtoint ptr %addr62 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv61, ptr %addr62, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then51, %for.end.if.end64_crit_edge
  %43 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stat, align 4
  %cmp66 = icmp ult ptr %44, %end
  br i1 %cmp66, label %if.then74, label %if.end64.if.end97_crit_edge, !prof !113

if.end64.if.end97_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end97

if.then74:                                        ; preds = %if.end64
  %sub.ptr.lhs.cast = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %sge to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tobool78.not = icmp eq ptr %44, %sge
  br i1 %tobool78.not, label %if.then74.if.end89_crit_edge, label %if.then85, !prof !113

if.then74.if.end89_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end89

if.then85:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #19
  %45 = call ptr @memcpy(ptr %sge, ptr %buf, i32 %sub.ptr.sub)
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %if.then74.if.end89_crit_edge
  %46 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %stat, align 4
  %sub.ptr.lhs.cast91 = ptrtoint ptr %end to i32
  %sub.ptr.rhs.cast92 = ptrtoint ptr %47 to i32
  %sub.ptr.sub93 = sub i32 %sub.ptr.lhs.cast91, %sub.ptr.rhs.cast92
  %desc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 8
  %48 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %desc, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %sub.ptr.sub
  %50 = call ptr @memcpy(ptr %49, ptr %add.ptr, i32 %sub.ptr.sub93)
  %51 = load ptr, ptr %desc, align 4
  %add.ptr96 = getelementptr i8, ptr %51, i32 %sub.ptr.sub93
  br label %if.end97

if.end97:                                         ; preds = %if.end89, %if.end64.if.end97_crit_edge
  %end.addr.0 = phi ptr [ %add.ptr96, %if.end89 ], [ %end, %if.end64.if.end97_crit_edge ]
  %52 = ptrtoint ptr %end.addr.0 to i32
  %and = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool98.not = icmp eq i32 %and, 0
  br i1 %tobool98.not, label %if.end97.cleanup_crit_edge, label %if.then99

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then99:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #19
  %53 = ptrtoint ptr %end.addr.0 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 0, ptr %end.addr.0, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %if.end97.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %buf) #17
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_write_partial_sgl(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %q, ptr noundef %sgl, ptr noundef %end, ptr nocapture noundef readonly %addr, i32 noundef %start, i32 noundef %len) #3 align 64 {
entry:
  %buf = alloca [9 x %struct.ulptx_sge_pair], align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %buf) #17
  %0 = call ptr @memset(ptr %buf, i32 0, i32 216)
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %2, %4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %start)
  %cmp = icmp ugt i32 %sub.i, %start
  br i1 %cmp, label %if.then, label %if.else, !prof !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sub = sub i32 %sub.i, %start
  %7 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  %len0 = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl, i32 0, i32 1
  %8 = ptrtoint ptr %len0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %len0, align 4
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 4
  %add = add i32 %10, %start
  %conv = zext i32 %add to i64
  %addr0 = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl, i32 0, i32 2
  %11 = ptrtoint ptr %addr0 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %addr0, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %sub5 = sub i32 %start, %sub.i
  %bv_len.i = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 12, i32 0, i32 1
  %12 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %frag_size.0203 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5, i32 %frag_size.0203)
  %cmp8.not204 = icmp ult i32 %sub5, %frag_size.0203
  br i1 %cmp8.not204, label %if.else.while.end_crit_edge, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  br label %while.body

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %frags = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else.while.body_crit_edge
  %frag_size.0207 = phi i32 [ %frag_size.0, %while.body.while.body_crit_edge ], [ %frag_size.0203, %if.else.while.body_crit_edge ]
  %start.addr.0206 = phi i32 [ %sub10, %while.body.while.body_crit_edge ], [ %sub5, %if.else.while.body_crit_edge ]
  %frag_idx.0205 = phi i8 [ %inc11, %while.body.while.body_crit_edge ], [ 0, %if.else.while.body_crit_edge ]
  %sub10 = sub i32 %start.addr.0206, %frag_size.0207
  %inc11 = add i8 %frag_idx.0205, 1
  %idxprom13 = zext i8 %inc11 to i32
  %bv_len.i200 = getelementptr %struct.skb_shared_info, ptr %6, i32 0, i32 12, i32 %idxprom13, i32 1
  %13 = ptrtoint ptr %bv_len.i200 to i32
  call void @__asan_load4_noabort(i32 %13)
  %frag_size.0 = load i32, ptr %bv_len.i200, align 4
  %cmp8.not = icmp ult i32 %sub10, %frag_size.0
  br i1 %cmp8.not, label %while.cond.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx14.le = getelementptr %struct.skb_shared_info, ptr %6, i32 0, i32 12, i32 %idxprom13
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.else.while.end_crit_edge
  %frag_idx.0.lcssa = phi i8 [ %inc11, %while.cond.while.end_crit_edge ], [ 0, %if.else.while.end_crit_edge ]
  %frag.0.lcssa = phi ptr [ %arrayidx14.le, %while.cond.while.end_crit_edge ], [ %frags, %if.else.while.end_crit_edge ]
  %start.addr.0.lcssa = phi i32 [ %sub10, %while.cond.while.end_crit_edge ], [ %sub5, %if.else.while.end_crit_edge ]
  %bv_len.i201 = getelementptr inbounds %struct.bio_vec, ptr %frag.0.lcssa, i32 0, i32 1
  %14 = ptrtoint ptr %bv_len.i201 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bv_len.i201, align 4
  %sub17 = sub i32 %15, %start.addr.0.lcssa
  %16 = tail call i32 @llvm.umin.i32(i32 %sub17, i32 %len)
  %len025 = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl, i32 0, i32 1
  %17 = ptrtoint ptr %len025 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %len025, align 4
  %conv26 = zext i8 %frag_idx.0.lcssa to i32
  %add27 = add nuw nsw i32 %conv26, 1
  %arrayidx28 = getelementptr i32, ptr %addr, i32 %add27
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx28, align 4
  %add29 = add i32 %19, %start.addr.0.lcssa
  %conv30 = zext i32 %add29 to i64
  %addr031 = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl, i32 0, i32 2
  %20 = ptrtoint ptr %addr031 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv30, ptr %addr031, align 8
  %inc34 = add i8 %frag_idx.0.lcssa, 1
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %frag_idx.1 = phi i8 [ 0, %if.then ], [ %inc34, %while.end ]
  %cond.pn = phi i32 [ %7, %if.then ], [ %16, %while.end ]
  %len.addr.0 = sub i32 %len, %cond.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %tobool35.not = icmp eq i32 %len.addr.0, 0
  br i1 %tobool35.not, label %if.end.done_crit_edge, label %if.end37

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.end37:                                         ; preds = %if.end
  %stat = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 10
  %21 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stat, align 4
  %cmp38 = icmp ult ptr %22, %end
  %sge = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl, i32 0, i32 3
  %cond44 = select i1 %cmp38, ptr %buf, ptr %sge
  br label %while.body47

while.body47:                                     ; preds = %while.body47.while.body47_crit_edge, %if.end37
  %len.addr.1215 = phi i32 [ %len.addr.0, %if.end37 ], [ %sub80, %while.body47.while.body47_crit_edge ]
  %nfrags.1214 = phi i8 [ 1, %if.end37 ], [ %inc77, %while.body47.while.body47_crit_edge ]
  %frag_idx.2213 = phi i8 [ %frag_idx.1, %if.end37 ], [ %inc78, %while.body47.while.body47_crit_edge ]
  %i.0212 = phi i8 [ 0, %if.end37 ], [ %inc79, %while.body47.while.body47_crit_edge ]
  %to.0211 = phi ptr [ %cond44, %if.end37 ], [ %to.1, %while.body47.while.body47_crit_edge ]
  %idxprom49 = zext i8 %frag_idx.2213 to i32
  %bv_len.i202 = getelementptr %struct.skb_shared_info, ptr %6, i32 0, i32 12, i32 %idxprom49, i32 1
  %23 = ptrtoint ptr %bv_len.i202 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bv_len.i202, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %len.addr.1215, i32 %24)
  %26 = and i8 %i.0212, 1
  %and = zext i8 %26 to i32
  %arrayidx61 = getelementptr [2 x i32], ptr %to.0211, i32 0, i32 %and
  %27 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %arrayidx61, align 4
  %add63 = add nuw nsw i32 %idxprom49, 1
  %arrayidx64 = getelementptr i32, ptr %addr, i32 %add63
  %28 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx64, align 4
  %conv65 = zext i32 %29 to i64
  %arrayidx69 = getelementptr %struct.ulptx_sge_pair, ptr %to.0211, i32 0, i32 1, i32 %and
  %30 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv65, ptr %arrayidx69, align 8
  %to.1 = getelementptr %struct.ulptx_sge_pair, ptr %to.0211, i32 %and
  %inc77 = add i8 %nfrags.1214, 1
  %inc78 = add i8 %frag_idx.2213, 1
  %inc79 = add i8 %i.0212, 1
  %sub80 = sub i32 %len.addr.1215, %25
  %tobool46.not = icmp eq i32 %sub80, 0
  br i1 %tobool46.not, label %while.end81, label %while.body47.while.body47_crit_edge

while.body47.while.body47_crit_edge:              ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body47

while.end81:                                      ; preds = %while.body47
  %31 = and i8 %inc79, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool84.not = icmp eq i8 %31, 0
  br i1 %tobool84.not, label %while.end81.if.end88_crit_edge, label %if.then85

while.end81.if.end88_crit_edge:                   ; preds = %while.end81
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88

if.then85:                                        ; preds = %while.end81
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx87 = getelementptr [2 x i32], ptr %to.1, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx87, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %while.end81.if.end88_crit_edge
  %33 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stat, align 4
  %cmp90 = icmp ult ptr %34, %end
  br i1 %cmp90, label %if.then98, label %if.end88.if.end121_crit_edge, !prof !113

if.end88.if.end121_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end121

if.then98:                                        ; preds = %if.end88
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %sge to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tobool102.not = icmp eq ptr %34, %sge
  br i1 %tobool102.not, label %if.then98.if.end113_crit_edge, label %if.then109, !prof !113

if.then98.if.end113_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end113

if.then109:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #19
  %35 = call ptr @memcpy(ptr %sge, ptr %buf, i32 %sub.ptr.sub)
  br label %if.end113

if.end113:                                        ; preds = %if.then109, %if.then98.if.end113_crit_edge
  %36 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stat, align 4
  %sub.ptr.lhs.cast115 = ptrtoint ptr %end to i32
  %sub.ptr.rhs.cast116 = ptrtoint ptr %37 to i32
  %sub.ptr.sub117 = sub i32 %sub.ptr.lhs.cast115, %sub.ptr.rhs.cast116
  %desc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 8
  %38 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %sub.ptr.sub
  %40 = call ptr @memcpy(ptr %39, ptr %add.ptr, i32 %sub.ptr.sub117)
  %41 = load ptr, ptr %desc, align 4
  %add.ptr120 = getelementptr i8, ptr %41, i32 %sub.ptr.sub117
  br label %if.end121

if.end121:                                        ; preds = %if.end113, %if.end88.if.end121_crit_edge
  %end.addr.0 = phi ptr [ %add.ptr120, %if.end113 ], [ %end, %if.end88.if.end121_crit_edge ]
  %42 = ptrtoint ptr %end.addr.0 to i32
  %and122 = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end121.done_crit_edge, label %if.then124

if.end121.done_crit_edge:                         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %end.addr.0 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %end.addr.0, align 8
  br label %done

done:                                             ; preds = %if.then124, %if.end121.done_crit_edge, %if.end.done_crit_edge
  %nfrags.2 = phi i8 [ %inc77, %if.then124 ], [ %inc77, %if.end121.done_crit_edge ], [ 1, %if.end.done_crit_edge ]
  %conv126 = zext i8 %nfrags.2 to i32
  %or = or i32 %conv126, -2113929216
  %44 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or, ptr %sgl, align 8
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %buf) #17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_ring_tx_db(ptr nocapture noundef readonly %adap, ptr noundef %q, i32 noundef %n) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !114
  tail call void @arm_heavy_mb() #17
  %bar2_addr = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 16
  %0 = ptrtoint ptr %bar2_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar2_addr, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else16, !prof !113

if.then:                                          ; preds = %entry
  %db_lock = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 12
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %db_lock) #17
  %db_disabled = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 13
  %2 = ptrtoint ptr %db_disabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %db_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool9.not = icmp eq i32 %3, 0
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %cntxt_id = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 7
  %4 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cntxt_id, align 4
  %shl11 = shl i32 %5, 15
  %or = or i32 %shl11, %n
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !115
  tail call void @arm_heavy_mb() #17
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #17
  %7 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adap, align 128
  %add.ptr.i = getelementptr i8, ptr %8, i32 110592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #17, !srcloc !116
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %db_pidx_inc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 15
  %9 = ptrtoint ptr %db_pidx_inc to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %db_pidx_inc, align 2
  %11 = trunc i32 %n to i16
  %conv13 = add i16 %10, %11
  store i16 %conv13, ptr %db_pidx_inc, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then10
  %pidx = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 4
  %12 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pidx, align 4
  %conv14 = trunc i32 %13 to i16
  %db_pidx = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 14
  %14 = ptrtoint ptr %db_pidx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv14, ptr %db_pidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %db_lock, i32 noundef %call5) #17
  br label %if.end72

if.else16:                                        ; preds = %entry
  %and = and i32 %n, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end41, label %if.end41.thread, !prof !112

if.end41.thread:                                  ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1059, i32 noundef 9, ptr noundef null) #17
  br label %do.body60

if.end41:                                         ; preds = %if.else16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n)
  %cmp49 = icmp eq i32 %n, 1
  br i1 %cmp49, label %land.lhs.true, label %if.end41.do.body60_crit_edge

if.end41.do.body60_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body60

land.lhs.true:                                    ; preds = %if.end41
  %bar2_qid = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 17
  %15 = ptrtoint ptr %bar2_qid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bar2_qid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp51 = icmp eq i32 %16, 0
  br i1 %cmp51, label %if.then53, label %land.lhs.true.do.body60_crit_edge

land.lhs.true.do.body60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body60

if.then53:                                        ; preds = %land.lhs.true
  %pidx54 = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 4
  %17 = ptrtoint ptr %pidx54 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pidx54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool55.not = icmp eq i32 %18, 0
  br i1 %tobool55.not, label %cond.false, label %if.then53.cond.end_crit_edge

if.then53.cond.end_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.false:                                       ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #19
  %size = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 2
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then53.cond.end_crit_edge
  %cond.in = phi i32 [ %20, %cond.false ], [ %18, %if.then53.cond.end_crit_edge ]
  %cond = add i32 %cond.in, -1
  %desc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 8
  %21 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc, align 4
  %arrayidx = getelementptr %struct.tx_desc, ptr %22, i32 %cond
  %23 = ptrtoint ptr %bar2_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bar2_addr, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 64
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %cond.end
  %count.07.i = phi i32 [ 8, %cond.end ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %src.addr.06.i = phi ptr [ %arrayidx, %cond.end ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %dst.addr.05.i = phi ptr [ %add.ptr, %cond.end ], [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ]
  %25 = ptrtoint ptr %src.addr.06.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %src.addr.06.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !117
  tail call void @arm_heavy_mb() #17
  %conv.i.i = trunc i64 %26 to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.05.i, i32 %27) #17, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !118
  tail call void @arm_heavy_mb() #17
  %shr.i.i = lshr i64 %26, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #17
  %add.ptr.i.i = getelementptr i8, ptr %dst.addr.05.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %28) #17, !srcloc !116
  %incdec.ptr.i = getelementptr i64, ptr %src.addr.06.i, i32 1
  %incdec.ptr1.i = getelementptr i64, ptr %dst.addr.05.i, i32 1
  %dec.i = add nsw i32 %count.07.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.do.body69_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.body.i.do.body69_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body69

do.body60:                                        ; preds = %land.lhs.true.do.body60_crit_edge, %if.end41.do.body60_crit_edge, %if.end41.thread
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !119
  tail call void @arm_heavy_mb() #17
  %bar2_qid63 = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 17
  %29 = ptrtoint ptr %bar2_qid63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bar2_qid63, align 4
  %shl64 = shl i32 %30, 15
  %or65 = or i32 %shl64, %n
  %31 = tail call i32 @llvm.bswap.i32(i32 %or65)
  %32 = ptrtoint ptr %bar2_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bar2_addr, align 4
  %add.ptr67 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %31) #17, !srcloc !116
  br label %do.body69

do.body69:                                        ; preds = %do.body60, %while.body.i.do.body69_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !120
  tail call void @arm_heavy_mb() #17
  br label %if.end72

if.end72:                                         ; preds = %do.body69, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_inline_tx_skb(ptr noundef %skb, ptr nocapture noundef readonly %q, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stat, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %pos to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub.ptr.sub)
  %cmp.not = icmp ugt i32 %3, %sub.ptr.sub
  br i1 %cmp.not, label %if.else15, label %if.then, !prof !113

if.then:                                          ; preds = %entry
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then11, label %if.else, !prof !112

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %8 = call ptr @memcpy(ptr %pos, ptr %7, i32 %3)
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef %pos, i32 noundef %3) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then11
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %add.ptr = getelementptr i8, ptr %pos, i32 %10
  br label %if.end23

if.else15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call16 = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef %pos, i32 noundef %sub.ptr.sub) #17
  %desc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 8
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc, align 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %sub = sub i32 %14, %sub.ptr.sub
  %call18 = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %sub.ptr.sub, ptr noundef %12, i32 noundef %sub) #17
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc, align 4
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %sub21 = sub i32 %18, %sub.ptr.sub
  %add.ptr22 = getelementptr i8, ptr %16, i32 %sub21
  br label %if.end23

if.end23:                                         ; preds = %if.else15, %if.end
  %pos.addr.0 = phi ptr [ %add.ptr, %if.end ], [ %add.ptr22, %if.else15 ]
  %19 = ptrtoint ptr %pos.addr.0 to i32
  %add = add i32 %19, 7
  %and24 = and i32 %add, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end27_crit_edge, label %if.then26

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  %and = and i32 %add, -8
  %20 = inttoptr i32 %and to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %20, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb_encap_offload_supported(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %vhdr.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.53, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 2304
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %inner_protocol_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %5 = ptrtoint ptr %inner_protocol_type to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %bf.load = load i32, ptr %inner_protocol_type, align 2
  %6 = and i32 %bf.load, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 25944, i16 %9)
  %cmp4.not = icmp eq i16 %9, 25944
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %10 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol.i, align 8
  %mac_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %12 = ptrtoint ptr %mac_len.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mac_len.i.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %14 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %11, label %if.end.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %if.end.if.then.i.i_crit_edge
    i16 -32512, label %if.end.if.then.i.i_crit_edge58
  ]

if.end.if.then.i.i_crit_edge58:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

if.end.vlan_get_protocol.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %vlan_get_protocol.exit

if.then.i.i:                                      ; preds = %if.end.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge58
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end26.i.i_crit_edge, label %if.then1.i.i

if.then.i.i.if.end26.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %13)
  %cmp.i.i = icmp ult i16 %13, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !113

do.end.i.i:                                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 598, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end25.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i = add nsw i32 %conv.i.i, -4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.then.i.i.if.end26.i.i_crit_edge
  %vlan_depth.0.i.i = phi i32 [ %sub.i.i, %if.end25.i.i ], [ 14, %if.then.i.i.if.end26.i.i_crit_edge ]
  %15 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i, i32 0, i32 1
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.backedge.i.i, %if.end26.i.i
  %vlan_depth.1.i.i = phi i32 [ %vlan_depth.0.i.i, %if.end26.i.i ], [ %add.i.i, %do.body27.backedge.i.i ]
  %parse_depth.0.i.i = phi i32 [ 8, %if.end26.i.i ], [ %dec.i.i, %do.body27.backedge.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i) #17
  %16 = ptrtoint ptr %vhdr.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %vhdr.i.i, align 2, !annotation !121
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %15, align 2, !annotation !121
  %18 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i.i.i, align 4
  %20 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i.i.i, align 8
  %22 = add i32 %vlan_depth.1.i.i, %21
  %sub.i1.i.i.i = sub i32 %19, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !prof !112

if.then.i.i.i.i:                                  ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %24, i32 %vlan_depth.1.i.i
  br label %skb_header_pointer.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body27.i.i
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i, ptr noundef nonnull %vhdr.i.i, i32 noundef 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %cmp3.i.i.i.i, ptr null, ptr %vhdr.i.i, !prof !113
  br label %skb_header_pointer.exit.i.i

skb_header_pointer.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %spec.select.i.i.i.i, %lor.lhs.false.i.i.i.i ]
  %tobool29.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %dec.i.i = add nsw i32 %parse_depth.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool30.not.i.i = icmp eq i32 %dec.i.i, 0
  %25 = select i1 %tobool29.not.i.i, i1 true, i1 %tobool30.not.i.i, !prof !113
  br i1 %25, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %do.cond42.i.i, !prof !113

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #17
  br label %cleanup

do.cond42.i.i:                                    ; preds = %skb_header_pointer.exit.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #17
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %27, label %do.cond42.i.i.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge59
  ]

do.cond42.i.i.do.body27.backedge.i.i_crit_edge59: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body27.backedge.i.i

do.cond42.i.i.do.body27.backedge.i.i_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body27.backedge.i.i

do.cond42.i.i.vlan_get_protocol.exit_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vlan_get_protocol.exit

do.body27.backedge.i.i:                           ; preds = %do.cond42.i.i.do.body27.backedge.i.i_crit_edge, %do.cond42.i.i.do.body27.backedge.i.i_crit_edge59
  %add.i.i = add nsw i32 %vlan_depth.1.i.i, 4
  br label %do.body27.i.i

vlan_get_protocol.exit:                           ; preds = %do.cond42.i.i.vlan_get_protocol.exit_crit_edge, %if.end.vlan_get_protocol.exit_crit_edge
  %retval.2.i.i = phi i16 [ %11, %if.end.vlan_get_protocol.exit_crit_edge ], [ %27, %do.cond42.i.i.vlan_get_protocol.exit_crit_edge ]
  %29 = zext i16 %retval.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %retval.2.i.i, label %vlan_get_protocol.exit.cleanup_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb9
  ]

vlan_get_protocol.exit.cleanup_crit_edge:         ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #19
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %30 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i44 = zext i16 %33 to i32
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %conv.i.i44
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  br label %sw.epilog

sw.bb9:                                           ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #19
  %head.i.i45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %34 = ptrtoint ptr %head.i.i45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i45, align 8
  %network_header.i.i46 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %36 = ptrtoint ptr %network_header.i.i46 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i.i46, align 4
  %conv.i.i47 = zext i16 %37 to i32
  %add.ptr.i.i48 = getelementptr i8, ptr %35, i32 %conv.i.i47
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i48, i32 0, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb
  %l4_hdr.0.in = phi ptr [ %nexthdr, %sw.bb9 ], [ %protocol, %sw.bb ]
  %38 = ptrtoint ptr %l4_hdr.0.in to i32
  call void @__asan_load1_noabort(i32 %38)
  %l4_hdr.0 = load i8, ptr %l4_hdr.0.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %l4_hdr.0)
  %cond = icmp eq i8 %l4_hdr.0, 17
  br i1 %cond, label %sw.bb12, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb12:                                          ; preds = %sw.epilog
  %vxlan_port = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 13
  %39 = ptrtoint ptr %vxlan_port to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vxlan_port, align 4
  %head.i.i49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %41 = ptrtoint ptr %head.i.i49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i49, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %43 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i50 = zext i16 %44 to i32
  %add.ptr.i.i51 = getelementptr i8, ptr %42, i32 %conv.i.i50
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i51, i32 0, i32 1
  %45 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %46)
  %cmp16 = icmp eq i16 %40, %46
  br i1 %cmp16, label %sw.bb12.cleanup_crit_edge, label %if.else

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #19
  %geneve_port = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 14
  %47 = ptrtoint ptr %geneve_port to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %geneve_port, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %46)
  %cmp23 = icmp eq i16 %48, %46
  %spec.select = select i1 %cmp23, i32 3, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.else, %sw.bb12.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %vlan_get_protocol.exit.cleanup_crit_edge, %cleanup.thread.i.i, %do.end.i.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %vlan_get_protocol.exit.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 2, %sw.bb12.cleanup_crit_edge ], [ %spec.select, %if.else ], [ 0, %do.end.i.i ], [ 0, %cleanup.thread.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4_sge_eth_txq_egress_update(ptr nocapture noundef readonly %adap, ptr nocapture noundef %eq, i32 noundef %maxreclaim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %txq = getelementptr inbounds %struct.sge_eth_txq, ptr %eq, i32 0, i32 1
  %2 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txq, align 4
  %_xmit_lock.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 10
  %call.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %_xmit_lock.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end, !prof !113

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = tail call i32 @llvm.read_register.i32(metadata !102) #17
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %xmit_lock_owner.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %7, ptr %xmit_lock_owner.i, align 4
  %stat.i.i = getelementptr inbounds %struct.sge_txq, ptr %eq, i32 0, i32 10
  %9 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stat.i.i, align 4
  %cidx.i.i = getelementptr inbounds %struct.sge_qstat, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %cidx.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load volatile i16, ptr %cidx.i.i, align 4
  %conv.i.i = zext i16 %12 to i32
  %cidx1.i.i = getelementptr inbounds %struct.sge_txq, ptr %eq, i32 0, i32 3
  %13 = ptrtoint ptr %cidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cidx1.i.i, align 4
  %sub.i.i = sub i32 %conv.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %if.end.reclaimable.exit.i_crit_edge

if.end.reclaimable.exit.i_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %reclaimable.exit.i

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %size.i.i = getelementptr inbounds %struct.sge_txq, ptr %eq, i32 0, i32 2
  %15 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %16, %sub.i.i
  br label %reclaimable.exit.i

reclaimable.exit.i:                               ; preds = %cond.true.i.i, %if.end.reclaimable.exit.i_crit_edge
  %cond.i.i = phi i32 [ %add.i.i, %cond.true.i.i ], [ %sub.i.i, %if.end.reclaimable.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %tobool.not.i = icmp eq i32 %cond.i.i, 0
  br i1 %tobool.not.i, label %reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge, label %if.then.i

reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge: ; preds = %reclaimable.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %reclaim_completed_tx.exit

if.then.i:                                        ; preds = %reclaimable.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxreclaim)
  %cmp.i = icmp slt i32 %maxreclaim, 0
  %spec.store.select.i = select i1 %cmp.i, i32 32, i32 %maxreclaim
  %17 = tail call i32 @llvm.smin.i32(i32 %cond.i.i, i32 %spec.store.select.i) #17
  tail call void @free_tx_desc(ptr noundef %adap, ptr noundef %eq, i32 noundef %17, i1 noundef zeroext true) #17
  %18 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %eq, align 4
  %sub.i = sub i32 %19, %17
  store i32 %sub.i, ptr %eq, align 4
  br label %reclaim_completed_tx.exit

reclaim_completed_tx.exit:                        ; preds = %if.then.i, %reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge
  %reclaim.1.i = phi i32 [ %17, %if.then.i ], [ 0, %reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge ]
  %20 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stat.i.i, align 4
  %cidx = getelementptr inbounds %struct.sge_qstat, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load volatile i16, ptr %cidx, align 4
  %conv = zext i16 %23 to i32
  %pidx = getelementptr inbounds %struct.sge_txq, ptr %eq, i32 0, i32 4
  %24 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pidx, align 4
  %sub = sub i32 %25, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then5, label %reclaim_completed_tx.exit.if.end6_crit_edge

reclaim_completed_tx.exit.if.end6_crit_edge:      ; preds = %reclaim_completed_tx.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then5:                                         ; preds = %reclaim_completed_tx.exit
  call void @__sanitizer_cov_trace_pc() #19
  %size = getelementptr inbounds %struct.sge_txq, ptr %eq, i32 0, i32 2
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %add = add i32 %27, %sub
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %reclaim_completed_tx.exit.if.end6_crit_edge
  %hw_in_use.0 = phi i32 [ %add, %if.then5 ], [ %sub, %reclaim_completed_tx.exit.if.end6_crit_edge ]
  %28 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %txq, align 4
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i34.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i34.not, label %if.end6.if.end16_crit_edge, label %land.lhs.true

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end6
  %size10 = getelementptr inbounds %struct.sge_txq, ptr %eq, i32 0, i32 2
  %32 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size10, align 4
  %div33 = lshr i32 %33, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %hw_in_use.0, i32 %div33)
  %cmp11 = icmp ult i32 %hw_in_use.0, %div33
  br i1 %cmp11, label %if.then13, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @netif_tx_wake_queue(ptr noundef %29) #17
  %restarts = getelementptr inbounds %struct.sge_txq, ptr %eq, i32 0, i32 6
  %34 = ptrtoint ptr %restarts to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %restarts, align 8
  %inc = add i32 %35, 1
  store i32 %inc, ptr %restarts, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %36 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %txq, align 4
  %xmit_lock_owner.i35 = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %xmit_lock_owner.i35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 -1, ptr %xmit_lock_owner.i35, align 4
  %_xmit_lock.i36 = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i36) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %reclaim.1.i, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_eosw_txq_free_desc(ptr nocapture noundef readonly %adap, ptr nocapture noundef %eosw_txq, i32 noundef %ndesc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.sge_eosw_txq, ptr %eosw_txq, i32 0, i32 2
  %last_cidx = getelementptr inbounds %struct.sge_eosw_txq, ptr %eosw_txq, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndesc)
  %tobool.not29 = icmp eq i32 %ndesc, 0
  br i1 %tobool.not29, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %2 = ptrtoint ptr %last_cidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_cidx, align 4
  %arrayidx = getelementptr %struct.tx_sw_desc, ptr %1, i32 %3
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %ndesc13 = getelementptr inbounds %struct.sge_eosw_txq, ptr %eosw_txq, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end11.while.body_crit_edge, %while.body.lr.ph
  %dec31.in = phi i32 [ %ndesc, %while.body.lr.ph ], [ %dec31, %if.end11.while.body_crit_edge ]
  %d.030 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %arrayidx16, %if.end11.while.body_crit_edge ]
  %dec31 = add i32 %dec31.in, -1
  %4 = ptrtoint ptr %d.030 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d.030, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %while.body.if.end11_crit_edge, label %if.then

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then:                                          ; preds = %while.body
  %addr = getelementptr inbounds %struct.tx_sw_desc, ptr %d.030, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then4:                                         ; preds = %if.then
  %8 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev_dev, align 16
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %11, %13
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %7, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #17
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i, align 4
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 12
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nr_frags.i, align 2
  %idxprom.i = zext i8 %17 to i32
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %15, i32 0, i32 12, i32 %idxprom.i
  %cmp13.i = icmp ult ptr %frags.i, %arrayidx.i
  br i1 %cmp13.i, label %if.then4.for.body.i_crit_edge, label %if.then4.unmap_skb.exit_crit_edge

if.then4.unmap_skb.exit_crit_edge:                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %unmap_skb.exit

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %addr.pn15.i = phi ptr [ %addr.addr.0.i, %for.body.i.for.body.i_crit_edge ], [ %addr, %if.then4.for.body.i_crit_edge ]
  %fp.014.i = phi ptr [ %incdec.ptr5.i, %for.body.i.for.body.i_crit_edge ], [ %frags.i, %if.then4.for.body.i_crit_edge ]
  %addr.addr.0.i = getelementptr i32, ptr %addr.pn15.i, i32 1
  %18 = ptrtoint ptr %addr.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.addr.0.i, align 4
  %bv_len.i.i = getelementptr inbounds %struct.bio_vec, ptr %fp.014.i, i32 0, i32 1
  %20 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bv_len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #17
  %incdec.ptr5.i = getelementptr %struct.bio_vec, ptr %fp.014.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr5.i, %arrayidx.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.unmap_skb.exit_crit_edge

for.body.i.unmap_skb.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unmap_skb.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

unmap_skb.exit:                                   ; preds = %for.body.i.unmap_skb.exit_crit_edge, %if.then4.unmap_skb.exit_crit_edge
  %22 = call ptr @memset(ptr %addr, i32 0, i32 72)
  br label %if.end

if.end:                                           ; preds = %unmap_skb.exit, %if.then.if.end_crit_edge
  %23 = ptrtoint ptr %d.030 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d.030, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %24, i32 noundef 0) #17
  %25 = ptrtoint ptr %d.030 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %d.030, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %while.body.if.end11_crit_edge
  %26 = ptrtoint ptr %ndesc13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ndesc13, align 4
  %28 = ptrtoint ptr %last_cidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last_cidx, align 4
  %add.i = add i32 %29, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %27)
  %cmp.not.i = icmp ult i32 %add.i, %27
  %sub.i = select i1 %cmp.not.i, i32 0, i32 %27
  %spec.select.i = sub i32 %add.i, %sub.i
  %30 = ptrtoint ptr %last_cidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select.i, ptr %last_cidx, align 4
  %31 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %desc, align 4
  %arrayidx16 = getelementptr %struct.tx_sw_desc, ptr %32, i32 %spec.select.i
  %tobool.not = icmp eq i32 %dec31, 0
  br i1 %tobool.not, label %if.end11.while.end_crit_edge, label %if.end11.while.body_crit_edge

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end11.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4_start_xmit(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %eth_flags = getelementptr i8, ptr %dev, i32 2960
  %0 = ptrtoint ptr %eth_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eth_flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call4 = tail call fastcc i32 @cxgb4_vf_eth_xmit(ptr noundef %skb, ptr noundef %dev)
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping.i, align 8
  %nqsets = getelementptr i8, ptr %dev, i32 2328
  %4 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nqsets, align 8
  %6 = zext i8 %5 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %6)
  %cmp.not = icmp ult i16 %3, %6
  br i1 %cmp.not, label %if.end15, label %if.then13, !prof !112

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @cxgb4_ethofld_xmit(ptr noundef %skb, ptr noundef %dev)
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call zeroext i1 @is_ptp_enabled(ptr noundef %skb, ptr noundef %dev) #17
  br i1 %call16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %ptp_lock = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 67
  tail call void @_raw_spin_lock(ptr noundef %ptp_lock) #17
  %call19 = tail call fastcc i32 @cxgb4_eth_xmit(ptr noundef %skb, ptr noundef %dev)
  tail call void @_raw_spin_unlock(ptr noundef %ptp_lock) #17
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %call22 = tail call fastcc i32 @cxgb4_eth_xmit(ptr noundef %skb, ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then17, %if.then13, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ 0, %if.then13 ], [ %call19, %if.then17 ], [ %call22, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgb4_vf_eth_xmit(ptr noundef %skb, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp.i = icmp ult i32 %1, 16
  br i1 %cmp.i, label %entry.out_free_crit_edge, label %if.end.i, !prof !113

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free

if.end.i:                                         ; preds = %entry
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu.i, align 4
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %4 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %skb_vlan_tagged.exit.i, label %if.end.i.skb_vlan_tagged.exit.thread.i_crit_edge

if.end.i.skb_vlan_tagged.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_vlan_tagged.exit.thread.i

skb_vlan_tagged.exit.i:                           ; preds = %if.end.i
  %add.i = add i32 %3, 14
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %5 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol.i.i, align 8
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %6, label %skb_vlan_tagged.exit.i._crit_edge [
    i16 -30552, label %skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge
    i16 -32512, label %skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge418
  ]

skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge418: ; preds = %skb_vlan_tagged.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_vlan_tagged.exit.thread.i

skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge: ; preds = %skb_vlan_tagged.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_vlan_tagged.exit.thread.i

skb_vlan_tagged.exit.i._crit_edge:                ; preds = %skb_vlan_tagged.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %8

skb_vlan_tagged.exit.thread.i:                    ; preds = %skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge, %skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge418, %if.end.i.skb_vlan_tagged.exit.thread.i_crit_edge
  %add323.i = add i32 %3, 18
  br label %8

8:                                                ; preds = %skb_vlan_tagged.exit.thread.i, %skb_vlan_tagged.exit.i._crit_edge
  %9 = phi i32 [ %add323.i, %skb_vlan_tagged.exit.thread.i ], [ %add.i, %skb_vlan_tagged.exit.i._crit_edge ]
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool6.not.i = icmp eq i16 %13, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %9)
  %cmp8.i = icmp ugt i32 %1, %9
  %or.cond.i = select i1 %tobool6.not.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %.out_free_crit_edge, label %if.end

.out_free_crit_edge:                              ; preds = %8
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free

if.end:                                           ; preds = %8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %16 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %17 to i32
  %nqsets = getelementptr i8, ptr %dev, i32 2328
  %18 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nqsets, align 8
  %20 = zext i8 %19 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %20)
  %cmp.not = icmp ult i16 %17, %20
  br i1 %cmp.not, label %if.end.if.end23_crit_edge, label %do.end17, !prof !112

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1857, i32 noundef 9, ptr noundef null) #17
  br label %if.end23

if.end23:                                         ; preds = %do.end17, %if.end.if.end23_crit_edge
  %sge = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 22
  %first_qset = getelementptr i8, ptr %dev, i32 2329
  %21 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %first_qset, align 1
  %conv30 = zext i8 %22 to i32
  %add = add nuw nsw i32 %conv30, %conv
  %arrayidx = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add
  %stat.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 10
  %23 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stat.i.i, align 4
  %cidx.i.i = getelementptr inbounds %struct.sge_qstat, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %cidx.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load volatile i16, ptr %cidx.i.i, align 4
  %conv.i.i = zext i16 %26 to i32
  %cidx1.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 3
  %27 = ptrtoint ptr %cidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cidx1.i.i, align 4
  %sub.i.i = sub i32 %conv.i.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %if.end23.reclaimable.exit.i_crit_edge

if.end23.reclaimable.exit.i_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %reclaimable.exit.i

cond.true.i.i:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  %size.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 2
  %29 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %30, %sub.i.i
  br label %reclaimable.exit.i

reclaimable.exit.i:                               ; preds = %cond.true.i.i, %if.end23.reclaimable.exit.i_crit_edge
  %cond.i.i = phi i32 [ %add.i.i, %cond.true.i.i ], [ %sub.i.i, %if.end23.reclaimable.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %tobool.not.i = icmp eq i32 %cond.i.i, 0
  br i1 %tobool.not.i, label %reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge, label %if.then.i

reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge: ; preds = %reclaimable.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %reclaim_completed_tx.exit

if.then.i:                                        ; preds = %reclaimable.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %31 = tail call i32 @llvm.smin.i32(i32 %cond.i.i, i32 32) #17
  tail call void @free_tx_desc(ptr noundef %15, ptr noundef %arrayidx, i32 noundef %31, i1 noundef zeroext true) #17
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %sub.i = sub i32 %33, %31
  store i32 %sub.i, ptr %arrayidx, align 4
  br label %reclaim_completed_tx.exit

reclaim_completed_tx.exit:                        ; preds = %if.then.i, %reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge
  %34 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %37 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i, 3
  %div4.i.i = lshr i32 %mul.i.i, 1
  %and.i.i = and i32 %conv.i, 1
  %add.i.i387 = or i32 %and.i.i, 2
  %add1.i.i = add nuw nsw i32 %add.i.i387, %div4.i.i
  %gso_size.i388 = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 4
  %38 = ptrtoint ptr %gso_size.i388 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %gso_size.i388, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool6.not.i389 = icmp eq i16 %39, 0
  %flits.0.v.i = select i1 %tobool6.not.i389, i32 6, i32 8
  %flits.0.i = add nuw nsw i32 %add1.i.i, %flits.0.v.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %flits.0.i)
  %cmp.i390 = icmp ugt i32 %flits.0.i, 64
  br i1 %cmp.i390, label %do.body2.i, label %flits_to_desc.exit, !prof !113

do.body2.i:                                       ; preds = %reclaim_completed_tx.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 718, 0\0A.popsection", ""() #17, !srcloc !122
  unreachable

flits_to_desc.exit:                               ; preds = %reclaim_completed_tx.exit
  %sub.i391 = add nuw nsw i32 %flits.0.i, 7
  %div7.i = lshr i32 %sub.i391, 3
  %size.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 2
  %40 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.i, align 4
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %44 = xor i32 %43, -1
  %sub1.i = sub i32 %41, %div7.i
  %sub = add i32 %sub1.i, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp36 = icmp slt i32 %sub, 0
  br i1 %cmp36, label %if.then44, label %if.end48, !prof !113

if.then44:                                        ; preds = %flits_to_desc.exit
  call void @__sanitizer_cov_trace_pc() #19
  %txq.i = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add, i32 1
  %45 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %txq.i, align 4
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #17
  %stops.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 5
  %47 = ptrtoint ptr %stops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stops.i, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %stops.i, align 4
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 4
  %49 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.19, ptr noundef %dev, i32 noundef %conv) #20
  br label %cleanup

if.end48:                                         ; preds = %flits_to_desc.exit
  %pidx = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 4
  %51 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pidx, align 16
  %add50 = add nsw i32 %div7.i, -1
  %sub51 = add i32 %add50, %52
  call void @__sanitizer_cov_trace_cmp4(i32 %sub51, i32 %41)
  %cmp53.not = icmp ult i32 %sub51, %41
  %sub58 = select i1 %cmp53.not, i32 0, i32 %41
  %spec.select = sub i32 %sub51, %sub58
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 9
  %53 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sdesc, align 4
  %arrayidx61 = getelementptr %struct.tx_sw_desc, ptr %54, i32 %spec.select
  %pdev_dev64 = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 4
  %55 = ptrtoint ptr %pdev_dev64 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev_dev64, align 16
  %addr = getelementptr %struct.tx_sw_desc, ptr %54, i32 %spec.select, i32 1
  %call66 = tail call i32 @cxgb4_map_skb(ptr noundef %56, ptr noundef %skb, ptr noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then75, label %if.end78, !prof !113

if.then75:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  %57 = call ptr @memset(ptr %addr, i32 0, i32 72)
  %mapping_err = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add, i32 9
  %58 = ptrtoint ptr %mapping_err to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mapping_err, align 8
  %inc = add i32 %59, 1
  store i32 %inc, ptr %mapping_err, align 8
  br label %out_free

if.end78:                                         ; preds = %if.end48
  %chip = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 15, i32 22
  %60 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %chip, align 8
  %shr = lshr i32 %61, 4
  %and = and i32 %shr, 15
  %sub80 = add nuw nsw i32 %flits.0.i, 1
  %div381 = lshr i32 %sub80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp81 = icmp ult i32 %sub, 5
  br i1 %cmp81, label %if.then89, label %if.end78.if.end113_crit_edge, !prof !113

if.end78.if.end113_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end113

if.then89:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  %txq.i392 = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add, i32 1
  %62 = ptrtoint ptr %txq.i392 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %txq.i392, align 4
  %state.i.i393 = getelementptr inbounds %struct.netdev_queue, ptr %63, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i393) #17
  %stops.i394 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 5
  %64 = ptrtoint ptr %stops.i394 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %stops.i394, align 4
  %inc.i395 = add i32 %65, 1
  store i32 %inc.i395, ptr %stops.i394, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp90 = icmp ugt i32 %and, 5
  %or = or i32 %div381, -1073741824
  %spec.select385 = select i1 %cmp90, i32 %or, i32 %div381
  br label %if.end113

if.end113:                                        ; preds = %if.then89, %if.end78.if.end113_crit_edge
  %wr_mid.0 = phi i32 [ %div381, %if.end78.if.end113_crit_edge ], [ %spec.select385, %if.then89 ]
  %desc = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 8
  %66 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %desc, align 32
  %68 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pidx, align 16
  %arrayidx124 = getelementptr %struct.tx_desc, ptr %67, i32 %69
  %equiq_to_len16 = getelementptr inbounds %struct.fw_eth_tx_pkt_vm_wr, ptr %arrayidx124, i32 0, i32 1
  %70 = ptrtoint ptr %equiq_to_len16 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %wr_mid.0, ptr %equiq_to_len16, align 4
  %r3 = getelementptr inbounds %struct.fw_eth_tx_pkt_vm_wr, ptr %arrayidx124, i32 0, i32 2
  %71 = ptrtoint ptr %r3 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %r3, align 4
  %arrayidx127 = getelementptr [2 x i32], ptr %r3, i32 0, i32 1
  %72 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %arrayidx127, align 4
  %73 = getelementptr inbounds %struct.fw_eth_tx_pkt_vm_wr, ptr %arrayidx124, i32 0, i32 3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %74 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i, align 4
  %76 = call ptr @memcpy(ptr %73, ptr %75, i32 16)
  %add.ptr = getelementptr i64, ptr %arrayidx124, i32 %flits.0.i
  %77 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %end.i.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %gso_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool129.not = icmp eq i16 %80, 0
  br i1 %tobool129.not, label %if.else184, label %if.then130

if.then130:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr131 = getelementptr %struct.fw_eth_tx_pkt_vm_wr, ptr %arrayidx124, i32 1
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %78, i32 0, i32 8
  %81 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %gso_type, align 8
  %and132 = and i32 %82, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %cmp133.not = icmp eq i32 %and132, 0
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %83 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %transport_header.i, align 2
  %conv.i396 = zext i16 %84 to i32
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %85 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %network_header.i, align 4
  %conv1.i = zext i16 %86 to i32
  %sub.i397 = sub nsw i32 %conv.i396, %conv1.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %87 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %head.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 %conv1.i
  %89 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %90 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub137 = add i32 %sub.ptr.sub.i, -14
  %91 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 285212704, ptr %arrayidx124, align 4
  %div142 = sdiv i32 %sub137, 4
  %shl140382 = or i32 %div142, %and132
  %or141 = shl i32 %shl140382, 16
  %div145 = sdiv i32 %sub.i397, 4
  %shl146 = shl nsw i32 %div145, 4
  %92 = load ptr, ptr %head.i.i, align 8
  %93 = load i16, ptr %transport_header.i, align 2
  %conv.i.i401 = zext i16 %93 to i32
  %add.ptr.i.i402 = getelementptr i8, ptr %92, i32 %conv.i.i401
  %doff = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i402, i32 0, i32 4
  %94 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load = load i16, ptr %doff, align 4
  %bf.lshr = lshr i16 %bf.load, 12
  %conv149 = zext i16 %bf.lshr to i32
  %or144 = or i32 %shl146, %or141
  %or147 = or i32 %or144, %conv149
  %or151 = or i32 %or147, -306184192
  %95 = ptrtoint ptr %add.ptr131 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or151, ptr %add.ptr131, align 4
  %ipid_ofst = getelementptr inbounds %struct.cpl_tx_pkt_lso_core, ptr %add.ptr131, i32 0, i32 1
  %96 = ptrtoint ptr %ipid_ofst to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %ipid_ofst, align 4
  %97 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %gso_size, align 4
  %mss = getelementptr inbounds %struct.cpl_tx_pkt_lso_core, ptr %add.ptr131, i32 0, i32 2
  %99 = ptrtoint ptr %mss to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %mss, align 2
  %seqno_offset = getelementptr inbounds %struct.cpl_tx_pkt_lso_core, ptr %add.ptr131, i32 0, i32 3
  %100 = ptrtoint ptr %seqno_offset to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %seqno_offset, align 4
  %101 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.sink = load i32, ptr %len.i, align 4
  %102 = getelementptr inbounds %struct.cpl_tx_pkt_lso_core, ptr %add.ptr131, i32 0, i32 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %.sink, ptr %102, align 4
  %add.ptr163 = getelementptr %struct.cpl_tx_pkt_lso_core, ptr %add.ptr131, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %cmp164 = icmp ult i32 %and, 6
  %. = select i1 %cmp164, i64 34, i64 32
  %conv170383 = zext i32 %sub137 to i64
  %shl171 = shl i64 %conv170383, %.
  %cond = select i1 %cmp133.not, i32 8, i32 10
  %104 = zext i32 %cond to i64
  %shl176 = shl nuw nsw i64 %104, 40
  %conv177 = sext i32 %sub.i397 to i64
  %shl178 = shl nsw i64 %conv177, 20
  %or179 = or i64 %shl178, %shl176
  %or180 = or i64 %or179, %shl171
  %tso = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add, i32 5
  %105 = ptrtoint ptr %tso to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tso, align 8
  %inc181 = add i32 %106, 1
  store i32 %inc181, ptr %tso, align 8
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %78, i32 0, i32 5
  %107 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %gso_segs, align 2
  %conv182 = zext i16 %108 to i32
  br label %if.end209.sink.split

if.else184:                                       ; preds = %if.end113
  %109 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 285212688, ptr %arrayidx124, align 4
  %add.ptr194 = getelementptr %struct.fw_eth_tx_pkt_vm_wr, ptr %arrayidx124, i32 1
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %110 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %110)
  %bf.load195 = load i16, ptr %ip_summed, align 8
  %111 = and i16 %bf.load195, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %111)
  %cmp198 = icmp eq i16 %111, 1536
  br i1 %cmp198, label %if.then200, label %if.else184.if.end209_crit_edge

if.else184.if.end209_crit_edge:                   ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end209

if.then200:                                       ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #19
  %112 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %chip, align 8
  %call203 = tail call fastcc i64 @hwcsum(i32 noundef %113, ptr noundef %skb)
  %or204 = or i64 %call203, 4611686018427387904
  br label %if.end209.sink.split

if.end209.sink.split:                             ; preds = %if.then200, %if.then130
  %.sink416 = phi i32 [ 1, %if.then200 ], [ %conv182, %if.then130 ]
  %cpl.0.ph = phi ptr [ %add.ptr194, %if.then200 ], [ %add.ptr163, %if.then130 ]
  %cntrl.2.ph = phi i64 [ %or204, %if.then200 ], [ %or180, %if.then130 ]
  %tx_cso = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add, i32 7
  %114 = ptrtoint ptr %tx_cso to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tx_cso, align 128
  %inc206 = add i32 %115, %.sink416
  store i32 %inc206, ptr %tx_cso, align 128
  br label %if.end209

if.end209:                                        ; preds = %if.end209.sink.split, %if.else184.if.end209_crit_edge
  %cpl.0 = phi ptr [ %add.ptr194, %if.else184.if.end209_crit_edge ], [ %cpl.0.ph, %if.end209.sink.split ]
  %cntrl.2 = phi i64 [ -4611686018427387904, %if.else184.if.end209_crit_edge ], [ %cntrl.2.ph, %if.end209.sink.split ]
  %116 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %bf.load210 = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load210)
  %tobool213.not = icmp sgt i32 %bf.load210, -1
  br i1 %tobool213.not, label %if.end209.if.end220_crit_edge, label %if.then214

if.end209.if.end220_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end220

if.then214:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #19
  %vlan_ins = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add, i32 8
  %117 = ptrtoint ptr %vlan_ins to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %vlan_ins, align 4
  %inc215 = add i32 %118, 1
  store i32 %inc215, ptr %vlan_ins, align 4
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %119 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %vlan_tci, align 2
  %conv216 = zext i16 %120 to i64
  %shl217 = shl nuw nsw i64 %conv216, 44
  %or218 = or i64 %shl217, %cntrl.2
  %or219 = or i64 %or218, 1152921504606846976
  br label %if.end220

if.end220:                                        ; preds = %if.then214, %if.end209.if.end220_crit_edge
  %cntrl.3 = phi i64 [ %or219, %if.then214 ], [ %cntrl.2, %if.end209.if.end220_crit_edge ]
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %121 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %port_id, align 1
  %conv221 = zext i8 %122 to i32
  %shl222 = shl nuw nsw i32 %conv221, 16
  %or223 = or i32 %shl222, -301989888
  %123 = ptrtoint ptr %cpl.0 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %or223, ptr %cpl.0, align 8
  %pack = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %cpl.0, i32 0, i32 1
  %124 = ptrtoint ptr %pack to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 0, ptr %pack, align 4
  %125 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %len.i, align 4
  %conv226 = trunc i32 %126 to i16
  %len227 = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %cpl.0, i32 0, i32 2
  %127 = ptrtoint ptr %len227 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv226, ptr %len227, align 2
  %ctrl1 = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %cpl.0, i32 0, i32 3
  %128 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %cntrl.3, ptr %ctrl1, align 8
  %add.ptr234 = getelementptr %struct.cpl_tx_pkt_core, ptr %cpl.0, i32 1
  %129 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %stat.i.i, align 4
  %cmp236 = icmp eq ptr %add.ptr234, %130
  br i1 %cmp236, label %if.then244, label %if.end220.if.end249_crit_edge, !prof !113

if.end220.if.end249_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end249

if.then244:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #19
  %131 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %desc, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr234 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr248 = getelementptr i8, ptr %132, i32 %sub.ptr.sub
  br label %if.end249

if.end249:                                        ; preds = %if.then244, %if.end220.if.end249_crit_edge
  %end.0 = phi ptr [ %add.ptr248, %if.then244 ], [ %add.ptr, %if.end220.if.end249_crit_edge ]
  %sgl.0 = phi ptr [ %132, %if.then244 ], [ %add.ptr234, %if.end220.if.end249_crit_edge ]
  tail call void @cxgb4_write_sgl(ptr noundef %skb, ptr noundef %arrayidx, ptr noundef %sgl.0, ptr noundef %end.0, i32 noundef 0, ptr noundef %addr)
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %133 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i405 = icmp eq ptr %134, null
  br i1 %tobool.not.i405, label %do.body.i, label %if.then.i406

if.then.i406:                                     ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %134(ptr noundef %skb) #17
  %135 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %destructor.i, align 4
  %136 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %136, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.end249
  %138 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %tobool3.not.i = icmp eq ptr %140, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !112

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #17, !srcloc !123
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i406
  %141 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %skb, ptr %arrayidx61, align 4
  %142 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx, align 4
  %add.i407 = add i32 %143, %div7.i
  store i32 %add.i407, ptr %arrayidx, align 4
  %144 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pidx, align 4
  %add1.i = add i32 %145, %div7.i
  store i32 %add1.i, ptr %pidx, align 4
  %146 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %147)
  %cmp.not.i = icmp ult i32 %add1.i, %147
  br i1 %cmp.not.i, label %skb_orphan.exit.txq_advance.exit_crit_edge, label %if.then.i410

skb_orphan.exit.txq_advance.exit_crit_edge:       ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %txq_advance.exit

if.then.i410:                                     ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i409 = sub i32 %add1.i, %147
  %148 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %sub.i409, ptr %pidx, align 4
  br label %txq_advance.exit

txq_advance.exit:                                 ; preds = %if.then.i410, %skb_orphan.exit.txq_advance.exit_crit_edge
  tail call void @cxgb4_ring_tx_db(ptr noundef %15, ptr noundef %arrayidx, i32 noundef %div7.i)
  br label %cleanup

out_free:                                         ; preds = %if.then75, %.out_free_crit_edge, %entry.out_free_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #17
  br label %cleanup

cleanup:                                          ; preds = %out_free, %txq_advance.exit, %if.then44
  %retval.0 = phi i32 [ 0, %out_free ], [ 16, %if.then44 ], [ 0, %txq_advance.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb4_ethofld_xmit(ptr noundef %skb, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %3)
  %cmp.i = icmp ult i32 %3, 14
  br i1 %cmp.i, label %entry.out_free_crit_edge, label %if.end.i, !prof !113

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free

if.end.i:                                         ; preds = %entry
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu.i, align 4
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %skb_vlan_tagged.exit.i, label %if.end.i.skb_vlan_tagged.exit.thread.i_crit_edge

if.end.i.skb_vlan_tagged.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_vlan_tagged.exit.thread.i

skb_vlan_tagged.exit.i:                           ; preds = %if.end.i
  %add.i = add i32 %5, 14
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %7 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %protocol.i.i, align 8
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %8, label %skb_vlan_tagged.exit.i._crit_edge [
    i16 -30552, label %skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge
    i16 -32512, label %skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge12
  ]

skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge12: ; preds = %skb_vlan_tagged.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_vlan_tagged.exit.thread.i

skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge: ; preds = %skb_vlan_tagged.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_vlan_tagged.exit.thread.i

skb_vlan_tagged.exit.i._crit_edge:                ; preds = %skb_vlan_tagged.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %10

skb_vlan_tagged.exit.thread.i:                    ; preds = %skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge, %skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge12, %if.end.i.skb_vlan_tagged.exit.thread.i_crit_edge
  %add323.i = add i32 %5, 18
  br label %10

10:                                               ; preds = %skb_vlan_tagged.exit.thread.i, %skb_vlan_tagged.exit.i._crit_edge
  %11 = phi i32 [ %add323.i, %skb_vlan_tagged.exit.thread.i ], [ %add.i, %skb_vlan_tagged.exit.i._crit_edge ]
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %12 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool6.not.i = icmp eq i16 %15, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %11)
  %cmp8.i = icmp ugt i32 %3, %11
  %or.cond.i = select i1 %tobool6.not.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %.out_free_crit_edge, label %if.end

.out_free_crit_edge:                              ; preds = %10
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free

if.end:                                           ; preds = %10
  %tc_mqprio = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 86
  %16 = ptrtoint ptr %tc_mqprio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tc_mqprio, align 4
  %port_mqprio = getelementptr inbounds %struct.cxgb4_tc_mqprio, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %port_mqprio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port_mqprio, align 4
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %20 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_id, align 1
  %idxprom = zext i8 %21 to i32
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %22 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %23 to i32
  %nqsets = getelementptr i8, ptr %dev, i32 2328
  %24 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nqsets, align 8
  %conv4 = zext i8 %25 to i32
  %sub = sub nsw i32 %conv, %conv4
  %eosw_txq5 = getelementptr %struct.cxgb4_tc_port_mqprio, ptr %19, i32 %idxprom, i32 2
  %26 = ptrtoint ptr %eosw_txq5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %eosw_txq5, align 8
  %arrayidx6 = getelementptr %struct.sge_eosw_txq, ptr %27, i32 %sub
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx6) #17
  %state = getelementptr %struct.sge_eosw_txq, ptr %27, i32 %sub, i32 1
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp.not = icmp eq i32 %29, 3
  br i1 %cmp.not, label %if.end9, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end9:                                          ; preds = %if.end
  %inuse.i = getelementptr %struct.sge_eosw_txq, ptr %27, i32 %sub, i32 9
  %30 = ptrtoint ptr %inuse.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %inuse.i, align 4
  %ndesc.i = getelementptr %struct.sge_eosw_txq, ptr %27, i32 %sub, i32 3
  %32 = ptrtoint ptr %ndesc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ndesc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp.i1 = icmp eq i32 %31, %33
  br i1 %cmp.i1, label %if.end9.out_unlock_crit_edge, label %if.end13

if.end9.out_unlock_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end13:                                         ; preds = %if.end9
  %desc.i = getelementptr %struct.sge_eosw_txq, ptr %27, i32 %sub, i32 2
  %34 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc.i, align 4
  %pidx.i = getelementptr %struct.sge_eosw_txq, ptr %27, i32 %sub, i32 4
  %36 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pidx.i, align 4
  %arrayidx.i = getelementptr %struct.tx_sw_desc, ptr %35, i32 %37
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %skb, ptr %arrayidx.i, align 4
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %39 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %40(ptr noundef %skb) #17
  %41 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %destructor.i, align 4
  %42 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %42, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.end13
  %44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool3.not.i = icmp eq ptr %46, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !112

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #17, !srcloc !123
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %47 = ptrtoint ptr %ndesc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ndesc.i, align 4
  %49 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pidx.i, align 4
  %add.i.i = add i32 %50, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %48)
  %cmp.not.i.i = icmp ult i32 %add.i.i, %48
  %sub.i.i = select i1 %cmp.not.i.i, i32 0, i32 %48
  %spec.select.i.i = sub i32 %add.i.i, %sub.i.i
  %51 = ptrtoint ptr %pidx.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %spec.select.i.i, ptr %pidx.i, align 4
  %52 = ptrtoint ptr %inuse.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %inuse.i, align 4
  %add.i7 = add i32 %53, 1
  store i32 %add.i7, ptr %inuse.i, align 4
  tail call fastcc void @ethofld_xmit(ptr noundef %dev, ptr noundef %arrayidx6)
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx6) #17
  br label %cleanup

out_unlock:                                       ; preds = %if.end9.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx6) #17
  br label %out_free

out_free:                                         ; preds = %out_unlock, %.out_free_crit_edge, %entry.out_free_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #17
  br label %cleanup

cleanup:                                          ; preds = %out_free, %skb_orphan.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_ptp_enabled(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgb4_eth_xmit(ptr noundef %skb, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @is_ptp_enabled(ptr noundef %skb, ptr noundef %dev) #17
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %1)
  %cmp.i = icmp ult i32 %1, 14
  br i1 %cmp.i, label %entry.out_free_crit_edge, label %if.end.i, !prof !113

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free

if.end.i:                                         ; preds = %entry
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu.i, align 4
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %4 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %skb_vlan_tagged.exit.i, label %if.end.i.skb_vlan_tagged.exit.thread.i_crit_edge

if.end.i.skb_vlan_tagged.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_vlan_tagged.exit.thread.i

skb_vlan_tagged.exit.i:                           ; preds = %if.end.i
  %add.i = add i32 %3, 14
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %5 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol.i.i, align 8
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %6, label %skb_vlan_tagged.exit.i._crit_edge [
    i16 -30552, label %skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge
    i16 -32512, label %skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge710
  ]

skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge710: ; preds = %skb_vlan_tagged.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_vlan_tagged.exit.thread.i

skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge: ; preds = %skb_vlan_tagged.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_vlan_tagged.exit.thread.i

skb_vlan_tagged.exit.i._crit_edge:                ; preds = %skb_vlan_tagged.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %8

skb_vlan_tagged.exit.thread.i:                    ; preds = %skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge, %skb_vlan_tagged.exit.i.skb_vlan_tagged.exit.thread.i_crit_edge710, %if.end.i.skb_vlan_tagged.exit.thread.i_crit_edge
  %add323.i = add i32 %3, 18
  br label %8

8:                                                ; preds = %skb_vlan_tagged.exit.thread.i, %skb_vlan_tagged.exit.i._crit_edge
  %9 = phi i32 [ %add323.i, %skb_vlan_tagged.exit.thread.i ], [ %add.i, %skb_vlan_tagged.exit.i._crit_edge ]
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool6.not.i = icmp eq i16 %13, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %9)
  %cmp8.i = icmp ugt i32 %1, %9
  %or.cond.i = select i1 %tobool6.not.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %.out_free_crit_edge, label %if.end

.out_free_crit_edge:                              ; preds = %8
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free

if.end:                                           ; preds = %8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %16 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i, align 4
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %18 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.i.not.i.i.i = icmp eq i8 %20, 0
  br i1 %tobool.i.not.i.i.i, label %if.end.if.end9_crit_edge, label %skb_sec_path.exit.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

skb_sec_path.exit.i:                              ; preds = %if.end
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %21 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %22, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %24 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.if.end9_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.if.end9_crit_edge:            ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool1.not.i = icmp eq i32 %26, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end9_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.end9_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %27 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp.not.i = icmp eq i32 %28, %26
  br i1 %cmp.not.i, label %xfrm_offload.exit, label %lor.lhs.false2.i.if.end9_crit_edge

lor.lhs.false2.i.if.end9_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

xfrm_offload.exit:                                ; preds = %lor.lhs.false2.i
  %sub.i = add i32 %26, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  %tobool5.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool5.not, label %xfrm_offload.exit.if.end9_crit_edge, label %land.lhs.true

xfrm_offload.exit.if.end9_crit_edge:              ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

land.lhs.true:                                    ; preds = %xfrm_offload.exit
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 4
  %29 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %gso_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool6.not = icmp eq i16 %30, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %uld = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 37
  %31 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %uld, align 4
  %tx_handler = getelementptr %struct.cxgb4_uld_info, ptr %32, i32 5, i32 13
  %33 = ptrtoint ptr %tx_handler to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_handler, align 4
  %call8 = tail call i32 %34(ptr noundef %skb, ptr noundef %dev) #17
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %xfrm_offload.exit.if.end9_crit_edge, %lor.lhs.false2.i.if.end9_crit_edge, %lor.lhs.false.i.if.end9_crit_edge, %skb_sec_path.exit.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %tobool.not.i551 = icmp eq ptr %37, null
  br i1 %tobool.not.i551, label %if.end9.if.end21_crit_edge, label %land.rhs.i

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

land.rhs.i:                                       ; preds = %if.end9
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i552 = zext i8 %39 to i32
  %shl.i.i.i553 = shl nuw i32 1, %conv.i.i.i552
  %and.i.i.i = and i32 %shl.i.i.i553, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %land.rhs.i.if.end21_crit_edge, label %cxgb4_is_ktls_skb.exit

land.rhs.i.if.end21_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

cxgb4_is_ktls_skb.exit:                           ; preds = %land.rhs.i
  %sk_validate_xmit_skb.i.i = getelementptr inbounds %struct.sock, ptr %37, i32 0, i32 81
  %40 = ptrtoint ptr %sk_validate_xmit_skb.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %sk_validate_xmit_skb.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !124
  %cmp.i.i = icmp eq ptr %41, @tls_validate_xmit_skb
  br i1 %cmp.i.i, label %land.lhs.true11, label %cxgb4_is_ktls_skb.exit.if.end21_crit_edge

cxgb4_is_ktls_skb.exit.if.end21_crit_edge:        ; preds = %cxgb4_is_ktls_skb.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

land.lhs.true11:                                  ; preds = %cxgb4_is_ktls_skb.exit
  %42 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %44 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %46 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %47 to i32
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i.i556 = load i16, ptr %doff.i.i, align 4
  %51 = lshr i16 %bf.load.i.i556, 10
  %52 = and i16 %51, 60
  %mul.i.i = zext i16 %52 to i32
  %add = add i32 %sub.ptr.sub.i, %mul.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %add)
  %tobool15.not = icmp eq i32 %43, %add
  br i1 %tobool15.not, label %land.lhs.true11.if.end21_crit_edge, label %if.then16

land.lhs.true11.if.end21_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  %uld17 = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 37
  %53 = ptrtoint ptr %uld17 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %uld17, align 4
  %tx_handler19 = getelementptr %struct.cxgb4_uld_info, ptr %54, i32 7, i32 13
  %55 = ptrtoint ptr %tx_handler19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_handler19, align 4
  %call20 = tail call i32 %56(ptr noundef %skb, ptr noundef %dev) #17
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true11.if.end21_crit_edge, %cxgb4_is_ktls_skb.exit.if.end21_crit_edge, %land.rhs.i.if.end21_crit_edge, %if.end9.if.end21_crit_edge
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %57 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %58 to i32
  br i1 %call, label %if.then24, label %if.else33

if.then24:                                        ; preds = %if.end21
  %ptp_tx_skb = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 66
  %59 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ptp_tx_skb, align 4
  %tobool25.not = icmp eq ptr %60, null
  br i1 %tobool25.not, label %if.then26, label %if.then24.out_free_crit_edge

if.then24.out_free_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free

if.then26:                                        ; preds = %if.then24
  %61 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tx_flags, align 1
  %65 = or i8 %64, 4
  store i8 %65, ptr %tx_flags, align 1
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #17
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #17, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then26.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !113

if.then26.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then26
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %67 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %.not.i.i.i.i = icmp sgt i32 %67, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !112

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then26.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then26.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #17
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %68 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %skb, ptr %ptp_tx_skb, align 4
  %ptptxq = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 22, i32 1
  br label %if.end38

if.else33:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  %sge34 = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 22
  %first_qset = getelementptr i8, ptr %dev, i32 2329
  %69 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %first_qset, align 1
  %conv35 = zext i8 %70 to i32
  %add36 = add nuw nsw i32 %conv35, %conv
  %arrayidx37 = getelementptr [32 x %struct.sge_eth_txq], ptr %sge34, i32 0, i32 %add36
  br label %if.end38

if.end38:                                         ; preds = %if.else33, %skb_get.exit
  %q.0 = phi ptr [ %ptptxq, %skb_get.exit ], [ %arrayidx37, %if.else33 ]
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #17
  %71 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %tx_flags.i, align 1
  %75 = and i8 %74, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i559 = icmp eq i8 %75, 0
  br i1 %tobool.not.i559, label %if.end38.skb_tx_timestamp.exit_crit_edge, label %if.then.i

if.end38.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_tx_timestamp.exit

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #17
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i, %if.end38.skb_tx_timestamp.exit_crit_edge
  %stat.i.i = getelementptr inbounds %struct.sge_txq, ptr %q.0, i32 0, i32 10
  %76 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %stat.i.i, align 4
  %cidx.i.i = getelementptr inbounds %struct.sge_qstat, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %cidx.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load volatile i16, ptr %cidx.i.i, align 4
  %conv.i.i561 = zext i16 %79 to i32
  %cidx1.i.i = getelementptr inbounds %struct.sge_txq, ptr %q.0, i32 0, i32 3
  %80 = ptrtoint ptr %cidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cidx1.i.i, align 4
  %sub.i.i = sub i32 %conv.i.i561, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i562 = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i562, label %cond.true.i.i, label %skb_tx_timestamp.exit.reclaimable.exit.i_crit_edge

skb_tx_timestamp.exit.reclaimable.exit.i_crit_edge: ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %reclaimable.exit.i

cond.true.i.i:                                    ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #19
  %size.i.i = getelementptr inbounds %struct.sge_txq, ptr %q.0, i32 0, i32 2
  %82 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %83, %sub.i.i
  br label %reclaimable.exit.i

reclaimable.exit.i:                               ; preds = %cond.true.i.i, %skb_tx_timestamp.exit.reclaimable.exit.i_crit_edge
  %cond.i.i = phi i32 [ %add.i.i, %cond.true.i.i ], [ %sub.i.i, %skb_tx_timestamp.exit.reclaimable.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %tobool.not.i563 = icmp eq i32 %cond.i.i, 0
  br i1 %tobool.not.i563, label %reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge, label %if.then.i565

reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge: ; preds = %reclaimable.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %reclaim_completed_tx.exit

if.then.i565:                                     ; preds = %reclaimable.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %84 = tail call i32 @llvm.smin.i32(i32 %cond.i.i, i32 32) #17
  tail call void @free_tx_desc(ptr noundef %15, ptr noundef %q.0, i32 noundef %84, i1 noundef zeroext true) #17
  %85 = ptrtoint ptr %q.0 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %q.0, align 4
  %sub.i564 = sub i32 %86, %84
  store i32 %sub.i564, ptr %q.0, align 4
  br label %reclaim_completed_tx.exit

reclaim_completed_tx.exit:                        ; preds = %if.then.i565, %reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge
  %fcoe1.i = getelementptr i8, ptr %dev, i32 2936
  %87 = ptrtoint ptr %fcoe1.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %fcoe1.i, align 1
  %89 = and i8 %88, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i566 = icmp eq i8 %89, 0
  br i1 %tobool.not.i566, label %reclaim_completed_tx.exit.if.end46_crit_edge, label %if.end.i568

reclaim_completed_tx.exit.if.end46_crit_edge:     ; preds = %reclaim_completed_tx.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.end.i568:                                      ; preds = %reclaim_completed_tx.exit
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %90 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30458, i16 %91)
  %cmp.not.i567 = icmp eq i16 %91, -30458
  br i1 %cmp.not.i567, label %if.end5.i, label %if.end.i568.if.end46_crit_edge

if.end.i568.if.end46_crit_edge:                   ; preds = %if.end.i568
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.end5.i:                                        ; preds = %if.end.i568
  call void @__sanitizer_cov_trace_pc() #19
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %92 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i.i, align 4
  %head.i.i569 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %94 = ptrtoint ptr %head.i.i569 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %head.i.i569, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %95 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i570 = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %96 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i.i570, ptr %mac_header.i.i, align 2
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %97 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 14, ptr %mac_len.i, align 4
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %add.i.i571 = add i16 %conv.i.i570, 14
  %98 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %add.i.i571, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i572 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %conv1.i.i = add i16 %conv.i.i570, 28
  %99 = ptrtoint ptr %transport_header.i.i.i572 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv1.i.i, ptr %transport_header.i.i.i572, align 2
  %call.i = tail call zeroext i1 @cxgb_fcoe_sof_eof_supported(ptr noundef %15, ptr noundef %skb) #17
  %spec.select707 = select i1 %call.i, i64 -4611678313226665984, i64 -4611686018427387904
  br label %if.end46

if.end46:                                         ; preds = %if.end5.i, %if.end.i568.if.end46_crit_edge, %reclaim_completed_tx.exit.if.end46_crit_edge
  %cntrl.0 = phi i64 [ -4611686018427387904, %reclaim_completed_tx.exit.if.end46_crit_edge ], [ -4611686018427387904, %if.end.i568.if.end46_crit_edge ], [ %spec.select707, %if.end5.i ]
  %chip = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 15, i32 22
  %100 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %chip, align 8
  %shr = lshr i32 %101, 4
  %and = and i32 %shr, 15
  %encapsulation.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %102 = ptrtoint ptr %encapsulation.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load.i.i574 = load i16, ptr %encapsulation.i.i, align 8
  %103 = and i16 %bf.load.i.i574, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool.not.i.i575 = icmp eq i16 %103, 0
  br i1 %tobool.not.i.i575, label %if.end46.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.end46.if.else.i.i_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end46
  %104 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %end.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool2.not.i.i = icmp ne i16 %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp.i.i576 = icmp ugt i32 %and, 5
  %or.cond.i.i = and i1 %cmp.i.i576, %tobool2.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.if.end14.i.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i

land.lhs.true.i.i.if.end14.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end46.if.else.i.i_crit_edge
  %108 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %end.i.i, align 4
  %gso_type.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %109, i32 0, i32 8
  %110 = ptrtoint ptr %gso_type.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %gso_type.i.i, align 8
  %and.i.i = and i32 %111, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not.i.i, label %if.else8.i.i, label %if.else.i.i.if.end.i586_crit_edge

if.else.i.i.if.end.i586_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i586

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %gso_size10.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %109, i32 0, i32 4
  %112 = ptrtoint ptr %gso_size10.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %gso_size10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool12.not.i.i = icmp eq i16 %113, 0
  %add13.i.i = select i1 %tobool12.not.i.i, i32 32, i32 48
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.else8.i.i, %land.lhs.true.i.i.if.end14.i.i_crit_edge
  %hdrlen.0.i.i = phi i32 [ %add13.i.i, %if.else8.i.i ], [ 48, %land.lhs.true.i.i.if.end14.i.i_crit_edge ]
  %114 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len.i, align 4
  %sub.i.i577 = sub nuw nsw i32 256, %hdrlen.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %sub.i.i577)
  %cmp15.not.i.i = icmp ugt i32 %115, %sub.i.i577
  br i1 %cmp15.not.i.i, label %if.end14.i.i.if.end.i586_crit_edge, label %if.then.i580

if.end14.i.i.if.end.i586_crit_edge:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i586

if.then.i580:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.i578 = or i32 %hdrlen.0.i.i, 7
  %sub.i579 = add i32 %add.i578, %115
  %div46.i = lshr i32 %sub.i579, 3
  br label %calc_tx_flits.exit

if.end.i586:                                      ; preds = %if.end14.i.i.if.end.i586_crit_edge, %if.else.i.i.if.end.i586_crit_edge
  %116 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %119 to i32
  %mul.i.i582 = mul nuw nsw i32 %conv.i, 3
  %div4.i.i = lshr i32 %mul.i.i582, 1
  %and.i47.i = and i32 %conv.i, 1
  %add.i.i583 = or i32 %and.i47.i, 2
  %add1.i.i = add nuw nsw i32 %add.i.i583, %div4.i.i
  %gso_size.i584 = getelementptr inbounds %struct.skb_shared_info, ptr %117, i32 0, i32 4
  %120 = ptrtoint ptr %gso_size.i584 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %gso_size.i584, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool6.not.i585 = icmp eq i16 %121, 0
  br i1 %tobool6.not.i585, label %if.end.i586.if.end28.i_crit_edge, label %if.then7.i

if.end.i586.if.end28.i_crit_edge:                 ; preds = %if.end.i586
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28.i

if.then7.i:                                       ; preds = %if.end.i586
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool9.not.i = icmp ne i16 %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp.i587 = icmp ugt i32 %and, 5
  %or.cond.i588 = and i1 %cmp.i587, %tobool9.not.i
  br i1 %or.cond.i588, label %if.then7.i.if.end28.i_crit_edge, label %if.else.i

if.then7.i.if.end28.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28.i

if.else.i:                                        ; preds = %if.then7.i
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %117, i32 0, i32 8
  %122 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %gso_type.i, align 8
  %and.i = and i32 %123, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.else.i.if.end28.i_crit_edge, label %if.then14.i

if.else.i.if.end28.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %124 = getelementptr inbounds %struct.anon.53, ptr %skb, i32 0, i32 2
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 8
  %data.i589 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %127 = ptrtoint ptr %data.i589 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data.i589, align 4
  %129 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %131 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %data_len.i.i, align 8
  %sub.i51.i = sub i32 %130, %132
  %call16.i = tail call i32 @eth_get_headlen(ptr noundef %126, ptr noundef %128, i32 noundef %sub.i51.i) #17
  %sub17.i = add i32 %call16.i, -1
  %or.i = or i32 %sub17.i, 15
  %phi.bo.i = add i32 %or.i, 49
  %phi.bo4445.i = lshr exact i32 %phi.bo.i, 3
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then14.i, %if.else.i.if.end28.i_crit_edge, %if.then7.i.if.end28.i_crit_edge, %if.end.i586.if.end28.i_crit_edge
  %div24.pn.i = phi i32 [ %phi.bo4445.i, %if.then14.i ], [ 8, %if.then7.i.if.end28.i_crit_edge ], [ 6, %if.else.i.if.end28.i_crit_edge ], [ 4, %if.end.i586.if.end28.i_crit_edge ]
  %flits.0.i = add nuw nsw i32 %add1.i.i, %div24.pn.i
  br label %calc_tx_flits.exit

calc_tx_flits.exit:                               ; preds = %if.end28.i, %if.then.i580
  %retval.0.i590 = phi i32 [ %div46.i, %if.then.i580 ], [ %flits.0.i, %if.end28.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %retval.0.i590)
  %cmp.i591 = icmp ugt i32 %retval.0.i590, 64
  br i1 %cmp.i591, label %do.body2.i, label %flits_to_desc.exit, !prof !113

do.body2.i:                                       ; preds = %calc_tx_flits.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 718, 0\0A.popsection", ""() #17, !srcloc !122
  unreachable

flits_to_desc.exit:                               ; preds = %calc_tx_flits.exit
  %sub.i592 = add nuw nsw i32 %retval.0.i590, 7
  %div7.i = lshr i32 %sub.i592, 3
  %size.i = getelementptr inbounds %struct.sge_txq, ptr %q.0, i32 0, i32 2
  %133 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %size.i, align 4
  %135 = ptrtoint ptr %q.0 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %q.0, align 4
  %137 = xor i32 %136, -1
  %sub1.i = sub i32 %134, %div7.i
  %sub51 = add i32 %sub1.i, %137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub51)
  %cmp52 = icmp slt i32 %sub51, 0
  br i1 %cmp52, label %if.then60, label %if.end61, !prof !113

if.then60:                                        ; preds = %flits_to_desc.exit
  call void @__sanitizer_cov_trace_pc() #19
  %txq.i = getelementptr inbounds %struct.sge_eth_txq, ptr %q.0, i32 0, i32 1
  %138 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %txq.i, align 4
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %139, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #17
  %stops.i = getelementptr inbounds %struct.sge_txq, ptr %q.0, i32 0, i32 5
  %140 = ptrtoint ptr %stops.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %stops.i, align 4
  %inc.i = add i32 %141, 1
  store i32 %inc.i, ptr %stops.i, align 4
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 4
  %142 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.21, ptr noundef %dev, i32 noundef %conv) #20
  br label %cleanup

if.end61:                                         ; preds = %flits_to_desc.exit
  %144 = ptrtoint ptr %encapsulation.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %bf.load.i = load i16, ptr %encapsulation.i.i, align 8
  %145 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %145)
  %tobool.not.i593 = icmp eq i16 %145, 0
  br i1 %tobool.not.i593, label %if.end61.if.else.i601_crit_edge, label %land.lhs.true.i

if.end61.if.else.i601_crit_edge:                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i601

land.lhs.true.i:                                  ; preds = %if.end61
  %146 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %end.i.i, align 4
  %gso_size.i595 = getelementptr inbounds %struct.skb_shared_info, ptr %147, i32 0, i32 4
  %148 = ptrtoint ptr %gso_size.i595 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %gso_size.i595, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool2.not.i = icmp ne i16 %149, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp.i596 = icmp ugt i32 %and, 5
  %or.cond.i597 = and i1 %cmp.i596, %tobool2.not.i
  br i1 %or.cond.i597, label %land.lhs.true.i.if.end14.i_crit_edge, label %land.lhs.true.i.if.else.i601_crit_edge

land.lhs.true.i.if.else.i601_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i601

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.i

if.else.i601:                                     ; preds = %land.lhs.true.i.if.else.i601_crit_edge, %if.end61.if.else.i601_crit_edge
  %150 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %end.i.i, align 4
  %gso_type.i598 = getelementptr inbounds %struct.skb_shared_info, ptr %151, i32 0, i32 8
  %152 = ptrtoint ptr %gso_type.i598 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %gso_type.i598, align 8
  %and.i599 = and i32 %153, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i599)
  %tobool6.not.i600 = icmp eq i32 %and.i599, 0
  br i1 %tobool6.not.i600, label %if.else8.i, label %if.else.i601.is_eth_imm.exit_crit_edge

if.else.i601.is_eth_imm.exit_crit_edge:           ; preds = %if.else.i601
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_eth_imm.exit

if.else8.i:                                       ; preds = %if.else.i601
  call void @__sanitizer_cov_trace_pc() #19
  %gso_size10.i = getelementptr inbounds %struct.skb_shared_info, ptr %151, i32 0, i32 4
  %154 = ptrtoint ptr %gso_size10.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %gso_size10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %tobool12.not.i = icmp eq i16 %155, 0
  %add13.i = select i1 %tobool12.not.i, i32 32, i32 48
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else8.i, %land.lhs.true.i.if.end14.i_crit_edge
  %hdrlen.0.i = phi i32 [ %add13.i, %if.else8.i ], [ 48, %land.lhs.true.i.if.end14.i_crit_edge ]
  %156 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %len.i, align 4
  %sub.i603 = sub nuw nsw i32 256, %hdrlen.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %sub.i603)
  %cmp15.not.i = icmp ugt i32 %157, %sub.i603
  %.hdrlen.0.i = select i1 %cmp15.not.i, i32 0, i32 %hdrlen.0.i
  br label %is_eth_imm.exit

is_eth_imm.exit:                                  ; preds = %if.end14.i, %if.else.i601.is_eth_imm.exit_crit_edge
  %retval.0.i604 = phi i32 [ 0, %if.else.i601.is_eth_imm.exit_crit_edge ], [ %.hdrlen.0.i, %if.end14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i604)
  %tobool63.not = icmp eq i32 %retval.0.i604, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %145)
  %tobool67.not = icmp ne i16 %145, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp69 = icmp ugt i32 %and, 5
  %or.cond = and i1 %cmp69, %tobool67.not
  br i1 %or.cond, label %if.then71, label %is_eth_imm.exit.if.end73_crit_edge

is_eth_imm.exit.if.end73_crit_edge:               ; preds = %is_eth_imm.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end73

if.then71:                                        ; preds = %is_eth_imm.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call72 = tail call i32 @cxgb_encap_offload_supported(ptr noundef %skb)
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %is_eth_imm.exit.if.end73_crit_edge
  %tnl_type.0 = phi i32 [ %call72, %if.then71 ], [ 0, %is_eth_imm.exit.if.end73_crit_edge ]
  %pidx = getelementptr inbounds %struct.sge_txq, ptr %q.0, i32 0, i32 4
  %158 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %pidx, align 16
  %add75 = add nsw i32 %div7.i, -1
  %sub76 = add i32 %add75, %159
  %160 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub76, i32 %161)
  %cmp78.not = icmp ult i32 %sub76, %161
  %sub83 = select i1 %cmp78.not, i32 0, i32 %161
  %spec.select = sub i32 %sub76, %sub83
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %q.0, i32 0, i32 9
  %162 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %sdesc, align 4
  %arrayidx86 = getelementptr %struct.tx_sw_desc, ptr %163, i32 %spec.select
  br i1 %tobool63.not, label %land.lhs.true88, label %if.end73.if.end103_crit_edge

if.end73.if.end103_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103

land.lhs.true88:                                  ; preds = %if.end73
  %pdev_dev89 = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 4
  %164 = ptrtoint ptr %pdev_dev89 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pdev_dev89, align 16
  %addr = getelementptr %struct.tx_sw_desc, ptr %163, i32 %spec.select, i32 1
  %call91 = tail call i32 @cxgb4_map_skb(ptr noundef %165, ptr noundef %skb, ptr noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then100, label %land.lhs.true88.if.end103_crit_edge, !prof !113

land.lhs.true88.if.end103_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103

if.then100:                                       ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #19
  %166 = call ptr @memset(ptr %addr, i32 0, i32 72)
  %mapping_err = getelementptr inbounds %struct.sge_eth_txq, ptr %q.0, i32 0, i32 9
  %167 = ptrtoint ptr %mapping_err to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %mapping_err, align 8
  %inc = add i32 %168, 1
  store i32 %inc, ptr %mapping_err, align 8
  br label %out_free

if.end103:                                        ; preds = %land.lhs.true88.if.end103_crit_edge, %if.end73.if.end103_crit_edge
  %sub105 = add nuw nsw i32 %retval.0.i590, 1
  %div546 = lshr i32 %sub105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub51)
  %cmp106 = icmp ult i32 %sub51, 5
  br i1 %cmp106, label %if.then114, label %if.end103.if.end120_crit_edge, !prof !113

if.end103.if.end120_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end120

if.then114:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  %txq.i605 = getelementptr inbounds %struct.sge_eth_txq, ptr %q.0, i32 0, i32 1
  %169 = ptrtoint ptr %txq.i605 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %txq.i605, align 4
  %state.i.i606 = getelementptr inbounds %struct.netdev_queue, ptr %170, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i606) #17
  %stops.i607 = getelementptr inbounds %struct.sge_txq, ptr %q.0, i32 0, i32 5
  %171 = ptrtoint ptr %stops.i607 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %stops.i607, align 4
  %inc.i608 = add i32 %172, 1
  store i32 %inc.i608, ptr %stops.i607, align 4
  %or118 = or i32 %div546, -1073741824
  %spec.select547 = select i1 %cmp69, i32 %or118, i32 %div546
  br label %if.end120

if.end120:                                        ; preds = %if.then114, %if.end103.if.end120_crit_edge
  %wr_mid.0 = phi i32 [ %div546, %if.end103.if.end120_crit_edge ], [ %spec.select547, %if.then114 ]
  %desc = getelementptr inbounds %struct.sge_txq, ptr %q.0, i32 0, i32 8
  %173 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %desc, align 32
  %175 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %pidx, align 16
  %arrayidx124 = getelementptr %struct.tx_desc, ptr %174, i32 %176
  %equiq_to_len16 = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, ptr %arrayidx124, i32 0, i32 1
  %177 = ptrtoint ptr %equiq_to_len16 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %wr_mid.0, ptr %equiq_to_len16, align 4
  %r3 = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, ptr %arrayidx124, i32 0, i32 2
  %178 = ptrtoint ptr %r3 to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 0, ptr %r3, align 8
  %end.0 = getelementptr i64, ptr %arrayidx124, i32 %retval.0.i590
  br i1 %tobool63.not, label %if.end120.cond.end_crit_edge, label %cond.true

if.end120.cond.end_crit_edge:                     ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #19
  %179 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %len.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end120.cond.end_crit_edge
  %cond = phi i32 [ %180, %cond.true ], [ 0, %if.end120.cond.end_crit_edge ]
  %add140 = add i32 %cond, 16
  %gso_size141 = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 4
  %181 = ptrtoint ptr %gso_size141 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %gso_size141, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %tobool143.not = icmp eq i16 %182, 0
  br i1 %tobool143.not, label %if.else235, label %land.lhs.true144

land.lhs.true144:                                 ; preds = %cond.end
  %gso_type145 = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 8
  %183 = ptrtoint ptr %gso_type145 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %gso_type145, align 8
  %and146 = and i32 %184, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.then148, label %if.then202

if.then148:                                       ; preds = %land.lhs.true144
  %add.ptr149 = getelementptr %struct.fw_eth_tx_pkt_wr, ptr %arrayidx124, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tnl_type.0)
  %tobool151.not = icmp eq i32 %tnl_type.0, 0
  %cond.add140 = select i1 %tobool151.not, i32 %cond, i32 %add140
  %len.0 = add i32 %cond.add140, 32
  %or158 = or i32 %len.0, 134217728
  %185 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %or158, ptr %arrayidx124, align 8
  br i1 %tobool151.not, label %if.else189, label %if.then160

if.then160:                                       ; preds = %if.then148
  %head.i.i610 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %186 = ptrtoint ptr %head.i.i610 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %head.i.i610, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %188 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i611 = zext i16 %189 to i32
  %add.ptr.i.i612 = getelementptr i8, ptr %187, i32 %conv.i.i611
  %transport_header.i.i613 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %190 = ptrtoint ptr %transport_header.i.i613 to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %transport_header.i.i613, align 2
  %conv.i.i614 = zext i16 %191 to i32
  %sub.i.i617 = sub nsw i32 %conv.i.i614, %conv.i.i611
  %data.i.i620 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %192 = ptrtoint ptr %data.i.i620 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %data.i.i620, align 4
  %sub.ptr.lhs.cast.i.i621 = ptrtoint ptr %add.ptr.i.i612 to i32
  %sub.ptr.rhs.cast.i.i622 = ptrtoint ptr %193 to i32
  %sub.ptr.sub.i.i623 = sub i32 -14, %sub.ptr.rhs.cast.i.i622
  %sub.i624 = add i32 %sub.ptr.sub.i.i623, %sub.ptr.lhs.cast.i.i621
  %194 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %end.i.i, align 4
  %196 = ptrtoint ptr %add.ptr.i.i612 to i32
  call void @__asan_load1_noabort(i32 %196)
  %bf.load.i626 = load i8, ptr %add.ptr.i.i612, align 4
  %bf.lshr.mask.i = and i8 %bf.load.i626, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr.mask.i)
  %cmp.i627 = icmp eq i8 %bf.lshr.mask.i, 96
  %or.i628 = select i1 %cmp.i627, i32 -321912832, i32 -322961408
  %div.i = sdiv i32 %sub.i624, 4
  %shl.i = shl i32 %div.i, 16
  %div7.i629 = sdiv i32 %sub.i.i617, 4
  %shl8.i = shl nsw i32 %div7.i629, 4
  %cond12.i = select i1 %cmp.i627, i32 0, i32 8
  %cond17.i = select i1 %cmp.i627, i32 0, i32 2
  %or6.i = or i32 %shl8.i, %shl.i
  %or9.i = or i32 %or6.i, %or.i628
  %or13.i = or i32 %or9.i, %cond12.i
  %or14.i = or i32 %or13.i, %cond17.i
  %or18.i = or i32 %or14.i, 4
  %197 = ptrtoint ptr %add.ptr149 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %or18.i, ptr %add.ptr149, align 8
  %IpIdOffsetOut.i = getelementptr inbounds %struct.cpl_tx_tnl_lso, ptr %add.ptr149, i32 0, i32 1
  %198 = ptrtoint ptr %IpIdOffsetOut.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 0, ptr %IpIdOffsetOut.i, align 4
  %inner_mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %199 = ptrtoint ptr %inner_mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %inner_mac_header.i.i, align 2
  %mac_header.i.i630 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %201 = ptrtoint ptr %mac_header.i.i630 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %mac_header.i.i630, align 2
  %inner_network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %203 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %inner_network_header.i.i, align 4
  %205 = and i32 %tnl_type.0, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %205)
  %switch.i = icmp eq i32 %205, 2
  %spec.select.i631 = select i1 %switch.i, i16 -16384, i16 0
  %206 = getelementptr inbounds %struct.cpl_tx_tnl_lso, ptr %add.ptr149, i32 0, i32 2
  %conv.i96.i = zext i16 %204 to i32
  %conv.i93.i = zext i16 %202 to i32
  %conv.i91.i = zext i16 %200 to i32
  %gepdiff.i = sub nuw nsw i32 -14, %conv.i91.i
  %sub26.i = add nsw i32 %gepdiff.i, %conv.i96.i
  %gepdiff109.i = sub nsw i32 %conv.i91.i, %conv.i93.i
  %shl29.i = shl i32 %tnl_type.0, 12
  %or30.i = or i32 %gepdiff109.i, %shl29.i
  %207 = trunc i32 %or30.i to i16
  %conv36.i = or i16 %spec.select.i631, %207
  %208 = ptrtoint ptr %206 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %conv36.i, ptr %206, align 2
  %r1.i = getelementptr inbounds %struct.cpl_tx_tnl_lso, ptr %add.ptr149, i32 0, i32 3
  %209 = ptrtoint ptr %r1.i to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 0, ptr %r1.i, align 8
  %div37.i = sdiv i32 %sub26.i, 4
  %shl38.i = shl nsw i32 %div37.i, 16
  %210 = ptrtoint ptr %head.i.i610 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %head.i.i610, align 8
  %212 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %inner_network_header.i.i, align 4
  %conv.i.i103.i = zext i16 %213 to i32
  %add.ptr.i.i104.i = getelementptr i8, ptr %211, i32 %conv.i.i103.i
  %214 = ptrtoint ptr %add.ptr.i.i104.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %bf.load40.i = load i8, ptr %add.ptr.i.i104.i, align 4
  %bf.lshr41.mask.i = and i8 %bf.load40.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr41.mask.i)
  %cmp43.i = icmp eq i8 %bf.lshr41.mask.i, 96
  %shl45.i = select i1 %cmp43.i, i32 1048576, i32 0
  %or46.i = or i32 %shl45.i, %shl38.i
  %inner_transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %215 = ptrtoint ptr %inner_transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %inner_transport_header.i.i, align 2
  %conv.i105.i = zext i16 %216 to i32
  %sub.i108.i = sub nsw i32 %conv.i105.i, %conv.i.i103.i
  %217 = shl nsw i32 %sub.i108.i, 2
  %shl49.i = and i32 %217, -16
  %add.ptr.i.i.i.i = getelementptr i8, ptr %211, i32 %conv.i105.i
  %doff.i.i632 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %218 = ptrtoint ptr %doff.i.i632 to i32
  call void @__asan_load2_noabort(i32 %218)
  %bf.load.i.i633 = load i16, ptr %doff.i.i632, align 4
  %219 = lshr i16 %bf.load.i.i633, 12
  %div5286.i = zext i16 %219 to i32
  %or50.i = or i32 %or46.i, %div5286.i
  %or54.i = or i32 %or50.i, %shl49.i
  %Flow_to_TcpHdrLen.i = getelementptr inbounds %struct.cpl_tx_tnl_lso, ptr %add.ptr149, i32 0, i32 4
  %220 = ptrtoint ptr %Flow_to_TcpHdrLen.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %or54.i, ptr %Flow_to_TcpHdrLen.i, align 8
  %IpIdOffset.i = getelementptr inbounds %struct.cpl_tx_tnl_lso, ptr %add.ptr149, i32 0, i32 5
  %221 = ptrtoint ptr %IpIdOffset.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 0, ptr %IpIdOffset.i, align 4
  %gso_size.i634 = getelementptr inbounds %struct.skb_shared_info, ptr %195, i32 0, i32 4
  %222 = ptrtoint ptr %gso_size.i634 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %gso_size.i634, align 4
  %IpIdSplit_to_Mss.i = getelementptr inbounds %struct.cpl_tx_tnl_lso, ptr %add.ptr149, i32 0, i32 6
  %224 = ptrtoint ptr %IpIdSplit_to_Mss.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %223, ptr %IpIdSplit_to_Mss.i, align 2
  %TCPSeqOffset.i = getelementptr inbounds %struct.cpl_tx_tnl_lso, ptr %add.ptr149, i32 0, i32 7
  %225 = ptrtoint ptr %TCPSeqOffset.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %TCPSeqOffset.i, align 8
  %226 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %len.i, align 4
  %EthLenOffset_Size.i = getelementptr inbounds %struct.cpl_tx_tnl_lso, ptr %add.ptr149, i32 0, i32 8
  %228 = ptrtoint ptr %EthLenOffset_Size.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %EthLenOffset_Size.i, align 4
  %add.ptr162 = getelementptr %struct.cpl_tx_tnl_lso, ptr %add.ptr149, i32 1
  %229 = ptrtoint ptr %add.ptr.i.i612 to i32
  call void @__asan_load1_noabort(i32 %229)
  %bf.load163 = load i8, ptr %add.ptr.i.i612, align 4
  %bf.lshr164.mask = and i8 %bf.load163, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr164.mask)
  %cmp166 = icmp eq i8 %bf.lshr164.mask, 64
  br i1 %cmp166, label %if.then168, label %if.then160.if.end176_crit_edge

if.then160.if.end176_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end176

if.then168:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #19
  %check = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i612, i32 0, i32 7
  %230 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 0, ptr %check, align 2
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i612, i32 0, i32 2
  %231 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 0, ptr %tot_len, align 2
  %bf.clear170 = and i8 %bf.load163, 15
  %conv171 = zext i8 %bf.clear170 to i32
  %232 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr.i.i612, i32 %conv171) #17, !srcloc !126
  %asmresult.i = extractvalue { i32, ptr, i32, i32 } %232, 0
  %233 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i) #21, !srcloc !127
  %neg.i.i = xor i32 %233, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i636 = trunc i32 %shr.i.i to i16
  %neg = xor i16 %conv.i.i636, -1
  %234 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %neg, ptr %check, align 2
  br label %if.end176

if.end176:                                        ; preds = %if.then168, %if.then160.if.end176_crit_edge
  %235 = ptrtoint ptr %encapsulation.i.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %bf.load177 = load i16, ptr %encapsulation.i.i, align 8
  %236 = and i16 %bf.load177, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %236)
  %cmp182 = icmp eq i16 %236, 1536
  br i1 %cmp182, label %if.end176.if.end194.sink.split_crit_edge, label %if.end176.if.end194_crit_edge

if.end176.if.end194_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end194

if.end176.if.end194.sink.split_crit_edge:         ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end194.sink.split

if.else189:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #19
  %call190 = tail call fastcc ptr @write_tso_wr(ptr noundef %15, ptr noundef %skb, ptr noundef %add.ptr149)
  br label %if.end194.sink.split

if.end194.sink.split:                             ; preds = %if.else189, %if.end176.if.end194.sink.split_crit_edge
  %cpl.0.ph = phi ptr [ %call190, %if.else189 ], [ %add.ptr162, %if.end176.if.end194.sink.split_crit_edge ]
  %237 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %chip, align 8
  %call187 = tail call fastcc i64 @hwcsum(i32 noundef %238, ptr noundef %skb)
  br label %if.end194

if.end194:                                        ; preds = %if.end194.sink.split, %if.end176.if.end194_crit_edge
  %cntrl.1 = phi i64 [ %cntrl.0, %if.end176.if.end194_crit_edge ], [ %call187, %if.end194.sink.split ]
  %cpl.0 = phi ptr [ %add.ptr162, %if.end176.if.end194_crit_edge ], [ %cpl.0.ph, %if.end194.sink.split ]
  %add.ptr195 = getelementptr %struct.cpl_tx_pkt_core, ptr %cpl.0, i32 1
  %tso = getelementptr inbounds %struct.sge_eth_txq, ptr %q.0, i32 0, i32 5
  %239 = ptrtoint ptr %tso to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %tso, align 8
  %inc196 = add i32 %240, 1
  store i32 %inc196, ptr %tso, align 8
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 5
  %241 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %gso_segs, align 2
  br label %if.end263.sink.split

if.then202:                                       ; preds = %land.lhs.true144
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %243 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %data, align 4
  %245 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %247 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %data_len.i, align 8
  %sub.i638 = sub i32 %246, %248
  %call204 = tail call i32 @eth_get_headlen(ptr noundef %dev, ptr noundef %244, i32 noundef %sub.i638) #17
  %add205 = add i32 %call204, %add140
  %or207 = or i32 %add205, 469762048
  %249 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %or207, ptr %arrayidx124, align 8
  %u.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx124, i32 0, i32 3
  %250 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 0, ptr %u.i, align 8
  %head.i.i.i639 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %251 = ptrtoint ptr %head.i.i.i639 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %head.i.i.i639, align 8
  %network_header.i.i.i640 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %253 = ptrtoint ptr %network_header.i.i.i640 to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %network_header.i.i.i640, align 4
  %conv.i.i.i641 = zext i16 %254 to i32
  %add.ptr.i.i.i642 = getelementptr i8, ptr %252, i32 %conv.i.i.i641
  %255 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i.i644 = ptrtoint ptr %add.ptr.i.i.i642 to i32
  %sub.ptr.rhs.cast.i.i645 = ptrtoint ptr %256 to i32
  %sub.ptr.sub.i.i646 = sub i32 %sub.ptr.lhs.cast.i.i644, %sub.ptr.rhs.cast.i.i645
  %conv.i647 = trunc i32 %sub.ptr.sub.i.i646 to i8
  %ethlen.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx124, i32 0, i32 3, i32 0, i32 1
  %257 = ptrtoint ptr %ethlen.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %conv.i647, ptr %ethlen.i, align 1
  %transport_header.i.i648 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %258 = ptrtoint ptr %transport_header.i.i648 to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %transport_header.i.i648, align 2
  %260 = load i16, ptr %network_header.i.i.i640, align 4
  %sub.i.i649 = sub i16 %259, %260
  %iplen.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx124, i32 0, i32 3, i32 0, i32 2
  %261 = ptrtoint ptr %iplen.i to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %sub.i.i649, ptr %iplen.i, align 2
  %udplen.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx124, i32 0, i32 3, i32 0, i32 3
  %262 = ptrtoint ptr %udplen.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 8, ptr %udplen.i, align 4
  %rtplen.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx124, i32 0, i32 3, i32 0, i32 4
  %263 = ptrtoint ptr %rtplen.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 0, ptr %rtplen.i, align 1
  %r4.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx124, i32 0, i32 3, i32 0, i32 5
  %264 = ptrtoint ptr %r4.i to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 0, ptr %r4.i, align 2
  %265 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %end.i.i, align 4
  %gso_size.i651 = getelementptr inbounds %struct.skb_shared_info, ptr %266, i32 0, i32 4
  %267 = ptrtoint ptr %gso_size.i651 to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %gso_size.i651, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %268)
  %tobool.not.i652 = icmp eq i16 %268, 0
  br i1 %tobool.not.i652, label %if.else.i655, label %if.then202.write_eo_udp_wr.exit_crit_edge

if.then202.write_eo_udp_wr.exit_crit_edge:        ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #19
  br label %write_eo_udp_wr.exit

if.else.i655:                                     ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #19
  %269 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %len.i, align 4
  %sub.i654 = sub i32 %270, %call204
  %conv12.i = trunc i32 %sub.i654 to i16
  br label %write_eo_udp_wr.exit

write_eo_udp_wr.exit:                             ; preds = %if.else.i655, %if.then202.write_eo_udp_wr.exit_crit_edge
  %.sink.i = phi i16 [ %conv12.i, %if.else.i655 ], [ %268, %if.then202.write_eo_udp_wr.exit_crit_edge ]
  %271 = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx124, i32 0, i32 3, i32 0, i32 6
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %.sink.i, ptr %271, align 8
  %schedpktsize.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx124, i32 0, i32 3, i32 0, i32 7
  %273 = ptrtoint ptr %schedpktsize.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 %.sink.i, ptr %schedpktsize.i, align 2
  %274 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %len.i, align 4
  %sub19.i = sub i32 %275, %call204
  %plen.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx124, i32 0, i32 3, i32 0, i32 8
  %276 = ptrtoint ptr %plen.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %sub19.i, ptr %plen.i, align 4
  %add.ptr.i656 = getelementptr %struct.fw_eth_tx_eo_wr, ptr %arrayidx124, i32 1
  %277 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %chip, align 8
  %call212 = tail call fastcc i64 @hwcsum(i32 noundef %278, ptr noundef %skb)
  %add.ptr213 = getelementptr %struct.cpl_tx_pkt_core, ptr %add.ptr.i656, i32 1
  %279 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %stat.i.i, align 4
  %sub.ptr.lhs.cast.i658 = ptrtoint ptr %280 to i32
  %sub.ptr.rhs.cast.i659 = ptrtoint ptr %add.ptr213 to i32
  %sub.ptr.sub.i660 = sub i32 %sub.ptr.lhs.cast.i658, %sub.ptr.rhs.cast.i659
  call void @__sanitizer_cov_trace_cmp4(i32 %call204, i32 %sub.ptr.sub.i660)
  %cmp.not.i661 = icmp sgt i32 %call204, %sub.ptr.sub.i660
  %281 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %data, align 4
  br i1 %cmp.not.i661, label %if.else.i665, label %if.then.i663, !prof !113

if.then.i663:                                     ; preds = %write_eo_udp_wr.exit
  call void @__sanitizer_cov_trace_pc() #19
  %283 = call ptr @memcpy(ptr %add.ptr213, ptr %282, i32 %call204)
  %add.ptr.i662 = getelementptr i8, ptr %add.ptr213, i32 %call204
  br label %if.end.i669

if.else.i665:                                     ; preds = %write_eo_udp_wr.exit
  call void @__sanitizer_cov_trace_pc() #19
  %284 = call ptr @memcpy(ptr %add.ptr213, ptr %282, i32 %sub.ptr.sub.i660)
  %285 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %desc, align 4
  %287 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %data, align 4
  %add.ptr4.i = getelementptr i8, ptr %288, i32 %sub.ptr.sub.i660
  %sub.i664 = sub i32 %call204, %sub.ptr.sub.i660
  %289 = call ptr @memcpy(ptr %286, ptr %add.ptr4.i, i32 %sub.i664)
  %290 = load ptr, ptr %desc, align 4
  %add.ptr7.i = getelementptr i8, ptr %290, i32 %sub.i664
  br label %if.end.i669

if.end.i669:                                      ; preds = %if.else.i665, %if.then.i663
  %pos.addr.0.i = phi ptr [ %add.ptr.i662, %if.then.i663 ], [ %add.ptr7.i, %if.else.i665 ]
  %291 = ptrtoint ptr %pos.addr.0.i to i32
  %add.i666 = add i32 %291, 7
  %and.i667 = and i32 %add.i666, -8
  %292 = inttoptr i32 %and.i667 to ptr
  %and8.i = and i32 %add.i666, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i668 = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i668, label %if.end.i669.inline_tx_skb_header.exit_crit_edge, label %if.then10.i

if.end.i669.inline_tx_skb_header.exit_crit_edge:  ; preds = %if.end.i669
  call void @__sanitizer_cov_trace_pc() #19
  br label %inline_tx_skb_header.exit

if.then10.i:                                      ; preds = %if.end.i669
  call void @__sanitizer_cov_trace_pc() #19
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_store8_noabort(i32 %293)
  store i64 0, ptr %292, align 8
  %add.ptr11.i = getelementptr i64, ptr %292, i32 1
  br label %inline_tx_skb_header.exit

inline_tx_skb_header.exit:                        ; preds = %if.then10.i, %if.end.i669.inline_tx_skb_header.exit_crit_edge
  %retval.0.i670 = phi ptr [ %add.ptr11.i, %if.then10.i ], [ %292, %if.end.i669.inline_tx_skb_header.exit_crit_edge ]
  %cmp216 = icmp ugt ptr %add.ptr213, %retval.0.i670
  br i1 %cmp216, label %if.then224, label %inline_tx_skb_header.exit.if.end229_crit_edge, !prof !113

inline_tx_skb_header.exit.if.end229_crit_edge:    ; preds = %inline_tx_skb_header.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end229

if.then224:                                       ; preds = %inline_tx_skb_header.exit
  call void @__sanitizer_cov_trace_pc() #19
  %294 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %stat.i.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %end.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %295 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %296 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %desc, align 32
  %add.ptr228 = getelementptr i8, ptr %297, i32 %sub.ptr.sub
  br label %if.end229

if.end229:                                        ; preds = %if.then224, %inline_tx_skb_header.exit.if.end229_crit_edge
  %end.1 = phi ptr [ %add.ptr228, %if.then224 ], [ %end.0, %inline_tx_skb_header.exit.if.end229_crit_edge ]
  %uso = getelementptr inbounds %struct.sge_eth_txq, ptr %q.0, i32 0, i32 6
  %298 = ptrtoint ptr %uso to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %uso, align 4
  %inc230 = add i32 %299, 1
  store i32 %inc230, ptr %uso, align 4
  %gso_segs231 = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 5
  %300 = ptrtoint ptr %gso_segs231 to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %gso_segs231, align 2
  br label %if.end263.sink.split

if.else235:                                       ; preds = %cond.end
  %. = select i1 %call, i32 1174405120, i32 134217728
  %or242 = or i32 %add140, %.
  %302 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %or242, ptr %arrayidx124, align 8
  %add.ptr244 = getelementptr %struct.fw_eth_tx_pkt_wr, ptr %arrayidx124, i32 1
  %add.ptr245 = getelementptr %struct.cpl_tx_pkt_core, ptr %add.ptr244, i32 1
  %303 = ptrtoint ptr %encapsulation.i.i to i32
  call void @__asan_load2_noabort(i32 %303)
  %bf.load247 = load i16, ptr %encapsulation.i.i, align 8
  %304 = and i16 %bf.load247, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %304)
  %cmp252 = icmp eq i16 %304, 1536
  br i1 %cmp252, label %if.then254, label %if.else235.if.end263_crit_edge

if.else235.if.end263_crit_edge:                   ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end263

if.then254:                                       ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #19
  %305 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %chip, align 8
  %call257 = tail call fastcc i64 @hwcsum(i32 noundef %306, ptr noundef %skb)
  %or258 = or i64 %call257, 4611686018427387904
  br label %if.end263.sink.split

if.end263.sink.split:                             ; preds = %if.then254, %if.end229, %if.end194
  %conv232.sink.shrunk = phi i16 [ %301, %if.end229 ], [ 1, %if.then254 ], [ %242, %if.end194 ]
  %cntrl.2.ph = phi i64 [ %call212, %if.end229 ], [ %or258, %if.then254 ], [ %cntrl.1, %if.end194 ]
  %sgl_off.0.ph = phi i32 [ %call204, %if.end229 ], [ 0, %if.then254 ], [ 0, %if.end194 ]
  %cpl.1.ph = phi ptr [ %add.ptr.i656, %if.end229 ], [ %add.ptr244, %if.then254 ], [ %cpl.0, %if.end194 ]
  %end.2.ph = phi ptr [ %end.1, %if.end229 ], [ %end.0, %if.then254 ], [ %end.0, %if.end194 ]
  %sgl.0.ph = phi ptr [ %retval.0.i670, %if.end229 ], [ %add.ptr245, %if.then254 ], [ %add.ptr195, %if.end194 ]
  %conv232.sink = zext i16 %conv232.sink.shrunk to i32
  %tx_cso = getelementptr inbounds %struct.sge_eth_txq, ptr %q.0, i32 0, i32 7
  %307 = ptrtoint ptr %tx_cso to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %tx_cso, align 128
  %add234 = add i32 %308, %conv232.sink
  store i32 %add234, ptr %tx_cso, align 128
  br label %if.end263

if.end263:                                        ; preds = %if.end263.sink.split, %if.else235.if.end263_crit_edge
  %cntrl.2 = phi i64 [ %cntrl.0, %if.else235.if.end263_crit_edge ], [ %cntrl.2.ph, %if.end263.sink.split ]
  %sgl_off.0 = phi i32 [ 0, %if.else235.if.end263_crit_edge ], [ %sgl_off.0.ph, %if.end263.sink.split ]
  %cpl.1 = phi ptr [ %add.ptr244, %if.else235.if.end263_crit_edge ], [ %cpl.1.ph, %if.end263.sink.split ]
  %end.2 = phi ptr [ %end.0, %if.else235.if.end263_crit_edge ], [ %end.2.ph, %if.end263.sink.split ]
  %sgl.0 = phi ptr [ %add.ptr245, %if.else235.if.end263_crit_edge ], [ %sgl.0.ph, %if.end263.sink.split ]
  %309 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %stat.i.i, align 8
  %cmp266.not = icmp ult ptr %sgl.0, %310
  br i1 %cmp266.not, label %if.end263.if.end285_crit_edge, label %if.then274, !prof !112

if.end263.if.end285_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end285

if.then274:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #19
  %sub.ptr.lhs.cast277 = ptrtoint ptr %end.2 to i32
  %sub.ptr.rhs.cast278 = ptrtoint ptr %310 to i32
  %sub.ptr.sub279 = sub i32 %sub.ptr.lhs.cast277, %sub.ptr.rhs.cast278
  %311 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %desc, align 32
  %add.ptr282 = getelementptr i8, ptr %312, i32 %sub.ptr.sub279
  br label %if.end285

if.end285:                                        ; preds = %if.then274, %if.end263.if.end285_crit_edge
  %end.3 = phi ptr [ %add.ptr282, %if.then274 ], [ %end.2, %if.end263.if.end285_crit_edge ]
  %sgl.1 = phi ptr [ %312, %if.then274 ], [ %sgl.0, %if.end263.if.end285_crit_edge ]
  %313 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %313, i32 4)
  %bf.load286 = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load286)
  %tobool289.not = icmp sgt i32 %bf.load286, -1
  br i1 %tobool289.not, label %if.end285.if.end306_crit_edge, label %if.then290

if.end285.if.end306_crit_edge:                    ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end306

if.then290:                                       ; preds = %if.end285
  %vlan_ins = getelementptr inbounds %struct.sge_eth_txq, ptr %q.0, i32 0, i32 8
  %314 = ptrtoint ptr %vlan_ins to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %vlan_ins, align 4
  %inc291 = add i32 %315, 1
  store i32 %inc291, ptr %vlan_ins, align 4
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %316 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %vlan_tci, align 2
  %conv292 = zext i16 %317 to i64
  %shl293 = shl nuw nsw i64 %conv292, 44
  %or294 = or i64 %shl293, %cntrl.2
  %or295 = or i64 %or294, 1152921504606846976
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %318 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %318)
  %319 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30458, i16 %319)
  %cmp297 = icmp eq i16 %319, -30458
  br i1 %cmp297, label %if.then299, label %if.then290.if.end306_crit_edge

if.then290.if.end306_crit_edge:                   ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end306

if.then299:                                       ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #19
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %320 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %priority, align 4
  %and300 = shl i32 %321, 13
  %shl301 = and i32 %and300, 57344
  %conv302 = zext i32 %shl301 to i64
  %shl303 = shl nuw nsw i64 %conv302, 44
  %or304 = or i64 %shl303, %or295
  br label %if.end306

if.end306:                                        ; preds = %if.then299, %if.then290.if.end306_crit_edge, %if.end285.if.end306_crit_edge
  %cntrl.3 = phi i64 [ %cntrl.2, %if.end285.if.end306_crit_edge ], [ %or304, %if.then299 ], [ %or295, %if.then290.if.end306_crit_edge ]
  %tx_chan = getelementptr i8, ptr %dev, i32 2326
  %322 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %tx_chan, align 2
  %conv307 = zext i8 %323 to i32
  %shl308 = shl nuw nsw i32 %conv307, 16
  %pf = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 7
  %324 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %pf, align 4
  %shl310 = shl i32 %325, 8
  %spec.select548.v = select i1 %call, i32 -293601280, i32 -301989888
  %shl324.pn.in.in.in = getelementptr inbounds %struct.sge_eth_txq, ptr %q.0, i32 0, i32 2
  %326 = ptrtoint ptr %shl324.pn.in.in.in to i32
  call void @__asan_load1_noabort(i32 %326)
  %shl324.pn.in.in = load i8, ptr %shl324.pn.in.in.in, align 16
  %shl324.pn.in = zext i8 %shl324.pn.in.in to i32
  %shl324.pn = shl nuw nsw i32 %shl324.pn.in, 12
  %or309 = or i32 %shl310, %spec.select548.v
  %spec.select548 = or i32 %or309, %shl308
  %ctrl0.1 = or i32 %spec.select548, %shl324.pn
  %327 = ptrtoint ptr %cpl.1 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %ctrl0.1, ptr %cpl.1, align 8
  %pack = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %cpl.1, i32 0, i32 1
  %328 = ptrtoint ptr %pack to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 0, ptr %pack, align 4
  %329 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %len.i, align 4
  %conv334 = trunc i32 %330 to i16
  %len335 = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %cpl.1, i32 0, i32 2
  %331 = ptrtoint ptr %len335 to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 %conv334, ptr %len335, align 2
  %ctrl1 = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %cpl.1, i32 0, i32 3
  %332 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store8_noabort(i32 %332)
  store i64 %cntrl.3, ptr %ctrl1, align 8
  br i1 %tobool63.not, label %if.else339, label %if.then337

if.then337:                                       ; preds = %if.end306
  %333 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %stat.i.i, align 4
  %sub.ptr.lhs.cast.i674 = ptrtoint ptr %334 to i32
  %sub.ptr.rhs.cast.i675 = ptrtoint ptr %sgl.1 to i32
  %sub.ptr.sub.i676 = sub i32 %sub.ptr.lhs.cast.i674, %sub.ptr.rhs.cast.i675
  %335 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %336, i32 %sub.ptr.sub.i676)
  %cmp.not.i678 = icmp ugt i32 %336, %sub.ptr.sub.i676
  br i1 %cmp.not.i678, label %if.else15.i, label %if.then.i681, !prof !113

if.then.i681:                                     ; preds = %if.then337
  %data_len.i679 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %337 = ptrtoint ptr %data_len.i679 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %data_len.i679, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %338)
  %tobool2.not.i680 = icmp eq i32 %338, 0
  br i1 %tobool2.not.i680, label %if.then11.i, label %if.else.i684, !prof !112

if.then11.i:                                      ; preds = %if.then.i681
  call void @__sanitizer_cov_trace_pc() #19
  %data.i.i682 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %339 = ptrtoint ptr %data.i.i682 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %data.i.i682, align 4
  %341 = call ptr @memcpy(ptr %sgl.1, ptr %340, i32 %336)
  br label %if.end.i686

if.else.i684:                                     ; preds = %if.then.i681
  call void @__sanitizer_cov_trace_pc() #19
  %call.i683 = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef %sgl.1, i32 noundef %336) #17
  br label %if.end.i686

if.end.i686:                                      ; preds = %if.else.i684, %if.then11.i
  %342 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %len.i, align 4
  %add.ptr.i685 = getelementptr i8, ptr %sgl.1, i32 %343
  br label %if.end23.i

if.else15.i:                                      ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #19
  %call16.i687 = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef %sgl.1, i32 noundef %sub.ptr.sub.i676) #17
  %344 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %desc, align 4
  %346 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %len.i, align 4
  %sub.i689 = sub i32 %347, %sub.ptr.sub.i676
  %call18.i = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %sub.ptr.sub.i676, ptr noundef %345, i32 noundef %sub.i689) #17
  %348 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %desc, align 4
  %350 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %len.i, align 4
  %sub21.i = sub i32 %351, %sub.ptr.sub.i676
  %add.ptr22.i = getelementptr i8, ptr %349, i32 %sub21.i
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else15.i, %if.end.i686
  %pos.addr.0.i690 = phi ptr [ %add.ptr.i685, %if.end.i686 ], [ %add.ptr22.i, %if.else15.i ]
  %352 = ptrtoint ptr %pos.addr.0.i690 to i32
  %add.i691 = add i32 %352, 7
  %and24.i = and i32 %add.i691, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.cxgb4_inline_tx_skb.exit_crit_edge, label %if.then26.i

if.end23.i.cxgb4_inline_tx_skb.exit_crit_edge:    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cxgb4_inline_tx_skb.exit

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  %and.i692 = and i32 %add.i691, -8
  %353 = inttoptr i32 %and.i692 to ptr
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_store8_noabort(i32 %354)
  store i64 0, ptr %353, align 8
  br label %cxgb4_inline_tx_skb.exit

cxgb4_inline_tx_skb.exit:                         ; preds = %if.then26.i, %if.end23.i.cxgb4_inline_tx_skb.exit_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #17
  br label %if.end344

if.else339:                                       ; preds = %if.end306
  %addr341 = getelementptr %struct.tx_sw_desc, ptr %163, i32 %spec.select, i32 1
  tail call void @cxgb4_write_sgl(ptr noundef %skb, ptr noundef %q.0, ptr noundef %sgl.1, ptr noundef %end.3, i32 noundef %sgl_off.0, ptr noundef %addr341)
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %355 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i693 = icmp eq ptr %356, null
  br i1 %tobool.not.i693, label %do.body.i, label %if.then.i694

if.then.i694:                                     ; preds = %if.else339
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %356(ptr noundef %skb) #17
  %357 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr null, ptr %destructor.i, align 4
  %358 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr null, ptr %35, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.else339
  %359 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %35, align 4
  %tobool3.not.i = icmp eq ptr %360, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !112

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #17, !srcloc !123
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i694
  %361 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %skb, ptr %arrayidx86, align 4
  br label %if.end344

if.end344:                                        ; preds = %skb_orphan.exit, %cxgb4_inline_tx_skb.exit
  %362 = ptrtoint ptr %q.0 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %q.0, align 4
  %add.i696 = add i32 %363, %div7.i
  store i32 %add.i696, ptr %q.0, align 4
  %364 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %pidx, align 4
  %add1.i = add i32 %365, %div7.i
  store i32 %add1.i, ptr %pidx, align 4
  %366 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %367)
  %cmp.not.i698 = icmp ult i32 %add1.i, %367
  br i1 %cmp.not.i698, label %if.end344.txq_advance.exit_crit_edge, label %if.then.i700

if.end344.txq_advance.exit_crit_edge:             ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #19
  br label %txq_advance.exit

if.then.i700:                                     ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i699 = sub i32 %add1.i, %367
  %368 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %sub.i699, ptr %pidx, align 4
  br label %txq_advance.exit

txq_advance.exit:                                 ; preds = %if.then.i700, %if.end344.txq_advance.exit_crit_edge
  tail call void @cxgb4_ring_tx_db(ptr noundef %15, ptr noundef %q.0, i32 noundef %div7.i)
  br label %cleanup

out_free:                                         ; preds = %if.then100, %if.then24.out_free_crit_edge, %.out_free_crit_edge, %entry.out_free_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #17
  br label %cleanup

cleanup:                                          ; preds = %out_free, %txq_advance.exit, %if.then60, %if.then16, %if.then7
  %retval.0 = phi i32 [ 0, %out_free ], [ %call20, %if.then16 ], [ 16, %if.then60 ], [ 0, %txq_advance.exit ], [ %call8, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_ethofld_send_flowc(ptr noundef %dev, i32 noundef %eotid, i32 noundef %tc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %neotids.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 35
  %2 = ptrtoint ptr %neotids.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %neotids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %eotid)
  %cmp.i = icmp ugt i32 %3, %eotid
  br i1 %cmp.i, label %cxgb4_lookup_eotid.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cxgb4_lookup_eotid.exit:                          ; preds = %entry
  %eotid_tab.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 32
  %4 = ptrtoint ptr %eotid_tab.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eotid_tab.i, align 4
  %arrayidx.i = getelementptr %struct.eotid_entry, ptr %5, i32 %eotid
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %cxgb4_lookup_eotid.exit.cleanup_crit_edge, label %if.end

cxgb4_lookup_eotid.exit.cleanup_crit_edge:        ; preds = %cxgb4_lookup_eotid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %cxgb4_lookup_eotid.exit
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 32
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %completion = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 18
  tail call void @complete(ptr noundef %completion) #17
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %call.i = tail call ptr @__alloc_skb(i32 noundef 56, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #17
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull %7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %tc)
  %cmp.not = icmp eq i32 %tc, -1
  %state19 = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %state19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state19, align 4
  br i1 %cmp.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp16.not = icmp eq i32 %11, 0
  br i1 %cmp16.not, label %if.then15.if.end23_crit_edge, label %if.then15.out_free_skb_crit_edge

if.then15.out_free_skb_crit_edge:                 ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_skb

if.then15.if.end23_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp20.not = icmp eq i32 %11, 3
  br i1 %cmp20.not, label %if.else.if.end23_crit_edge, label %if.else.out_free_skb_crit_edge

if.else.out_free_skb_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_skb

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.end23:                                         ; preds = %if.else.if.end23_crit_edge, %if.then15.if.end23_crit_edge
  %next_state.0 = phi i32 [ 1, %if.then15.if.end23_crit_edge ], [ 4, %if.else.if.end23_crit_edge ]
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !112

do.body3.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #17, !srcloc !128
  unreachable

__skb_put.exit:                                   ; preds = %if.end23
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 56
  store ptr %add.ptr.i, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %17, 56
  store i32 %add.i, ptr %len9.i, align 4
  %18 = call ptr @memset(ptr %15, i32 0, i32 56)
  %eohw_rxq = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 11
  %19 = ptrtoint ptr %eohw_rxq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eohw_rxq, align 8
  %hwqid = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 15
  %21 = ptrtoint ptr %hwqid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hwqid, align 4
  %hwtid = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 14
  %23 = ptrtoint ptr %hwtid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hwtid, align 4
  %shl25 = shl i32 %24, 8
  %or = or i32 %shl25, 4
  %flowid_len16 = getelementptr inbounds %struct.fw_flowc_wr, ptr %15, i32 0, i32 1
  %25 = ptrtoint ptr %flowid_len16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or, ptr %flowid_len16, align 4
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 169869318, ptr %15, align 4
  %mnemval = getelementptr inbounds %struct.fw_flowc_wr, ptr %15, i32 0, i32 2
  %27 = ptrtoint ptr %mnemval to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %mnemval, align 4
  %pf = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pf, align 4
  %shl30 = shl i32 %29, 8
  %val = getelementptr inbounds %struct.fw_flowc_wr, ptr %15, i32 1, i32 1
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl30, ptr %val, align 4
  %arrayidx34 = getelementptr %struct.fw_flowc_wr, ptr %15, i32 2
  %31 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %arrayidx34, align 4
  %tx_chan = getelementptr i8, ptr %dev, i32 2326
  %32 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tx_chan, align 2
  %conv = zext i8 %33 to i32
  %val38 = getelementptr %struct.fw_flowc_wr, ptr %15, i32 2, i32 1
  %34 = ptrtoint ptr %val38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv, ptr %val38, align 4
  %arrayidx40 = getelementptr %struct.fw_flowc_wr, ptr %15, i32 3
  %35 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %arrayidx40, align 4
  %36 = load i8, ptr %tx_chan, align 2
  %conv43 = zext i8 %36 to i32
  %val46 = getelementptr %struct.fw_flowc_wr, ptr %15, i32 3, i32 1
  %37 = ptrtoint ptr %val46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv43, ptr %val46, align 4
  %arrayidx48 = getelementptr %struct.fw_flowc_wr, ptr %15, i32 4
  %38 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %arrayidx48, align 4
  %abs_id = getelementptr %struct.sge_ofld_rxq, ptr %20, i32 %22, i32 0, i32 12
  %39 = ptrtoint ptr %abs_id to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %abs_id, align 2
  %conv50 = zext i16 %40 to i32
  %val53 = getelementptr %struct.fw_flowc_wr, ptr %15, i32 4, i32 1
  %41 = ptrtoint ptr %val53 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv50, ptr %val53, align 4
  %arrayidx55 = getelementptr %struct.fw_flowc_wr, ptr %15, i32 5
  %42 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 11, ptr %arrayidx55, align 4
  %val59 = getelementptr %struct.fw_flowc_wr, ptr %15, i32 5, i32 1
  %43 = ptrtoint ptr %val59 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %tc, ptr %val59, align 4
  %arrayidx61 = getelementptr %struct.fw_flowc_wr, ptr %15, i32 6
  %44 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 10, ptr %arrayidx61, align 4
  %cond = select i1 %cmp.not, i32 2, i32 1
  %val67 = getelementptr %struct.fw_flowc_wr, ptr %15, i32 6, i32 1
  %45 = ptrtoint ptr %val67 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %cond, ptr %val67, align 4
  br i1 %cmp.not, label %if.then70, label %__skb_put.exit.if.end71_crit_edge

__skb_put.exit.if.end71_crit_edge:                ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.then70:                                        ; preds = %__skb_put.exit
  %pidx.i = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 4
  %46 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pidx.i, align 4
  %last_pidx.i = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 5
  %48 = ptrtoint ptr %last_pidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %last_pidx.i, align 4
  %sub.i = sub i32 %47, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.then70.if.end71_crit_edge, label %if.end.i

if.then70.if.end71_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.end.i:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i138 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i138, label %if.end4.i, label %if.end.i.while.body.lr.ph.i_crit_edge

if.end.i.while.body.lr.ph.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.lr.ph.i

if.end4.i:                                        ; preds = %if.end.i
  %ndesc.i = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 3
  %50 = ptrtoint ptr %ndesc.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ndesc.i, align 4
  %add.i139 = add i32 %51, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i139)
  %tobool5.not43.i = icmp eq i32 %add.i139, 0
  br i1 %tobool5.not43.i, label %if.end4.i.while.end.i_crit_edge, label %if.end4.i.while.body.lr.ph.i_crit_edge

if.end4.i.while.body.lr.ph.i_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.lr.ph.i

if.end4.i.while.end.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end4.i.while.body.lr.ph.i_crit_edge, %if.end.i.while.body.lr.ph.i_crit_edge
  %pktcount.048.i = phi i32 [ %add.i139, %if.end4.i.while.body.lr.ph.i_crit_edge ], [ %sub.i, %if.end.i.while.body.lr.ph.i_crit_edge ]
  %ndesc9.i = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 3
  %desc.i = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 2
  %inuse.i = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec45.in.i = phi i32 [ %pktcount.048.i, %while.body.lr.ph.i ], [ %dec45.i, %if.end19.i.while.body.i_crit_edge ]
  %pidx1.044.i = phi i32 [ %47, %while.body.lr.ph.i ], [ %pidx1.1.i, %if.end19.i.while.body.i_crit_edge ]
  %dec45.i = add i32 %dec45.in.i, -1
  %dec6.i = add i32 %pidx1.044.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6.i)
  %cmp7.i = icmp slt i32 %dec6.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %while.body.i.if.end11.i_crit_edge

while.body.i.if.end11.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11.i

if.then8.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %52 = ptrtoint ptr %ndesc9.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ndesc9.i, align 4
  %add10.i = add i32 %53, %dec6.i
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %while.body.i.if.end11.i_crit_edge
  %pidx1.1.i = phi i32 [ %add10.i, %if.then8.i ], [ %dec6.i, %while.body.i.if.end11.i_crit_edge ]
  %54 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc.i, align 4
  %arrayidx.i140 = getelementptr %struct.tx_sw_desc, ptr %55, i32 %pidx1.1.i
  %56 = ptrtoint ptr %arrayidx.i140 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i140, align 4
  %tobool13.not.i = icmp eq ptr %57, null
  br i1 %tobool13.not.i, label %if.end11.i.if.end19.i_crit_edge, label %if.then14.i

if.end11.i.if.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %57, i32 noundef 0) #17
  %58 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %desc.i, align 4
  %arrayidx16.i = getelementptr %struct.tx_sw_desc, ptr %59, i32 %pidx1.1.i
  %60 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %arrayidx16.i, align 4
  %61 = ptrtoint ptr %inuse.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %inuse.i, align 4
  %dec18.i = add i32 %62, -1
  store i32 %dec18.i, ptr %inuse.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end19.i_crit_edge
  %tobool5.not.i = icmp eq i32 %dec45.i, 0
  br i1 %tobool5.not.i, label %if.end19.i.while.end.i_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

if.end19.i.while.end.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.end.i:                                      ; preds = %if.end19.i.while.end.i_crit_edge, %if.end4.i.while.end.i_crit_edge
  %63 = ptrtoint ptr %last_pidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %last_pidx.i, align 4
  %add21.i = add i32 %64, 1
  %65 = ptrtoint ptr %pidx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add21.i, ptr %pidx.i, align 4
  br label %if.end71

if.end71:                                         ; preds = %while.end.i, %if.then70.if.end71_crit_edge, %__skb_put.exit.if.end71_crit_edge
  %inuse.i141 = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 9
  %66 = ptrtoint ptr %inuse.i141 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %inuse.i141, align 4
  %ndesc.i142 = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 3
  %68 = ptrtoint ptr %ndesc.i142 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ndesc.i142, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp.i143 = icmp eq i32 %67, %69
  br i1 %cmp.i143, label %if.end71.out_free_skb_crit_edge, label %if.end75

if.end71.out_free_skb_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_skb

if.end75:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #19
  %desc.i144 = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 2
  %70 = ptrtoint ptr %desc.i144 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %desc.i144, align 4
  %pidx.i145 = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 4
  %72 = ptrtoint ptr %pidx.i145 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pidx.i145, align 4
  %arrayidx.i146 = getelementptr %struct.tx_sw_desc, ptr %71, i32 %73
  %74 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i, ptr %arrayidx.i146, align 4
  %state76 = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 1
  %75 = ptrtoint ptr %state76 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %next_state.0, ptr %state76, align 4
  %76 = load i32, ptr %pidx.i145, align 4
  %flowc_idx = getelementptr inbounds %struct.sge_eosw_txq, ptr %7, i32 0, i32 8
  %77 = ptrtoint ptr %flowc_idx to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %flowc_idx, align 4
  %78 = ptrtoint ptr %ndesc.i142 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ndesc.i142, align 4
  %add.i.i = add i32 %76, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %79)
  %cmp.not.i.i = icmp ult i32 %add.i.i, %79
  %sub.i.i = select i1 %cmp.not.i.i, i32 0, i32 %79
  %spec.select.i.i = sub i32 %add.i.i, %sub.i.i
  %80 = ptrtoint ptr %pidx.i145 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %spec.select.i.i, ptr %pidx.i145, align 4
  %81 = ptrtoint ptr %inuse.i141 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %inuse.i141, align 4
  %add.i151 = add i32 %82, 1
  store i32 %add.i151, ptr %inuse.i141, align 4
  tail call fastcc void @ethofld_xmit(ptr noundef %dev, ptr noundef nonnull %7)
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #17
  br label %cleanup

out_free_skb:                                     ; preds = %if.end71.out_free_skb_crit_edge, %if.else.out_free_skb_crit_edge, %if.then15.out_free_skb_crit_edge
  %ret.0 = phi i32 [ 0, %if.then15.out_free_skb_crit_edge ], [ 0, %if.else.out_free_skb_crit_edge ], [ -12, %if.end71.out_free_skb_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 0) #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #17
  br label %cleanup

cleanup:                                          ; preds = %out_free_skb, %if.end75, %if.end10.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %cxgb4_lookup_eotid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free_skb ], [ 0, %if.end75 ], [ -5, %if.then9 ], [ -12, %cxgb4_lookup_eotid.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ethofld_xmit(ptr noundef %dev, ptr noundef %eosw_txq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.sge_eosw_txq, ptr %eosw_txq, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge80
    i32 4, label %entry.sw.bb_crit_edge81
  ]

entry.sw.bb_crit_edge81:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

entry.sw.bb_crit_edge80:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge80, %entry.sw.bb_crit_edge81
  %pidx = getelementptr inbounds %struct.sge_eosw_txq, ptr %eosw_txq, i32 0, i32 4
  %3 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pidx, align 4
  %last_pidx = getelementptr inbounds %struct.sge_eosw_txq, ptr %eosw_txq, i32 0, i32 5
  %5 = ptrtoint ptr %last_pidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_pidx, align 4
  %sub = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %ndesc = getelementptr inbounds %struct.sge_eosw_txq, ptr %eosw_txq, i32 0, i32 3
  %7 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ndesc, align 4
  %add = add i32 %8, %sub
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge
  %pktcount.0 = phi i32 [ %add, %if.then ], [ %sub, %sw.bb.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pktcount.0)
  %tobool.not38 = icmp eq i32 %pktcount.0, 0
  br i1 %tobool.not38, label %sw.epilog.cleanup_crit_edge, label %while.body.lr.ph

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.body.lr.ph:                                 ; preds = %sw.epilog
  %desc.i = getelementptr inbounds %struct.sge_eosw_txq, ptr %eosw_txq, i32 0, i32 2
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %hwqid.i = getelementptr inbounds %struct.sge_eosw_txq, ptr %eosw_txq, i32 0, i32 15
  %flowc_idx.i = getelementptr inbounds %struct.sge_eosw_txq, ptr %eosw_txq, i32 0, i32 8
  %cred.i = getelementptr inbounds %struct.sge_eosw_txq, ptr %eosw_txq, i32 0, i32 10
  %ncompl.i.i = getelementptr inbounds %struct.sge_eosw_txq, ptr %eosw_txq, i32 0, i32 11
  %last_compl.i.i = getelementptr inbounds %struct.sge_eosw_txq, ptr %eosw_txq, i32 0, i32 12
  %hwtid.i.i = getelementptr inbounds %struct.sge_eosw_txq, ptr %eosw_txq, i32 0, i32 14
  %tx_chan.i = getelementptr i8, ptr %dev, i32 2326
  %ndesc170.i = getelementptr inbounds %struct.sge_eosw_txq, ptr %eosw_txq, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %dec39.in = phi i32 [ %pktcount.0, %while.body.lr.ph ], [ %dec39, %while.cond.backedge.while.body_crit_edge ]
  %dec39 = add i32 %dec39.in, -1
  %9 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc.i, align 4
  %11 = ptrtoint ptr %last_pidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_pidx, align 4
  %arrayidx.i = getelementptr %struct.tx_sw_desc, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not = icmp eq ptr %14, null
  br i1 %tobool2.not, label %if.then3, label %if.end6

if.then3:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %ndesc170.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ndesc170.i, align 4
  %add.i = add i32 %12, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %16)
  %cmp.not.i = icmp ult i32 %add.i, %16
  %sub.i = select i1 %cmp.not.i, i32 0, i32 %16
  %spec.select.i = sub i32 %add.i, %sub.i
  %17 = ptrtoint ptr %last_pidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %last_pidx, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %ethofld_hard_xmit.exit, %if.then3
  %tobool.not = icmp eq i32 %dec39, 0
  br i1 %tobool.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %while.body
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i.i, align 8
  %eohw_txq2.i = getelementptr inbounds %struct.adapter, ptr %19, i32 0, i32 22, i32 10
  %20 = ptrtoint ptr %eohw_txq2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %eohw_txq2.i, align 4
  %22 = ptrtoint ptr %hwqid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hwqid.i, align 4
  %arrayidx.i22 = getelementptr %struct.sge_eohw_txq, ptr %21, i32 %23
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i22) #17
  %q.i = getelementptr %struct.sge_eohw_txq, ptr %21, i32 %23, i32 1
  %stat.i.i = getelementptr %struct.sge_eohw_txq, ptr %21, i32 %23, i32 1, i32 10
  %24 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stat.i.i, align 4
  %cidx.i.i = getelementptr inbounds %struct.sge_qstat, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %cidx.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load volatile i16, ptr %cidx.i.i, align 4
  %conv.i.i = zext i16 %27 to i32
  %cidx1.i.i = getelementptr %struct.sge_eohw_txq, ptr %21, i32 %23, i32 1, i32 3
  %28 = ptrtoint ptr %cidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cidx1.i.i, align 4
  %sub.i.i = sub i32 %conv.i.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end6.reclaim_completed_tx_imm.exit.i_crit_edge

if.end6.reclaim_completed_tx_imm.exit.i_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %reclaim_completed_tx_imm.exit.i

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %size.i.i = getelementptr %struct.sge_eohw_txq, ptr %21, i32 %23, i32 1, i32 2
  %30 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %31, %sub.i.i
  br label %reclaim_completed_tx_imm.exit.i

reclaim_completed_tx_imm.exit.i:                  ; preds = %if.then.i.i, %if.end6.reclaim_completed_tx_imm.exit.i_crit_edge
  %reclaim.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %sub.i.i, %if.end6.reclaim_completed_tx_imm.exit.i_crit_edge ]
  %32 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %q.i, align 4
  %sub3.i.i = sub i32 %33, %reclaim.0.i.i
  store i32 %sub3.i.i, ptr %q.i, align 4
  %34 = ptrtoint ptr %cidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i.i, ptr %cidx1.i.i, align 4
  %35 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc.i, align 4
  %37 = ptrtoint ptr %last_pidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %last_pidx, align 4
  %arrayidx3.i = getelementptr %struct.tx_sw_desc, ptr %36, i32 %38
  %39 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx3.i, align 4
  tail call void @skb_clone_tx_timestamp(ptr noundef %40) #17
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 17
  %41 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tx_flags.i.i, align 1
  %45 = and i8 %44, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i.i, label %reclaim_completed_tx_imm.exit.i.skb_tx_timestamp.exit.i_crit_edge, label %if.then.i264.i

reclaim_completed_tx_imm.exit.i.skb_tx_timestamp.exit.i_crit_edge: ; preds = %reclaim_completed_tx_imm.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_tx_timestamp.exit.i

if.then.i264.i:                                   ; preds = %reclaim_completed_tx_imm.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @skb_tstamp_tx(ptr noundef %40, ptr noundef null) #17
  br label %skb_tx_timestamp.exit.i

skb_tx_timestamp.exit.i:                          ; preds = %if.then.i264.i, %reclaim_completed_tx_imm.exit.i.skb_tx_timestamp.exit.i_crit_edge
  %desc6.i = getelementptr %struct.sge_eohw_txq, ptr %21, i32 %23, i32 1, i32 8
  %46 = ptrtoint ptr %desc6.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %desc6.i, align 4
  %pidx.i = getelementptr %struct.sge_eohw_txq, ptr %21, i32 %23, i32 1, i32 4
  %48 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pidx.i, align 4
  %arrayidx8.i = getelementptr %struct.tx_desc, ptr %47, i32 %49
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp.not.i25 = icmp eq i32 %51, 3
  br i1 %cmp.not.i25, label %skb_tx_timestamp.exit.i.if.else16.i_crit_edge, label %land.end.i

skb_tx_timestamp.exit.i.if.else16.i_crit_edge:    ; preds = %skb_tx_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else16.i

land.end.i:                                       ; preds = %skb_tx_timestamp.exit.i
  %52 = ptrtoint ptr %last_pidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %last_pidx, align 4
  %54 = ptrtoint ptr %flowc_idx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flowc_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp10.i = icmp eq i32 %53, %55
  br i1 %cmp10.i, label %if.then.i, label %land.end.i.if.else16.i_crit_edge, !prof !113

land.end.i.if.else16.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else16.i

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 6
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i, align 4
  %sub.i26 = add i32 %57, 7
  %div263.i = lshr i32 %sub.i26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp13.i = icmp eq i32 %51, 1
  %..i = select i1 %cmp13.i, i32 2, i32 5
  br label %if.end22.i

if.else16.i:                                      ; preds = %land.end.i.if.else16.i_crit_edge, %skb_tx_timestamp.exit.i.if.else16.i_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 19
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 6
  %60 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 7
  %62 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data_len.i.i, align 8
  %sub.i265.i = sub i32 %61, %63
  %call18.i = tail call i32 @eth_get_headlen(ptr noundef %dev, ptr noundef %59, i32 noundef %sub.i265.i) #17
  %64 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.i.i, align 4
  %sub20.i = sub i32 %65, %call18.i
  %66 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.not.i267.i = icmp eq i16 %69, 0
  br i1 %tobool.not.i267.i, label %if.else16.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.else16.i.if.end.i.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #19
  %gso_type.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %67, i32 0, i32 8
  %70 = ptrtoint ptr %gso_type.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %gso_type.i.i, align 8
  %and.i.i = and i32 %71, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 64, i32 48
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.else16.i.if.end.i.i_crit_edge
  %wrlen.0.i.i = phi i32 [ 48, %if.else16.i.if.end.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %67, i32 0, i32 2
  %72 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %nr_frags.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp.not.i.i = icmp eq i8 %73, 0
  br i1 %cmp.not.i.i, label %if.else29.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end.i.i
  %74 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i.i = sub i32 %65, %75
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %call18.i)
  %tobool15.not.i.i = icmp eq i32 %sub.i.i.i, %call18.i
  %conv25.i.i = zext i8 %73 to i32
  br i1 %tobool15.not.i.i, label %if.else.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %mul.i.i.i = mul nuw nsw i32 %conv25.i.i, 3
  %div4.i.i.i = lshr i32 %mul.i.i.i, 1
  %and.i.i.i = and i32 %conv25.i.i, 1
  %add.i.i.i = or i32 %and.i.i.i, 2
  %add1.i.i.i = add nuw nsw i32 %add.i.i.i, %div4.i.i.i
  br label %ethofld_calc_tx_flits.exit.i

if.else.i.i:                                      ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %dec.i.i.i = add nsw i32 %conv25.i.i, -1
  %mul.i7.i.i = mul nuw nsw i32 %dec.i.i.i, 3
  %div4.i8.i.i = lshr i32 %mul.i7.i.i, 1
  %and.i9.i.i = and i32 %dec.i.i.i, 1
  %add.i10.i.i = or i32 %and.i9.i.i, 2
  %add1.i11.i.i = add nuw i32 %add.i10.i.i, %div4.i8.i.i
  br label %ethofld_calc_tx_flits.exit.i

if.else29.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %call18.i)
  %tobool31.not.i.i = icmp eq i32 %65, %call18.i
  %spec.select12.i.i = select i1 %tobool31.not.i.i, i32 0, i32 2
  br label %ethofld_calc_tx_flits.exit.i

ethofld_calc_tx_flits.exit.i:                     ; preds = %if.else29.i.i, %if.else.i.i, %if.then16.i.i
  %nsgl.0.i.i = phi i32 [ %add1.i.i.i, %if.then16.i.i ], [ %add1.i11.i.i, %if.else.i.i ], [ %spec.select12.i.i, %if.else29.i.i ]
  %add3.i.i = add i32 %call18.i, 15
  %div1.i.i = and i32 %add3.i.i, 2032
  %add4.i.i = add nuw nsw i32 %wrlen.0.i.i, %div1.i.i
  %div72.i.i = lshr exact i32 %add4.i.i, 3
  %conv37.i.i = and i32 %div72.i.i, 254
  %add39.i.i = add i32 %nsgl.0.i.i, %conv37.i.i
  br label %if.end22.i

if.end22.i:                                       ; preds = %ethofld_calc_tx_flits.exit.i, %if.then.i
  %76 = phi i1 [ true, %if.then.i ], [ false, %ethofld_calc_tx_flits.exit.i ]
  %hdr_len.0.i = phi i32 [ %57, %if.then.i ], [ %call18.i, %ethofld_calc_tx_flits.exit.i ]
  %data_len.0.i = phi i32 [ 0, %if.then.i ], [ %sub20.i, %ethofld_calc_tx_flits.exit.i ]
  %next_state.1.i = phi i32 [ %..i, %if.then.i ], [ -1, %ethofld_calc_tx_flits.exit.i ]
  %flits.0.in.i = phi i32 [ %div263.i, %if.then.i ], [ %add39.i.i, %ethofld_calc_tx_flits.exit.i ]
  %conv23.i = and i32 %flits.0.in.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv23.i)
  %cmp.i269.i = icmp ugt i32 %conv23.i, 64
  br i1 %cmp.i269.i, label %do.body2.i.i, label %flits_to_desc.exit.i, !prof !113

do.body2.i.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 718, 0\0A.popsection", ""() #17, !srcloc !122
  unreachable

flits_to_desc.exit.i:                             ; preds = %if.end22.i
  %sub.i270.i = add nuw nsw i32 %conv23.i, 7
  %div7.i.i = lshr i32 %sub.i270.i, 3
  %mul.i = shl nuw nsw i32 %conv23.i, 3
  %sub28.i = add nuw nsw i32 %mul.i, 15
  %div29262.i = lshr i32 %sub28.i, 4
  %size.i271.i = getelementptr %struct.sge_eohw_txq, ptr %21, i32 %23, i32 1, i32 2
  %77 = ptrtoint ptr %size.i271.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size.i271.i, align 4
  %79 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %q.i, align 4
  %81 = xor i32 %80, -1
  %sub1.i.i = sub i32 %78, %div7.i.i
  %sub33.i = add i32 %sub1.i.i, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33.i)
  %cmp34.i = icmp slt i32 %sub33.i, 0
  br i1 %cmp34.i, label %flits_to_desc.exit.i.ethofld_hard_xmit.exit.thread_crit_edge, label %lor.rhs.i, !prof !113

flits_to_desc.exit.i.ethofld_hard_xmit.exit.thread_crit_edge: ; preds = %flits_to_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ethofld_hard_xmit.exit.thread

lor.rhs.i:                                        ; preds = %flits_to_desc.exit.i
  %82 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cred.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %div29262.i)
  %cmp36.i = icmp ult i32 %83, %div29262.i
  br i1 %cmp36.i, label %lor.rhs.i.ethofld_hard_xmit.exit.thread_crit_edge, label %if.end45.i, !prof !113

lor.rhs.i.ethofld_hard_xmit.exit.thread_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ethofld_hard_xmit.exit.thread

if.end45.i:                                       ; preds = %lor.rhs.i
  br i1 %76, label %if.then53.i, label %if.end57.i, !prof !113

if.then53.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #19
  %84 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %next_state.1.i, ptr %state, align 4
  %sub56.i = sub i32 %83, %div29262.i
  %85 = ptrtoint ptr %cred.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub56.i, ptr %cred.i, align 4
  %86 = ptrtoint ptr %ncompl.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ncompl.i.i, align 4
  %inc.i = add i32 %87, 1
  store i32 %inc.i, ptr %ncompl.i.i, align 4
  %88 = ptrtoint ptr %last_compl.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %last_compl.i.i, align 4
  br label %write_wr_headers.i

if.end57.i:                                       ; preds = %if.end45.i
  %89 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %end.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 18
  %91 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 15, i32 0, i32 20
  %93 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %94 to i32
  %add.ptr.i.i.i273.i = getelementptr i8, ptr %92, i32 %conv.i.i.i.i
  %95 = ptrtoint ptr %add.ptr.i.i.i273.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i.i273.i, align 4
  %bf.lshr.mask.i.i = and i8 %bf.load.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr.mask.i.i)
  %cmp.i274.i = icmp eq i8 %bf.lshr.mask.i.i, 96
  %nexthdr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i273.i, i32 0, i32 3
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i273.i, i32 0, i32 6
  %cond.in.in.i.i = select i1 %cmp.i274.i, ptr %nexthdr.i.i, ptr %protocol.i.i
  %96 = ptrtoint ptr %cond.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %cond.in105.i.i = load i8, ptr %cond.in.in.i.i, align 1
  %gso_size.i276.i = getelementptr inbounds %struct.skb_shared_info, ptr %90, i32 0, i32 4
  %97 = ptrtoint ptr %gso_size.i276.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %gso_size.i276.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool.not.i277.i = icmp eq i16 %98, 0
  br i1 %tobool.not.i277.i, label %if.end57.i.if.end.i282.i_crit_edge, label %land.lhs.true.i281.i

if.end57.i.if.end.i282.i_crit_edge:               ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i282.i

land.lhs.true.i281.i:                             ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #19
  %gso_type.i278.i = getelementptr inbounds %struct.skb_shared_info, ptr %90, i32 0, i32 8
  %99 = ptrtoint ptr %gso_type.i278.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %gso_type.i278.i, align 8
  %and.i279.i = and i32 %100, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i279.i)
  %tobool11.not.i.i = icmp eq i32 %and.i279.i, 0
  %spec.select.i280.i = select i1 %tobool11.not.i.i, i32 32, i32 16
  br label %if.end.i282.i

if.end.i282.i:                                    ; preds = %land.lhs.true.i281.i, %if.end57.i.if.end.i282.i_crit_edge
  %immd_len.0.i.i = phi i32 [ 16, %if.end57.i.if.end.i282.i_crit_edge ], [ %spec.select.i280.i, %land.lhs.true.i281.i ]
  %add13.i.i = add i32 %immd_len.0.i.i, %hdr_len.0.i
  %101 = ptrtoint ptr %ncompl.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ncompl.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool14.not.i.i = icmp eq i32 %102, 0
  br i1 %tobool14.not.i.i, label %if.end.i282.i.if.then19.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i282.i.if.then19.i.i_crit_edge:            ; preds = %if.end.i282.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i282.i
  %103 = ptrtoint ptr %last_compl.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %last_compl.i.i, align 4
  %add15.i.i = add i32 %104, %div29262.i
  %ofldq_wr_cred.i.i = getelementptr inbounds %struct.adapter, ptr %19, i32 0, i32 15, i32 29
  %105 = ptrtoint ptr %ofldq_wr_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ofldq_wr_cred.i.i, align 4
  %div16107.i.i = lshr i32 %106, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i.i, i32 %div16107.i.i)
  %cmp17.not.i.i = icmp ult i32 %add15.i.i, %div16107.i.i
  br i1 %cmp17.not.i.i, label %lor.lhs.false.i.i.if.end22.i.i_crit_edge, label %lor.lhs.false.i.i.if.then19.i.i_crit_edge

lor.lhs.false.i.i.if.then19.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

lor.lhs.false.i.i.if.end22.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22.i.i

if.then19.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then19.i.i_crit_edge, %if.end.i282.i.if.then19.i.i_crit_edge
  %inc.i.i = add i32 %102, 1
  %107 = ptrtoint ptr %ncompl.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %inc.i.i, ptr %ncompl.i.i, align 4
  %108 = ptrtoint ptr %last_compl.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %last_compl.i.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then19.i.i, %lor.lhs.false.i.i.if.end22.i.i_crit_edge
  %compl.0.off0.i.i = phi i32 [ 2097152, %if.then19.i.i ], [ 0, %lor.lhs.false.i.i.if.end22.i.i_crit_edge ]
  %or.i.i = or i32 %add13.i.i, %compl.0.off0.i.i
  %or26.i.i = or i32 %or.i.i, 469762048
  %109 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or26.i.i, ptr %arrayidx8.i, align 8
  %110 = ptrtoint ptr %hwtid.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %hwtid.i.i, align 4
  %shl28.i.i = shl i32 %111, 8
  %or29.i.i = or i32 %shl28.i.i, %div29262.i
  %equiq_to_len16.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 1
  %112 = ptrtoint ptr %equiq_to_len16.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %or29.i.i, ptr %equiq_to_len16.i.i, align 4
  %r3.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 2
  %113 = ptrtoint ptr %r3.i.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 0, ptr %r3.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %cond.in105.i.i)
  %cmp31.i.i = icmp eq i8 %cond.in105.i.i, 17
  %u.i.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3
  br i1 %cmp31.i.i, label %if.then33.i.i, label %if.else.i286.i

if.then33.i.i:                                    ; preds = %if.end22.i.i
  %114 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %u.i.i.i, align 8
  %115 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %head.i.i.i.i, align 8
  %117 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %118 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %116, i32 %conv.i.i.i.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 19
  %119 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %120 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i8
  %ethlen.i.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 1
  %121 = ptrtoint ptr %ethlen.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv.i.i.i, ptr %ethlen.i.i.i, align 1
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 15, i32 0, i32 19
  %122 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %transport_header.i.i.i.i, align 2
  %124 = load i16, ptr %network_header.i.i.i.i, align 4
  %sub.i.i.i.i = sub i16 %123, %124
  %iplen.i.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 2
  %125 = ptrtoint ptr %iplen.i.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %sub.i.i.i.i, ptr %iplen.i.i.i, align 2
  %udplen.i.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 3
  %126 = ptrtoint ptr %udplen.i.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 8, ptr %udplen.i.i.i, align 4
  %rtplen.i.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 4
  %127 = ptrtoint ptr %rtplen.i.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %rtplen.i.i.i, align 1
  %r4.i.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 5
  %128 = ptrtoint ptr %r4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %r4.i.i.i, align 2
  %129 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %130, i32 0, i32 4
  %131 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool.not.i.i.i = icmp eq i16 %132, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then33.i.i.write_eo_udp_wr.exit.i.i_crit_edge

if.then33.i.i.write_eo_udp_wr.exit.i.i_crit_edge: ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %write_eo_udp_wr.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 6
  %133 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len.i.i.i, align 4
  %sub.i.i283.i = sub i32 %134, %hdr_len.0.i
  %conv12.i.i.i = trunc i32 %sub.i.i283.i to i16
  br label %write_eo_udp_wr.exit.i.i

write_eo_udp_wr.exit.i.i:                         ; preds = %if.else.i.i.i, %if.then33.i.i.write_eo_udp_wr.exit.i.i_crit_edge
  %.sink.i.i.i = phi i16 [ %conv12.i.i.i, %if.else.i.i.i ], [ %132, %if.then33.i.i.write_eo_udp_wr.exit.i.i_crit_edge ]
  %135 = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 6
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %.sink.i.i.i, ptr %135, align 8
  %schedpktsize.i.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 7
  %137 = ptrtoint ptr %schedpktsize.i.i.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %.sink.i.i.i, ptr %schedpktsize.i.i.i, align 2
  %len18.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 6
  %138 = ptrtoint ptr %len18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %len18.i.i.i, align 4
  %sub19.i.i.i = sub i32 %139, %hdr_len.0.i
  %plen.i.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 8
  %140 = ptrtoint ptr %plen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %sub19.i.i.i, ptr %plen.i.i.i, align 4
  %add.ptr.i.i284.i = getelementptr %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 1
  br label %write_eo_wr.exit.i

if.else.i286.i:                                   ; preds = %if.end22.i.i
  %141 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %u.i.i.i, align 8
  %142 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %head.i.i.i.i, align 8
  %144 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i120.i.i = zext i16 %145 to i32
  %add.ptr.i.i121.i.i = getelementptr i8, ptr %143, i32 %conv.i.i120.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 19
  %146 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i121.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %147 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv36.i.i = trunc i32 %sub.ptr.sub.i.i.i to i8
  %ethlen.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 1
  %148 = ptrtoint ptr %ethlen.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv36.i.i, ptr %ethlen.i.i, align 1
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 15, i32 0, i32 19
  %149 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %transport_header.i.i.i, align 2
  %151 = load i16, ptr %network_header.i.i.i.i, align 4
  %sub.i123.i.i = sub i16 %150, %151
  %iplen.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 2
  %152 = ptrtoint ptr %iplen.i.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %sub.i123.i.i, ptr %iplen.i.i, align 2
  %153 = load ptr, ptr %head.i.i.i.i, align 8
  %154 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i125.i.i = zext i16 %154 to i32
  %add.ptr.i.i.i126.i.i = getelementptr i8, ptr %153, i32 %conv.i.i.i125.i.i
  %doff.i.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i126.i.i, i32 0, i32 4
  %155 = ptrtoint ptr %doff.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %bf.load.i.i.i.i = load i16, ptr %doff.i.i.i.i, align 4
  %156 = lshr i16 %bf.load.i.i.i.i, 10
  %157 = trunc i16 %156 to i8
  %conv42.i.i = and i8 %157, 60
  %tcplen.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 3
  %158 = ptrtoint ptr %tcplen.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv42.i.i, ptr %tcplen.i.i, align 4
  %tsclk_tsoff.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 4
  %159 = ptrtoint ptr %tsclk_tsoff.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %tsclk_tsoff.i.i, align 1
  %r4.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 5
  %160 = ptrtoint ptr %r4.i.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %r4.i.i, align 2
  %r5.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 7
  %161 = ptrtoint ptr %r5.i.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 0, ptr %r5.i.i, align 2
  %len.i285.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 6
  %162 = ptrtoint ptr %len.i285.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %len.i285.i, align 4
  %sub47.i.i = sub i32 %163, %hdr_len.0.i
  %plen.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 8
  %164 = ptrtoint ptr %plen.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %sub47.i.i, ptr %plen.i.i, align 4
  %165 = ptrtoint ptr %gso_size.i276.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %gso_size.i276.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %166)
  %tobool50.not.i.i = icmp eq i16 %166, 0
  br i1 %tobool50.not.i.i, label %if.else55.i.i, label %if.then51.i.i

if.then51.i.i:                                    ; preds = %if.else.i286.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i = getelementptr %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 1
  %mss.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 6
  %167 = ptrtoint ptr %mss.i.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %166, ptr %mss.i.i, align 8
  %168 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %head.i.i.i.i, align 8
  %170 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i129.i.i = zext i16 %171 to i32
  %add.ptr.i.i.i130.i.i = getelementptr i8, ptr %169, i32 %conv.i.i.i129.i.i
  %172 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i132.i.i = ptrtoint ptr %add.ptr.i.i.i130.i.i to i32
  %sub.ptr.rhs.cast.i.i133.i.i = ptrtoint ptr %173 to i32
  %sub.ptr.sub.i.i134.i.i = sub i32 -14, %sub.ptr.rhs.cast.i.i133.i.i
  %sub.i135.i.i = add i32 %sub.ptr.sub.i.i134.i.i, %sub.ptr.lhs.cast.i.i132.i.i
  %174 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i137.i.i = zext i16 %175 to i32
  %sub.i.i138.i.i = sub nsw i32 %conv.i.i137.i.i, %conv.i.i.i129.i.i
  %176 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %end.i.i.i, align 4
  %gso_type.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %177, i32 0, i32 8
  %178 = ptrtoint ptr %gso_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %gso_type.i.i.i, align 8
  %and.i.i287.i = and i32 %179, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i287.i)
  %tobool.not.i140.i.i = icmp eq i32 %and.i.i287.i, 0
  %spec.select.i.i.i = select i1 %tobool.not.i140.i.i, i32 -306184192, i32 -305135616
  %div.i.i.i = sdiv i32 %sub.i135.i.i, 4
  %shl4.i.i.i = shl i32 %div.i.i.i, 16
  %div6.i.i.i = sdiv i32 %sub.i.i138.i.i, 4
  %shl7.i.i.i = shl nsw i32 %div6.i.i.i, 4
  %add.ptr.i.i35.i.i.i = getelementptr i8, ptr %169, i32 %conv.i.i137.i.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i35.i.i.i, i32 0, i32 4
  %180 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i16 %bf.load.i.i.i, 12
  %conv10.i.i.i = zext i16 %bf.lshr.i.i.i to i32
  %or5.i.i.i = or i32 %shl7.i.i.i, %shl4.i.i.i
  %or8.i.i.i = or i32 %or5.i.i.i, %spec.select.i.i.i
  %or12.i.i.i = or i32 %or8.i.i.i, %conv10.i.i.i
  %181 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %or12.i.i.i, ptr %add.ptr.i.i, align 4
  %ipid_ofst.i.i.i = getelementptr %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 1, i32 1
  %182 = ptrtoint ptr %ipid_ofst.i.i.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 0, ptr %ipid_ofst.i.i.i, align 4
  %gso_size.i141.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %177, i32 0, i32 4
  %183 = ptrtoint ptr %gso_size.i141.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %gso_size.i141.i.i, align 4
  %mss.i.i.i = getelementptr inbounds %struct.cpl_tx_pkt_lso_core, ptr %add.ptr.i.i, i32 0, i32 2
  %185 = ptrtoint ptr %mss.i.i.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %mss.i.i.i, align 2
  %seqno_offset.i.i.i = getelementptr %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 1, i32 2
  %186 = ptrtoint ptr %seqno_offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %seqno_offset.i.i.i, align 4
  %187 = ptrtoint ptr %len.i285.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %.sink.i142.i.i = load i32, ptr %len.i285.i, align 4
  %188 = getelementptr inbounds %struct.cpl_tx_pkt_lso_core, ptr %add.ptr.i.i, i32 0, i32 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %.sink.i142.i.i, ptr %188, align 4
  %add.ptr.i143.i.i = getelementptr %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 1, i32 3
  br label %write_eo_wr.exit.i

if.else55.i.i:                                    ; preds = %if.else.i286.i
  call void @__sanitizer_cov_trace_pc() #19
  %mss57.i.i = getelementptr inbounds %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 0, i32 3, i32 0, i32 6
  %190 = ptrtoint ptr %mss57.i.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 -1, ptr %mss57.i.i, align 8
  %add.ptr58.i.i = getelementptr %struct.fw_eth_tx_eo_wr, ptr %arrayidx8.i, i32 1
  br label %write_eo_wr.exit.i

write_eo_wr.exit.i:                               ; preds = %if.else55.i.i, %if.then51.i.i, %write_eo_udp_wr.exit.i.i
  %cpl.0.i.i = phi ptr [ %add.ptr.i.i284.i, %write_eo_udp_wr.exit.i.i ], [ %add.ptr.i143.i.i, %if.then51.i.i ], [ %add.ptr58.i.i, %if.else55.i.i ]
  %191 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cred.i, align 4
  %sub61.i.i = sub i32 %192, %div29262.i
  store i32 %sub61.i.i, ptr %cred.i, align 4
  %193 = ptrtoint ptr %last_compl.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %last_compl.i.i, align 4
  %add63.i.i = add i32 %194, %div29262.i
  store i32 %add63.i.i, ptr %last_compl.i.i, align 4
  %chip.i = getelementptr inbounds %struct.adapter, ptr %19, i32 0, i32 15, i32 22
  %195 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %chip.i, align 8
  %call59.i = tail call fastcc i64 @hwcsum(i32 noundef %196, ptr noundef %40) #17
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 15, i32 0, i32 3
  %197 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool60.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool60.not.i, label %write_eo_wr.exit.i.if.end64.i_crit_edge, label %if.then61.i

write_eo_wr.exit.i.if.end64.i_crit_edge:          ; preds = %write_eo_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64.i

if.then61.i:                                      ; preds = %write_eo_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 15, i32 0, i32 10
  %198 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %vlan_tci.i, align 2
  %conv62.i = zext i16 %199 to i64
  %shl.i = shl nuw nsw i64 %conv62.i, 44
  %or.i = or i64 %call59.i, %shl.i
  %or63.i = or i64 %or.i, 1152921504606846976
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then61.i, %write_eo_wr.exit.i.if.end64.i_crit_edge
  %cntrl.0.i = phi i64 [ %or63.i, %if.then61.i ], [ %call59.i, %write_eo_wr.exit.i.if.end64.i_crit_edge ]
  %200 = ptrtoint ptr %tx_chan.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %tx_chan.i, align 2
  %conv65.i = zext i8 %201 to i32
  %shl66.i = shl nuw nsw i32 %conv65.i, 16
  %pf.i = getelementptr inbounds %struct.adapter, ptr %19, i32 0, i32 7
  %202 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %pf.i, align 4
  %shl68.i = shl i32 %203, 8
  %or67.i = or i32 %shl66.i, %shl68.i
  %or69.i = or i32 %or67.i, -301989888
  %204 = ptrtoint ptr %cpl.0.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %or69.i, ptr %cpl.0.i.i, align 8
  %pack.i = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %cpl.0.i.i, i32 0, i32 1
  %205 = ptrtoint ptr %pack.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 0, ptr %pack.i, align 4
  %len70.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 6
  %206 = ptrtoint ptr %len70.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %len70.i, align 4
  %conv71.i = trunc i32 %207 to i16
  %len72.i = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %cpl.0.i.i, i32 0, i32 2
  %208 = ptrtoint ptr %len72.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %conv71.i, ptr %len72.i, align 2
  %ctrl1.i = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %cpl.0.i.i, i32 0, i32 3
  %209 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %cntrl.0.i, ptr %ctrl1.i, align 8
  %add.ptr.i = getelementptr %struct.cpl_tx_pkt_core, ptr %cpl.0.i.i, i32 1
  br label %write_wr_headers.i

write_wr_headers.i:                               ; preds = %if.end64.i, %if.then53.i
  %start.0.i = phi ptr [ %arrayidx8.i, %if.then53.i ], [ %add.ptr.i, %if.end64.i ]
  %210 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %stat.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %211 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %start.0.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %hdr_len.0.i, i32 %sub.ptr.sub.i.i)
  %cmp.not.i289.i = icmp sgt i32 %hdr_len.0.i, %sub.ptr.sub.i.i
  %data2.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 19
  %212 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %data2.i.i, align 4
  br i1 %cmp.not.i289.i, label %if.else.i293.i, label %if.then.i291.i, !prof !113

if.then.i291.i:                                   ; preds = %write_wr_headers.i
  call void @__sanitizer_cov_trace_pc() #19
  %214 = call ptr @memcpy(ptr %start.0.i, ptr %213, i32 %hdr_len.0.i)
  %add.ptr.i290.i = getelementptr i8, ptr %start.0.i, i32 %hdr_len.0.i
  br label %if.end.i296.i

if.else.i293.i:                                   ; preds = %write_wr_headers.i
  call void @__sanitizer_cov_trace_pc() #19
  %215 = call ptr @memcpy(ptr %start.0.i, ptr %213, i32 %sub.ptr.sub.i.i)
  %216 = ptrtoint ptr %desc6.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %desc6.i, align 4
  %218 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %data2.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %219, i32 %sub.ptr.sub.i.i
  %sub.i292.i = sub i32 %hdr_len.0.i, %sub.ptr.sub.i.i
  %220 = call ptr @memcpy(ptr %217, ptr %add.ptr4.i.i, i32 %sub.i292.i)
  %221 = load ptr, ptr %desc6.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %221, i32 %sub.i292.i
  br label %if.end.i296.i

if.end.i296.i:                                    ; preds = %if.else.i293.i, %if.then.i291.i
  %pos.addr.0.i.i = phi ptr [ %add.ptr.i290.i, %if.then.i291.i ], [ %add.ptr7.i.i, %if.else.i293.i ]
  %222 = ptrtoint ptr %pos.addr.0.i.i to i32
  %add.i294.i = add i32 %222, 7
  %and.i295.i = and i32 %add.i294.i, -8
  %223 = inttoptr i32 %and.i295.i to ptr
  %and8.i.i = and i32 %add.i294.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end.i296.i.inline_tx_skb_header.exit.i_crit_edge, label %if.then10.i.i

if.end.i296.i.inline_tx_skb_header.exit.i_crit_edge: ; preds = %if.end.i296.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %inline_tx_skb_header.exit.i

if.then10.i.i:                                    ; preds = %if.end.i296.i
  call void @__sanitizer_cov_trace_pc() #19
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 0, ptr %223, align 8
  %add.ptr11.i.i = getelementptr i64, ptr %223, i32 1
  br label %inline_tx_skb_header.exit.i

inline_tx_skb_header.exit.i:                      ; preds = %if.then10.i.i, %if.end.i296.i.inline_tx_skb_header.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr11.i.i, %if.then10.i.i ], [ %223, %if.end.i296.i.inline_tx_skb_header.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.0.i)
  %tobool75.not.i = icmp eq i32 %data_len.0.i, 0
  br i1 %tobool75.not.i, label %inline_tx_skb_header.exit.i.if.end131.i_crit_edge, label %if.then76.i

inline_tx_skb_header.exit.i.if.end131.i_crit_edge: ; preds = %inline_tx_skb_header.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end131.i

if.then76.i:                                      ; preds = %inline_tx_skb_header.exit.i
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %19, i32 0, i32 4
  %225 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pdev_dev.i, align 16
  %addr.i = getelementptr %struct.tx_sw_desc, ptr %36, i32 %38, i32 1
  %call77.i = tail call i32 @cxgb4_map_skb(ptr noundef %226, ptr noundef %40, ptr noundef %addr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.end89.i, label %if.then85.i, !prof !112

if.then85.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #19
  %227 = call ptr @memset(ptr %addr.i, i32 0, i32 72)
  %mapping_err.i = getelementptr %struct.sge_eohw_txq, ptr %21, i32 %23, i32 7
  %228 = ptrtoint ptr %mapping_err.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %mapping_err.i, align 4
  %inc88.i = add i32 %229, 1
  store i32 %inc88.i, ptr %mapping_err.i, align 4
  br label %ethofld_hard_xmit.exit.thread

if.end89.i:                                       ; preds = %if.then76.i
  %add.ptr91.i = getelementptr i64, ptr %arrayidx8.i, i32 %conv23.i
  %cmp92.i = icmp ugt ptr %start.0.i, %retval.0.i.i
  br i1 %cmp92.i, label %if.then100.i, label %if.end89.i.if.end105.i_crit_edge, !prof !113

if.end89.i.if.end105.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end105.i

if.then100.i:                                     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #19
  %230 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %stat.i.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr91.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %231 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %232 = ptrtoint ptr %desc6.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %desc6.i, align 4
  %add.ptr104.i = getelementptr i8, ptr %233, i32 %sub.ptr.sub.i
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then100.i, %if.end89.i.if.end105.i_crit_edge
  %end.0.i = phi ptr [ %add.ptr104.i, %if.then100.i ], [ %add.ptr91.i, %if.end89.i.if.end105.i_crit_edge ]
  %234 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %stat.i.i, align 4
  %cmp108.not.i = icmp ult ptr %retval.0.i.i, %235
  br i1 %cmp108.not.i, label %if.end105.i.if.end127.i_crit_edge, label %if.then116.i, !prof !112

if.end105.i.if.end127.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end127.i

if.then116.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.ptr.lhs.cast119.i = ptrtoint ptr %end.0.i to i32
  %sub.ptr.rhs.cast120.i = ptrtoint ptr %235 to i32
  %sub.ptr.sub121.i = sub i32 %sub.ptr.lhs.cast119.i, %sub.ptr.rhs.cast120.i
  %236 = ptrtoint ptr %desc6.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %desc6.i, align 4
  %add.ptr124.i = getelementptr i8, ptr %237, i32 %sub.ptr.sub121.i
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then116.i, %if.end105.i.if.end127.i_crit_edge
  %end.1.i = phi ptr [ %add.ptr124.i, %if.then116.i ], [ %end.0.i, %if.end105.i.if.end127.i_crit_edge ]
  %sgl.0.i = phi ptr [ %237, %if.then116.i ], [ %retval.0.i.i, %if.end105.i.if.end127.i_crit_edge ]
  tail call void @cxgb4_write_sgl(ptr noundef %40, ptr noundef %q.i, ptr noundef %sgl.0.i, ptr noundef %end.1.i, i32 noundef %hdr_len.0.i, ptr noundef %addr.i) #17
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.end127.i, %inline_tx_skb_header.exit.i.if.end131.i_crit_edge
  %238 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %239, i32 0, i32 4
  %240 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %241)
  %tobool133.not.i = icmp eq i16 %241, 0
  br i1 %tobool133.not.i, label %if.else145.i, label %if.then134.i

if.then134.i:                                     ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #19
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %239, i32 0, i32 8
  %242 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %gso_type.i, align 8
  %and.i = and i32 %243, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool136.not.i = icmp eq i32 %and.i, 0
  %tso.i = getelementptr %struct.sge_eohw_txq, ptr %21, i32 %23, i32 3
  %uso.i = getelementptr %struct.sge_eohw_txq, ptr %21, i32 %23, i32 4
  %tso.sink309.i = select i1 %tobool136.not.i, ptr %tso.i, ptr %uso.i
  %244 = ptrtoint ptr %tso.sink309.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %tso.sink309.i, align 4
  %inc140.i = add i32 %245, 1
  store i32 %inc140.i, ptr %tso.sink309.i, align 4
  %246 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %end.i.i.i, align 4
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %247, i32 0, i32 5
  %248 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %gso_segs.i, align 2
  %conv143.i = zext i16 %249 to i32
  br label %if.end156.sink.split.i

if.else145.i:                                     ; preds = %if.end131.i
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 15
  %250 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %bf.load146.i = load i16, ptr %ip_summed.i, align 8
  %251 = and i16 %bf.load146.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %251)
  %cmp150.i = icmp eq i16 %251, 1536
  br i1 %cmp150.i, label %if.else145.i.if.end156.sink.split.i_crit_edge, label %if.else145.i.if.end156.i_crit_edge

if.else145.i.if.end156.i_crit_edge:               ; preds = %if.else145.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156.i

if.else145.i.if.end156.sink.split.i_crit_edge:    ; preds = %if.else145.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156.sink.split.i

if.end156.sink.split.i:                           ; preds = %if.else145.i.if.end156.sink.split.i_crit_edge, %if.then134.i
  %.sink310.i = phi i32 [ %conv143.i, %if.then134.i ], [ 1, %if.else145.i.if.end156.sink.split.i_crit_edge ]
  %tx_cso.i = getelementptr %struct.sge_eohw_txq, ptr %21, i32 %23, i32 5
  %252 = ptrtoint ptr %tx_cso.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %tx_cso.i, align 4
  %inc154.i = add i32 %253, %.sink310.i
  store i32 %inc154.i, ptr %tx_cso.i, align 4
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.end156.sink.split.i, %if.else145.i.if.end156.i_crit_edge
  %vlan_present157.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 15, i32 0, i32 3
  %254 = ptrtoint ptr %vlan_present157.i to i32
  call void @__asan_loadN_noabort(i32 %254, i32 4)
  %bf.load158.i = load i32, ptr %vlan_present157.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load158.i)
  %tobool161.not.i = icmp sgt i32 %bf.load158.i, -1
  br i1 %tobool161.not.i, label %if.end156.i.if.end164.i_crit_edge, label %if.then162.i

if.end156.i.if.end164.i_crit_edge:                ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end164.i

if.then162.i:                                     ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #19
  %vlan_ins.i = getelementptr %struct.sge_eohw_txq, ptr %21, i32 %23, i32 6
  %255 = ptrtoint ptr %vlan_ins.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %vlan_ins.i, align 4
  %inc163.i = add i32 %256, 1
  store i32 %inc163.i, ptr %vlan_ins.i, align 4
  br label %if.end164.i

if.end164.i:                                      ; preds = %if.then162.i, %if.end156.i.if.end164.i_crit_edge
  %257 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %q.i, align 4
  %add.i299.i = add i32 %258, %div7.i.i
  store i32 %add.i299.i, ptr %q.i, align 4
  %259 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %pidx.i, align 4
  %add1.i.i = add i32 %260, %div7.i.i
  store i32 %add1.i.i, ptr %pidx.i, align 4
  %261 = ptrtoint ptr %size.i271.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %size.i271.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %262)
  %cmp.not.i301.i = icmp ult i32 %add1.i.i, %262
  br i1 %cmp.not.i301.i, label %if.end164.i.ethofld_hard_xmit.exit_crit_edge, label %if.then.i303.i

if.end164.i.ethofld_hard_xmit.exit_crit_edge:     ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ethofld_hard_xmit.exit

if.then.i303.i:                                   ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i302.i = sub i32 %add1.i.i, %262
  %263 = ptrtoint ptr %pidx.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %sub.i302.i, ptr %pidx.i, align 4
  br label %ethofld_hard_xmit.exit

ethofld_hard_xmit.exit.thread:                    ; preds = %if.then85.i, %lor.rhs.i.ethofld_hard_xmit.exit.thread_crit_edge, %flits_to_desc.exit.i.ethofld_hard_xmit.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i22) #17
  br label %cleanup

ethofld_hard_xmit.exit:                           ; preds = %if.then.i303.i, %if.end164.i.ethofld_hard_xmit.exit_crit_edge
  tail call void @cxgb4_ring_tx_db(ptr noundef %19, ptr noundef %q.i, i32 noundef %div7.i.i) #17
  %264 = ptrtoint ptr %ndesc170.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %ndesc170.i, align 4
  %266 = ptrtoint ptr %last_pidx to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %last_pidx, align 4
  %add.i305.i = add i32 %267, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i305.i, i32 %265)
  %cmp.not.i306.i = icmp ult i32 %add.i305.i, %265
  %sub.i307.i = select i1 %cmp.not.i306.i, i32 0, i32 %265
  %spec.select.i308.i = sub i32 %add.i305.i, %sub.i307.i
  %268 = ptrtoint ptr %last_pidx to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %spec.select.i308.i, ptr %last_pidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i22) #17
  br label %while.cond.backedge

cleanup:                                          ; preds = %ethofld_hard_xmit.exit.thread, %while.cond.backedge.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_selftest_lb_pkt(ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %loopback = getelementptr i8, ptr %netdev, i32 3132
  %2 = ptrtoint ptr %loopback to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %loopback, align 4
  %sge = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %first_qset = getelementptr i8, ptr %netdev, i32 2329
  %3 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %first_qset, align 1
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %idxprom
  %txq = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %idxprom, i32 1
  %5 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %txq, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !102) #17
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %_xmit_lock.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i) #17
  %xmit_lock_owner.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 11
  %11 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %xmit_lock_owner.i, align 4
  %stat.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 10
  %12 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stat.i.i, align 4
  %cidx.i.i = getelementptr inbounds %struct.sge_qstat, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %cidx.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load volatile i16, ptr %cidx.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %cidx1.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 3
  %16 = ptrtoint ptr %cidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cidx1.i.i, align 4
  %sub.i.i = sub i32 %conv.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %entry.reclaimable.exit.i_crit_edge

entry.reclaimable.exit.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %reclaimable.exit.i

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %size.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 2
  %18 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %19, %sub.i.i
  br label %reclaimable.exit.i

reclaimable.exit.i:                               ; preds = %cond.true.i.i, %entry.reclaimable.exit.i_crit_edge
  %cond.i.i = phi i32 [ %add.i.i, %cond.true.i.i ], [ %sub.i.i, %entry.reclaimable.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %tobool.not.i = icmp eq i32 %cond.i.i, 0
  br i1 %tobool.not.i, label %reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge, label %if.then.i

reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge: ; preds = %reclaimable.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %reclaim_completed_tx.exit

if.then.i:                                        ; preds = %reclaimable.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %20 = tail call i32 @llvm.smin.i32(i32 %cond.i.i, i32 32) #17
  tail call void @free_tx_desc(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %20, i1 noundef zeroext true) #17
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %sub.i = sub i32 %22, %20
  store i32 %sub.i, ptr %arrayidx, align 4
  br label %reclaim_completed_tx.exit

reclaim_completed_tx.exit:                        ; preds = %if.then.i, %reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge
  %size.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 2
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %27 = xor i32 %26, -1
  %sub1.i = add i32 %24, -1
  %sub9 = add i32 %sub1.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9)
  %cmp = icmp slt i32 %sub9, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !113

if.then:                                          ; preds = %reclaim_completed_tx.exit
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %txq, align 4
  %xmit_lock_owner.i93 = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %xmit_lock_owner.i93 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 -1, ptr %xmit_lock_owner.i93, align 4
  %_xmit_lock.i94 = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i94) #17
  br label %cleanup

if.end:                                           ; preds = %reclaim_completed_tx.exit
  %ethtool_lb = getelementptr i8, ptr %netdev, i32 3072
  %desc = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 8
  %31 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %desc, align 32
  %pidx = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 4
  %33 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pidx, align 16
  %arrayidx14 = getelementptr %struct.tx_desc, ptr %32, i32 %34
  %35 = getelementptr inbounds i8, ptr %arrayidx14, i32 16
  %36 = call ptr @memset(ptr %35, i32 0, i32 48)
  %37 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 134217775, ptr %arrayidx14, align 8
  %equiq_to_len16 = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, ptr %arrayidx14, i32 0, i32 1
  %38 = ptrtoint ptr %equiq_to_len16 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %equiq_to_len16, align 4
  %r3 = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, ptr %arrayidx14, i32 0, i32 2
  %39 = ptrtoint ptr %r3 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %r3, align 8
  %add.ptr = getelementptr %struct.fw_eth_tx_pkt_wr, ptr %arrayidx14, i32 1
  %add.ptr20 = getelementptr %struct.cpl_tx_pkt_core, ptr %add.ptr, i32 1
  %pf = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7
  %40 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pf, align 4
  %shl21 = shl i32 %41, 8
  %tx_chan = getelementptr i8, ptr %netdev, i32 2326
  %42 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tx_chan, align 2
  %conv = zext i8 %43 to i32
  %add23 = shl nuw nsw i32 %conv, 16
  %shl24 = add nuw nsw i32 %add23, 262144
  %or22 = or i32 %shl21, %shl24
  %or25 = or i32 %or22, -301989888
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or25, ptr %add.ptr, align 8
  %pack = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %add.ptr, i32 0, i32 1
  %45 = ptrtoint ptr %pack to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %pack, align 4
  %len = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %add.ptr, i32 0, i32 2
  %46 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 31, ptr %len, align 2
  %ctrl1 = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %add.ptr, i32 0, i32 3
  %47 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 -4611686018427387904, ptr %ctrl1, align 8
  %48 = call ptr @memset(ptr %add.ptr20, i32 255, i32 6)
  %arrayidx29 = getelementptr i8, ptr %add.ptr20, i32 6
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %49 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_addr, align 64
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %53 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx29, align 4
  %add.ptr.i95 = getelementptr i8, ptr %50, i32 4
  %54 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr.i95, align 2
  %add.ptr1.i = getelementptr i8, ptr %arrayidx29, i32 4
  %56 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %add.ptr1.i, align 2
  %arrayidx31 = getelementptr i8, ptr %add.ptr20, i32 12
  %57 = call ptr @memcpy(ptr %arrayidx31, ptr @.str.2, i32 17)
  %58 = ptrtoint ptr %ethtool_lb to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %ethtool_lb, align 4
  %wait.i = getelementptr i8, ptr %netdev, i32 3076
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #17
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %60, 1
  store i32 %add.i, ptr %arrayidx, align 4
  %61 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pidx, align 4
  %add1.i = add i32 %62, 1
  store i32 %add1.i, ptr %pidx, align 4
  %63 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %64)
  %cmp.not.i = icmp ult i32 %add1.i, %64
  br i1 %cmp.not.i, label %if.end.txq_advance.exit_crit_edge, label %if.then.i98

if.end.txq_advance.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %txq_advance.exit

if.then.i98:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i97 = sub i32 %add1.i, %64
  %65 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub.i97, ptr %pidx, align 4
  br label %txq_advance.exit

txq_advance.exit:                                 ; preds = %if.then.i98, %if.end.txq_advance.exit_crit_edge
  tail call void @cxgb4_ring_tx_db(ptr noundef %1, ptr noundef %arrayidx, i32 noundef 1)
  %66 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %txq, align 4
  %xmit_lock_owner.i99 = getelementptr inbounds %struct.netdev_queue, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %xmit_lock_owner.i99 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 -1, ptr %xmit_lock_owner.i99, align 4
  %_xmit_lock.i100 = getelementptr inbounds %struct.netdev_queue, ptr %67, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i100) #17
  %call37 = tail call i32 @wait_for_completion_timeout(ptr noundef %ethtool_lb, i32 noundef 1000) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %txq_advance.exit.if.end40_crit_edge, label %if.else

txq_advance.exit.if.end40_crit_edge:              ; preds = %txq_advance.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

if.else:                                          ; preds = %txq_advance.exit
  call void @__sanitizer_cov_trace_pc() #19
  %result = getelementptr i8, ptr %netdev, i32 3128
  %69 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %result, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else, %txq_advance.exit.if.end40_crit_edge
  %ret.0 = phi i32 [ %70, %if.else ], [ -110, %txq_advance.exit.if.end40_crit_edge ]
  %71 = ptrtoint ptr %loopback to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %loopback, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %ret.0, %if.end40 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4_mgmt_tx(ptr noundef %adap, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable()
  %ctrlq = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 2
  %call = tail call fastcc i32 @ctrl_xmit(ptr noundef %ctrlq, ptr noundef %skb)
  tail call fastcc void @local_bh_enable()
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctrl_xmit(ptr noundef %q, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp.i = icmp ugt i32 %1, 512
  br i1 %cmp.i, label %do.end, label %if.end24, !prof !113

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2755, i32 noundef 9, ptr noundef null) #17
  tail call void @consume_skb(ptr noundef %skb) #17
  br label %cleanup

if.end24:                                         ; preds = %entry
  %sub = add nuw nsw i32 %1, 63
  %div77 = lshr i32 %sub, 6
  %lock = getelementptr inbounds %struct.sge_ctrl_txq, ptr %q, i32 0, i32 2, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #17
  %full = getelementptr inbounds %struct.sge_ctrl_txq, ptr %q, i32 0, i32 4
  %2 = ptrtoint ptr %full to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %full, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool25.not = icmp eq i8 %3, 0
  br i1 %tobool25.not, label %if.end36, label %if.then32, !prof !112

if.then32:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  %sendq = getelementptr inbounds %struct.sge_ctrl_txq, ptr %q, i32 0, i32 2
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div77, ptr %priority, align 4
  %prev.i.i = getelementptr inbounds %struct.sge_ctrl_txq, ptr %q, i32 0, i32 2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %sendq, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.53, ptr %skb, i32 0, i32 1
  %8 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %skb, ptr %6, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sge_ctrl_txq, ptr %q, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #17
  br label %cleanup

if.end36:                                         ; preds = %if.end24
  %desc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 8
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 32
  %pidx = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 4
  %14 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pidx, align 16
  %arrayidx = getelementptr %struct.tx_desc, ptr %13, i32 %15
  %stat.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 10
  %16 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stat.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %arrayidx to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub.ptr.sub.i)
  %cmp.not.i = icmp ugt i32 %19, %sub.ptr.sub.i
  br i1 %cmp.not.i, label %if.else15.i, label %if.then.i, !prof !113

if.then.i:                                        ; preds = %if.end36
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %20 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool2.not.i = icmp eq i32 %21, 0
  br i1 %tobool2.not.i, label %if.then11.i, label %if.else.i, !prof !112

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %24 = call ptr @memcpy(ptr %arrayidx, ptr %23, i32 %19)
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef %arrayidx, i32 noundef %19) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then11.i
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 %26
  br label %if.end23.i

if.else15.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  %call16.i = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef %arrayidx, i32 noundef %sub.ptr.sub.i) #17
  %27 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc, align 4
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %30, %sub.ptr.sub.i
  %call18.i = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %sub.ptr.sub.i, ptr noundef %28, i32 noundef %sub.i) #17
  %31 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %desc, align 4
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i, align 4
  %sub21.i = sub i32 %34, %sub.ptr.sub.i
  %add.ptr22.i = getelementptr i8, ptr %32, i32 %sub21.i
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else15.i, %if.end.i
  %pos.addr.0.i = phi ptr [ %add.ptr.i, %if.end.i ], [ %add.ptr22.i, %if.else15.i ]
  %35 = ptrtoint ptr %pos.addr.0.i to i32
  %add.i = add i32 %35, 7
  %and24.i = and i32 %add.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.cxgb4_inline_tx_skb.exit_crit_edge, label %if.then26.i

if.end23.i.cxgb4_inline_tx_skb.exit_crit_edge:    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cxgb4_inline_tx_skb.exit

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  %and.i = and i32 %add.i, -8
  %36 = inttoptr i32 %and.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %36, align 8
  br label %cxgb4_inline_tx_skb.exit

cxgb4_inline_tx_skb.exit:                         ; preds = %if.then26.i, %if.end23.i.cxgb4_inline_tx_skb.exit_crit_edge
  %38 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %q, align 4
  %add.i79 = add i32 %39, %div77
  store i32 %add.i79, ptr %q, align 4
  %40 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pidx, align 4
  %add1.i = add i32 %41, %div77
  store i32 %add1.i, ptr %pidx, align 4
  %size.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 2
  %42 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %43)
  %cmp.not.i80 = icmp ult i32 %add1.i, %43
  br i1 %cmp.not.i80, label %cxgb4_inline_tx_skb.exit.txq_advance.exit_crit_edge, label %if.then.i82

cxgb4_inline_tx_skb.exit.txq_advance.exit_crit_edge: ; preds = %cxgb4_inline_tx_skb.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %txq_advance.exit

if.then.i82:                                      ; preds = %cxgb4_inline_tx_skb.exit
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i81 = sub i32 %add1.i, %43
  %44 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub.i81, ptr %pidx, align 4
  br label %txq_advance.exit

txq_advance.exit:                                 ; preds = %if.then.i82, %cxgb4_inline_tx_skb.exit.txq_advance.exit_crit_edge
  %45 = xor i32 %add.i79, -1
  %sub1.i = add i32 %43, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub1.i)
  %cmp = icmp ult i32 %sub1.i, 8
  br i1 %cmp, label %if.then49, label %txq_advance.exit.if.end50_crit_edge, !prof !113

txq_advance.exit.if.end50_crit_edge:              ; preds = %txq_advance.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.then49:                                        ; preds = %txq_advance.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @ctrlq_check_stop(ptr noundef %q, ptr noundef %arrayidx)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %txq_advance.exit.if.end50_crit_edge
  %adap = getelementptr inbounds %struct.sge_ctrl_txq, ptr %q, i32 0, i32 1
  %46 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adap, align 4
  tail call void @cxgb4_ring_tx_db(ptr noundef %47, ptr noundef %q, i32 noundef %div77)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #17
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then32, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 2, %if.then32 ], [ 0, %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4_ofld_send(ptr noundef %adap, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable()
  %call = tail call fastcc i32 @uld_send(ptr noundef %adap, ptr noundef %skb, i32 noundef 0)
  tail call fastcc void @local_bh_enable()
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uld_send(ptr noundef %adap, ptr noundef %skb, i32 noundef %tx_uld_type) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %2 = lshr i16 %1, 1
  %3 = zext i16 %2 to i32
  %4 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end7, label %if.then, !prof !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %nsftids = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 23
  %5 = ptrtoint ptr %nsftids to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nsftids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool4.not, i32 %3, i32 0
  %arrayidx = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 2, i32 %spec.select
  %call6 = tail call fastcc i32 @ctrl_xmit(ptr noundef %arrayidx, ptr noundef %skb)
  br label %cleanup

if.end7:                                          ; preds = %entry
  %uld_txq_info = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 6
  %7 = ptrtoint ptr %uld_txq_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uld_txq_info, align 4
  %arrayidx9 = getelementptr ptr, ptr %8, i32 %tx_uld_type
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %do.end, label %if.end41, !prof !113

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3146, i32 noundef 9, ptr noundef null) #17
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %cleanup

if.end41:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %arrayidx42 = getelementptr %struct.sge_uld_txq, ptr %12, i32 %3
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shr.i.i.i = lshr i32 %16, 24
  %trunc.i.i.i = trunc i32 %shr.i.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %trunc.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i8 %trunc.i.i.i, 109
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 513, i32 272
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %trunc.i.i.i)
  %switch.selectcmp19.i.i.i = icmp eq i8 %trunc.i.i.i, 4
  %switch.select20.i.i.i = select i1 %switch.selectcmp19.i.i.i, i32 305, i32 %switch.select.i.i.i
  %len10.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len10.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %switch.select20.i.i.i)
  %cmp11.i.not.i.i = icmp ult i32 %18, %switch.select20.i.i.i
  br i1 %cmp11.i.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i = add i32 %18, 7
  %div19.i.i = lshr i32 %sub.i.i, 3
  br label %calc_tx_flits_ofld.exit.i

if.end.i.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i.i.i, align 8
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %21 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %22 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 %conv.i.i.i.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %div218.i.i = lshr i32 %sub.ptr.sub.i.i.i, 3
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %23 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nr_frags.i.i, align 2
  %conv.i.i = zext i8 %26 to i32
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i.i, align 8
  %cmp.not.i.i = icmp ne ptr %28, %add.ptr.i.i.i.i
  %inc.i.i = zext i1 %cmp.not.i.i to i32
  %spec.select.i.i = add nsw i32 %conv.i.i, -1
  %dec.i.i.i = add nsw i32 %spec.select.i.i, %inc.i.i
  %mul.i.i.i = mul nsw i32 %dec.i.i.i, 3
  %div4.i.i.i = lshr i32 %mul.i.i.i, 1
  %and.i.i.i = and i32 %dec.i.i.i, 1
  %add.i.i.i = add nuw nsw i32 %div218.i.i, 2
  %add1.i.i.i = add nuw nsw i32 %add.i.i.i, %and.i.i.i
  %add10.i.i = add nuw i32 %add1.i.i.i, %div4.i.i.i
  br label %calc_tx_flits_ofld.exit.i

calc_tx_flits_ofld.exit.i:                        ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %div19.i.i, %if.then.i.i ], [ %add10.i.i, %if.end.i.i ]
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %29 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i.i, ptr %priority.i, align 4
  %sendq.i = getelementptr %struct.sge_uld_txq, ptr %12, i32 %3, i32 2
  %lock.i = getelementptr %struct.sge_uld_txq, ptr %12, i32 %3, i32 2, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #17
  %prev.i.i.i = getelementptr %struct.sge_uld_txq, ptr %12, i32 %3, i32 2, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %sendq.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.53, ptr %skb, i32 0, i32 1
  %33 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %skb, ptr %31, align 4
  %qlen.i.i.i.i = getelementptr %struct.sge_uld_txq, ptr %12, i32 %3, i32 2, i32 1
  %35 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i = icmp eq i32 %36, 0
  br i1 %cmp.i, label %if.then.i, label %calc_tx_flits_ofld.exit.i.ofld_xmit.exit_crit_edge

calc_tx_flits_ofld.exit.i.ofld_xmit.exit_crit_edge: ; preds = %calc_tx_flits_ofld.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ofld_xmit.exit

if.then.i:                                        ; preds = %calc_tx_flits_ofld.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @service_ofldq(ptr noundef %arrayidx42) #17
  br label %ofld_xmit.exit

ofld_xmit.exit:                                   ; preds = %if.then.i, %calc_tx_flits_ofld.exit.i.ofld_xmit.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #17
  br label %cleanup

cleanup:                                          ; preds = %ofld_xmit.exit, %do.end, %if.then
  %retval.0 = phi i32 [ %call6, %if.then ], [ 1, %do.end ], [ 0, %ofld_xmit.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_ofld_send(ptr nocapture noundef readonly %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call fastcc void @local_bh_disable() #17
  %call.i = tail call fastcc i32 @uld_send(ptr noundef %1, ptr noundef %skb, i32 noundef 0) #17
  tail call fastcc void @local_bh_enable() #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_immdata_send(ptr nocapture noundef readonly %dev, i32 noundef %idx, ptr nocapture noundef readonly %src, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call fastcc void @local_bh_disable()
  %uld_txq_info = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 6
  %2 = ptrtoint ptr %uld_txq_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uld_txq_info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !113

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3273, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end24:                                         ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx25 = getelementptr %struct.sge_uld_txq, ptr %7, i32 %idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 271, i32 %len)
  %cmp.i = icmp ugt i32 %len, 271
  br i1 %cmp.i, label %do.end.i, label %if.end16.i

do.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3229, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end16.i:                                       ; preds = %if.end24
  %sendq.i = getelementptr %struct.sge_uld_txq, ptr %7, i32 %idx, i32 2
  %lock.i = getelementptr %struct.sge_uld_txq, ptr %7, i32 %idx, i32 2, i32 2
  %call.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool17.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool17.not.i, label %if.end16.i.cleanup_crit_edge, label %if.end19.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end19.i:                                       ; preds = %if.end16.i
  %full.i = getelementptr %struct.sge_uld_txq, ptr %7, i32 %idx, i32 5
  %8 = ptrtoint ptr %full.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %full.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool20.not.i = icmp eq i8 %9, 0
  br i1 %tobool20.not.i, label %lor.lhs.false.i, label %if.end19.i.if.then27.i_crit_edge

if.end19.i.if.then27.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27.i

lor.lhs.false.i:                                  ; preds = %if.end19.i
  %10 = ptrtoint ptr %sendq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sendq.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %sendq.i
  br i1 %cmp.i.not.i, label %lor.lhs.false24.i, label %lor.lhs.false.i.if.then27.i_crit_edge

lor.lhs.false.i.if.then27.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27.i

lor.lhs.false24.i:                                ; preds = %lor.lhs.false.i
  %service_ofldq_running.i = getelementptr %struct.sge_uld_txq, ptr %7, i32 %idx, i32 4
  %12 = ptrtoint ptr %service_ofldq_running.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %service_ofldq_running.i, align 64, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool25.not.i = icmp eq i8 %13, 0
  br i1 %tobool25.not.i, label %if.end30.i, label %lor.lhs.false24.i.if.then27.i_crit_edge

lor.lhs.false24.i.if.then27.i_crit_edge:          ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27.i

if.then27.i:                                      ; preds = %lor.lhs.false24.i.if.then27.i_crit_edge, %lor.lhs.false.i.if.then27.i_crit_edge, %if.end19.i.if.then27.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #17
  br label %cleanup

if.end30.i:                                       ; preds = %lor.lhs.false24.i
  %sub.i = add nuw nsw i32 %len, 7
  %div74.i = lshr i32 %sub.i, 3
  %sub.i.i = add nuw nsw i32 %div74.i, 7
  %div7.i.i = lshr i32 %sub.i.i, 3
  %size.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx25, i32 0, i32 2
  %14 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i.i, align 4
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx25, align 4
  %18 = xor i32 %17, -1
  %sub1.i.i = sub i32 %15, %div7.i.i
  %sub34.i = add i32 %sub1.i.i, %18
  %desc.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx25, i32 0, i32 8
  %19 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc.i, align 32
  %pidx.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx25, i32 0, i32 4
  %21 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pidx.i, align 16
  %arrayidx.i = getelementptr %struct.tx_desc, ptr %20, i32 %22
  %stat.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx25, i32 0, i32 10
  %23 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stat.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %arrayidx.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %len)
  %cmp.not.i.i = icmp slt i32 %sub.ptr.sub.i.i, %len
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !113

if.then.i.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  %25 = call ptr @memcpy(ptr %arrayidx.i, ptr %src, i32 %len)
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx.i, i32 %len
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  %26 = call ptr @memcpy(ptr %arrayidx.i, ptr %src, i32 %sub.ptr.sub.i.i)
  %27 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %src, i32 %sub.ptr.sub.i.i
  %sub.i76.i = sub i32 %len, %sub.ptr.sub.i.i
  %29 = call ptr @memcpy(ptr %28, ptr %add.ptr2.i.i, i32 %sub.i76.i)
  %30 = load ptr, ptr %desc.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %30, i32 %sub.i76.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %pos.addr.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %add.ptr5.i.i, %if.else.i.i ]
  %31 = ptrtoint ptr %pos.addr.0.i.i to i32
  %add.i.i = add i32 %31, 7
  %and6.i.i = and i32 %add.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i.inline_tx_header.exit.i_crit_edge, label %if.then8.i.i

if.end.i.i.inline_tx_header.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %inline_tx_header.exit.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %and.i.i = and i32 %add.i.i, -8
  %32 = inttoptr i32 %and.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %32, align 8
  br label %inline_tx_header.exit.i

inline_tx_header.exit.i:                          ; preds = %if.then8.i.i, %if.end.i.i.inline_tx_header.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub34.i)
  %cmp39.i = icmp ult i32 %sub34.i, 8
  br i1 %cmp39.i, label %if.then47.i, label %inline_tx_header.exit.i.if.end48.i_crit_edge, !prof !113

inline_tx_header.exit.i.if.end48.i_crit_edge:     ; preds = %inline_tx_header.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48.i

if.then47.i:                                      ; preds = %inline_tx_header.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %lo.i.i = getelementptr inbounds %struct.fw_wr_hdr, ptr %arrayidx.i, i32 0, i32 1
  %34 = ptrtoint ptr %lo.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lo.i.i, align 4
  %or.i.i = or i32 %35, -1073741824
  store i32 %or.i.i, ptr %lo.i.i, align 4
  %stops.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx25, i32 0, i32 5
  %36 = ptrtoint ptr %stops.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stops.i.i, align 4
  %inc.i.i = add i32 %37, 1
  store i32 %inc.i.i, ptr %stops.i.i, align 4
  %38 = ptrtoint ptr %full.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %full.i, align 1
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then47.i, %inline_tx_header.exit.i.if.end48.i_crit_edge
  %39 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx25, align 4
  %add.i77.i = add i32 %40, %div7.i.i
  store i32 %add.i77.i, ptr %arrayidx25, align 4
  %41 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pidx.i, align 4
  %add1.i.i = add i32 %42, %div7.i.i
  store i32 %add1.i.i, ptr %pidx.i, align 4
  %43 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %44)
  %cmp.not.i79.i = icmp ult i32 %add1.i.i, %44
  br i1 %cmp.not.i79.i, label %if.end48.i.txq_advance.exit.i_crit_edge, label %if.then.i81.i

if.end48.i.txq_advance.exit.i_crit_edge:          ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %txq_advance.exit.i

if.then.i81.i:                                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i80.i = sub i32 %add1.i.i, %44
  %45 = ptrtoint ptr %pidx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub.i80.i, ptr %pidx.i, align 4
  br label %txq_advance.exit.i

txq_advance.exit.i:                               ; preds = %if.then.i81.i, %if.end48.i.txq_advance.exit.i_crit_edge
  %adap.i = getelementptr %struct.sge_uld_txq, ptr %7, i32 %idx, i32 1
  %46 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adap.i, align 4
  tail call void @cxgb4_ring_tx_db(ptr noundef %47, ptr noundef %arrayidx25, i32 noundef %div7.i.i) #17
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #17
  br label %cleanup

cleanup:                                          ; preds = %txq_advance.exit.i, %if.then27.i, %if.end16.i.cleanup_crit_edge, %do.end.i, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.end.i ], [ 1, %if.then27.i ], [ 0, %txq_advance.exit.i ], [ 1, %if.end16.i.cleanup_crit_edge ]
  tail call fastcc void @local_bh_enable()
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_crypto_send(ptr nocapture noundef readonly %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call fastcc void @local_bh_disable() #17
  %call.i = tail call fastcc i32 @uld_send(ptr noundef %1, ptr noundef %skb, i32 noundef 1) #17
  tail call fastcc void @local_bh_enable() #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cxgb4_pktgl_to_skb(ptr nocapture noundef readonly %gl, i32 noundef %skb_len, i32 noundef %pull_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tot_len = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 4
  %0 = ptrtoint ptr %tot_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tot_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %1)
  %cmp = icmp ult i32 %1, 257
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %1, i32 noundef 2592) #17
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then.out_crit_edge, label %if.end, !prof !113

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %if.then
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !112

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #17, !srcloc !128
  unreachable

__skb_put.exit:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %tot_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tot_len, align 8
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %9, %5
  store i32 %add.i, ptr %len9.i, align 4
  %va = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 2
  %10 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %va, align 8
  %12 = load i32, ptr %tot_len, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %15 = call ptr @memcpy(ptr %14, ptr %11, i32 %12)
  br label %out

if.else:                                          ; preds = %entry
  %call.i.i49 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %skb_len, i32 noundef 2592) #17
  %tobool10.not = icmp eq ptr %call.i.i49, null
  br i1 %tobool10.not, label %if.else.out_crit_edge, label %if.end20, !prof !113

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end20:                                         ; preds = %if.else
  %data_len.i.i50 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i49, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i51 = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i51, label %__skb_put.exit57, label %do.body3.i52, !prof !112

do.body3.i52:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #17, !srcloc !128
  unreachable

__skb_put.exit57:                                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  %tail.i.i53 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i49, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i53, align 8
  %add.ptr.i54 = getelementptr i8, ptr %19, i32 %pull_len
  store ptr %add.ptr.i54, ptr %tail.i.i53, align 8
  %len9.i55 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i49, i32 0, i32 6
  %20 = ptrtoint ptr %len9.i55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len9.i55, align 4
  %add.i56 = add i32 %21, %pull_len
  store i32 %add.i56, ptr %len9.i55, align 4
  %va22 = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 2
  %22 = ptrtoint ptr %va22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %va22, align 8
  %data.i58 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i49, i32 0, i32 19
  %24 = ptrtoint ptr %data.i58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i58, align 4
  %26 = call ptr @memcpy(ptr %25, ptr %23, i32 %pull_len)
  tail call fastcc void @copy_frags(ptr noundef nonnull %call.i.i49, ptr noundef %gl, i32 noundef %pull_len)
  %27 = ptrtoint ptr %tot_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tot_len, align 8
  %29 = ptrtoint ptr %len9.i55 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %len9.i55, align 4
  %sub = sub i32 %28, %pull_len
  %30 = ptrtoint ptr %data_len.i.i50 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %data_len.i.i50, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call.i.i49, i32 0, i32 20
  %31 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %truesize, align 8
  %add = add i32 %32, %sub
  store i32 %add, ptr %truesize, align 8
  br label %out

out:                                              ; preds = %__skb_put.exit57, %if.else.out_crit_edge, %__skb_put.exit, %if.then.out_crit_edge
  %skb.0 = phi ptr [ null, %if.then.out_crit_edge ], [ %call.i.i, %__skb_put.exit ], [ null, %if.else.out_crit_edge ], [ %call.i.i49, %__skb_put.exit57 ]
  ret ptr %skb.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @copy_frags(ptr nocapture noundef %skb, ptr nocapture noundef readonly %gl, i32 noundef %offset) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %frags = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 1
  %0 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frags, align 8
  %offset3 = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %offset3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %offset3, align 4
  %conv = zext i16 %3 to i32
  %add = add i32 %conv, %offset
  %size = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %size, align 2
  %conv6 = zext i16 %5 to i32
  %sub = sub i32 %conv6, %offset
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %arrayidx.i, align 4
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 0, i32 2
  %9 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %bv_offset.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 0, i32 1
  %10 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %bv_len.i.i, align 4
  %11 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !112

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %18 to i32
  %and.i8.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.i.not.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.i.not.i, label %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge, label %if.then.i

_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__skb_fill_page_desc.exit

if.then.i:                                        ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %pfmemalloc.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %20 = ptrtoint ptr %pfmemalloc.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %pfmemalloc.i, align 2
  %bf.set.i = or i8 %bf.load.i, 2
  store i8 %bf.set.i, ptr %pfmemalloc.i, align 2
  br label %__skb_fill_page_desc.exit

__skb_fill_page_desc.exit:                        ; preds = %if.then.i, %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge
  %nfrags = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 3
  %21 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nfrags, align 4
  %conv7 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %nr_frags to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv7, ptr %nr_frags, align 2
  %26 = load i32, ptr %nfrags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp68 = icmp ugt i32 %26, 1
  br i1 %cmp68, label %for.body.lr.ph, label %__skb_fill_page_desc.exit.for.end_crit_edge

__skb_fill_page_desc.exit.for.end_crit_edge:      ; preds = %__skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %__skb_fill_page_desc.exit
  %pfmemalloc.i56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %__skb_fill_page_desc.exit60.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %__skb_fill_page_desc.exit60.for.body_crit_edge ]
  %arrayidx11 = getelementptr %struct.pkt_gl, ptr %gl, i32 0, i32 1, i32 %i.069
  %27 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx11, align 8
  %offset15 = getelementptr %struct.pkt_gl, ptr %gl, i32 0, i32 1, i32 %i.069, i32 1
  %29 = ptrtoint ptr %offset15 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %offset15, align 4
  %conv16 = zext i16 %30 to i32
  %size19 = getelementptr %struct.pkt_gl, ptr %gl, i32 0, i32 1, i32 %i.069, i32 2
  %31 = ptrtoint ptr %size19 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %size19, align 2
  %conv20 = zext i16 %32 to i32
  %33 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i.i, align 4
  %arrayidx.i44 = getelementptr %struct.skb_shared_info, ptr %34, i32 0, i32 12, i32 %i.069
  %35 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %28, ptr %arrayidx.i44, align 4
  %bv_offset.i45 = getelementptr %struct.skb_shared_info, ptr %34, i32 0, i32 12, i32 %i.069, i32 2
  %36 = ptrtoint ptr %bv_offset.i45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv16, ptr %bv_offset.i45, align 4
  %bv_len.i.i46 = getelementptr %struct.skb_shared_info, ptr %34, i32 0, i32 12, i32 %i.069, i32 1
  %37 = ptrtoint ptr %bv_len.i.i46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv20, ptr %bv_len.i.i46, align 4
  %38 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and.i.i47 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i47)
  %tobool.not.i.i48 = icmp eq i32 %and.i.i47, 0
  br i1 %tobool.not.i.i48, label %if.end.i.i51, label %if.then.i.i50, !prof !112

if.then.i.i50:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i49 = add i32 %40, -1
  br label %_compound_head.exit.i55

if.end.i.i51:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %41 = ptrtoint ptr %28 to i32
  br label %_compound_head.exit.i55

_compound_head.exit.i55:                          ; preds = %if.end.i.i51, %if.then.i.i50
  %retval.0.i.i52 = phi i32 [ %sub.i.i49, %if.then.i.i50 ], [ %41, %if.end.i.i51 ]
  %42 = inttoptr i32 %retval.0.i.i52 to ptr
  %43 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %45 to i32
  %and.i8.i53 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i53)
  %tobool.i.not.i54 = icmp eq i32 %and.i8.i53, 0
  br i1 %tobool.i.not.i54, label %_compound_head.exit.i55.__skb_fill_page_desc.exit60_crit_edge, label %if.then.i59

_compound_head.exit.i55.__skb_fill_page_desc.exit60_crit_edge: ; preds = %_compound_head.exit.i55
  call void @__sanitizer_cov_trace_pc() #19
  br label %__skb_fill_page_desc.exit60

if.then.i59:                                      ; preds = %_compound_head.exit.i55
  call void @__sanitizer_cov_trace_pc() #19
  %47 = ptrtoint ptr %pfmemalloc.i56 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i57 = load i8, ptr %pfmemalloc.i56, align 2
  %bf.set.i58 = or i8 %bf.load.i57, 2
  store i8 %bf.set.i58, ptr %pfmemalloc.i56, align 2
  br label %__skb_fill_page_desc.exit60

__skb_fill_page_desc.exit60:                      ; preds = %if.then.i59, %_compound_head.exit.i55.__skb_fill_page_desc.exit60_crit_edge
  %inc = add nuw i32 %i.069, 1
  %48 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nfrags, align 4
  %cmp = icmp ult i32 %inc, %49
  br i1 %cmp, label %__skb_fill_page_desc.exit60.for.body_crit_edge, label %__skb_fill_page_desc.exit60.for.end_crit_edge

__skb_fill_page_desc.exit60.for.end_crit_edge:    ; preds = %__skb_fill_page_desc.exit60
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

__skb_fill_page_desc.exit60.for.body_crit_edge:   ; preds = %__skb_fill_page_desc.exit60
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %__skb_fill_page_desc.exit60.for.end_crit_edge, %__skb_fill_page_desc.exit.for.end_crit_edge
  %.lcssa = phi i32 [ %26, %__skb_fill_page_desc.exit.for.end_crit_edge ], [ %49, %__skb_fill_page_desc.exit60.for.end_crit_edge ]
  %sub23 = add i32 %.lcssa, -1
  %arrayidx24 = getelementptr %struct.pkt_gl, ptr %gl, i32 0, i32 1, i32 %sub23
  %50 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx24, align 8
  %52 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  %and.i.i61 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i61)
  %tobool.not.i.i62 = icmp eq i32 %and.i.i61, 0
  br i1 %tobool.not.i.i62, label %if.end.i.i65, label %if.then.i.i64, !prof !112

if.then.i.i64:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i63 = add i32 %54, -1
  br label %_compound_head.exit.i67

if.end.i.i65:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %55 = ptrtoint ptr %51 to i32
  br label %_compound_head.exit.i67

_compound_head.exit.i67:                          ; preds = %if.end.i.i65, %if.then.i.i64
  %retval.0.i.i66 = phi i32 [ %sub.i.i63, %if.then.i.i64 ], [ %55, %if.end.i.i65 ]
  %56 = inttoptr i32 %retval.0.i.i66 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #17
  %57 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %58, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !113

if.then.i1.i:                                     ; preds = %_compound_head.exit.i67
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dump_page(ptr noundef %56, ptr noundef nonnull @.str.24) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #17, !srcloc !130
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i67
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #17
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #17, !srcloc !131
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@copy_frags, %if.then.i.i.i.i)) #17
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !132

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__page_ref_mod(ptr noundef %56, i32 noundef 1) #17
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4_ethrx_handler(ptr noundef %q, ptr nocapture noundef readonly %rsp, ptr nocapture noundef readonly %si) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %adap = getelementptr inbounds %struct.sge_rspq, ptr %q, i32 0, i32 19
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 8
  %netdev = getelementptr inbounds %struct.sge_rspq, ptr %q, i32 0, i32 20
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 2304
  %6 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rsp, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %7, label %if.end [
    i8 -64, label %entry.if.then_crit_edge
    i8 -91, label %entry.if.then_crit_edge391
  ]

entry.if.then_crit_edge391:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge391
  %sge.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %7)
  %cmp.i365 = icmp eq i8 %7, -64
  br i1 %cmp.i365, label %land.rhs.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then
  %incdec.ptr.i = getelementptr i64, ptr %rsp, i32 1
  %type.i = getelementptr inbounds %struct.cpl_fw4_msg, ptr %incdec.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cmp4.i = icmp eq i8 %10, 4
  br i1 %cmp4.i, label %if.then.i, label %land.rhs.i.do.end.i_crit_edge, !prof !113

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  %incdec.ptr7.i = getelementptr i64, ptr %rsp, i32 2
  %11 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr7.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %opcode.0.i = phi i8 [ %12, %if.then.i ], [ %7, %if.then.if.end.i_crit_edge ]
  %13 = phi ptr [ %incdec.ptr7.i, %if.then.i ], [ %rsp, %if.then.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %opcode.0.i)
  %cmp11.not.i = icmp eq i8 %opcode.0.i, -91
  br i1 %cmp11.not.i, label %if.end22.i, label %if.end.i.do.end.i_crit_edge, !prof !112

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %land.rhs.i.do.end.i_crit_edge
  %opcode.03.i = phi i8 [ %opcode.0.i, %if.end.i.do.end.i_crit_edge ], [ -64, %land.rhs.i.do.end.i_crit_edge ]
  %conv10.i = zext i8 %opcode.03.i to i32
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %conv10.i) #20
  br label %cleanup

if.end22.i:                                       ; preds = %if.end.i
  %first_qset.i = getelementptr i8, ptr %5, i32 2329
  %14 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %first_qset.i, align 1
  %conv23.i = zext i8 %15 to i32
  %idx.i = getelementptr inbounds %struct.sge_rspq, ptr %q, i32 0, i32 9
  %16 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %idx.i, align 2
  %conv24.i = zext i8 %17 to i32
  %add.i = add nuw nsw i32 %conv24.i, %conv23.i
  %arrayidx.i = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.i, i32 0, i32 %add.i
  %18 = and i32 %3, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %18)
  %cmp25.i = icmp ult i32 %18, 96
  br i1 %cmp25.i, label %if.then27.i, label %if.end22.i.if.end38.i_crit_edge

if.end22.i.if.end38.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38.i

if.then27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  %19 = getelementptr i64, ptr %13, i32 1
  %cidx.i = getelementptr inbounds %struct.cpl_sge_egr_update, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cidx.i, align 4
  %stat.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx.i, i32 0, i32 10
  %22 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stat.i, align 8
  %cidx33.i = getelementptr inbounds %struct.sge_qstat, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %cidx33.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store volatile i16 %21, ptr %cidx33.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then27.i, %if.end22.i.if.end38.i_crit_edge
  %call39.i = tail call i32 @t4_sge_eth_txq_egress_update(ptr noundef %1, ptr noundef %arrayidx.i, i32 noundef -1) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %25 = and i32 %3, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %25)
  %cmp.i.not = icmp eq i32 %25, 64
  %cond = select i1 %cmp.i.not, i32 176, i32 72
  %conv10 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv10)
  %cmp11 = icmp eq i32 %cond, %conv10
  br i1 %cmp11, label %if.then19, label %if.end22, !prof !113

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @handle_trace_pkt(ptr noundef %1, ptr noundef %si)
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %rx_pkt_encap = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 8
  %26 = ptrtoint ptr %rx_pkt_encap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_pkt_encap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool25.not = icmp eq i32 %27, 0
  %err_vec35 = getelementptr inbounds %struct.cpl_rx_pkt, ptr %rsp, i32 0, i32 8
  %28 = ptrtoint ptr %err_vec35 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %err_vec35, align 2
  %and = and i16 %29, 63
  %err_vec.0 = select i1 %tobool25.not, i16 %29, i16 %and
  %csum_calc = getelementptr inbounds %struct.cpl_rx_pkt, ptr %rsp, i32 0, i32 2
  %30 = ptrtoint ptr %csum_calc to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %csum_calc, align 1
  %31 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool38.not = icmp ne i8 %31, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %err_vec.0)
  %tobool39.not = icmp eq i16 %err_vec.0, 0
  %or.cond = select i1 %tobool38.not, i1 %tobool39.not, i1 false
  br i1 %or.cond, label %land.rhs, label %if.end22.land.end_crit_edge

if.end22.land.end_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

land.rhs:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  %features = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %32 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %features, align 16
  %and41 = and i64 %33, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and41)
  %tobool42 = icmp ne i64 %and41, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end22.land.end_crit_edge
  %34 = phi i1 [ false, %if.end22.land.end_crit_edge ], [ %tobool42, %land.rhs ]
  br i1 %tobool39.not, label %land.end.if.end45_crit_edge, label %if.then44

land.end.if.end45_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

if.then44:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  %bad_rx_pkts = getelementptr inbounds %struct.sge_eth_rxq, ptr %q, i32 0, i32 2, i32 6
  %35 = ptrtoint ptr %bad_rx_pkts to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bad_rx_pkts, align 8
  %inc = add i32 %36, 1
  store i32 %inc, ptr %bad_rx_pkts, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %land.end.if.end45_crit_edge
  %loopback = getelementptr i8, ptr %5, i32 3132
  %37 = ptrtoint ptr %loopback to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %loopback, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool46.not = icmp eq i32 %38, 0
  br i1 %tobool46.not, label %if.end45.if.end65_crit_edge, label %land.rhs47

if.end45.if.end65_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65

land.rhs47:                                       ; preds = %if.end45
  %39 = ptrtoint ptr %csum_calc to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load48 = load i8, ptr %csum_calc, align 1
  %bf.clear49 = and i8 %bf.load48, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear49)
  %cmp51.not = icmp eq i8 %bf.clear49, 0
  br i1 %cmp51.not, label %land.rhs47.if.end65_crit_edge, label %if.then60, !prof !112

land.rhs47.if.end65_crit_edge:                    ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65

if.then60:                                        ; preds = %land.rhs47
  %call61 = tail call fastcc i32 @cxgb4_validate_lb_pkt(ptr noundef %add.ptr.i, ptr noundef %si)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then60.cleanup_crit_edge, label %if.then60.if.end65_crit_edge

if.then60.if.end65_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end65:                                         ; preds = %if.then60.if.end65_crit_edge, %land.rhs47.if.end65_crit_edge, %if.end45.if.end65_crit_edge
  %ret.0 = phi i32 [ %call61, %if.then60.if.end65_crit_edge ], [ 0, %land.rhs47.if.end65_crit_edge ], [ 0, %if.end45.if.end65_crit_edge ]
  %l2info = getelementptr inbounds %struct.cpl_rx_pkt, ptr %rsp, i32 0, i32 6
  %40 = ptrtoint ptr %l2info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %l2info, align 4
  %and66 = and i32 %41, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %29)
  %tobool69.not390 = icmp ult i16 %29, 256
  %tobool69.not = select i1 %tobool25.not, i1 true, i1 %tobool69.not390
  %or.cond360 = select i1 %tobool67.not, i1 %tobool69.not, i1 false
  br i1 %or.cond360, label %if.end65.if.end84_crit_edge, label %land.lhs.true70

if.end65.if.end84_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end84

land.lhs.true70:                                  ; preds = %if.end65
  %42 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev, align 4
  %features72 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 23
  %44 = ptrtoint ptr %features72 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %features72, align 16
  %and73 = and i64 %45, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and73)
  %tobool74.not = icmp eq i64 %and73, 0
  %.not = xor i1 %34, true
  %brmerge = select i1 %tobool74.not, i1 true, i1 %.not
  br i1 %brmerge, label %land.lhs.true70.if.end84_crit_edge, label %land.lhs.true78

land.lhs.true70.if.end84_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end84

land.lhs.true78:                                  ; preds = %land.lhs.true70
  %46 = ptrtoint ptr %csum_calc to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load79 = load i8, ptr %csum_calc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load79)
  %tobool81.not = icmp sgt i8 %bf.load79, -1
  br i1 %tobool81.not, label %if.then82, label %land.lhs.true78.if.end84_crit_edge

land.lhs.true78.if.end84_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end84

if.then82:                                        ; preds = %land.lhs.true78
  %47 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adap, align 16
  %call.i = tail call ptr @napi_get_frags(ptr noundef %q) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i367, label %if.end.i368, !prof !113

if.then.i367:                                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @t4_pktgl_free(ptr noundef %si) #17
  %rx_drops.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %q, i32 0, i32 2, i32 5
  br label %do_gro.exit

if.end.i368:                                      ; preds = %if.then82
  %pktshift.i = getelementptr inbounds %struct.adapter, ptr %48, i32 0, i32 22, i32 26
  %49 = ptrtoint ptr %pktshift.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pktshift.i, align 4
  tail call fastcc void @copy_frags(ptr noundef nonnull %call.i, ptr noundef %si, i32 noundef %50) #17
  br i1 %tobool69.not, label %if.end.i368.if.end7.i_crit_edge, label %if.then6.i

if.end.i368.if.end7.i_crit_edge:                  ; preds = %if.end.i368
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i368
  call void @__sanitizer_cov_trace_pc() #19
  %csum_level.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 3
  %51 = ptrtoint ptr %csum_level.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %bf.load.i = load i32, ptr %csum_level.i, align 2
  %bf.clear.i = and i32 %bf.load.i, -805306369
  %bf.set.i = or i32 %bf.clear.i, 268435456
  store i32 %bf.set.i, ptr %csum_level.i, align 2
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i368.if.end7.i_crit_edge
  %tot_len.i = getelementptr inbounds %struct.pkt_gl, ptr %si, i32 0, i32 4
  %52 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tot_len.i, align 8
  %54 = ptrtoint ptr %pktshift.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pktshift.i, align 4
  %sub.i = sub i32 %53, %55
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub.i, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %57 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub.i, ptr %data_len.i, align 8
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 20
  %58 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %truesize.i, align 8
  %add.i369 = add i32 %59, %sub.i
  store i32 %add.i369, ptr %truesize.i, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %60 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load11.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear12.i = and i16 %bf.load11.i, -1537
  %bf.set13.i = or i16 %bf.clear12.i, 512
  store i16 %bf.set13.i, ptr %ip_summed.i, align 8
  %idx.i370 = getelementptr inbounds %struct.sge_rspq, ptr %q, i32 0, i32 9
  %61 = ptrtoint ptr %idx.i370 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %idx.i370, align 2
  %conv.i371 = zext i8 %62 to i16
  %add.i.i = add nuw nsw i16 %conv.i371, 1
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %63 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %add.i.i, ptr %queue_mapping.i.i, align 8
  %64 = getelementptr inbounds %struct.anon.53, ptr %call.i, i32 0, i32 2
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %rxtstamp.i = getelementptr i8, ptr %66, i32 2937
  %67 = ptrtoint ptr %rxtstamp.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %rxtstamp.i, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool16.not.i = icmp eq i8 %68, 0
  br i1 %tobool16.not.i, label %if.end7.i.if.end19.i_crit_edge, label %if.then17.i

if.end7.i.if.end19.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end7.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %69 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %si to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %si, align 8
  %mul1.i.i = mul i64 %72, 1000000
  %vpd.i.i = getelementptr inbounds %struct.adapter, ptr %48, i32 0, i32 15, i32 2
  %73 = ptrtoint ptr %vpd.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vpd.i.i, align 8
  %div8.i.i = lshr i32 %74, 1
  %conv.i.i = zext i32 %div8.i.i to i64
  %add.i94.i = add i64 %mul1.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i94.i)
  %cmp164.i.i.i.i = icmp ult i64 %add.i94.i, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !112

if.then168.i.i.i.i:                               ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv169.i.i.i.i = trunc i64 %add.i94.i to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %74
  %conv173.i.i.i.i = zext i32 %div172.i.i.i.i to i64
  br label %cxgb4_sgetim_to_hwtstamp.exit.i

if.else174.i.i.i.i:                               ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #19
  %75 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %74, i64 %add.i94.i) #21, !srcloc !133
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %75, 1
  br label %cxgb4_sgetim_to_hwtstamp.exit.i

cxgb4_sgetim_to_hwtstamp.exit.i:                  ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.i.i = phi i64 [ %conv173.i.i.i.i, %if.then168.i.i.i.i ], [ %asmresult1.i.i.i.i.i, %if.else174.i.i.i.i ]
  %76 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %dividend.addr.0.i.i.i.i, ptr %hwtstamps.i.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %cxgb4_sgetim_to_hwtstamp.exit.i, %if.end7.i.if.end19.i_crit_edge
  %77 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %netdev, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 23
  %79 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %features.i, align 16
  %and.i = and i64 %80, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool21.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end23.i_crit_edge, label %if.then22.i

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  %hash_val.i = getelementptr inbounds %struct.rss_header, ptr %rsp, i32 0, i32 3
  %81 = ptrtoint ptr %hash_val.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %hash_val.i, align 4
  %83 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %bf.load.i.i.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear7.i.i.i = and i16 %bf.load.i.i.i, -193
  store i16 %bf.clear7.i.i.i, ptr %ip_summed.i, align 8
  %hash10.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 8
  %84 = ptrtoint ptr %hash10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %82, ptr %hash10.i.i.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end23.i_crit_edge
  %85 = ptrtoint ptr %csum_calc to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load24.i = load i8, ptr %csum_calc, align 1
  %86 = and i8 %bf.load24.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool26.not.i = icmp eq i8 %86, 0
  br i1 %tobool26.not.i, label %if.end23.i.if.end37.i_crit_edge, label %if.then33.i, !prof !112

if.end23.i.if.end37.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37.i

if.then33.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  %vlan.i = getelementptr inbounds %struct.cpl_rx_pkt, ptr %rsp, i32 0, i32 4
  %87 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %vlan.i, align 4
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 9
  %89 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 10
  %90 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %88, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 3
  %91 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  %vlan_ex35.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %q, i32 0, i32 2, i32 4
  %92 = ptrtoint ptr %vlan_ex35.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %vlan_ex35.i, align 8
  %inc36.i = add i32 %93, 1
  store i32 %inc36.i, ptr %vlan_ex35.i, align 8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then33.i, %if.end23.i.if.end37.i_crit_edge
  %call40.i = tail call i32 @napi_gro_frags(ptr noundef %q) #17
  %94 = zext i32 %call40.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call40.i, label %if.end37.i.if.end53.i_crit_edge [
    i32 2, label %if.then42.i
    i32 0, label %if.end37.i.if.then49.i_crit_edge
    i32 1, label %if.end37.i.if.then49.i_crit_edge392
  ]

if.end37.i.if.then49.i_crit_edge392:              ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then49.i

if.end37.i.if.then49.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then49.i

if.end37.i.if.end53.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53.i

if.then42.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #19
  %lro_pkts.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %q, i32 0, i32 2, i32 1
  %95 = ptrtoint ptr %lro_pkts.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %lro_pkts.i, align 4
  %inc44.i = add i32 %96, 1
  store i32 %inc44.i, ptr %lro_pkts.i, align 4
  br label %if.end53.i

if.then49.i:                                      ; preds = %if.end37.i.if.then49.i_crit_edge, %if.end37.i.if.then49.i_crit_edge392
  %lro_merged.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %q, i32 0, i32 2, i32 2
  %97 = ptrtoint ptr %lro_merged.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %lro_merged.i, align 8
  %inc51.i = add i32 %98, 1
  store i32 %inc51.i, ptr %lro_merged.i, align 8
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then49.i, %if.then42.i, %if.end37.i.if.end53.i_crit_edge
  %stats54.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %q, i32 0, i32 2
  %99 = ptrtoint ptr %stats54.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %stats54.i, align 8
  %inc55.i = add i32 %100, 1
  store i32 %inc55.i, ptr %stats54.i, align 8
  %rx_cso.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %q, i32 0, i32 2, i32 3
  br label %do_gro.exit

do_gro.exit:                                      ; preds = %if.end53.i, %if.then.i367
  %rx_cso.sink95.i = phi ptr [ %rx_cso.i, %if.end53.i ], [ %rx_drops.i, %if.then.i367 ]
  %101 = ptrtoint ptr %rx_cso.sink95.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rx_cso.sink95.i, align 4
  %inc57.i = add i32 %102, 1
  store i32 %inc57.i, ptr %rx_cso.sink95.i, align 4
  br label %cleanup

if.end84:                                         ; preds = %land.lhs.true78.if.end84_crit_edge, %land.lhs.true70.if.end84_crit_edge, %if.end65.if.end84_crit_edge
  %call85 = tail call ptr @cxgb4_pktgl_to_skb(ptr noundef %si, i32 noundef 512, i32 noundef 128)
  %tobool86.not = icmp eq ptr %call85, null
  br i1 %tobool86.not, label %if.then95, label %if.end98, !prof !113

if.then95:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @t4_pktgl_free(ptr noundef %si)
  %rx_drops = getelementptr inbounds %struct.sge_eth_rxq, ptr %q, i32 0, i32 2, i32 5
  %103 = ptrtoint ptr %rx_drops to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx_drops, align 4
  %inc97 = add i32 %104, 1
  store i32 %inc97, ptr %rx_drops, align 4
  br label %cleanup

if.end98:                                         ; preds = %if.end84
  %ptp_enable = getelementptr i8, ptr %5, i32 2952
  %105 = ptrtoint ptr %ptp_enable to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ptp_enable, align 8, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool99.not = icmp eq i8 %106, 0
  br i1 %tobool99.not, label %if.end98.if.end112_crit_edge, label %if.then106, !prof !112

if.end98.if.end112_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end112

if.then106:                                       ; preds = %if.end98
  %call107 = tail call fastcc i32 @t4_rx_hststamp(ptr noundef %1, ptr noundef %rsp, ptr noundef %q, ptr noundef nonnull %call85)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call107)
  %cmp108 = icmp eq i32 %call107, 2
  br i1 %cmp108, label %if.then106.cleanup_crit_edge, label %if.then106.if.end112_crit_edge

if.then106.if.end112_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end112

if.then106.cleanup_crit_edge:                     ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end112:                                        ; preds = %if.then106.if.end112_crit_edge, %if.end98.if.end112_crit_edge
  %ret.1 = phi i32 [ %call107, %if.then106.if.end112_crit_edge ], [ %ret.0, %if.end98.if.end112_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool113.not = icmp eq i32 %ret.1, 0
  br i1 %tobool113.not, label %if.then122, label %if.end112.if.end150_crit_edge, !prof !112

if.end112.if.end150_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end150

if.then122:                                       ; preds = %if.end112
  %pktshift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 26
  %107 = ptrtoint ptr %pktshift to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pktshift, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 6
  %109 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len1.i, align 4
  %sub.i373 = sub i32 %110, %108
  store i32 %sub.i373, ptr %len1.i, align 4
  %data_len.i374 = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 7
  %111 = ptrtoint ptr %data_len.i374 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %data_len.i374, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i373, i32 %112)
  %cmp.i375 = icmp ult i32 %sub.i373, %112
  br i1 %cmp.i375, label %do.body4.i, label %if.end124, !prof !113

do.body4.i:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #17, !srcloc !134
  unreachable

if.end124:                                        ; preds = %if.then122
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 19
  %113 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data.i, align 4
  %add.ptr.i376 = getelementptr i8, ptr %114, i32 %108
  store ptr %add.ptr.i376, ptr %data.i, align 4
  %115 = ptrtoint ptr %ptp_enable to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %ptp_enable, align 8, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool126.not = icmp eq i8 %116, 0
  br i1 %tobool126.not, label %if.end124.if.end150_crit_edge, label %land.lhs.true130

if.end124.if.end150_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end150

land.lhs.true130:                                 ; preds = %if.end124
  %117 = ptrtoint ptr %l2info to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %l2info, align 4
  %and132 = and i32 %118, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %land.lhs.true130.if.end150_crit_edge, label %land.rhs134

land.lhs.true130.if.end150_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end150

land.rhs134:                                      ; preds = %land.lhs.true130
  %call135 = tail call zeroext i1 @cxgb4_ptp_is_ptp_rx(ptr noundef nonnull %call85) #17
  br i1 %call135, label %if.then144, label %land.rhs134.if.end150_crit_edge, !prof !113

land.rhs134.if.end150_crit_edge:                  ; preds = %land.rhs134
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end150

if.then144:                                       ; preds = %land.rhs134
  %119 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %netdev, align 4
  %call146 = tail call fastcc i32 @t4_tx_hststamp(ptr noundef %1, ptr noundef nonnull %call85, ptr noundef %120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.then144.cleanup_crit_edge, label %if.then144.if.end150_crit_edge

if.then144.if.end150_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end150

if.then144.cleanup_crit_edge:                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end150:                                        ; preds = %if.then144.if.end150_crit_edge, %land.rhs134.if.end150_crit_edge, %land.lhs.true130.if.end150_crit_edge, %if.end124.if.end150_crit_edge, %if.end112.if.end150_crit_edge
  %121 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %netdev, align 4
  %call152 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call85, ptr noundef %122) #17
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 15, i32 0, i32 18
  %123 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %call152, ptr %protocol, align 8
  %idx = getelementptr inbounds %struct.sge_rspq, ptr %q, i32 0, i32 9
  %124 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %idx, align 2
  %conv153 = zext i8 %125 to i16
  %add.i377 = add nuw nsw i16 %conv153, 1
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 10
  %126 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %add.i377, ptr %queue_mapping.i, align 8
  %127 = getelementptr inbounds %struct.anon.53, ptr %call85, i32 0, i32 2
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 8
  %features154 = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 23
  %130 = ptrtoint ptr %features154 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %features154, align 16
  %and155 = and i64 %131, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and155)
  %tobool156.not = icmp eq i64 %and155, 0
  br i1 %tobool156.not, label %if.end150.if.end158_crit_edge, label %if.then157

if.end150.if.end158_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end158

if.then157:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #19
  %hash_val = getelementptr inbounds %struct.rss_header, ptr %rsp, i32 0, i32 3
  %132 = ptrtoint ptr %hash_val to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %hash_val, align 4
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 15
  %134 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %bf.load.i.i378 = load i16, ptr %l4_hash.i.i, align 8
  %bf.clear7.i.i = and i16 %bf.load.i.i378, -193
  store i16 %bf.clear7.i.i, ptr %l4_hash.i.i, align 8
  %hash10.i.i = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 15, i32 0, i32 8
  %135 = ptrtoint ptr %hash10.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %133, ptr %hash10.i.i, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %if.end150.if.end158_crit_edge
  %stats159 = getelementptr inbounds %struct.sge_eth_rxq, ptr %q, i32 0, i32 2
  %136 = ptrtoint ptr %stats159 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %stats159, align 8
  %inc160 = add i32 %137, 1
  store i32 %inc160, ptr %stats159, align 8
  %rxtstamp = getelementptr i8, ptr %5, i32 2937
  %138 = ptrtoint ptr %rxtstamp to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %rxtstamp, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool161.not = icmp eq i8 %139, 0
  br i1 %tobool161.not, label %if.end158.if.end165_crit_edge, label %if.then162

if.end158.if.end165_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end165

if.then162:                                       ; preds = %if.end158
  %140 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %adap, align 8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 17
  %142 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %143, i32 0, i32 7
  %144 = ptrtoint ptr %si to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %si, align 8
  %mul1.i = mul i64 %145, 1000000
  %vpd.i = getelementptr inbounds %struct.adapter, ptr %141, i32 0, i32 15, i32 2
  %146 = ptrtoint ptr %vpd.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %vpd.i, align 8
  %div8.i = lshr i32 %147, 1
  %conv.i379 = zext i32 %div8.i to i64
  %add.i380 = add i64 %mul1.i, %conv.i379
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i380)
  %cmp164.i.i.i = icmp ult i64 %add.i380, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !112

if.then168.i.i.i:                                 ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #19
  %conv169.i.i.i = trunc i64 %add.i380 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %147
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %cxgb4_sgetim_to_hwtstamp.exit

if.else174.i.i.i:                                 ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #19
  %148 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %147, i64 %add.i380) #21, !srcloc !133
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %148, 1
  br label %cxgb4_sgetim_to_hwtstamp.exit

cxgb4_sgetim_to_hwtstamp.exit:                    ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %149 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %dividend.addr.0.i.i.i, ptr %hwtstamps.i, align 8
  br label %if.end165

if.end165:                                        ; preds = %cxgb4_sgetim_to_hwtstamp.exit, %if.end158.if.end165_crit_edge
  br i1 %34, label %land.lhs.true168, label %if.end165.if.else208_crit_edge

if.end165.if.else208_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else208

land.lhs.true168:                                 ; preds = %if.end165
  %150 = ptrtoint ptr %l2info to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %l2info, align 4
  %and170 = and i32 %151, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %land.lhs.true168.if.else208_crit_edge, label %if.then172

land.lhs.true168.if.else208_crit_edge:            ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else208

if.then172:                                       ; preds = %land.lhs.true168
  %152 = ptrtoint ptr %csum_calc to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load174 = load i8, ptr %csum_calc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load174)
  %tobool176.not = icmp sgt i8 %bf.load174, -1
  br i1 %tobool176.not, label %if.then177, label %if.else182

if.then177:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #19
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 15
  %153 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %153)
  %bf.load178 = load i16, ptr %ip_summed, align 8
  %bf.clear179 = and i16 %bf.load178, -1537
  %bf.set = or i16 %bf.clear179, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  %rx_cso = getelementptr inbounds %struct.sge_eth_rxq, ptr %q, i32 0, i32 2, i32 3
  %154 = ptrtoint ptr %rx_cso to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %rx_cso, align 4
  %inc181 = add i32 %155, 1
  store i32 %inc181, ptr %rx_cso, align 4
  br label %if.end246

if.else182:                                       ; preds = %if.then172
  %and184 = and i32 %151, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %if.else182.if.end246_crit_edge, label %if.then186

if.else182.if.end246_crit_edge:                   ; preds = %if.else182
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end246

if.then186:                                       ; preds = %if.else182
  %csum = getelementptr inbounds %struct.cpl_rx_pkt, ptr %rsp, i32 0, i32 3
  %156 = ptrtoint ptr %csum to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %csum, align 2
  %conv.i = zext i16 %157 to i32
  %158 = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 15, i32 0, i32 5
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %conv.i, ptr %158, align 8
  %ip_summed198 = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 15
  %160 = ptrtoint ptr %ip_summed198 to i32
  call void @__asan_load2_noabort(i32 %160)
  %bf.load199 = load i16, ptr %ip_summed198, align 8
  %bf.clear200 = and i16 %bf.load199, -1537
  br i1 %tobool69.not, label %if.else197, label %if.then189

if.then189:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #19
  %bf.set193 = or i16 %bf.clear200, 512
  %161 = ptrtoint ptr %ip_summed198 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %bf.set193, ptr %ip_summed198, align 8
  %csum_level = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 15, i32 0, i32 3
  %162 = ptrtoint ptr %csum_level to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %bf.load194 = load i32, ptr %csum_level, align 2
  %bf.clear195 = and i32 %bf.load194, -805306369
  %bf.set196 = or i32 %bf.clear195, 268435456
  store i32 %bf.set196, ptr %csum_level, align 2
  br label %if.end202

if.else197:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #19
  %bf.set201 = or i16 %bf.clear200, 1024
  %163 = ptrtoint ptr %ip_summed198 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %bf.set201, ptr %ip_summed198, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.else197, %if.then189
  %rx_cso204 = getelementptr inbounds %struct.sge_eth_rxq, ptr %q, i32 0, i32 2, i32 3
  %164 = ptrtoint ptr %rx_cso204 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %rx_cso204, align 4
  %inc205 = add i32 %165, 1
  store i32 %inc205, ptr %rx_cso204, align 4
  br label %if.end246

if.else208:                                       ; preds = %land.lhs.true168.if.else208_crit_edge, %if.end165.if.else208_crit_edge
  %166 = ptrtoint ptr %l2info to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %l2info, align 4
  %168 = and i32 %167, 267386880
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %168)
  %.not389 = icmp eq i32 %168, 67108864
  br i1 %.not389, label %land.lhs.true216, label %if.else208.if.end246_crit_edge

if.else208.if.end246_crit_edge:                   ; preds = %if.else208
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end246

land.lhs.true216:                                 ; preds = %if.else208
  %fcoe = getelementptr i8, ptr %5, i32 2936
  %169 = ptrtoint ptr %fcoe to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %fcoe, align 8
  %171 = and i8 %170, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool219.not = icmp eq i8 %171, 0
  br i1 %tobool219.not, label %land.lhs.true216.if.end246_crit_edge, label %if.then220

land.lhs.true216.if.end246_crit_edge:             ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end246

if.then220:                                       ; preds = %land.lhs.true216
  %172 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %adap, align 8
  %rx_pkt_encap224 = getelementptr inbounds %struct.adapter, ptr %173, i32 0, i32 15, i32 1, i32 8
  %174 = ptrtoint ptr %rx_pkt_encap224 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %rx_pkt_encap224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool225.not = icmp eq i32 %175, 0
  %csum_ok.0.off0.in.v = select i1 %tobool225.not, i16 8192, i16 16
  %csum_ok.0.off0.in = and i16 %csum_ok.0.off0.in.v, %err_vec.0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %csum_ok.0.off0.in)
  %csum_ok.0.off0.not = icmp eq i16 %csum_ok.0.off0.in, 0
  br i1 %csum_ok.0.off0.not, label %if.then238, label %if.then220.if.end246_crit_edge

if.then220.if.end246_crit_edge:                   ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end246

if.then238:                                       ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #19
  %ip_summed239 = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 15
  %176 = ptrtoint ptr %ip_summed239 to i32
  call void @__asan_load2_noabort(i32 %176)
  %bf.load240 = load i16, ptr %ip_summed239, align 8
  %bf.clear241 = and i16 %bf.load240, -1537
  %bf.set242 = or i16 %bf.clear241, 512
  store i16 %bf.set242, ptr %ip_summed239, align 8
  br label %if.end246

if.end246:                                        ; preds = %if.then238, %if.then220.if.end246_crit_edge, %land.lhs.true216.if.end246_crit_edge, %if.else208.if.end246_crit_edge, %if.end202, %if.else182.if.end246_crit_edge, %if.then177
  %177 = ptrtoint ptr %csum_calc to i32
  call void @__asan_load1_noabort(i32 %177)
  %bf.load247 = load i8, ptr %csum_calc, align 1
  %178 = and i8 %bf.load247, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool250.not = icmp eq i8 %178, 0
  br i1 %tobool250.not, label %if.end246.if.end261_crit_edge, label %if.then257, !prof !112

if.end246.if.end261_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end261

if.then257:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #19
  %vlan = getelementptr inbounds %struct.cpl_rx_pkt, ptr %rsp, i32 0, i32 4
  %179 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %vlan, align 4
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 15, i32 0, i32 9
  %181 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 15, i32 0, i32 10
  %182 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %180, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 15, i32 0, i32 3
  %183 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %bf.load.i381 = load i32, ptr %vlan_present.i, align 2
  %bf.set.i382 = or i32 %bf.load.i381, -2147483648
  store i32 %bf.set.i382, ptr %vlan_present.i, align 2
  %vlan_ex259 = getelementptr inbounds %struct.sge_eth_rxq, ptr %q, i32 0, i32 2, i32 4
  %184 = ptrtoint ptr %vlan_ex259 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %vlan_ex259, align 8
  %inc260 = add i32 %185, 1
  store i32 %inc260, ptr %vlan_ex259, align 8
  br label %if.end261

if.end261:                                        ; preds = %if.then257, %if.end246.if.end261_crit_edge
  %186 = getelementptr inbounds %struct.sk_buff, ptr %call85, i32 0, i32 15, i32 0, i32 11
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %188)
  %cmp.i383 = icmp ult i32 %188, 5
  br i1 %cmp.i383, label %if.then.i384, label %if.end261.skb_mark_napi_id.exit_crit_edge

if.end261.skb_mark_napi_id.exit_crit_edge:        ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_mark_napi_id.exit

if.then.i384:                                     ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #19
  %napi_id.i = getelementptr inbounds %struct.napi_struct, ptr %q, i32 0, i32 15
  %189 = ptrtoint ptr %napi_id.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %napi_id.i, align 8
  %191 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %186, align 4
  br label %skb_mark_napi_id.exit

skb_mark_napi_id.exit:                            ; preds = %if.then.i384, %if.end261.skb_mark_napi_id.exit_crit_edge
  %call262 = tail call i32 @netif_receive_skb(ptr noundef nonnull %call85) #17
  br label %cleanup

cleanup:                                          ; preds = %skb_mark_napi_id.exit, %if.then144.cleanup_crit_edge, %if.then106.cleanup_crit_edge, %if.then95, %do_gro.exit, %if.then60.cleanup_crit_edge, %if.then19, %if.end38.i, %do.end.i
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_trace_pkt(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %gl) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cxgb4_pktgl_to_skb(ptr noundef %gl, i32 noundef 128, i32 noundef 128)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @t4_pktgl_free(ptr noundef %gl)
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 8
  %2 = and i32 %1, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 64
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len1.i, align 4
  br i1 %cmp.i.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %sub.i = add i32 %4, -16
  %5 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %7)
  %cmp.i1 = icmp ult i32 %sub.i, %7
  br i1 %cmp.i1, label %do.body4.i, label %if.then6.if.end9_crit_edge, !prof !113

if.then6.if.end9_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

do.body4.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #17, !srcloc !134
  unreachable

if.else:                                          ; preds = %if.end
  %sub.i3 = add i32 %4, -24
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i3, ptr %len1.i, align 4
  %data_len.i4 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i3, i32 %10)
  %cmp.i5 = icmp ult i32 %sub.i3, %10
  br i1 %cmp.i5, label %do.body4.i6, label %if.else.if.end9_crit_edge, !prof !113

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

do.body4.i6:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #17, !srcloc !134
  unreachable

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %if.then6.if.end9_crit_edge
  %.sink12 = phi i32 [ 16, %if.then6.if.end9_crit_edge ], [ 24, %if.else.if.end9_crit_edge ]
  %data.i7 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %11 = ptrtoint ptr %data.i7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i7, align 4
  %add.ptr.i8 = getelementptr i8, ptr %12, i32 %.sink12
  store ptr %add.ptr.i8, ptr %data.i7, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i8 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i11 = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 21
  %15 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i11, ptr %mac_header.i, align 2
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 18
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %protocol, align 8
  %port = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 23
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port, align 128
  %19 = getelementptr inbounds %struct.anon.53, ptr %call, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %19, align 8
  %call10 = tail call i32 @netif_receive_skb(ptr noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgb4_validate_lb_pkt(ptr noundef %pi, ptr nocapture noundef readonly %si) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 8
  %port_id = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 7
  %2 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_id, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 23, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %ethtool_lb = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 32
  %va = getelementptr inbounds %struct.pkt_gl, ptr %si, i32 0, i32 2
  %6 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %va, align 8
  %pktshift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 26
  %8 = ptrtoint ptr %pktshift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pktshift, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 6
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %12 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr1, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %xor.i = xor i32 %15, %13
  %add.ptr.i = getelementptr i8, ptr %add.ptr1, i32 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %11, i32 4
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %19, %17
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %add.ptr, i32 12
  %call3 = tail call i32 @strcmp(ptr noundef %arrayidx2, ptr noundef nonnull dereferenceable(17) @.str.2) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %result = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 32, i32 1
  %20 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -5, ptr %result, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @complete(ptr noundef %ethtool_lb) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @t4_pktgl_free(ptr nocapture noundef readonly %gl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nfrags = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 3
  %0 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfrags, align 4
  %n.03 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.03)
  %tobool.not4 = icmp eq i32 %n.03, 0
  br i1 %tobool.not4, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %frags = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.body.preheader
  %n.06 = phi i32 [ %n.0, %put_page.exit.for.body_crit_edge ], [ %n.03, %for.body.preheader ]
  %p.05 = phi ptr [ %incdec.ptr, %put_page.exit.for.body_crit_edge ], [ %frags, %for.body.preheader ]
  %2 = ptrtoint ptr %p.05 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.05, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !112

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #17
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !113

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %11 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.27) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #17, !srcloc !135
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #17
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #17, !srcloc !137
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@t4_pktgl_free, %if.then.i.i.i.i.i)) #17
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !132

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #17
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__put_page(ptr noundef %8) #17
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %incdec.ptr = getelementptr %struct.page_frag, ptr %p.05, i32 1
  %n.0 = add i32 %n.06, -1
  %tobool.not = icmp eq i32 %n.0, 0
  br i1 %tobool.not, label %put_page.exit.for.end_crit_edge, label %put_page.exit.for.body_crit_edge

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t4_rx_hststamp(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %rsp, ptr nocapture noundef %rxq, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rsp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %1)
  %cmp = icmp eq i8 %1, -81
  br i1 %cmp, label %land.rhs, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.rhs:                                         ; preds = %entry
  %chip = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 15, i32 22
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 8
  %4 = and i32 %3, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 64
  br i1 %cmp.i.not, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !112

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  %call5 = tail call fastcc i32 @t4_systim_to_hwstamp(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 2
  br i1 %cmp6, label %if.then8, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  %rx_drops = getelementptr inbounds %struct.sge_eth_rxq, ptr %rxq, i32 0, i32 2, i32 5
  %5 = ptrtoint ptr %rx_drops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_drops, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %rx_drops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.then.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then8 ], [ %call5, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cxgb4_ptp_is_ptp_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t4_tx_hststamp(ptr noundef %adapter, ptr noundef %skb, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %chip = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 15, i32 22
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 8
  %2 = and i32 %1, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 64
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %ptp_tx_skb = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 66
  %3 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptp_tx_skb, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @cxgb4_ptp_read_hwstamp(ptr noundef %adapter, ptr noundef %add.ptr.i) #17
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_ethofld_restart(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -108
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #17
  %cidx = getelementptr i8, ptr %t, i32 -44
  %0 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cidx, align 4
  %last_cidx = getelementptr i8, ptr %t, i32 -40
  %2 = ptrtoint ptr %last_cidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_cidx, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %ndesc = getelementptr i8, ptr %t, i32 -56
  %4 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ndesc, align 4
  %add = add i32 %5, %sub
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pktcount.0 = phi i32 [ %add, %if.then ], [ %sub, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pktcount.0)
  %tobool.not = icmp eq i32 %pktcount.0, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %netdev = getelementptr i8, ptr %t, i32 -4
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 2304
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void @cxgb4_eosw_txq_free_desc(ptr noundef %9, ptr noundef %add.ptr, i32 noundef %pktcount.0)
  %inuse = getelementptr i8, ptr %t, i32 -32
  %10 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inuse, align 4
  %sub2 = sub i32 %11, %pktcount.0
  store i32 %sub2, ptr %inuse, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %netdev4 = getelementptr i8, ptr %t, i32 -4
  %12 = ptrtoint ptr %netdev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev4, align 4
  tail call fastcc void @ethofld_xmit(ptr noundef %13, ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_ethofld_rx_handler(ptr nocapture noundef readonly %q, ptr nocapture noundef readonly %rsp, ptr nocapture noundef readnone %si) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rsp, align 4
  %incdec.ptr = getelementptr i64, ptr %rsp, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -61, i8 %1)
  %cmp = icmp eq i8 %1, -61
  br i1 %cmp, label %if.then, label %entry.cleanup66_crit_edge

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup66

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %incdec.ptr, align 8
  %and = and i32 %3, 16777215
  %adap = getelementptr inbounds %struct.sge_rspq, ptr %q, i32 0, i32 19
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %eotid_base = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 48, i32 34
  %6 = ptrtoint ptr %eotid_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eotid_base, align 4
  %sub = sub i32 %and, %7
  %neotids.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 48, i32 35
  %8 = ptrtoint ptr %neotids.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %neotids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sub)
  %cmp.i = icmp ugt i32 %9, %sub
  br i1 %cmp.i, label %cxgb4_lookup_eotid.exit, label %if.then.cleanup66_crit_edge

if.then.cleanup66_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup66

cxgb4_lookup_eotid.exit:                          ; preds = %if.then
  %eotid_tab.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 48, i32 32
  %10 = ptrtoint ptr %eotid_tab.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eotid_tab.i, align 4
  %arrayidx.i = getelementptr %struct.eotid_entry, ptr %11, i32 %sub
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %cxgb4_lookup_eotid.exit.cleanup66_crit_edge, label %if.end

cxgb4_lookup_eotid.exit.cleanup66_crit_edge:      ; preds = %cxgb4_lookup_eotid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup66

if.end:                                           ; preds = %cxgb4_lookup_eotid.exit
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.end.cleanup66_crit_edge, label %if.end9

if.end.cleanup66_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup66

if.end9:                                          ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull %13) #17
  %credits10 = getelementptr inbounds %struct.cpl_fw4_ack, ptr %incdec.ptr, i32 0, i32 1
  %14 = ptrtoint ptr %credits10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %credits10, align 4
  %desc = getelementptr inbounds %struct.sge_eosw_txq, ptr %13, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp12109.not = icmp eq i8 %15, 0
  br i1 %cmp12109.not, label %if.end9.while.end_crit_edge, label %while.body.lr.ph

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end9
  %conv11 = zext i8 %15 to i32
  %cidx = getelementptr inbounds %struct.sge_eosw_txq, ptr %13, i32 0, i32 6
  %state = getelementptr inbounds %struct.sge_eosw_txq, ptr %13, i32 0, i32 1
  %flowc_idx = getelementptr inbounds %struct.sge_eosw_txq, ptr %13, i32 0, i32 8
  %completion = getelementptr inbounds %struct.sge_eosw_txq, ptr %13, i32 0, i32 18
  %netdev = getelementptr inbounds %struct.sge_eosw_txq, ptr %13, i32 0, i32 16
  %ndesc = getelementptr inbounds %struct.sge_eosw_txq, ptr %13, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end44.while.body_crit_edge, %while.body.lr.ph
  %credits.0110 = phi i32 [ %conv11, %while.body.lr.ph ], [ %sub52, %if.end44.while.body_crit_edge ]
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc, align 4
  %18 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cidx, align 4
  %arrayidx = getelementptr %struct.tx_sw_desc, ptr %17, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %while.body.while.end_crit_edge, label %if.end17

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.end17:                                         ; preds = %while.body
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %23, label %if.end17.if.else38_crit_edge [
    i32 2, label %if.end17.land.rhs_crit_edge
    i32 5, label %if.end17.land.rhs_crit_edge111
  ]

if.end17.land.rhs_crit_edge111:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

if.end17.land.rhs_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

if.end17.if.else38_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else38

land.rhs:                                         ; preds = %if.end17.land.rhs_crit_edge, %if.end17.land.rhs_crit_edge111
  %25 = ptrtoint ptr %flowc_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flowc_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %26)
  %cmp24 = icmp eq i32 %19, %26
  br i1 %cmp24, label %if.then28, label %land.rhs.if.else38_crit_edge, !prof !113

land.rhs.if.else38_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else38

if.then28:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  %len = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %sub29 = add i32 %28, 7
  %div100 = lshr i32 %sub29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp32 = icmp eq i32 %23, 2
  %. = select i1 %cmp32, i32 3, i32 0
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %., ptr %state, align 4
  tail call void @complete(ptr noundef %completion) #17
  br label %if.end44

if.else38:                                        ; preds = %land.rhs.if.else38_crit_edge, %if.end17.if.else38_crit_edge
  %30 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev, align 4
  %data39 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 19
  %32 = ptrtoint ptr %data39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data39, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 7
  %36 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %35, %37
  %call41 = tail call i32 @eth_get_headlen(ptr noundef %31, ptr noundef %33, i32 noundef %sub.i) #17
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 17
  %38 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i = icmp eq i16 %41, 0
  br i1 %tobool.not.i, label %if.else38.if.end.i_crit_edge, label %land.lhs.true.i

if.else38.if.end.i_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #19
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 8
  %42 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gso_type.i, align 8
  %and.i = and i32 %43, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 64, i32 48
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.else38.if.end.i_crit_edge
  %wrlen.0.i = phi i32 [ 48, %if.else38.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 2
  %44 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %nr_frags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp.not.i = icmp eq i8 %45, 0
  %46 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i, align 4
  br i1 %cmp.not.i, label %if.else29.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  %48 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_len.i, align 8
  %sub.i.i = sub i32 %47, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %call41)
  %tobool15.not.i = icmp eq i32 %sub.i.i, %call41
  %conv25.i = zext i8 %45 to i32
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #19
  %mul.i.i = mul nuw nsw i32 %conv25.i, 3
  %div4.i.i = lshr i32 %mul.i.i, 1
  %and.i.i = and i32 %conv25.i, 1
  %add.i.i = or i32 %and.i.i, 2
  %add1.i.i = add nuw nsw i32 %add.i.i, %div4.i.i
  br label %ethofld_calc_tx_flits.exit

if.else.i:                                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #19
  %dec.i.i = add nsw i32 %conv25.i, -1
  %mul.i7.i = mul nuw nsw i32 %dec.i.i, 3
  %div4.i8.i = lshr i32 %mul.i7.i, 1
  %and.i9.i = and i32 %dec.i.i, 1
  %add.i10.i = or i32 %and.i9.i, 2
  %add1.i11.i = add nuw i32 %add.i10.i, %div4.i8.i
  br label %ethofld_calc_tx_flits.exit

if.else29.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %call41)
  %tobool31.not.i = icmp eq i32 %47, %call41
  %spec.select12.i = select i1 %tobool31.not.i, i32 0, i32 2
  br label %ethofld_calc_tx_flits.exit

ethofld_calc_tx_flits.exit:                       ; preds = %if.else29.i, %if.else.i, %if.then16.i
  %nsgl.0.i = phi i32 [ %add1.i.i, %if.then16.i ], [ %add1.i11.i, %if.else.i ], [ %spec.select12.i, %if.else29.i ]
  %add3.i = add i32 %call41, 15
  %div1.i = and i32 %add3.i, 2032
  %add4.i = add nuw nsw i32 %wrlen.0.i, %div1.i
  %div72.i = lshr exact i32 %add4.i, 3
  %conv37.i = and i32 %div72.i, 254
  %add39.i = add i32 %nsgl.0.i, %conv37.i
  br label %if.end44

if.end44:                                         ; preds = %ethofld_calc_tx_flits.exit, %if.then28
  %flits.0.in = phi i32 [ %div100, %if.then28 ], [ %add39.i, %ethofld_calc_tx_flits.exit ]
  %50 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ndesc, align 4
  %52 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cidx, align 4
  %add.i = add i32 %53, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %51)
  %cmp.not.i102 = icmp ult i32 %add.i, %51
  %sub.i103 = select i1 %cmp.not.i102, i32 0, i32 %51
  %spec.select.i104 = sub i32 %add.i, %sub.i103
  %54 = ptrtoint ptr %cidx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select.i104, ptr %cidx, align 4
  %conv46 = shl i32 %flits.0.in, 3
  %mul = and i32 %conv46, 2040
  %sub48 = add nuw nsw i32 %mul, 15
  %div4999 = lshr i32 %sub48, 4
  %sub52 = sub nsw i32 %credits.0110, %div4999
  %cmp12 = icmp sgt i32 %sub52, 0
  br i1 %cmp12, label %if.end44.while.body_crit_edge, label %if.end44.while.end_crit_edge

if.end44.while.end_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.end44.while.body_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.end:                                        ; preds = %if.end44.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end9.while.end_crit_edge
  %55 = ptrtoint ptr %credits10 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %credits10, align 4
  %conv54 = zext i8 %56 to i32
  %cred = getelementptr inbounds %struct.sge_eosw_txq, ptr %13, i32 0, i32 10
  %57 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cred, align 4
  %add55 = add i32 %58, %conv54
  store i32 %add55, ptr %cred, align 4
  %ncompl = getelementptr inbounds %struct.sge_eosw_txq, ptr %13, i32 0, i32 11
  %59 = ptrtoint ptr %ncompl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ncompl, align 4
  %dec = add i32 %60, -1
  store i32 %dec, ptr %ncompl, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull %13) #17
  %state.i = getelementptr inbounds %struct.sge_eosw_txq, ptr %13, i32 0, i32 17, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i105 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i105, label %if.then.i, label %while.end.cleanup66_crit_edge

while.end.cleanup66_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup66

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  %qresume_tsk = getelementptr inbounds %struct.sge_eosw_txq, ptr %13, i32 0, i32 17
  tail call void @__tasklet_schedule(ptr noundef %qresume_tsk) #17
  br label %cleanup66

cleanup66:                                        ; preds = %if.then.i, %while.end.cleanup66_crit_edge, %if.end.cleanup66_crit_edge, %cxgb4_lookup_eotid.exit.cleanup66_crit_edge, %if.then.cleanup66_crit_edge, %entry.cleanup66_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_get_headlen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4_sge_intr_msix(i32 %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %cookie) #17
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__napi_schedule(ptr noundef %cookie) #17
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @t4_intr_handler(ptr nocapture noundef readonly %adap) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 32
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %t4_intr_intx.t4_intr_msi = select i1 %tobool3.not, ptr @t4_intr_intx, ptr @t4_intr_msi
  %retval.0 = select i1 %tobool.not, ptr %t4_intr_intx.t4_intr_msi, ptr @t4_sge_intr_msix
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t4_intr_msi(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 32
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @t4_slow_intr_handler(ptr noundef %cookie) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call fastcc i32 @process_intrq(ptr noundef %cookie)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t4_intr_intx(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !115
  tail call void @arm_heavy_mb() #17
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 110660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #17, !srcloc !116
  %flags = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 32
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @t4_slow_intr_handler(ptr noundef %cookie) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1 = icmp ne i32 %call, 0
  %phi.cast = zext i1 %tobool1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %call2 = tail call fastcc i32 @process_intrq(ptr noundef %cookie)
  %or = or i32 %call2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool3.not = icmp ne i32 %or, 0
  %. = zext i1 %tobool3.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4_sge_alloc_rxq(ptr noundef %adap, ptr noundef %iq, i1 noundef zeroext %fwevtq, ptr noundef %dev, i32 noundef %intr_idx, ptr noundef %fl, ptr noundef %hnd, ptr noundef %flush_hnd, i32 noundef %cong) local_unnamed_addr #0 align 64 {
entry:
  %bar2_qoffset.i385 = alloca i64, align 8
  %bar2_qoffset.i = alloca i64, align 8
  %c = alloca %struct.fw_iq_cmd, align 8
  %param = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c) #17
  %flags = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 32
  %and = lshr i32 %1, 10
  %and.lobit = and i32 %and, 1
  %2 = xor i32 %and.lobit, 1
  %size = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 18
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %add = add i32 %4, 15
  %div368 = and i32 %add, -16
  store i32 %div368, ptr %size, align 4
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %5 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev_dev, align 16
  %iqe_len = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 17
  %7 = ptrtoint ptr %iqe_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iqe_len, align 8
  %phys_addr = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 14
  %mul.i = mul i32 %8, %div368
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %6, i32 noundef %mul.i, ptr noundef %phys_addr, i32 noundef 3264, i32 noundef 0) #17
  %tobool.not.i = icmp eq ptr %call.i.i, null
  %desc396 = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 13
  br i1 %tobool.not.i, label %alloc_ring.exit.thread, label %if.end

alloc_ring.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %desc396 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %desc396, align 8
  br label %cleanup231

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %desc396 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %desc396, align 8
  %11 = getelementptr inbounds i8, ptr %c, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 56)
  %pf = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  %13 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pf, align 4
  %shl = shl i32 %14, 8
  %or = or i32 %shl, 279969792
  %15 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %c, align 8
  %alloc_to_len16 = getelementptr inbounds %struct.fw_iq_cmd, ptr %c, i32 0, i32 1
  %16 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1879048188, ptr %alloc_to_len16, align 4
  %viid = getelementptr i8, ptr %dev, i32 2308
  %17 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %viid, align 4
  %conv12 = zext i16 %18 to i32
  %shl13 = shl nuw i32 %conv12, 16
  %19 = lshr i32 %intr_idx, 16
  %shl16 = and i32 %19, 32768
  %intr_idx.lobit = ashr i32 %intr_idx, 31
  %cond = xor i32 %intr_idx.lobit, %intr_idx
  %or14 = select i1 %fwevtq, i32 268439552, i32 4096
  %or17 = or i32 %or14, %shl16
  %or18 = or i32 %or17, %cond
  %or24 = or i32 %or18, %shl13
  %type_to_iqandstindex = getelementptr inbounds %struct.fw_iq_cmd, ptr %c, i32 0, i32 6
  %20 = ptrtoint ptr %type_to_iqandstindex to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or24, ptr %type_to_iqandstindex, align 8
  %tx_chan = getelementptr i8, ptr %dev, i32 2326
  %21 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tx_chan, align 2
  %conv25 = zext i8 %22 to i32
  %shl26 = shl nuw nsw i32 %conv25, 12
  %pktcnt_idx = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 7
  %23 = ptrtoint ptr %pktcnt_idx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pktcnt_idx, align 4
  %conv28 = zext i8 %24 to i32
  %shl29 = shl nuw nsw i32 %conv28, 4
  %or27 = or i32 %shl29, %shl26
  %25 = ptrtoint ptr %iqe_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iqe_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  %27 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 true) #17, !range !139
  %sub.i.op.i.op = sub nsw i32 27, %27
  %sub48 = select i1 %tobool.not.i.i, i32 49147, i32 %sub.i.op.i.op
  %or30 = or i32 %or27, %sub48
  %28 = trunc i32 %or30 to i16
  %conv51 = or i16 %28, 16384
  %iqdroprss_to_iqesize = getelementptr inbounds %struct.fw_iq_cmd, ptr %c, i32 0, i32 7
  %29 = ptrtoint ptr %iqdroprss_to_iqesize to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv51, ptr %iqdroprss_to_iqesize, align 4
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 4
  %conv53 = trunc i32 %31 to i16
  %iqsize = getelementptr inbounds %struct.fw_iq_cmd, ptr %c, i32 0, i32 8
  %32 = ptrtoint ptr %iqsize to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv53, ptr %iqsize, align 2
  %33 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %phys_addr, align 4
  %conv55 = zext i32 %34 to i64
  %iqaddr = getelementptr inbounds %struct.fw_iq_cmd, ptr %c, i32 0, i32 9
  %35 = ptrtoint ptr %iqaddr to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv55, ptr %iqaddr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cong)
  %cmp56 = icmp sgt i32 %cong, -1
  br i1 %cmp56, label %if.then58, label %if.end.if.end63_crit_edge

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

if.then58:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cong)
  %tobool59.not = icmp eq i32 %cong, 0
  %or62 = select i1 %tobool59.not, i32 167772160, i32 150994944
  %iqns_to_fl0congen = getelementptr inbounds %struct.fw_iq_cmd, ptr %c, i32 0, i32 10
  %36 = ptrtoint ptr %iqns_to_fl0congen to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or62, ptr %iqns_to_fl0congen, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end.if.end63_crit_edge
  %tobool64.not = icmp eq ptr %fl, null
  br i1 %tobool64.not, label %if.end63.if.end130_crit_edge, label %if.then65

if.end63.if.end130_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end130

if.then65:                                        ; preds = %if.end63
  %chip = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %37 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chip, align 8
  %size67 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 10
  %39 = ptrtoint ptr %size67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size67, align 4
  %fl_starve_thres = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 28
  %41 = ptrtoint ptr %fl_starve_thres to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fl_starve_thres, align 4
  %add69 = add i32 %42, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %add69)
  %cmp70 = icmp ult i32 %40, %add69
  br i1 %cmp70, label %if.then72, label %if.then65.if.end77_crit_edge

if.then65.if.end77_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end77

if.then72:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %size67 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add69, ptr %size67, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %if.then65.if.end77_crit_edge
  %44 = ptrtoint ptr %size67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size67, align 4
  %add82 = add i32 %45, 7
  %div83369 = and i32 %add82, -8
  store i32 %div83369, ptr %size67, align 4
  %46 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev_dev, align 16
  %addr = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 13
  %sdesc = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 11
  %stat_len = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 25
  %48 = ptrtoint ptr %stat_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stat_len, align 32
  %mul.i374 = shl i32 %div83369, 3
  %add.i = add i32 %mul.i374, %49
  %call.i.i375 = tail call ptr @dma_alloc_attrs(ptr noundef %47, i32 noundef %add.i, ptr noundef %addr, i32 noundef 3264, i32 noundef 0) #17
  %tobool.not.i376 = icmp eq ptr %call.i.i375, null
  br i1 %tobool.not.i376, label %if.end77.cleanup_crit_edge, label %if.end.i377

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i377:                                      ; preds = %if.end77
  %50 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div83369, i32 8) #17
  %51 = extractvalue { i32, i1 } %50, 1
  br i1 %51, label %if.end.i377.if.then5.i_crit_edge, label %if.end7.i.i.i, !prof !113

if.end.i377.if.then5.i_crit_edge:                 ; preds = %if.end.i377
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

if.end7.i.i.i:                                    ; preds = %if.end.i377
  %52 = extractvalue { i32, i1 } %50, 0
  %call.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %52, i32 noundef 3520) #23
  %tobool4.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool4.not.i, label %if.end7.i.i.i.if.then5.i_crit_edge, label %if.end7.i

if.end7.i.i.i.if.then5.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.end7.i.i.i.if.then5.i_crit_edge, %if.end.i377.if.then5.i_crit_edge
  %53 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %addr, align 4
  tail call void @dma_free_attrs(ptr noundef %47, i32 noundef %add.i, ptr noundef nonnull %call.i.i375, i32 noundef %54, i32 noundef 0) #17
  br label %cleanup

if.end7.i:                                        ; preds = %if.end7.i.i.i
  %tobool8.not.i = icmp eq ptr %sdesc, null
  br i1 %tobool8.not.i, label %if.end7.i.cleanup.thread_crit_edge, label %if.then9.i

if.end7.i.cleanup.thread_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  %55 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i.i.i, ptr %sdesc, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then9.i, %if.end7.i.cleanup.thread_crit_edge
  %desc91 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 12
  %56 = ptrtoint ptr %desc91 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i.i375, ptr %desc91, align 4
  %57 = ptrtoint ptr %size67 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size67, align 4
  %div97370 = lshr i32 %58, 3
  %59 = ptrtoint ptr %stat_len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %stat_len, align 32
  %div99371 = lshr i32 %60, 6
  %add100 = add nuw nsw i32 %div99371, %div97370
  %or102 = mul nuw nsw i32 %2, 4160
  %iqns_to_fl0congen106 = getelementptr inbounds %struct.fw_iq_cmd, ptr %c, i32 0, i32 10
  %61 = ptrtoint ptr %iqns_to_fl0congen106 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iqns_to_fl0congen106, align 8
  %shl111 = shl i32 %cong, 20
  %or113 = or i32 %shl111, 2049
  %or115 = select i1 %cmp56, i32 %or113, i32 0
  %or105 = or i32 %or102, %or115
  %or107 = or i32 %or105, %62
  %storemerge372 = or i32 %or107, 6
  store i32 %storemerge372, ptr %iqns_to_fl0congen106, align 8
  %63 = and i32 %38, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %63)
  %cmp117 = icmp ult i32 %63, 96
  %conv126 = select i1 %cmp117, i16 432, i16 32
  %fl0dcaen_to_fl0cidxfthresh = getelementptr inbounds %struct.fw_iq_cmd, ptr %c, i32 0, i32 11
  %64 = ptrtoint ptr %fl0dcaen_to_fl0cidxfthresh to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv126, ptr %fl0dcaen_to_fl0cidxfthresh, align 4
  %conv127 = trunc i32 %add100 to i16
  %fl0size = getelementptr inbounds %struct.fw_iq_cmd, ptr %c, i32 0, i32 12
  %65 = ptrtoint ptr %fl0size to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv127, ptr %fl0size, align 2
  %66 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr, align 4
  %conv129 = zext i32 %67 to i64
  %fl0addr = getelementptr inbounds %struct.fw_iq_cmd, ptr %c, i32 0, i32 13
  %68 = ptrtoint ptr %fl0addr to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv129, ptr %fl0addr, align 8
  br label %if.end130

cleanup:                                          ; preds = %if.then5.i, %if.end77.cleanup_crit_edge
  %desc91400 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 12
  %69 = ptrtoint ptr %desc91400 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %desc91400, align 4
  br label %err

if.end130:                                        ; preds = %cleanup.thread, %if.end63.if.end130_crit_edge
  %flsz.1 = phi i32 [ 0, %if.end63.if.end130_crit_edge ], [ %add100, %cleanup.thread ]
  %mbox = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %70 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %adap, i32 noundef %71, ptr noundef nonnull %c, i32 noundef 64, ptr noundef nonnull %c, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool132.not = icmp eq i32 %call.i, 0
  br i1 %tobool132.not, label %if.end134, label %if.end130.err_crit_edge

if.end130.err_crit_edge:                          ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

if.end134:                                        ; preds = %if.end130
  call void @netif_napi_add(ptr noundef %dev, ptr noundef %iq, ptr noundef nonnull @napi_rx_handler, i32 noundef 64) #17
  %72 = ptrtoint ptr %desc396 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %desc396, align 8
  %cur_desc = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 1
  %74 = ptrtoint ptr %cur_desc to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %cur_desc, align 8
  %cidx = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 2
  %75 = ptrtoint ptr %cidx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %cidx, align 4
  %gen = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 3
  %76 = ptrtoint ptr %gen to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %gen, align 8
  %intr_params = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 4
  %77 = ptrtoint ptr %intr_params to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %intr_params, align 1
  %next_intr_params = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 5
  %79 = ptrtoint ptr %next_intr_params to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %next_intr_params, align 2
  %iqid = getelementptr inbounds %struct.fw_iq_cmd, ptr %c, i32 0, i32 3
  %80 = ptrtoint ptr %iqid to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %iqid, align 2
  %cntxt_id = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 11
  %82 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %cntxt_id, align 4
  %physiqid = getelementptr inbounds %struct.fw_iq_cmd, ptr %c, i32 0, i32 2
  %83 = ptrtoint ptr %physiqid to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %physiqid, align 8
  %abs_id = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 12
  %85 = ptrtoint ptr %abs_id to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %abs_id, align 2
  %conv137 = zext i16 %81 to i32
  %bar2_qid = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bar2_qoffset.i) #17
  %86 = ptrtoint ptr %bar2_qoffset.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 -1, ptr %bar2_qoffset.i, align 8, !annotation !121
  %call.i380 = call i32 @t4_bar2_sge_qregs(ptr noundef %adap, i32 noundef %conv137, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bar2_qoffset.i, ptr noundef %bar2_qid) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i380)
  %tobool.not.i381 = icmp eq i32 %call.i380, 0
  br i1 %tobool.not.i381, label %if.end.i383, label %if.end134.bar2_address.exit_crit_edge

if.end134.bar2_address.exit_crit_edge:            ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #19
  br label %bar2_address.exit

if.end.i383:                                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #19
  %bar2.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 1
  %87 = ptrtoint ptr %bar2.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bar2.i, align 4
  %89 = ptrtoint ptr %bar2_qoffset.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %bar2_qoffset.i, align 8
  %idx.ext.i = trunc i64 %90 to i32
  %add.ptr.i382 = getelementptr i8, ptr %88, i32 %idx.ext.i
  br label %bar2_address.exit

bar2_address.exit:                                ; preds = %if.end.i383, %if.end134.bar2_address.exit_crit_edge
  %retval.0.i384 = phi ptr [ %add.ptr.i382, %if.end.i383 ], [ null, %if.end134.bar2_address.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bar2_qoffset.i) #17
  %bar2_addr = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 15
  %91 = ptrtoint ptr %bar2_addr to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %retval.0.i384, ptr %bar2_addr, align 8
  %92 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size, align 4
  %dec = add i32 %93, -1
  store i32 %dec, ptr %size, align 4
  %netdev = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 20
  %94 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %dev, ptr %netdev, align 4
  %handler = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 21
  %95 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %hnd, ptr %handler, align 8
  %flush_handler = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 22
  %96 = ptrtoint ptr %flush_handler to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %flush_hnd, ptr %flush_handler, align 4
  %lro_mgr = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 23
  %97 = call ptr @memset(ptr %lro_mgr, i32 0, i32 68)
  %lroq = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 23, i32 3
  %lock.i = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 23, i32 3, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #17
  %98 = ptrtoint ptr %lroq to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %lroq, ptr %lroq, align 4
  %prev.i.i = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 23, i32 3, i32 0, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %lroq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 23, i32 3, i32 1
  %100 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %qlen.i.i, align 4
  %cond142 = sext i1 %tobool64.not to i32
  %offset = getelementptr inbounds %struct.sge_rspq, ptr %iq, i32 0, i32 10
  %101 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %cond142, ptr %offset, align 8
  %ingr_map = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 35
  %102 = ptrtoint ptr %ingr_map to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ingr_map, align 8
  %104 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %cntxt_id, align 4
  %conv145 = zext i16 %105 to i32
  %ingr_start = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 32
  %106 = ptrtoint ptr %ingr_start to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ingr_start, align 4
  %sub147 = sub i32 %conv145, %107
  %arrayidx = getelementptr ptr, ptr %103, i32 %sub147
  %108 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %iq, ptr %arrayidx, align 4
  br i1 %tobool64.not, label %bar2_address.exit.if.end164_crit_edge, label %if.then149

bar2_address.exit.if.end164_crit_edge:            ; preds = %bar2_address.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end164

if.then149:                                       ; preds = %bar2_address.exit
  %fl0id = getelementptr inbounds %struct.fw_iq_cmd, ptr %c, i32 0, i32 4
  %109 = ptrtoint ptr %fl0id to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %fl0id, align 4
  %conv150 = zext i16 %110 to i32
  %cntxt_id151 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 9
  %111 = ptrtoint ptr %cntxt_id151 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv150, ptr %cntxt_id151, align 4
  %starving = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 8
  %112 = ptrtoint ptr %starving to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %starving, align 4
  %egr_map = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 34
  %113 = call ptr @memset(ptr %fl, i32 0, i32 24)
  %114 = ptrtoint ptr %egr_map to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %egr_map, align 4
  %egr_start = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 30
  %116 = ptrtoint ptr %egr_start to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %egr_start, align 4
  %sub156 = sub i32 %conv150, %117
  %arrayidx157 = getelementptr ptr, ptr %115, i32 %sub156
  %118 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %fl, ptr %arrayidx157, align 4
  %119 = load i32, ptr %cntxt_id151, align 4
  %bar2_qid159 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bar2_qoffset.i385) #17
  %120 = ptrtoint ptr %bar2_qoffset.i385 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 -1, ptr %bar2_qoffset.i385, align 8, !annotation !121
  %call.i386 = call i32 @t4_bar2_sge_qregs(ptr noundef %adap, i32 noundef %119, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %bar2_qoffset.i385, ptr noundef %bar2_qid159) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i386)
  %tobool.not.i387 = icmp eq i32 %call.i386, 0
  br i1 %tobool.not.i387, label %if.end.i391, label %if.then149.bar2_address.exit393_crit_edge

if.then149.bar2_address.exit393_crit_edge:        ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #19
  br label %bar2_address.exit393

if.end.i391:                                      ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #19
  %bar2.i388 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 1
  %121 = ptrtoint ptr %bar2.i388 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bar2.i388, align 4
  %123 = ptrtoint ptr %bar2_qoffset.i385 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %bar2_qoffset.i385, align 8
  %idx.ext.i389 = trunc i64 %124 to i32
  %add.ptr.i390 = getelementptr i8, ptr %122, i32 %idx.ext.i389
  br label %bar2_address.exit393

bar2_address.exit393:                             ; preds = %if.end.i391, %if.then149.bar2_address.exit393_crit_edge
  %retval.0.i392 = phi ptr [ %add.ptr.i390, %if.end.i391 ], [ null, %if.then149.bar2_address.exit393_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bar2_qoffset.i385) #17
  %bar2_addr161 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 14
  %125 = ptrtoint ptr %bar2_addr161 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %retval.0.i392, ptr %bar2_addr161, align 4
  %size.i = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 10
  %126 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %size.i, align 4
  %sub.i394 = add i32 %127, -8
  call fastcc void @refill_fl(ptr noundef %adap, ptr noundef nonnull %fl, i32 noundef %sub.i394, i32 noundef 3264)
  br label %if.end164

if.end164:                                        ; preds = %bar2_address.exit393, %bar2_address.exit.if.end164_crit_edge
  %chip166 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %128 = ptrtoint ptr %chip166 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %chip166, align 8
  %130 = and i32 %129, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %130)
  %cmp.i.not = icmp ne i32 %130, 64
  %131 = and i1 %cmp56, %cmp.i.not
  br i1 %131, label %if.then171, label %if.end164.cleanup231_crit_edge

if.end164.cleanup231_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup231

if.then171:                                       ; preds = %if.end164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #17
  %cng_ch_bits_log173 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 23, i32 2
  %132 = ptrtoint ptr %cng_ch_bits_log173 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %cng_ch_bits_log173, align 2
  %134 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %cntxt_id, align 4
  %conv176 = zext i16 %135 to i32
  %or178 = or i32 %conv176, 69206016
  %136 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %or178, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cong)
  %cmp179 = icmp eq i32 %cong, 0
  br i1 %cmp179, label %if.then171.if.end195_crit_edge, label %if.else

if.then171.if.end195_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end195

if.else:                                          ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #19
  %conv188 = zext i8 %133 to i32
  %and185 = and i32 %cong, 1
  %and185.1 = and i32 %cong, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185.1)
  %tobool186.not.1 = icmp eq i32 %and185.1, 0
  %shl189.1 = shl nuw i32 1, %conv188
  %shl190.1 = shl nuw i32 1, %shl189.1
  %or191.1 = select i1 %tobool186.not.1, i32 0, i32 %shl190.1
  %ch_map.1.1 = or i32 %or191.1, %and185
  %and185.2 = and i32 %cong, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185.2)
  %tobool186.not.2 = icmp eq i32 %and185.2, 0
  %shl189.2 = shl i32 2, %conv188
  %shl190.2 = shl nuw i32 1, %shl189.2
  %or191.2 = select i1 %tobool186.not.2, i32 0, i32 %shl190.2
  %ch_map.1.2 = or i32 %or191.2, %ch_map.1.1
  %and185.3 = and i32 %cong, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185.3)
  %tobool186.not.3 = icmp eq i32 %and185.3, 0
  %shl189.3 = shl i32 3, %conv188
  %shl190.3 = shl nuw i32 1, %shl189.3
  %or191.3 = select i1 %tobool186.not.3, i32 0, i32 %shl190.3
  %ch_map.1.3 = or i32 %or191.3, %ch_map.1.2
  %or194 = or i32 %ch_map.1.3, 1048576
  br label %if.end195

if.end195:                                        ; preds = %if.else, %if.then171.if.end195_crit_edge
  %storemerge = phi i32 [ %or194, %if.else ], [ 524288, %if.then171.if.end195_crit_edge ]
  %137 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %storemerge, ptr %val, align 4
  %138 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %mbox, align 8
  %140 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %pf, align 4
  %call198 = call i32 @t4_set_params(ptr noundef %adap, i32 noundef %139, i32 noundef %141, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %param, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %if.end195.if.end205_crit_edge, label %do.end

if.end195.if.end205_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end205

do.end:                                           ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #19
  %142 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev_dev, align 16
  %144 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %cntxt_id, align 4
  %conv203 = zext i16 %145 to i32
  %sub204 = sub i32 0, %call198
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %143, ptr noundef nonnull @.str.3, i32 noundef %conv203, i32 noundef %sub204) #20
  br label %if.end205

if.end205:                                        ; preds = %do.end, %if.end195.if.end205_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #17
  br label %cleanup231

err:                                              ; preds = %if.end130.err_crit_edge, %cleanup
  %flsz.2 = phi i32 [ %flsz.1, %if.end130.err_crit_edge ], [ 0, %cleanup ]
  %ret.0 = phi i32 [ %call.i, %if.end130.err_crit_edge ], [ -12, %cleanup ]
  %146 = ptrtoint ptr %desc396 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %desc396, align 8
  %tobool208.not = icmp eq ptr %147, null
  br i1 %tobool208.not, label %err.if.end217_crit_edge, label %if.then209

err.if.end217_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end217

if.then209:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #19
  %148 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pdev_dev, align 16
  %150 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %size, align 4
  %152 = ptrtoint ptr %iqe_len to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %iqe_len, align 8
  %mul213 = mul i32 %153, %151
  %154 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %phys_addr, align 4
  call void @dma_free_attrs(ptr noundef %149, i32 noundef %mul213, ptr noundef nonnull %147, i32 noundef %155, i32 noundef 0) #17
  %156 = ptrtoint ptr %desc396 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %desc396, align 8
  br label %if.end217

if.end217:                                        ; preds = %if.then209, %err.if.end217_crit_edge
  br i1 %tobool64.not, label %if.end217.cleanup231_crit_edge, label %land.lhs.true219

if.end217.cleanup231_crit_edge:                   ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup231

land.lhs.true219:                                 ; preds = %if.end217
  %desc220 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 12
  %157 = ptrtoint ptr %desc220 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %desc220, align 4
  %tobool221.not = icmp eq ptr %158, null
  br i1 %tobool221.not, label %land.lhs.true219.cleanup231_crit_edge, label %if.then222

land.lhs.true219.cleanup231_crit_edge:            ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup231

if.then222:                                       ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #19
  %sdesc223 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 11
  %159 = ptrtoint ptr %sdesc223 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %sdesc223, align 4
  call void @kfree(ptr noundef %160) #17
  %161 = ptrtoint ptr %sdesc223 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %sdesc223, align 4
  %162 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pdev_dev, align 16
  %mul226 = shl i32 %flsz.2, 6
  %164 = ptrtoint ptr %desc220 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %desc220, align 4
  %addr228 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 13
  %166 = ptrtoint ptr %addr228 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %addr228, align 4
  call void @dma_free_attrs(ptr noundef %163, i32 noundef %mul226, ptr noundef %165, i32 noundef %167, i32 noundef 0) #17
  %168 = ptrtoint ptr %desc220 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %desc220, align 4
  br label %cleanup231

cleanup231:                                       ; preds = %if.then222, %land.lhs.true219.cleanup231_crit_edge, %if.end217.cleanup231_crit_edge, %if.end205, %if.end164.cleanup231_crit_edge, %alloc_ring.exit.thread
  %retval.0 = phi i32 [ 0, %if.end164.cleanup231_crit_edge ], [ 0, %if.end205 ], [ %ret.0, %if.then222 ], [ %ret.0, %land.lhs.true219.cleanup231_crit_edge ], [ %ret.0, %if.end217.cleanup231_crit_edge ], [ -12, %alloc_ring.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @napi_rx_handler(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %si.i = alloca %struct.pkt_gl, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %adap.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %tobool.not223.i = icmp eq i32 %budget, 0
  br i1 %tobool.not223.i, label %entry.while.end.i_crit_edge, label %while.body.lr.ph.i, !prof !113

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %entry
  %0 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap.i, align 8
  %cur_desc.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 1
  %iqe_len.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 17
  %gen.i.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 3
  %handler106.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 21
  %offset.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 10
  %fl.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %napi, i32 0, i32 1
  %tot_len.i = getelementptr inbounds %struct.pkt_gl, ptr %si.i, i32 0, i32 4
  %frags34.i = getelementptr inbounds %struct.pkt_gl, ptr %si.i, i32 0, i32 1
  %sdesc.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %napi, i32 0, i32 1, i32 11
  %cidx.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %napi, i32 0, i32 1, i32 2
  %pktshift.i10.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 26
  %fl_align.i11.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 27
  %fl_pg_order.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 24
  %size.i.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %napi, i32 0, i32 1, i32 10
  %offset66.i = getelementptr inbounds %struct.pkt_gl, ptr %si.i, i32 0, i32 1, i32 0, i32 1
  %va.i = getelementptr inbounds %struct.pkt_gl, ptr %si.i, i32 0, i32 2
  %nfrags.i = getelementptr inbounds %struct.pkt_gl, ptr %si.i, i32 0, i32 3
  %cidx.i202.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 2
  %size.i204.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 18
  %desc.i.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 13
  br label %while.body.i

while.body.i:                                     ; preds = %rspq_next.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %budget_left.0224.i = phi i32 [ %budget, %while.body.lr.ph.i ], [ %dec.i, %rspq_next.exit.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %cur_desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_desc.i, align 8
  %4 = ptrtoint ptr %iqe_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iqe_len.i, align 8
  %sub.i = add i32 %5, -16
  %add.ptr3.i = getelementptr i8, ptr %3, i32 %sub.i
  %6 = getelementptr inbounds %struct.rsp_ctrl, ptr %add.ptr3.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 8
  %9 = lshr i8 %8, 7
  %10 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gen.i.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp.i.i = icmp eq i8 %9, %11
  br i1 %cmp.i.i, label %if.end7.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  %flush_handler.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 22
  %12 = ptrtoint ptr %flush_handler.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %flush_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i, label %if.then.i.while.end.i_crit_edge, label %if.then5.i

if.then.i.while.end.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  call void %13(ptr noundef %napi) #17
  br label %while.end.i

if.end7.i:                                        ; preds = %while.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !140
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %6, align 8
  %16 = lshr i8 %15, 4
  %trunc.i = trunc i8 %16 to i2
  %17 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.49)
  switch i2 %trunc.i, label %if.else109.i [
    i2 0, label %if.then15.i
    i2 1, label %if.then105.i
  ], !prof !141

if.then15.i:                                      ; preds = %if.end7.i
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %si.i) #17
  %18 = call ptr @memset(ptr %si.i, i32 255, i32 160)
  %pldbuflen_qid.i = getelementptr inbounds %struct.rsp_ctrl, ptr %add.ptr3.i, i32 0, i32 1
  %19 = ptrtoint ptr %pldbuflen_qid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pldbuflen_qid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %tobool17.not.i = icmp sgt i32 %20, -1
  br i1 %tobool17.not.i, label %if.then15.i.if.end33.i_crit_edge, label %if.then18.i

if.then15.i.if.end33.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.i

if.then18.i:                                      ; preds = %if.then15.i
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp19.i = icmp sgt i32 %22, 0
  br i1 %cmp19.i, label %if.then27.i, label %if.then18.i.if.end30.i_crit_edge, !prof !112

if.then18.i.if.end30.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adap.i, align 8
  call fastcc void @free_rx_bufs(ptr noundef %24, ptr noundef %fl.i, i32 noundef 1) #17
  %25 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %offset.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %if.then18.i.if.end30.i_crit_edge
  %and32.i = and i32 %20, 2147483647
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end30.i, %if.then15.i.if.end33.i_crit_edge
  %len.0.i = phi i32 [ %and32.i, %if.end30.i ], [ %20, %if.then15.i.if.end33.i_crit_edge ]
  %26 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %len.0.i, ptr %tot_len.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %unmap_rx_buf.exit.i, %if.end33.i
  %fp.0.i = phi ptr [ %frags34.i, %if.end33.i ], [ %incdec.ptr.i, %unmap_rx_buf.exit.i ]
  %len.1.i = phi i32 [ %len.0.i, %if.end33.i ], [ %sub48.i, %unmap_rx_buf.exit.i ]
  %frags.0.i = phi i32 [ 0, %if.end33.i ], [ %inc.i, %unmap_rx_buf.exit.i ]
  %27 = ptrtoint ptr %sdesc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdesc.i, align 4
  %29 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cidx.i, align 8
  %arrayidx.i = getelementptr %struct.rx_sw_desc, ptr %28, i32 %30
  %dma_addr.i.i = getelementptr %struct.rx_sw_desc, ptr %28, i32 %30, i32 1
  %31 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_addr.i.i, align 4
  %and.i.i = and i32 %32, 15
  %33 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %and.i.i, label %do.body.i.i [
    i32 0, label %for.cond.i.get_buf_size.exit.i_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
  ]

for.cond.i.get_buf_size.exit.i_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_buf_size.exit.i

sw.bb1.i.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  %34 = ptrtoint ptr %fl_pg_order.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fl_pg_order.i.i, align 4
  %shl.i.i = shl i32 4096, %35
  br label %get_buf_size.exit.i

sw.bb2.i.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  %36 = ptrtoint ptr %pktshift.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pktshift.i10.i.i, align 4
  %38 = ptrtoint ptr %fl_align.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fl_align.i11.i.i, align 8
  %add2.i.i.i = add i32 %37, 1517
  %add3.i.i.i = add i32 %add2.i.i.i, %39
  %neg.i.i.i = sub i32 0, %39
  %and.i.i.i = and i32 %add3.i.i.i, %neg.i.i.i
  br label %get_buf_size.exit.i

sw.bb3.i.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  %40 = ptrtoint ptr %pktshift.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pktshift.i10.i.i, align 4
  %42 = ptrtoint ptr %fl_align.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fl_align.i11.i.i, align 8
  %add2.i12.i.i = add i32 %41, 9017
  %add3.i13.i.i = add i32 %add2.i12.i.i, %43
  %neg.i14.i.i = sub i32 0, %43
  %and.i15.i.i = and i32 %add3.i13.i.i, %neg.i14.i.i
  br label %get_buf_size.exit.i

do.body.i.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #17, !srcloc !142
  unreachable

get_buf_size.exit.i:                              ; preds = %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %for.cond.i.get_buf_size.exit.i_crit_edge
  %buf_size.0.i.i = phi i32 [ %and.i15.i.i, %sw.bb3.i.i ], [ %and.i.i.i, %sw.bb2.i.i ], [ %shl.i.i, %sw.bb1.i.i ], [ 4096, %for.cond.i.get_buf_size.exit.i_crit_edge ]
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 4
  %46 = ptrtoint ptr %fp.0.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %fp.0.i, align 4
  %47 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset.i, align 8
  %conv40.i = trunc i32 %48 to i16
  %offset41.i = getelementptr inbounds %struct.page_frag, ptr %fp.0.i, i32 0, i32 1
  %49 = ptrtoint ptr %offset41.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv40.i, ptr %offset41.i, align 4
  %50 = call i32 @llvm.umin.i32(i32 %buf_size.0.i.i, i32 %len.1.i) #17
  %conv45.i = trunc i32 %50 to i16
  %size.i = getelementptr inbounds %struct.page_frag, ptr %fp.0.i, i32 0, i32 2
  %51 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv45.i, ptr %size.i, align 2
  %conv47.i = and i32 %50, 65535
  %sub48.i = sub i32 %len.1.i, %conv47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub48.i)
  %tobool49.not.i = icmp eq i32 %sub48.i, 0
  br i1 %tobool49.not.i, label %for.end.i, label %if.end51.i

if.end51.i:                                       ; preds = %get_buf_size.exit.i
  %52 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adap.i, align 8
  %54 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_addr.i.i, align 4
  %and.i.i198.i = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i198.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i198.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i, label %if.end51.i.unmap_rx_buf.exit.i_crit_edge

if.end51.i.unmap_rx_buf.exit.i_crit_edge:         ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unmap_rx_buf.exit.i

if.then.i.i:                                      ; preds = %if.end51.i
  %pdev_dev.i.i = getelementptr inbounds %struct.adapter, ptr %53, i32 0, i32 4
  %56 = ptrtoint ptr %pdev_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev_dev.i.i, align 16
  %and.i17.i.i = and i32 %55, -32
  %and.i19.i.i = and i32 %55, 15
  %58 = zext i32 %and.i19.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %and.i19.i.i, label %do.body.i.i.i [
    i32 0, label %if.then.i.i.get_buf_size.exit.i.i_crit_edge
    i32 1, label %sw.bb1.i.i.i
    i32 2, label %sw.bb2.i.i.i
    i32 3, label %sw.bb3.i.i.i
  ]

if.then.i.i.get_buf_size.exit.i.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_buf_size.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %fl_pg_order.i.i.i = getelementptr inbounds %struct.adapter, ptr %53, i32 0, i32 22, i32 24
  %59 = ptrtoint ptr %fl_pg_order.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fl_pg_order.i.i.i, align 4
  %shl.i.i.i = shl i32 4096, %60
  br label %get_buf_size.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %pktshift.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %53, i32 0, i32 22, i32 26
  %61 = ptrtoint ptr %pktshift.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pktshift.i.i.i.i, align 4
  %fl_align.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %53, i32 0, i32 22, i32 27
  %63 = ptrtoint ptr %fl_align.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fl_align.i.i.i.i, align 8
  %add2.i.i.i.i = add i32 %62, 1517
  %add3.i.i.i.i = add i32 %add2.i.i.i.i, %64
  %neg.i.i.i.i = sub i32 0, %64
  %and.i.i.i.i = and i32 %add3.i.i.i.i, %neg.i.i.i.i
  br label %get_buf_size.exit.i.i

sw.bb3.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %pktshift.i10.i.i.i = getelementptr inbounds %struct.adapter, ptr %53, i32 0, i32 22, i32 26
  %65 = ptrtoint ptr %pktshift.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pktshift.i10.i.i.i, align 4
  %fl_align.i11.i.i.i = getelementptr inbounds %struct.adapter, ptr %53, i32 0, i32 22, i32 27
  %67 = ptrtoint ptr %fl_align.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fl_align.i11.i.i.i, align 8
  %add2.i12.i.i.i = add i32 %66, 9017
  %add3.i13.i.i.i = add i32 %add2.i12.i.i.i, %68
  %neg.i14.i.i.i = sub i32 0, %68
  %and.i15.i.i.i = and i32 %add3.i13.i.i.i, %neg.i14.i.i.i
  br label %get_buf_size.exit.i.i

do.body.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #17, !srcloc !142
  unreachable

get_buf_size.exit.i.i:                            ; preds = %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.then.i.i.get_buf_size.exit.i.i_crit_edge
  %buf_size.0.i.i.i = phi i32 [ %and.i15.i.i.i, %sw.bb3.i.i.i ], [ %and.i.i.i.i, %sw.bb2.i.i.i ], [ %shl.i.i.i, %sw.bb1.i.i.i ], [ 4096, %if.then.i.i.get_buf_size.exit.i.i_crit_edge ]
  call void @dma_unmap_page_attrs(ptr noundef %57, i32 noundef %and.i17.i.i, i32 noundef %buf_size.0.i.i.i, i32 noundef 2, i32 noundef 0) #17
  br label %unmap_rx_buf.exit.i

unmap_rx_buf.exit.i:                              ; preds = %get_buf_size.exit.i.i, %if.end51.i.unmap_rx_buf.exit.i_crit_edge
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %arrayidx.i, align 4
  %70 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cidx.i, align 4
  %inc.i.i = add i32 %71, 1
  %72 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %73)
  %cmp.i199.i = icmp eq i32 %inc.i.i, %73
  %spec.store.select.i.i = select i1 %cmp.i199.i, i32 0, i32 %inc.i.i
  %74 = ptrtoint ptr %cidx.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %spec.store.select.i.i, ptr %cidx.i, align 4
  %75 = ptrtoint ptr %fl.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fl.i, align 4
  %dec.i.i = add i32 %76, -1
  store i32 %dec.i.i, ptr %fl.i, align 4
  %inc.i = add i32 %frags.0.i, 1
  %incdec.ptr.i = getelementptr %struct.page_frag, ptr %fp.0.i, i32 1
  br label %for.cond.i

for.end.i:                                        ; preds = %get_buf_size.exit.i
  %size.i.le = getelementptr inbounds %struct.page_frag, ptr %fp.0.i, i32 0, i32 2
  %77 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %6, align 8
  %and55.i = and i64 %78, 1152921504606846975
  %79 = ptrtoint ptr %si.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %and55.i, ptr %si.i, align 8
  %80 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %adap.i, align 8
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdev_dev.i, align 16
  %84 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_addr.i.i, align 4
  %and.i201.i = and i32 %85, -32
  %86 = ptrtoint ptr %size.i.le to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %size.i.le, align 2
  %conv59.i = zext i16 %87 to i32
  call void @dma_sync_single_for_cpu(ptr noundef %83, i32 noundef %and.i201.i, i32 noundef %conv59.i, i32 noundef 2) #17
  %88 = ptrtoint ptr %frags34.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %frags34.i, align 8
  %call63.i = call ptr @page_address(ptr noundef %89) #17
  %90 = ptrtoint ptr %offset66.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %offset66.i, align 4
  %conv67.i = zext i16 %91 to i32
  %add.ptr68.i = getelementptr i8, ptr %call63.i, i32 %conv67.i
  %92 = ptrtoint ptr %va.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr68.i, ptr %va.i, align 8
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr68.i) #17, !srcloc !143
  %add.i = add i32 %frags.0.i, 1
  %93 = ptrtoint ptr %nfrags.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add.i, ptr %nfrags.i, align 4
  %94 = ptrtoint ptr %handler106.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %handler106.i, align 8
  %96 = ptrtoint ptr %cur_desc.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cur_desc.i, align 8
  %call71.i = call i32 %95(ptr noundef %napi, ptr noundef %97, ptr noundef nonnull %si.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %cmp72.i = icmp eq i32 %call71.i, 0
  br i1 %cmp72.i, label %if.then80.i, label %if.else.i, !prof !112

if.then80.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %98 = ptrtoint ptr %size.i.le to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %size.i.le, align 2
  %conv82.i = zext i16 %99 to i32
  %100 = ptrtoint ptr %fl_align.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fl_align.i11.i.i, align 8
  %conv84.i = and i32 %101, 65535
  %sub85.i = add nsw i32 %conv82.i, -1
  %add86.i = add nsw i32 %sub85.i, %conv84.i
  %neg.i = sub nsw i32 0, %conv84.i
  %and91.i = and i32 %add86.i, %neg.i
  %102 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %offset.i, align 8
  %add93.i = add i32 %and91.i, %103
  store i32 %add93.i, ptr %offset.i, align 8
  br label %if.end95.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @restore_rx_bufs(ptr noundef nonnull %si.i, ptr noundef %fl.i, i32 noundef %frags.0.i) #17
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.else.i, %if.then80.i
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %si.i) #17
  br label %if.end113.i

if.then105.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  %104 = ptrtoint ptr %handler106.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %handler106.i, align 8
  %106 = ptrtoint ptr %cur_desc.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cur_desc.i, align 8
  %call108.i = call i32 %105(ptr noundef %napi, ptr noundef %107, ptr noundef null) #17
  br label %if.end113.i

if.else109.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  %108 = ptrtoint ptr %handler106.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %handler106.i, align 8
  %call111.i = call i32 %109(ptr noundef %napi, ptr noundef %add.ptr3.i, ptr noundef nonnull inttoptr (i32 1 to ptr)) #17
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.else109.i, %if.then105.i, %if.end95.i
  %ret.0.i = phi i32 [ %call71.i, %if.end95.i ], [ %call108.i, %if.then105.i ], [ %call111.i, %if.else109.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool114.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool114.not.i, label %if.end122.i, label %if.then121.i, !prof !112

if.then121.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #19
  %next_intr_params.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 5
  %110 = ptrtoint ptr %next_intr_params.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 10, ptr %next_intr_params.i, align 2
  br label %while.end.i

if.end122.i:                                      ; preds = %if.end113.i
  %111 = ptrtoint ptr %cur_desc.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cur_desc.i, align 8
  %113 = ptrtoint ptr %iqe_len.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %iqe_len.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %112, i32 %114
  store ptr %add.ptr.i.i, ptr %cur_desc.i, align 8
  %115 = ptrtoint ptr %cidx.i202.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cidx.i202.i, align 4
  %inc.i203.i = add i32 %116, 1
  store i32 %inc.i203.i, ptr %cidx.i202.i, align 4
  %117 = ptrtoint ptr %size.i204.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %size.i204.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i203.i, i32 %118)
  %cmp.i205.i = icmp eq i32 %inc.i203.i, %118
  br i1 %cmp.i205.i, label %if.then.i207.i, label %if.end122.i.rspq_next.exit.i_crit_edge, !prof !113

if.end122.i.rspq_next.exit.i_crit_edge:           ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rspq_next.exit.i

if.then.i207.i:                                   ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #19
  %119 = ptrtoint ptr %cidx.i202.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %cidx.i202.i, align 4
  %120 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %gen.i.i, align 8
  %122 = xor i8 %121, 1
  store i8 %122, ptr %gen.i.i, align 8
  %123 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %desc.i.i, align 8
  %125 = ptrtoint ptr %cur_desc.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %124, ptr %cur_desc.i, align 8
  br label %rspq_next.exit.i

rspq_next.exit.i:                                 ; preds = %if.then.i207.i, %if.end122.i.rspq_next.exit.i_crit_edge
  %dec.i = add i32 %budget_left.0224.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %rspq_next.exit.i.while.end.i_crit_edge, label %rspq_next.exit.i.while.body.i_crit_edge, !prof !113

rspq_next.exit.i.while.body.i_crit_edge:          ; preds = %rspq_next.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

rspq_next.exit.i.while.end.i_crit_edge:           ; preds = %rspq_next.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.end.i:                                      ; preds = %rspq_next.exit.i.while.end.i_crit_edge, %if.then121.i, %if.then5.i, %if.then.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %budget_left.0222.i = phi i32 [ %budget_left.0224.i, %if.then.i.while.end.i_crit_edge ], [ %budget_left.0224.i, %if.then5.i ], [ %budget_left.0224.i, %if.then121.i ], [ 0, %entry.while.end.i_crit_edge ], [ 0, %rspq_next.exit.i.while.end.i_crit_edge ]
  %offset123.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 10
  %126 = ptrtoint ptr %offset123.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %offset123.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %127)
  %cmp124.i = icmp sgt i32 %127, -1
  br i1 %cmp124.i, label %land.lhs.true.i, label %while.end.i.process_responses.exit_crit_edge

while.end.i.process_responses.exit_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_responses.exit

land.lhs.true.i:                                  ; preds = %while.end.i
  %fl126.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %napi, i32 0, i32 1
  %size.i208.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %napi, i32 0, i32 1, i32 10
  %128 = ptrtoint ptr %size.i208.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %size.i208.i, align 4
  %sub.i.i = add i32 %129, -8
  %130 = ptrtoint ptr %fl126.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %fl126.i, align 8
  %sub129.i = sub i32 %sub.i.i, %131
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub129.i)
  %cmp130.i = icmp ugt i32 %sub129.i, 15
  br i1 %cmp130.i, label %if.then132.i, label %land.lhs.true.i.process_responses.exit_crit_edge

land.lhs.true.i.process_responses.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_responses.exit

if.then132.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %132 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %adap.i, align 8
  %134 = call i32 @llvm.umin.i32(i32 %sub129.i, i32 16) #17
  call fastcc void @refill_fl(ptr noundef %133, ptr noundef %fl126.i, i32 noundef %134, i32 noundef 2592) #17
  br label %process_responses.exit

process_responses.exit:                           ; preds = %if.then132.i, %land.lhs.true.i.process_responses.exit_crit_edge, %while.end.i.process_responses.exit_crit_edge
  %sub136.i = sub i32 %budget, %budget_left.0222.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub136.i, i32 %budget)
  %cmp = icmp slt i32 %sub136.i, %budget
  br i1 %cmp, label %if.then, label %process_responses.exit.if.end35_crit_edge, !prof !112

process_responses.exit.if.end35_crit_edge:        ; preds = %process_responses.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then:                                          ; preds = %process_responses.exit
  %call2 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %sub136.i) #17
  %next_intr_params = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 5
  %135 = ptrtoint ptr %next_intr_params to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %next_intr_params, align 2
  %conv = zext i8 %136 to i32
  %137 = lshr i32 %conv, 1
  %and = and i32 %137, 7
  %adaptive_rx = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 6
  %138 = ptrtoint ptr %adaptive_rx to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %adaptive_rx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool3.not = icmp eq i8 %139, 0
  br i1 %tobool3.not, label %if.else29, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %140 = icmp ugt i32 %and, 1
  br i1 %140, label %cond.true, label %if.then4.cond.end_crit_edge

if.then4.cond.end_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx = getelementptr [6 x i32], ptr @timer_pkt_quota, i32 0, i32 %and
  %141 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then4.cond.end_crit_edge
  %cond = phi i32 [ %142, %cond.true ], [ 1, %if.then4.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub136.i, i32 %cond)
  %cmp8 = icmp sgt i32 %sub136.i, %cond
  %timer_index.0.v = select i1 %cmp8, i32 1, i32 -1
  %timer_index.0 = add nsw i32 %timer_index.0.v, %and
  %143 = call i32 @llvm.smax.i32(i32 %timer_index.0, i32 0)
  %144 = call i32 @llvm.umin.i32(i32 %143, i32 5)
  %cond24.tr = trunc i32 %144 to i8
  %conv25 = shl nuw nsw i8 %cond24.tr, 1
  %145 = ptrtoint ptr %next_intr_params to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv25, ptr %next_intr_params, align 2
  %conv28 = zext i8 %conv25 to i32
  br label %if.end35

if.else29:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %intr_params = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 4
  %146 = ptrtoint ptr %intr_params to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %intr_params, align 1
  %148 = ptrtoint ptr %next_intr_params to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %next_intr_params, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.else29, %cond.end, %process_responses.exit.if.end35_crit_edge
  %params.1 = phi i32 [ %conv28, %cond.end ], [ %conv, %if.else29 ], [ 14, %process_responses.exit.if.end35_crit_edge ]
  %shl37 = shl nuw nsw i32 %params.1, 12
  %or38 = or i32 %shl37, %sub136.i
  %bar2_addr = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 15
  %149 = ptrtoint ptr %bar2_addr to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %bar2_addr, align 8
  %cmp39 = icmp eq ptr %150, null
  br i1 %cmp39, label %if.then47, label %do.body, !prof !113

if.then47:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  %151 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %adap.i, align 8
  %cntxt_id = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 11
  %153 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %cntxt_id, align 4
  %conv48 = zext i16 %154 to i32
  %shl49 = shl nuw i32 %conv48, 16
  %or50 = or i32 %shl49, %or38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !115
  call void @arm_heavy_mb() #17
  %155 = call i32 @llvm.bswap.i32(i32 %or50) #17
  %156 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %152, align 128
  %add.ptr.i = getelementptr i8, ptr %157, i32 110596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %155) #17, !srcloc !116
  br label %if.end59

do.body:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !144
  call void @arm_heavy_mb() #17
  %bar2_qid = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 16
  %158 = ptrtoint ptr %bar2_qid to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %bar2_qid, align 4
  %shl52 = shl i32 %159, 16
  %or53 = or i32 %shl52, %or38
  %160 = call i32 @llvm.bswap.i32(i32 %or53)
  %161 = ptrtoint ptr %bar2_addr to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %bar2_addr, align 8
  %add.ptr55 = getelementptr i8, ptr %162, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %160) #17, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !145
  call void @arm_heavy_mb() #17
  br label %if.end59

if.end59:                                         ; preds = %do.body, %if.then47
  ret i32 %sub136.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refill_fl(ptr nocapture noundef readonly %adap, ptr noundef %q, i32 noundef %n, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %q, align 4
  %desc = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 12
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %pidx = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 3
  %4 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pidx, align 4
  %sdesc = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 11
  %6 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdesc, align 4
  %cntxt_id = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 9
  %8 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cntxt_id, align 4
  %egr_start = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 30
  %10 = ptrtoint ptr %egr_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %egr_start, align 4
  %sub = sub i32 %9, %11
  %blocked_fl = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 38
  %12 = ptrtoint ptr %blocked_fl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %blocked_fl, align 4
  %div3.i = lshr i32 %sub, 5
  %arrayidx.i = getelementptr i32, ptr %13, i32 %div3.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %sub, 31
  %16 = shl nuw i32 1, %and.i
  %17 = and i32 %16, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr %struct.rx_sw_desc, ptr %7, i32 %5
  %arrayidx = getelementptr i64, ptr %3, i32 %5
  %or = or i32 %gfp, 8192
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %fl_pg_order = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 24
  %18 = ptrtoint ptr %fl_pg_order to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fl_pg_order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool49.not23 = icmp eq i32 %n, 0
  br i1 %cmp, label %alloc_small_pages, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  br i1 %tobool49.not23, label %while.cond.preheader.out_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %or9 = or i32 %gfp, 270336
  %size = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end46.while.body_crit_edge, %while.body.lr.ph
  %sd.020 = phi ptr [ %arrayidx2, %while.body.lr.ph ], [ %sd.1, %if.end46.while.body_crit_edge ]
  %d.019 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %d.1, %if.end46.while.body_crit_edge ]
  %n.addr.018 = phi i32 [ %n, %while.body.lr.ph ], [ %dec, %if.end46.while.body_crit_edge ]
  %20 = ptrtoint ptr %fl_pg_order to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fl_pg_order, align 4
  %call38.i.i = tail call ptr @__alloc_pages(i32 noundef %or9, i32 noundef %21, i32 noundef 0, ptr noundef null) #17
  %tobool12.not = icmp eq ptr %call38.i.i, null
  br i1 %tobool12.not, label %alloc_small_pages.thread41, label %if.end17, !prof !113

alloc_small_pages.thread41:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %large_alloc_failed = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 5
  %22 = ptrtoint ptr %large_alloc_failed to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %large_alloc_failed, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %large_alloc_failed, align 4
  br label %while.body50.lr.ph

if.end17:                                         ; preds = %while.body
  %24 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev_dev, align 16
  %26 = ptrtoint ptr %fl_pg_order to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fl_pg_order, align 4
  %shl = shl i32 4096, %27
  %call20 = tail call i32 @dma_map_page_attrs(ptr noundef %25, ptr noundef nonnull %call38.i.i, i32 noundef 0, i32 noundef %shl, i32 noundef 2, i32 noundef 0) #17
  %28 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev_dev, align 16
  tail call void @debug_dma_mapping_error(ptr noundef %29, i32 noundef %call20) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20)
  %cmp.i.not = icmp eq i32 %call20, -1
  br i1 %cmp.i.not, label %if.then30, label %if.end33, !prof !113

if.then30:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %fl_pg_order to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fl_pg_order, align 4
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i, i32 noundef %31) #17
  %mapping_err = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 6
  br label %out.sink.split

if.end33:                                         ; preds = %if.end17
  %or34 = or i32 %call20, 1
  %conv = zext i32 %or34 to i64
  %incdec.ptr = getelementptr i64, ptr %d.019, i32 1
  %32 = ptrtoint ptr %d.019 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv, ptr %d.019, align 8
  %33 = ptrtoint ptr %sd.020 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call38.i.i, ptr %sd.020, align 4
  %dma_addr.i = getelementptr inbounds %struct.rx_sw_desc, ptr %sd.020, i32 0, i32 1
  %34 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or34, ptr %dma_addr.i, align 4
  %incdec.ptr35 = getelementptr %struct.rx_sw_desc, ptr %sd.020, i32 1
  %35 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %q, align 4
  %inc37 = add i32 %36, 1
  store i32 %inc37, ptr %q, align 4
  %37 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pidx, align 4
  %inc39 = add i32 %38, 1
  store i32 %inc39, ptr %pidx, align 4
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc39, i32 %40)
  %cmp40 = icmp eq i32 %inc39, %40
  br i1 %cmp40, label %if.then42, label %if.end33.if.end46_crit_edge

if.end33.if.end46_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.then42:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  %41 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %pidx, align 4
  %42 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdesc, align 4
  %44 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end33.if.end46_crit_edge
  %d.1 = phi ptr [ %45, %if.then42 ], [ %incdec.ptr, %if.end33.if.end46_crit_edge ]
  %sd.1 = phi ptr [ %43, %if.then42 ], [ %incdec.ptr35, %if.end33.if.end46_crit_edge ]
  %dec = add i32 %n.addr.018, -1
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %if.end46.out_crit_edge, label %if.end46.while.body_crit_edge

if.end46.while.body_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

alloc_small_pages:                                ; preds = %if.end
  br i1 %tobool49.not23, label %alloc_small_pages.out_crit_edge, label %alloc_small_pages.while.body50.lr.ph_crit_edge

alloc_small_pages.while.body50.lr.ph_crit_edge:   ; preds = %alloc_small_pages
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body50.lr.ph

alloc_small_pages.out_crit_edge:                  ; preds = %alloc_small_pages
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

while.body50.lr.ph:                               ; preds = %alloc_small_pages.while.body50.lr.ph_crit_edge, %alloc_small_pages.thread41
  %sd.248 = phi ptr [ %sd.020, %alloc_small_pages.thread41 ], [ %arrayidx2, %alloc_small_pages.while.body50.lr.ph_crit_edge ]
  %d.247 = phi ptr [ %d.019, %alloc_small_pages.thread41 ], [ %arrayidx, %alloc_small_pages.while.body50.lr.ph_crit_edge ]
  %n.addr.146 = phi i32 [ %n.addr.018, %alloc_small_pages.thread41 ], [ %n, %alloc_small_pages.while.body50.lr.ph_crit_edge ]
  %size86 = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 10
  br label %while.body50

while.body50:                                     ; preds = %if.end93.while.body50_crit_edge, %while.body50.lr.ph
  %dec4826.in = phi i32 [ %n.addr.146, %while.body50.lr.ph ], [ %dec4826, %if.end93.while.body50_crit_edge ]
  %sd.325 = phi ptr [ %sd.248, %while.body50.lr.ph ], [ %sd.4, %if.end93.while.body50_crit_edge ]
  %d.324 = phi ptr [ %d.247, %while.body50.lr.ph ], [ %d.4, %if.end93.while.body50_crit_edge ]
  %dec4826 = add i32 %dec4826.in, -1
  %call38.i.i1 = tail call ptr @__alloc_pages(i32 noundef %or, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %tobool52.not = icmp eq ptr %call38.i.i1, null
  br i1 %tobool52.not, label %if.then61, label %if.end63, !prof !113

if.then61:                                        ; preds = %while.body50
  call void @__sanitizer_cov_trace_pc() #19
  %alloc_failed = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 4
  br label %out.sink.split

if.end63:                                         ; preds = %while.body50
  %46 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev_dev, align 16
  %call65 = tail call i32 @dma_map_page_attrs(ptr noundef %47, ptr noundef nonnull %call38.i.i1, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #17
  %48 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev_dev, align 16
  tail call void @debug_dma_mapping_error(ptr noundef %49, i32 noundef %call65) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call65)
  %cmp.i2.not = icmp eq i32 %call65, -1
  br i1 %cmp.i2.not, label %if.then75, label %if.end78, !prof !113

if.then75:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @put_page(ptr noundef nonnull %call38.i.i1)
  %mapping_err76 = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 6
  br label %out.sink.split

if.end78:                                         ; preds = %if.end63
  %conv79 = zext i32 %call65 to i64
  %incdec.ptr80 = getelementptr i64, ptr %d.324, i32 1
  %50 = ptrtoint ptr %d.324 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv79, ptr %d.324, align 8
  %51 = ptrtoint ptr %sd.325 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call38.i.i1, ptr %sd.325, align 4
  %dma_addr.i4 = getelementptr inbounds %struct.rx_sw_desc, ptr %sd.325, i32 0, i32 1
  %52 = ptrtoint ptr %dma_addr.i4 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call65, ptr %dma_addr.i4, align 4
  %incdec.ptr81 = getelementptr %struct.rx_sw_desc, ptr %sd.325, i32 1
  %53 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %q, align 4
  %inc83 = add i32 %54, 1
  store i32 %inc83, ptr %q, align 4
  %55 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pidx, align 4
  %inc85 = add i32 %56, 1
  store i32 %inc85, ptr %pidx, align 4
  %57 = ptrtoint ptr %size86 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc85, i32 %58)
  %cmp87 = icmp eq i32 %inc85, %58
  br i1 %cmp87, label %if.then89, label %if.end78.if.end93_crit_edge

if.end78.if.end93_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93

if.then89:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  %59 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %pidx, align 4
  %60 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sdesc, align 4
  %62 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %desc, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.end78.if.end93_crit_edge
  %d.4 = phi ptr [ %63, %if.then89 ], [ %incdec.ptr80, %if.end78.if.end93_crit_edge ]
  %sd.4 = phi ptr [ %61, %if.then89 ], [ %incdec.ptr81, %if.end78.if.end93_crit_edge ]
  %tobool49.not = icmp eq i32 %dec4826, 0
  br i1 %tobool49.not, label %if.end93.out_crit_edge, label %if.end93.while.body50_crit_edge

if.end93.while.body50_crit_edge:                  ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body50

if.end93.out_crit_edge:                           ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

out.sink.split:                                   ; preds = %if.then75, %if.then61, %if.then30
  %alloc_failed.sink60 = phi ptr [ %alloc_failed, %if.then61 ], [ %mapping_err76, %if.then75 ], [ %mapping_err, %if.then30 ]
  %64 = ptrtoint ptr %alloc_failed.sink60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %alloc_failed.sink60, align 4
  %inc62 = add i32 %65, 1
  store i32 %inc62, ptr %alloc_failed.sink60, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end93.out_crit_edge, %alloc_small_pages.out_crit_edge, %if.end46.out_crit_edge, %while.cond.preheader.out_crit_edge, %entry.out_crit_edge
  %66 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %q, align 4
  %sub96 = sub i32 %67, %1
  %pend_cred = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 1
  %68 = ptrtoint ptr %pend_cred to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pend_cred, align 4
  %add = add i32 %69, %sub96
  store i32 %add, ptr %pend_cred, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add)
  %cmp.i5 = icmp ugt i32 %add, 7
  br i1 %cmp.i5, label %if.then.i, label %out.ring_fl_db.exit_crit_edge

out.ring_fl_db.exit_crit_edge:                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %ring_fl_db.exit

if.then.i:                                        ; preds = %out
  %sge_fl_db.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 23, i32 5
  %70 = ptrtoint ptr %sge_fl_db.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sge_fl_db.i, align 4
  %div.pn.i = lshr i32 %add, 3
  %val.0.i = or i32 %71, %div.pn.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !146
  tail call void @arm_heavy_mb() #17
  %bar2_addr.i = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 14
  %72 = ptrtoint ptr %bar2_addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bar2_addr.i, align 4
  %cmp8.i = icmp eq ptr %73, null
  br i1 %cmp8.i, label %if.then11.i, label %do.body15.i, !prof !113

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %74 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cntxt_id, align 4
  %shl12.i = shl i32 %75, 15
  %or13.i = or i32 %shl12.i, %val.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !115
  tail call void @arm_heavy_mb() #17
  %76 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #17
  %77 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adap, align 128
  %add.ptr.i.i = getelementptr i8, ptr %78, i32 110592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %76) #17, !srcloc !116
  br label %if.end24.i

do.body15.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !147
  tail call void @arm_heavy_mb() #17
  %bar2_qid.i = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 15
  %79 = ptrtoint ptr %bar2_qid.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bar2_qid.i, align 4
  %shl18.i = shl i32 %80, 15
  %or19.i = or i32 %shl18.i, %val.0.i
  %81 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #17
  %82 = ptrtoint ptr %bar2_addr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bar2_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %83, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %81) #17, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !148
  tail call void @arm_heavy_mb() #17
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.body15.i, %if.then11.i
  %84 = ptrtoint ptr %pend_cred to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pend_cred, align 4
  %and.i6 = and i32 %85, 7
  store i32 %and.i6, ptr %pend_cred, align 4
  br label %ring_fl_db.exit

ring_fl_db.exit:                                  ; preds = %if.end24.i, %out.ring_fl_db.exit_crit_edge
  %86 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %q, align 4
  %88 = ptrtoint ptr %pend_cred to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pend_cred, align 4
  %sub.i = sub i32 %87, %89
  %fl_starve_thres.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 28
  %90 = ptrtoint ptr %fl_starve_thres.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %fl_starve_thres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %91)
  %cmp.i8.not = icmp ugt i32 %sub.i, %91
  br i1 %cmp.i8.not, label %ring_fl_db.exit.if.end114_crit_edge, label %do.end, !prof !112

ring_fl_db.exit.if.end114_crit_edge:              ; preds = %ring_fl_db.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end114

do.end:                                           ; preds = %ring_fl_db.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !149
  %low = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 7
  %92 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %low, align 4
  %inc108 = add i32 %93, 1
  store i32 %inc108, ptr %low, align 4
  %94 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cntxt_id, align 4
  %96 = ptrtoint ptr %egr_start to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %egr_start, align 4
  %sub112 = sub i32 %95, %97
  %starving_fl = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 36
  %98 = ptrtoint ptr %starving_fl to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %starving_fl, align 4
  tail call void @_set_bit(i32 noundef %sub112, ptr noundef %99) #17
  br label %if.end114

if.end114:                                        ; preds = %do.end, %ring_fl_db.exit.if.end114_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_set_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4_sge_alloc_eth_txq(ptr noundef %adap, ptr noundef %txq, ptr nocapture noundef readonly %dev, ptr noundef %netdevq, i32 noundef %iqid, i8 noundef zeroext %dbqt) local_unnamed_addr #0 align 64 {
entry:
  %bar2_qoffset.i.i = alloca i64, align 8
  %c = alloca %struct.fw_eq_eth_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %c) #17
  %size = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %stat_len = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 25
  %4 = ptrtoint ptr %stat_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat_len, align 32
  %div107 = lshr i32 %5, 6
  %add = add i32 %div107, %3
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %6 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev_dev, align 16
  %phys_addr = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 11
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 9
  %mul.i = shl i32 %3, 6
  %add.i = add i32 %mul.i, %5
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %7, i32 noundef %add.i, ptr noundef %phys_addr, i32 noundef 3264, i32 noundef 0) #17
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.alloc_ring.exit.thread_crit_edge, label %if.end.i

entry.alloc_ring.exit.thread_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %alloc_ring.exit.thread

if.end.i:                                         ; preds = %entry
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 76) #17
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %if.end.i.if.then5.i_crit_edge, label %if.end7.i.i.i, !prof !113

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

if.end7.i.i.i:                                    ; preds = %if.end.i
  %10 = extractvalue { i32, i1 } %8, 0
  %call.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #23
  %tobool4.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool4.not.i, label %if.end7.i.i.i.if.then5.i_crit_edge, label %if.end7.i

if.end7.i.i.i.if.then5.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.end7.i.i.i.if.then5.i_crit_edge, %if.end.i.if.then5.i_crit_edge
  %11 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %add.i, ptr noundef nonnull %call.i.i, i32 noundef %12, i32 noundef 0) #17
  br label %alloc_ring.exit.thread

if.end7.i:                                        ; preds = %if.end7.i.i.i
  %tobool8.not.i = icmp eq ptr %sdesc, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end_crit_edge, label %if.then9.i

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i.i.i, ptr %sdesc, align 4
  br label %if.end

alloc_ring.exit.thread:                           ; preds = %if.then5.i, %entry.alloc_ring.exit.thread_crit_edge
  %desc110 = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 8
  %14 = ptrtoint ptr %desc110 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %desc110, align 32
  br label %cleanup

if.end:                                           ; preds = %if.then9.i, %if.end7.i.if.end_crit_edge
  %desc = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 8
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %desc, align 32
  %shr = lshr i32 %1, 4
  %and = and i32 %shr, 15
  %16 = getelementptr inbounds i8, ptr %c, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %pf = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  %18 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pf, align 4
  %shl = shl i32 %19, 8
  %or = or i32 %shl, 313524224
  %20 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %c, align 8
  %alloc_to_len16 = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %c, i32 0, i32 1
  %21 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1879048189, ptr %alloc_to_len16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %cmp = icmp ult i32 %and, 6
  %cond = select i1 %cmp, i32 -2147483648, i32 1073741824
  %viid = getelementptr i8, ptr %dev, i32 2308
  %22 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %viid, align 4
  %conv = zext i16 %23 to i32
  %shl12 = shl nuw i32 %conv, 16
  %or13 = or i32 %shl12, %cond
  %autoequiqe_to_viid = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %c, i32 0, i32 7
  %24 = ptrtoint ptr %autoequiqe_to_viid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or13, ptr %autoequiqe_to_viid, align 8
  %cond16 = select i1 %cmp, i32 1048576, i32 2097152
  %tx_chan = getelementptr i8, ptr %dev, i32 2326
  %25 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tx_chan, align 2
  %conv18 = zext i8 %26 to i32
  %shl19 = shl nuw nsw i32 %conv18, 16
  %or20 = or i32 %cond16, %iqid
  %or21 = or i32 %or20, %shl19
  %or23 = or i32 %or21, 4194304
  %fetchszm_to_iqid = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %c, i32 0, i32 4
  %27 = ptrtoint ptr %fetchszm_to_iqid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or23, ptr %fetchszm_to_iqid, align 8
  %or29 = select i1 %cmp, i32 20250624, i32 3473408
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp30 = icmp eq i32 %and, 5
  %shl32 = select i1 %cmp30, i32 524288, i32 0
  %or33 = or i32 %or29, %shl32
  %or35 = or i32 %or33, %add
  %dcaen_to_eqsize = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %c, i32 0, i32 5
  %28 = ptrtoint ptr %dcaen_to_eqsize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or35, ptr %dcaen_to_eqsize, align 4
  %29 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %phys_addr, align 4
  %conv38 = zext i32 %30 to i64
  %eqaddr = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %c, i32 0, i32 6
  %31 = ptrtoint ptr %eqaddr to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv38, ptr %eqaddr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dbqt)
  %tobool39.not = icmp eq i8 %dbqt, 0
  br i1 %tobool39.not, label %if.end.if.end43_crit_edge, label %if.then40

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %dbqtimerix = getelementptr inbounds %struct.sge_eth_txq, ptr %txq, i32 0, i32 4
  %32 = ptrtoint ptr %dbqtimerix to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dbqtimerix, align 4
  %or42 = or i32 %33, 8
  %timeren_timerix = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %c, i32 0, i32 8
  %34 = ptrtoint ptr %timeren_timerix to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or42, ptr %timeren_timerix, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end.if.end43_crit_edge
  %mbox = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %35 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %adap, i32 noundef %36, ptr noundef nonnull %c, i32 noundef 48, ptr noundef nonnull %c, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool45.not = icmp eq i32 %call.i, 0
  br i1 %tobool45.not, label %if.end58, label %if.then46

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sdesc, align 4
  call void @kfree(ptr noundef %38) #17
  %39 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %sdesc, align 4
  %40 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev_dev, align 16
  %mul = shl i32 %add, 6
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc, align 32
  %44 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phys_addr, align 4
  call void @dma_free_attrs(ptr noundef %41, i32 noundef %mul, ptr noundef %43, i32 noundef %45, i32 noundef 0) #17
  %46 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %desc, align 32
  br label %cleanup

if.end58:                                         ; preds = %if.end43
  %q_type = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 1
  %47 = ptrtoint ptr %q_type to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %q_type, align 4
  %eqid_pkd = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %c, i32 0, i32 2
  %48 = ptrtoint ptr %eqid_pkd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %eqid_pkd, align 8
  %and62 = and i32 %49, 1048575
  %cntxt_id.i = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 7
  %50 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and62, ptr %cntxt_id.i, align 4
  %bar2_qid.i = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bar2_qoffset.i.i) #17
  %51 = ptrtoint ptr %bar2_qoffset.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 -1, ptr %bar2_qoffset.i.i, align 8, !annotation !121
  %call.i.i108 = call i32 @t4_bar2_sge_qregs(ptr noundef %adap, i32 noundef %and62, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %bar2_qoffset.i.i, ptr noundef %bar2_qid.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i108)
  %tobool.not.i.i = icmp eq i32 %call.i.i108, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end58.init_txq.exit_crit_edge

if.end58.init_txq.exit_crit_edge:                 ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_txq.exit

if.end.i.i:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  %bar2.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 1
  %52 = ptrtoint ptr %bar2.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bar2.i.i, align 4
  %54 = ptrtoint ptr %bar2_qoffset.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %bar2_qoffset.i.i, align 8
  %idx.ext.i.i = trunc i64 %55 to i32
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 %idx.ext.i.i
  br label %init_txq.exit

init_txq.exit:                                    ; preds = %if.end.i.i, %if.end58.init_txq.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %if.end58.init_txq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bar2_qoffset.i.i) #17
  %bar2_addr.i = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 16
  %56 = ptrtoint ptr %bar2_addr.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %retval.0.i.i, ptr %bar2_addr.i, align 4
  %57 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %txq, align 4
  %cidx.i = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 3
  %58 = call ptr @memset(ptr %cidx.i, i32 0, i32 16)
  %59 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %desc, align 4
  %61 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size, align 4
  %arrayidx.i = getelementptr %struct.tx_desc, ptr %60, i32 %62
  %stat.i = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 10
  %63 = ptrtoint ptr %stat.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx.i, ptr %stat.i, align 4
  %db_lock.i = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 12
  call void @__raw_spin_lock_init(ptr noundef %db_lock.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_txq.__key, i16 noundef signext 3) #17
  %egr_map.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 34
  %64 = ptrtoint ptr %egr_map.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %egr_map.i, align 4
  %egr_start.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 30
  %66 = ptrtoint ptr %egr_start.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %egr_start.i, align 4
  %sub.i = sub i32 %and62, %67
  %arrayidx4.i = getelementptr ptr, ptr %65, i32 %sub.i
  %68 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %txq, ptr %arrayidx4.i, align 4
  %txq63 = getelementptr inbounds %struct.sge_eth_txq, ptr %txq, i32 0, i32 1
  %69 = ptrtoint ptr %txq63 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %netdevq, ptr %txq63, align 4
  %tso = getelementptr inbounds %struct.sge_eth_txq, ptr %txq, i32 0, i32 5
  %dbqt64 = getelementptr inbounds %struct.sge_eth_txq, ptr %txq, i32 0, i32 3
  %70 = call ptr @memset(ptr %tso, i32 0, i32 20)
  %71 = ptrtoint ptr %dbqt64 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %dbqt, ptr %dbqt64, align 1
  br label %cleanup

cleanup:                                          ; preds = %init_txq.exit, %if.then46, %alloc_ring.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.then46 ], [ 0, %init_txq.exit ], [ -12, %alloc_ring.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %c) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4_sge_alloc_ctrl_txq(ptr noundef %adap, ptr noundef %txq, ptr nocapture noundef readonly %dev, i32 noundef %iqid, i32 noundef %cmplqid) local_unnamed_addr #0 align 64 {
entry:
  %bar2_qoffset.i.i = alloca i64, align 8
  %c = alloca %struct.fw_eq_ctrl_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #17
  %2 = getelementptr inbounds %struct.fw_eq_ctrl_cmd, ptr %c, i32 0, i32 2
  %size = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 8
  %stat_len = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 25
  %5 = ptrtoint ptr %stat_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stat_len, align 32
  %div71 = lshr i32 %6, 6
  %add = add i32 %div71, %4
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %7 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev_dev, align 16
  %phys_addr = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 11
  %mul.i = shl i32 %add, 6
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef %mul.i, ptr noundef %phys_addr, i32 noundef 3264, i32 noundef 0) #17
  %tobool.not.i = icmp eq ptr %call.i.i, null
  %desc74 = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 8
  br i1 %tobool.not.i, label %alloc_ring.exit.thread, label %if.end

alloc_ring.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %desc74 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %desc74, align 32
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = getelementptr inbounds %struct.fw_eq_ctrl_cmd, ptr %c, i32 0, i32 6
  %11 = getelementptr inbounds %struct.fw_eq_ctrl_cmd, ptr %c, i32 0, i32 5
  %12 = getelementptr inbounds %struct.fw_eq_ctrl_cmd, ptr %c, i32 0, i32 4
  %13 = getelementptr inbounds %struct.fw_eq_ctrl_cmd, ptr %c, i32 0, i32 3
  %14 = getelementptr inbounds %struct.fw_eq_ctrl_cmd, ptr %c, i32 0, i32 1
  %15 = ptrtoint ptr %desc74 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %desc74, align 32
  %pf = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  %16 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pf, align 4
  %shl = shl i32 %17, 8
  %or = or i32 %shl, 330301440
  %18 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %c, align 8
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1879048190, ptr %14, align 4
  %shl9 = shl i32 %cmplqid, 20
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl9, ptr %2, align 8
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %13, align 4
  %tx_chan = getelementptr i8, ptr %dev, i32 2326
  %22 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tx_chan, align 2
  %conv = zext i8 %23 to i32
  %shl10 = shl nuw nsw i32 %conv, 16
  %or12 = or i32 %shl10, %iqid
  %or14 = or i32 %or12, 6291456
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or14, ptr %12, align 8
  %25 = and i32 %1, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %25)
  %cmp = icmp ult i32 %25, 96
  %or18 = select i1 %cmp, i32 20250624, i32 3473408
  %or20 = or i32 %add, %or18
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or20, ptr %11, align 4
  %27 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phys_addr, align 4
  %conv23 = zext i32 %28 to i64
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv23, ptr %10, align 8
  %mbox = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %30 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %adap, i32 noundef %31, ptr noundef nonnull %c, i32 noundef 32, ptr noundef nonnull %c, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end34, label %if.then26

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev_dev, align 16
  %34 = ptrtoint ptr %desc74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc74, align 32
  %36 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phys_addr, align 4
  call void @dma_free_attrs(ptr noundef %33, i32 noundef %mul.i, ptr noundef %35, i32 noundef %37, i32 noundef 0) #17
  %38 = ptrtoint ptr %desc74 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %desc74, align 32
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %q_type = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 1
  %39 = ptrtoint ptr %q_type to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %q_type, align 4
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %2, align 8
  %and39 = and i32 %41, 1048575
  %cntxt_id.i = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 7
  %42 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and39, ptr %cntxt_id.i, align 4
  %bar2_qid.i = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bar2_qoffset.i.i) #17
  %43 = ptrtoint ptr %bar2_qoffset.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 -1, ptr %bar2_qoffset.i.i, align 8, !annotation !121
  %call.i.i72 = call i32 @t4_bar2_sge_qregs(ptr noundef %adap, i32 noundef %and39, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %bar2_qoffset.i.i, ptr noundef %bar2_qid.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72)
  %tobool.not.i.i = icmp eq i32 %call.i.i72, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end34.init_txq.exit_crit_edge

if.end34.init_txq.exit_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_txq.exit

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  %bar2.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 1
  %44 = ptrtoint ptr %bar2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bar2.i.i, align 4
  %46 = ptrtoint ptr %bar2_qoffset.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %bar2_qoffset.i.i, align 8
  %idx.ext.i.i = trunc i64 %47 to i32
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 %idx.ext.i.i
  br label %init_txq.exit

init_txq.exit:                                    ; preds = %if.end.i.i, %if.end34.init_txq.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %if.end34.init_txq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bar2_qoffset.i.i) #17
  %bar2_addr.i = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 16
  %48 = ptrtoint ptr %bar2_addr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %retval.0.i.i, ptr %bar2_addr.i, align 4
  %49 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %txq, align 4
  %cidx.i = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 3
  %50 = call ptr @memset(ptr %cidx.i, i32 0, i32 16)
  %51 = ptrtoint ptr %desc74 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %desc74, align 4
  %53 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size, align 4
  %arrayidx.i = getelementptr %struct.tx_desc, ptr %52, i32 %54
  %stat.i = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 10
  %55 = ptrtoint ptr %stat.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx.i, ptr %stat.i, align 4
  %db_lock.i = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 12
  call void @__raw_spin_lock_init(ptr noundef %db_lock.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_txq.__key, i16 noundef signext 3) #17
  %egr_map.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 34
  %56 = ptrtoint ptr %egr_map.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %egr_map.i, align 4
  %egr_start.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 30
  %58 = ptrtoint ptr %egr_start.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %egr_start.i, align 4
  %sub.i = sub i32 %and39, %59
  %arrayidx4.i = getelementptr ptr, ptr %57, i32 %sub.i
  %60 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %txq, ptr %arrayidx4.i, align 4
  %adap40 = getelementptr inbounds %struct.sge_ctrl_txq, ptr %txq, i32 0, i32 1
  %61 = ptrtoint ptr %adap40 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %adap, ptr %adap40, align 4
  %sendq = getelementptr inbounds %struct.sge_ctrl_txq, ptr %txq, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.sge_ctrl_txq, ptr %txq, i32 0, i32 2, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #17
  %62 = ptrtoint ptr %sendq to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %sendq, ptr %sendq, align 4
  %prev.i.i = getelementptr inbounds %struct.sge_ctrl_txq, ptr %txq, i32 0, i32 2, i32 0, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %sendq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sge_ctrl_txq, ptr %txq, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %qlen.i.i, align 4
  %qresume_tsk = getelementptr inbounds %struct.sge_ctrl_txq, ptr %txq, i32 0, i32 3
  call void @tasklet_setup(ptr noundef %qresume_tsk, ptr noundef nonnull @restart_ctrlq) #17
  %full = getelementptr inbounds %struct.sge_ctrl_txq, ptr %txq, i32 0, i32 4
  %65 = ptrtoint ptr %full to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %full, align 64
  br label %cleanup

cleanup:                                          ; preds = %init_txq.exit, %if.then26, %alloc_ring.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.then26 ], [ 0, %init_txq.exit ], [ -12, %alloc_ring.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @restart_ctrlq(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -168
  %sendq = getelementptr i8, ptr %t, i32 -56
  %lock = getelementptr i8, ptr %t, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %lock) #17
  %stat.i = getelementptr i8, ptr %t, i32 -128
  %0 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stat.i, align 4
  %cidx.i = getelementptr inbounds %struct.sge_qstat, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load volatile i16, ptr %cidx.i, align 4
  %conv.i = zext i16 %3 to i32
  %cidx1.i = getelementptr i8, ptr %t, i32 -156
  %4 = ptrtoint ptr %cidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cidx1.i, align 4
  %sub.i = sub i32 %conv.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.reclaim_completed_tx_imm.exit_crit_edge

entry.reclaim_completed_tx_imm.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %reclaim_completed_tx_imm.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %size.i = getelementptr i8, ptr %t, i32 -160
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %add.i = add i32 %7, %sub.i
  br label %reclaim_completed_tx_imm.exit

reclaim_completed_tx_imm.exit:                    ; preds = %if.then.i, %entry.reclaim_completed_tx_imm.exit_crit_edge
  %reclaim.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub.i, %entry.reclaim_completed_tx_imm.exit_crit_edge ]
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %sub3.i = sub i32 %9, %reclaim.0.i
  store i32 %sub3.i, ptr %add.ptr, align 4
  %10 = ptrtoint ptr %cidx1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i, ptr %cidx1.i, align 4
  %size.i84 = getelementptr i8, ptr %t, i32 -160
  %11 = ptrtoint ptr %size.i84 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i84, align 4
  %13 = xor i32 %sub3.i, -1
  %sub1.i = add i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub1.i)
  %cmp = icmp ult i32 %sub1.i, 8
  br i1 %cmp, label %do.body4, label %while.cond.preheader, !prof !113

while.cond.preheader:                             ; preds = %reclaim_completed_tx_imm.exit
  %14 = ptrtoint ptr %sendq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sendq, align 4
  %cmp.i.i103 = icmp eq ptr %15, %sendq
  %tobool.not.i101104 = icmp eq ptr %15, null
  %tobool.not.i105 = or i1 %cmp.i.i103, %tobool.not.i101104
  br i1 %tobool.not.i105, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %qlen.i.i = getelementptr i8, ptr %t, i32 -48
  %desc = getelementptr i8, ptr %t, i32 -136
  %pidx = getelementptr i8, ptr %t, i32 -152
  %stops = getelementptr i8, ptr %t, i32 -148
  %adap = getelementptr i8, ptr %t, i32 -60
  br label %while.body

do.body4:                                         ; preds = %reclaim_completed_tx_imm.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2798, 0\0A.popsection", ""() #17, !srcloc !150
  unreachable

while.body:                                       ; preds = %cleanup44.while.body_crit_edge, %while.body.lr.ph
  %16 = phi ptr [ %15, %while.body.lr.ph ], [ %70, %cleanup44.while.body_crit_edge ]
  %written.0106 = phi i32 [ 0, %while.body.lr.ph ], [ %written.1, %cleanup44.while.body_crit_edge ]
  %17 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.53, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %16, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.53, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %22, ptr %prev17.i.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %20, ptr %22, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 15, i32 0, i32 6
  %25 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %priority, align 4
  %add = add i32 %26, %written.0106
  %27 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc, align 32
  %29 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pidx, align 16
  %arrayidx = getelementptr %struct.tx_desc, ptr %28, i32 %30
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr, align 4
  %add.i86 = add i32 %32, %26
  store i32 %add.i86, ptr %add.ptr, align 4
  %add1.i = add i32 %30, %26
  store i32 %add1.i, ptr %pidx, align 4
  %33 = ptrtoint ptr %size.i84 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i84, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %34)
  %cmp.not.i = icmp ult i32 %add1.i, %34
  br i1 %cmp.not.i, label %while.body.txq_advance.exit_crit_edge, label %if.then.i89

while.body.txq_advance.exit_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %txq_advance.exit

if.then.i89:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i88 = sub i32 %add1.i, %34
  %35 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i88, ptr %pidx, align 4
  br label %txq_advance.exit

txq_advance.exit:                                 ; preds = %if.then.i89, %while.body.txq_advance.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #17
  %36 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stat.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %arrayidx to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 6
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %sub.ptr.sub.i)
  %cmp.not.i91 = icmp ugt i32 %39, %sub.ptr.sub.i
  br i1 %cmp.not.i91, label %if.else15.i, label %if.then.i92, !prof !113

if.then.i92:                                      ; preds = %txq_advance.exit
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 7
  %40 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool2.not.i = icmp eq i32 %41, 0
  br i1 %tobool2.not.i, label %if.then11.i, label %if.else.i, !prof !112

if.then11.i:                                      ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #19
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 19
  %42 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i, align 4
  %44 = call ptr @memcpy(ptr %arrayidx, ptr %43, i32 %39)
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %16, i32 noundef 0, ptr noundef %arrayidx, i32 noundef %39) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then11.i
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 %46
  br label %if.end23.i

if.else15.i:                                      ; preds = %txq_advance.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call16.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %16, i32 noundef 0, ptr noundef %arrayidx, i32 noundef %sub.ptr.sub.i) #17
  %47 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc, align 4
  %49 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len.i, align 4
  %sub.i93 = sub i32 %50, %sub.ptr.sub.i
  %call18.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %16, i32 noundef %sub.ptr.sub.i, ptr noundef %48, i32 noundef %sub.i93) #17
  %51 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %desc, align 4
  %53 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i, align 4
  %sub21.i = sub i32 %54, %sub.ptr.sub.i
  %add.ptr22.i = getelementptr i8, ptr %52, i32 %sub21.i
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else15.i, %if.end.i
  %pos.addr.0.i = phi ptr [ %add.ptr.i, %if.end.i ], [ %add.ptr22.i, %if.else15.i ]
  %55 = ptrtoint ptr %pos.addr.0.i to i32
  %add.i94 = add i32 %55, 7
  %and24.i = and i32 %add.i94, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.cxgb4_inline_tx_skb.exit_crit_edge, label %if.then26.i

if.end23.i.cxgb4_inline_tx_skb.exit_crit_edge:    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cxgb4_inline_tx_skb.exit

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  %and.i = and i32 %add.i94, -8
  %56 = inttoptr i32 %and.i to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 0, ptr %56, align 8
  br label %cxgb4_inline_tx_skb.exit

cxgb4_inline_tx_skb.exit:                         ; preds = %if.then26.i, %if.end23.i.cxgb4_inline_tx_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %16, i32 noundef 0) #17
  %58 = ptrtoint ptr %size.i84 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i84, align 4
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr, align 4
  %62 = xor i32 %61, -1
  %sub1.i96 = add i32 %59, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub1.i96)
  %cmp21 = icmp ult i32 %sub1.i96, 8
  br i1 %cmp21, label %if.then28, label %cxgb4_inline_tx_skb.exit.if.end37_crit_edge, !prof !113

cxgb4_inline_tx_skb.exit.if.end37_crit_edge:      ; preds = %cxgb4_inline_tx_skb.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

if.then28:                                        ; preds = %cxgb4_inline_tx_skb.exit
  %63 = ptrtoint ptr %stops to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %stops, align 4
  tail call fastcc void @ctrlq_check_stop(ptr noundef %add.ptr, ptr noundef %arrayidx)
  %65 = ptrtoint ptr %stops to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %stops, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %64)
  %cmp32.not = icmp eq i32 %66, %64
  br i1 %cmp32.not, label %if.then28.if.end37_crit_edge, label %cleanup44.thread

if.then28.if.end37_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

cleanup44.thread:                                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_lock(ptr noundef %lock) #17
  br label %ringdb

if.end37:                                         ; preds = %if.then28.if.end37_crit_edge, %cxgb4_inline_tx_skb.exit.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp38 = icmp ugt i32 %add, 16
  br i1 %cmp38, label %if.then39, label %if.end37.cleanup44_crit_edge

if.end37.cleanup44_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup44

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  %67 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %adap, align 4
  tail call void @cxgb4_ring_tx_db(ptr noundef %68, ptr noundef %add.ptr, i32 noundef %add)
  br label %cleanup44

cleanup44:                                        ; preds = %if.then39, %if.end37.cleanup44_crit_edge
  %written.1 = phi i32 [ 0, %if.then39 ], [ %add, %if.end37.cleanup44_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %lock) #17
  %69 = ptrtoint ptr %sendq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sendq, align 4
  %cmp.i.i = icmp eq ptr %70, %sendq
  %tobool.not.i101 = icmp eq ptr %70, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i101
  br i1 %tobool.not.i, label %cleanup44.while.end_crit_edge, label %cleanup44.while.body_crit_edge

cleanup44.while.body_crit_edge:                   ; preds = %cleanup44
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

cleanup44.while.end_crit_edge:                    ; preds = %cleanup44
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %cleanup44.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %written.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %written.1, %cleanup44.while.end_crit_edge ]
  %full = getelementptr i8, ptr %t, i32 24
  %71 = ptrtoint ptr %full to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %full, align 64
  br label %ringdb

ringdb:                                           ; preds = %while.end, %cleanup44.thread
  %written.3 = phi i32 [ %written.0.lcssa, %while.end ], [ %add, %cleanup44.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.3)
  %tobool48.not = icmp eq i32 %written.3, 0
  br i1 %tobool48.not, label %ringdb.if.end52_crit_edge, label %if.then49

ringdb.if.end52_crit_edge:                        ; preds = %ringdb
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.then49:                                        ; preds = %ringdb
  call void @__sanitizer_cov_trace_pc() #19
  %adap50 = getelementptr i8, ptr %t, i32 -60
  %72 = ptrtoint ptr %adap50 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adap50, align 4
  tail call void @cxgb4_ring_tx_db(ptr noundef %73, ptr noundef %add.ptr, i32 noundef %written.3)
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %ringdb.if.end52_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4_sge_mod_ctrl_txq(ptr noundef %adap, i32 noundef %eqid, i32 noundef %cmplqid) local_unnamed_addr #0 align 64 {
entry:
  %param = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #17
  %or = or i32 %eqid, 68222976
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or, ptr %param, align 4
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cmplqid, ptr %val, align 4
  %mbox = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %2 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbox, align 8
  %pf = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  %4 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pf, align 4
  %call = call i32 @t4_set_params(ptr noundef %adap, i32 noundef %3, i32 noundef %5, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %param, ptr noundef nonnull %val) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #17
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4_sge_alloc_uld_txq(ptr noundef %adap, ptr noundef %txq, ptr nocapture noundef readonly %dev, i32 noundef %iqid, i32 noundef %uld_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %uld_type)
  %cmp = icmp eq i32 %uld_type, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !113

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmd.0 = phi i32 [ 19, %if.then ], [ 33, %entry.if.end_crit_edge ]
  %call = tail call fastcc i32 @t4_sge_alloc_ofld_txq(ptr noundef %adap, ptr noundef %txq, ptr noundef %dev, i32 noundef %cmd.0, i32 noundef %iqid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %q_type = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 1
  %0 = ptrtoint ptr %q_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %q_type, align 4
  %adap6 = getelementptr inbounds %struct.sge_uld_txq, ptr %txq, i32 0, i32 1
  %1 = ptrtoint ptr %adap6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adap, ptr %adap6, align 4
  %sendq = getelementptr inbounds %struct.sge_uld_txq, ptr %txq, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.sge_uld_txq, ptr %txq, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #17
  %2 = ptrtoint ptr %sendq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sendq, ptr %sendq, align 4
  %prev.i.i = getelementptr inbounds %struct.sge_uld_txq, ptr %txq, i32 0, i32 2, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sendq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sge_uld_txq, ptr %txq, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i.i, align 4
  %qresume_tsk = getelementptr inbounds %struct.sge_uld_txq, ptr %txq, i32 0, i32 3
  tail call void @tasklet_setup(ptr noundef %qresume_tsk, ptr noundef nonnull @restart_ofldq) #17
  %full = getelementptr inbounds %struct.sge_uld_txq, ptr %txq, i32 0, i32 5
  %5 = ptrtoint ptr %full to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %full, align 1
  %mapping_err = getelementptr inbounds %struct.sge_uld_txq, ptr %txq, i32 0, i32 6
  %6 = ptrtoint ptr %mapping_err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mapping_err, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t4_sge_alloc_ofld_txq(ptr noundef %adap, ptr noundef %q, ptr nocapture noundef readonly %dev, i32 noundef %cmd, i32 noundef %iqid) unnamed_addr #0 align 64 {
entry:
  %bar2_qoffset.i.i = alloca i64, align 8
  %c = alloca %struct.fw_eq_ofld_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #17
  %2 = getelementptr inbounds %struct.fw_eq_ofld_cmd, ptr %c, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fw_eq_ofld_cmd, ptr %c, i32 0, i32 2
  %4 = getelementptr inbounds %struct.fw_eq_ofld_cmd, ptr %c, i32 0, i32 4
  %5 = getelementptr inbounds %struct.fw_eq_ofld_cmd, ptr %c, i32 0, i32 5
  %6 = getelementptr inbounds %struct.fw_eq_ofld_cmd, ptr %c, i32 0, i32 6
  %size = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %stat_len = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 25
  %9 = ptrtoint ptr %stat_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stat_len, align 32
  %div64 = lshr i32 %10, 6
  %add = add i32 %div64, %8
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %11 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev_dev, align 16
  %phys_addr = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 11
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 9
  %mul.i = shl i32 %8, 6
  %add.i = add i32 %mul.i, %10
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %12, i32 noundef %add.i, ptr noundef %phys_addr, i32 noundef 3264, i32 noundef 0) #17
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.alloc_ring.exit.thread_crit_edge, label %if.end.i

entry.alloc_ring.exit.thread_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %alloc_ring.exit.thread

if.end.i:                                         ; preds = %entry
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 76) #17
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %if.end.i.if.then5.i_crit_edge, label %if.end7.i.i.i, !prof !113

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

if.end7.i.i.i:                                    ; preds = %if.end.i
  %15 = extractvalue { i32, i1 } %13, 0
  %call.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #23
  %tobool4.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool4.not.i, label %if.end7.i.i.i.if.then5.i_crit_edge, label %if.end7.i

if.end7.i.i.i.if.then5.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.end7.i.i.i.if.then5.i_crit_edge, %if.end.i.if.then5.i_crit_edge
  %16 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %12, i32 noundef %add.i, ptr noundef nonnull %call.i.i, i32 noundef %17, i32 noundef 0) #17
  br label %alloc_ring.exit.thread

if.end7.i:                                        ; preds = %if.end7.i.i.i
  %tobool8.not.i = icmp eq ptr %sdesc, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end_crit_edge, label %if.then9.i

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i.i.i, ptr %sdesc, align 4
  br label %if.end

alloc_ring.exit.thread:                           ; preds = %if.then5.i, %entry.alloc_ring.exit.thread_crit_edge
  %desc67 = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 8
  %19 = ptrtoint ptr %desc67 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %desc67, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then9.i, %if.end7.i.if.end_crit_edge
  %desc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 8
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %desc, align 4
  %21 = and i32 %1, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %21)
  %cmp = icmp ult i32 %21, 96
  %. = select i1 %cmp, i32 20250624, i32 3473408
  %22 = getelementptr inbounds i8, ptr %c, i32 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %22, align 8
  %shl = shl i32 %cmd, 24
  %pf = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  %24 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pf, align 4
  %shl9 = shl i32 %25, 8
  %or8 = or i32 %shl, %shl9
  %or10 = or i32 %or8, 11534336
  %26 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or10, ptr %c, align 8
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1879048190, ptr %2, align 4
  %tx_chan = getelementptr i8, ptr %dev, i32 2326
  %28 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tx_chan, align 2
  %conv = zext i8 %29 to i32
  %shl12 = shl nuw nsw i32 %conv, 16
  %or14 = or i32 %shl12, %iqid
  %or16 = or i32 %or14, 6291456
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or16, ptr %4, align 8
  %or21 = or i32 %add, %.
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or21, ptr %5, align 4
  %32 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %phys_addr, align 4
  %conv23 = zext i32 %33 to i64
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv23, ptr %6, align 8
  %mbox = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %35 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %adap, i32 noundef %36, ptr noundef nonnull %c, i32 noundef 32, ptr noundef nonnull %c, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end33, label %if.then26

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sdesc, align 4
  call void @kfree(ptr noundef %38) #17
  %39 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %sdesc, align 4
  %40 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev_dev, align 16
  %mul = shl i32 %add, 6
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc, align 4
  %44 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phys_addr, align 4
  call void @dma_free_attrs(ptr noundef %41, i32 noundef %mul, ptr noundef %43, i32 noundef %45, i32 noundef 0) #17
  %46 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %desc, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %3, align 8
  %and35 = and i32 %48, 1048575
  %cntxt_id.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 7
  %49 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and35, ptr %cntxt_id.i, align 4
  %bar2_qid.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bar2_qoffset.i.i) #17
  %50 = ptrtoint ptr %bar2_qoffset.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 -1, ptr %bar2_qoffset.i.i, align 8, !annotation !121
  %call.i.i65 = call i32 @t4_bar2_sge_qregs(ptr noundef %adap, i32 noundef %and35, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %bar2_qoffset.i.i, ptr noundef %bar2_qid.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %tobool.not.i.i = icmp eq i32 %call.i.i65, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end33.init_txq.exit_crit_edge

if.end33.init_txq.exit_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_txq.exit

if.end.i.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  %bar2.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 1
  %51 = ptrtoint ptr %bar2.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bar2.i.i, align 4
  %53 = ptrtoint ptr %bar2_qoffset.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %bar2_qoffset.i.i, align 8
  %idx.ext.i.i = trunc i64 %54 to i32
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 %idx.ext.i.i
  br label %init_txq.exit

init_txq.exit:                                    ; preds = %if.end.i.i, %if.end33.init_txq.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %if.end33.init_txq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bar2_qoffset.i.i) #17
  %bar2_addr.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 16
  %55 = ptrtoint ptr %bar2_addr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %retval.0.i.i, ptr %bar2_addr.i, align 4
  %56 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %q, align 4
  %cidx.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 3
  %57 = call ptr @memset(ptr %cidx.i, i32 0, i32 16)
  %58 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %desc, align 4
  %60 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size, align 4
  %arrayidx.i = getelementptr %struct.tx_desc, ptr %59, i32 %61
  %stat.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 10
  %62 = ptrtoint ptr %stat.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx.i, ptr %stat.i, align 4
  %db_lock.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 12
  call void @__raw_spin_lock_init(ptr noundef %db_lock.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_txq.__key, i16 noundef signext 3) #17
  %egr_map.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 34
  %63 = ptrtoint ptr %egr_map.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %egr_map.i, align 4
  %egr_start.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 30
  %65 = ptrtoint ptr %egr_start.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %egr_start.i, align 4
  %sub.i = sub i32 %and35, %66
  %arrayidx4.i = getelementptr ptr, ptr %64, i32 %sub.i
  %67 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %q, ptr %arrayidx4.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %init_txq.exit, %if.then26, %alloc_ring.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.then26 ], [ 0, %init_txq.exit ], [ -12, %alloc_ring.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @restart_ofldq(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -168
  %lock = getelementptr i8, ptr %t, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %lock) #17
  %full = getelementptr i8, ptr %t, i32 25
  %0 = ptrtoint ptr %full to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %full, align 1
  tail call fastcc void @service_ofldq(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4_sge_alloc_ethofld_txq(ptr noundef %adap, ptr noundef %txq, ptr nocapture noundef readonly %dev, i32 noundef %iqid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %q = getelementptr inbounds %struct.sge_eohw_txq, ptr %txq, i32 0, i32 1
  %call = tail call fastcc i32 @t4_sge_alloc_ofld_txq(ptr noundef %adap, ptr noundef %q, ptr noundef %dev, i32 noundef 33, i32 noundef %iqid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %q_type = getelementptr inbounds %struct.sge_eohw_txq, ptr %txq, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %q_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %q_type, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %txq, ptr noundef nonnull @.str.7, ptr noundef nonnull @t4_sge_alloc_ethofld_txq.__key, i16 noundef signext 3) #17
  %adap3 = getelementptr inbounds %struct.sge_eohw_txq, ptr %txq, i32 0, i32 2
  %1 = ptrtoint ptr %adap3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adap, ptr %adap3, align 4
  %tso = getelementptr inbounds %struct.sge_eohw_txq, ptr %txq, i32 0, i32 3
  %2 = call ptr @memset(ptr %tso, i32 0, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_txq(ptr nocapture noundef readonly %adap, ptr nocapture noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %0 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev_dev, align 16
  %size = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %mul = shl i32 %3, 6
  %stat_len = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 25
  %4 = ptrtoint ptr %stat_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat_len, align 32
  %add = add i32 %mul, %5
  %desc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 8
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %phys_addr = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 11
  %8 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef %add, ptr noundef %7, i32 noundef %9, i32 noundef 0) #17
  %cntxt_id = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 7
  %10 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cntxt_id, align 4
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 9
  %11 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %sdesc, align 4
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %desc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_rspq_fl(ptr noundef %adap, ptr noundef %rq, ptr noundef %fl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fl, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %cntxt_id = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 9
  %0 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cntxt_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 65535, %entry.cond.end_crit_edge ]
  %ingr_map = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 35
  %2 = ptrtoint ptr %ingr_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ingr_map, align 8
  %cntxt_id2 = getelementptr inbounds %struct.sge_rspq, ptr %rq, i32 0, i32 11
  %4 = ptrtoint ptr %cntxt_id2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cntxt_id2, align 4
  %conv = zext i16 %5 to i32
  %ingr_start = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 32
  %6 = ptrtoint ptr %ingr_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ingr_start, align 4
  %sub = sub i32 %conv, %7
  %arrayidx = getelementptr ptr, ptr %3, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  %mbox = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %9 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbox, align 8
  %pf = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  %11 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pf, align 4
  %13 = load i16, ptr %cntxt_id2, align 4
  %conv5 = zext i16 %13 to i32
  %call = tail call i32 @t4_iq_free(ptr noundef %adap, i32 noundef %10, i32 noundef %12, i32 noundef 0, i32 noundef 0, i32 noundef %conv5, i32 noundef %cond, i32 noundef 65535) #17
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %14 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev_dev, align 16
  %size = getelementptr inbounds %struct.sge_rspq, ptr %rq, i32 0, i32 18
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %add = add i32 %17, 1
  %iqe_len = getelementptr inbounds %struct.sge_rspq, ptr %rq, i32 0, i32 17
  %18 = ptrtoint ptr %iqe_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iqe_len, align 8
  %mul = mul i32 %add, %19
  %desc = getelementptr inbounds %struct.sge_rspq, ptr %rq, i32 0, i32 13
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc, align 8
  %phys_addr = getelementptr inbounds %struct.sge_rspq, ptr %rq, i32 0, i32 14
  %22 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef %mul, ptr noundef %21, i32 noundef %23, i32 noundef 0) #17
  tail call void @__netif_napi_del(ptr noundef %rq) #17
  tail call void @synchronize_net() #17
  %netdev = getelementptr inbounds %struct.sge_rspq, ptr %rq, i32 0, i32 20
  %24 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %netdev, align 4
  %25 = ptrtoint ptr %cntxt_id2 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 0, ptr %cntxt_id2, align 4
  br i1 %tobool.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fl, align 4
  tail call fastcc void @free_rx_bufs(ptr noundef %adap, ptr noundef nonnull %fl, i32 noundef %27)
  %28 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev_dev, align 16
  %size10 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 10
  %30 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size10, align 4
  %mul11 = shl i32 %31, 3
  %stat_len = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 25
  %32 = ptrtoint ptr %stat_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stat_len, align 32
  %add12 = add i32 %mul11, %33
  %desc13 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 12
  %34 = ptrtoint ptr %desc13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc13, align 4
  %addr = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 13
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr, align 4
  tail call void @dma_free_attrs(ptr noundef %29, i32 noundef %add12, ptr noundef %35, i32 noundef %37, i32 noundef 0) #17
  %sdesc = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 11
  %38 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdesc, align 4
  tail call void @kfree(ptr noundef %39) #17
  %40 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %sdesc, align 4
  %cntxt_id15 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 9
  %41 = ptrtoint ptr %cntxt_id15 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %cntxt_id15, align 4
  %42 = ptrtoint ptr %desc13 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %desc13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_iq_free(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_rx_bufs(ptr nocapture noundef readonly %adap, ptr nocapture noundef %q, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not25 = icmp eq i32 %n, 0
  br i1 %tobool.not25, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sdesc = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 11
  %cidx = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 2
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %pktshift.i10.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 26
  %fl_align.i11.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 27
  %fl_pg_order.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 24
  %size = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %while.body.lr.ph
  %dec26.in = phi i32 [ %n, %while.body.lr.ph ], [ %dec26, %put_page.exit.while.body_crit_edge ]
  %dec26 = add i32 %dec26.in, -1
  %0 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdesc, align 4
  %2 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cidx, align 4
  %arrayidx = getelementptr %struct.rx_sw_desc, ptr %1, i32 %3
  %dma_addr.i = getelementptr %struct.rx_sw_desc, ptr %1, i32 %3, i32 1
  %4 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_addr.i, align 4
  %and.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %while.body
  %6 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev_dev, align 16
  %and.i20 = and i32 %5, -32
  %and.i22 = and i32 %5, 15
  %8 = zext i32 %and.i22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %and.i22, label %do.body.i [
    i32 0, label %if.then.get_buf_size.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
  ]

if.then.get_buf_size.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_buf_size.exit

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %fl_pg_order.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fl_pg_order.i, align 4
  %shl.i = shl i32 4096, %10
  br label %get_buf_size.exit

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %pktshift.i10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pktshift.i10.i, align 4
  %13 = ptrtoint ptr %fl_align.i11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fl_align.i11.i, align 8
  %add2.i.i = add i32 %12, 1517
  %add3.i.i = add i32 %add2.i.i, %14
  %neg.i.i = sub i32 0, %14
  %and.i.i = and i32 %add3.i.i, %neg.i.i
  br label %get_buf_size.exit

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %pktshift.i10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pktshift.i10.i, align 4
  %17 = ptrtoint ptr %fl_align.i11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fl_align.i11.i, align 8
  %add2.i12.i = add i32 %16, 9017
  %add3.i13.i = add i32 %add2.i12.i, %18
  %neg.i14.i = sub i32 0, %18
  %and.i15.i = and i32 %add3.i13.i, %neg.i14.i
  br label %get_buf_size.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #17, !srcloc !142
  unreachable

get_buf_size.exit:                                ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then.get_buf_size.exit_crit_edge
  %buf_size.0.i = phi i32 [ %and.i15.i, %sw.bb3.i ], [ %and.i.i, %sw.bb2.i ], [ %shl.i, %sw.bb1.i ], [ 4096, %if.then.get_buf_size.exit_crit_edge ]
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %and.i20, i32 noundef %buf_size.0.i, i32 noundef 2, i32 noundef 0) #17
  br label %if.end

if.end:                                           ; preds = %get_buf_size.exit, %while.body.if.end_crit_edge
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %21 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i23 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i23)
  %tobool.not.i.i = icmp eq i32 %and.i.i23, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !112

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i = add i32 %23, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %24 = ptrtoint ptr %20 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %24, %if.end.i.i ]
  %25 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #17
  %26 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !113

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %28 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %28, ptr noundef nonnull @.str.27) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #17, !srcloc !135
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #17
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #17, !srcloc !137
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@free_rx_bufs, %if.then.i.i.i.i.i)) #17
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !132

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %25, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #17
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__put_page(ptr noundef %25) #17
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx, align 4
  %31 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cidx, align 4
  %inc = add i32 %32, 1
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %34)
  %cmp = icmp eq i32 %inc, %34
  %spec.store.select = select i1 %cmp, i32 0, i32 %inc
  %35 = ptrtoint ptr %cidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.store.select, ptr %cidx, align 4
  %36 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %q, align 4
  %dec8 = add i32 %37, -1
  store i32 %dec8, ptr %q, align 4
  %tobool.not = icmp eq i32 %dec26, 0
  br i1 %tobool.not, label %put_page.exit.while.end_crit_edge, label %put_page.exit.while.body_crit_edge

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

put_page.exit.while.end_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %put_page.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t4_free_ofld_rxqs(ptr noundef %adap, i32 noundef %n, ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not10 = icmp eq i32 %n, 0
  br i1 %tobool.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %q.addr.012 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %q, %entry.for.body_crit_edge ]
  %n.addr.011 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %n, %entry.for.body_crit_edge ]
  %desc = getelementptr inbounds %struct.sge_rspq, ptr %q.addr.012, i32 0, i32 13
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %size = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q.addr.012, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  %fl = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q.addr.012, i32 0, i32 1
  %spec.select = select i1 %tobool3.not, ptr null, ptr %fl
  tail call void @free_rspq_fl(ptr noundef %adap, ptr noundef %q.addr.012, ptr noundef %spec.select)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %dec = add i32 %n.addr.011, -1
  %incdec.ptr = getelementptr %struct.sge_ofld_rxq, ptr %q.addr.012, i32 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t4_sge_free_ethofld_txq(ptr noundef %adap, ptr nocapture noundef %txq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.sge_eohw_txq, ptr %txq, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %q = getelementptr inbounds %struct.sge_eohw_txq, ptr %txq, i32 0, i32 1
  %mbox = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %2 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbox, align 8
  %pf = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  %4 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pf, align 4
  %cntxt_id = getelementptr inbounds %struct.sge_eohw_txq, ptr %txq, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cntxt_id, align 4
  %call = tail call i32 @t4_ofld_eq_free(ptr noundef %adap, i32 noundef %3, i32 noundef %5, i32 noundef 0, i32 noundef %7) #17
  %8 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q, align 4
  %cidx1.i = getelementptr inbounds %struct.sge_eohw_txq, ptr %txq, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %cidx1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cidx1.i, align 4
  %sdesc.i = getelementptr inbounds %struct.sge_eohw_txq, ptr %txq, i32 0, i32 1, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not32.i = icmp eq i32 %9, 0
  br i1 %tobool.not32.i, label %if.then.free_tx_desc.exit_crit_edge, label %while.body.lr.ph.i

if.then.free_tx_desc.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_tx_desc.exit

while.body.lr.ph.i:                               ; preds = %if.then
  %12 = ptrtoint ptr %sdesc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdesc.i, align 4
  %arrayidx.i = getelementptr %struct.tx_sw_desc, ptr %13, i32 %11
  %size.i = getelementptr inbounds %struct.sge_eohw_txq, ptr %txq, i32 0, i32 1, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end16.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec36.in.i = phi i32 [ %9, %while.body.lr.ph.i ], [ %dec36.i, %if.end16.i.while.body.i_crit_edge ]
  %d.034.i = phi ptr [ %arrayidx.i, %while.body.lr.ph.i ], [ %d.1.i, %if.end16.i.while.body.i_crit_edge ]
  %cidx.033.i = phi i32 [ %11, %while.body.lr.ph.i ], [ %cidx.1.i, %if.end16.i.while.body.i_crit_edge ]
  %dec36.i = add i32 %dec36.in.i, -1
  %14 = ptrtoint ptr %d.034.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d.034.i, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %while.body.i.if.end13.i_crit_edge, label %if.then.i

while.body.i.if.end13.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %15, i32 noundef 0) #17
  %16 = ptrtoint ptr %d.034.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %d.034.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then.i, %while.body.i.if.end13.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.tx_sw_desc, ptr %d.034.i, i32 1
  %inc.i = add i32 %cidx.033.i, 1
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %18)
  %cmp.i = icmp eq i32 %inc.i, %18
  br i1 %cmp.i, label %if.then14.i, label %if.end13.i.if.end16.i_crit_edge

if.end13.i.if.end16.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %sdesc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdesc.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end13.i.if.end16.i_crit_edge
  %cidx.1.i = phi i32 [ 0, %if.then14.i ], [ %inc.i, %if.end13.i.if.end16.i_crit_edge ]
  %d.1.i = phi ptr [ %20, %if.then14.i ], [ %incdec.ptr.i, %if.end13.i.if.end16.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %dec36.i, 0
  br i1 %tobool.not.i, label %if.end16.i.free_tx_desc.exit_crit_edge, label %if.end16.i.while.body.i_crit_edge

if.end16.i.while.body.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

if.end16.i.free_tx_desc.exit_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_tx_desc.exit

free_tx_desc.exit:                                ; preds = %if.end16.i.free_tx_desc.exit_crit_edge, %if.then.free_tx_desc.exit_crit_edge
  %cidx.0.lcssa.i = phi i32 [ %11, %if.then.free_tx_desc.exit_crit_edge ], [ %cidx.1.i, %if.end16.i.free_tx_desc.exit_crit_edge ]
  %21 = ptrtoint ptr %cidx1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cidx.0.lcssa.i, ptr %cidx1.i, align 4
  %22 = ptrtoint ptr %sdesc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdesc.i, align 4
  tail call void @kfree(ptr noundef %23) #17
  %pdev_dev.i15 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %24 = ptrtoint ptr %pdev_dev.i15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev_dev.i15, align 16
  %size.i16 = getelementptr inbounds %struct.sge_eohw_txq, ptr %txq, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %size.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i16, align 4
  %mul.i = shl i32 %27, 6
  %stat_len.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 25
  %28 = ptrtoint ptr %stat_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stat_len.i, align 32
  %add.i = add i32 %mul.i, %29
  %30 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc, align 4
  %phys_addr.i = getelementptr inbounds %struct.sge_eohw_txq, ptr %txq, i32 0, i32 1, i32 11
  %32 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %phys_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %25, i32 noundef %add.i, ptr noundef %31, i32 noundef %33, i32 noundef 0) #17
  %34 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %cntxt_id, align 4
  %35 = ptrtoint ptr %sdesc.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %sdesc.i, align 4
  %36 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end:                                           ; preds = %free_tx_desc.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_ofld_eq_free(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t4_free_sge_resources(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ethqsets = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 14
  %0 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ethqsets, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp254.not = icmp eq i16 %1, 0
  br i1 %cmp254.not, label %entry.for.cond56.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond56.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond56.preheader

for.body.lr.ph:                                   ; preds = %entry
  %mbox = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %pf = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  br label %for.body

for.cond8.preheader:                              ; preds = %for.inc
  %sge.le = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp12259.not = icmp eq i16 %15, 0
  br i1 %cmp12259.not, label %for.cond8.preheader.for.cond56.preheader_crit_edge, label %for.body14.lr.ph

for.cond8.preheader.for.cond56.preheader_crit_edge: ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond56.preheader

for.body14.lr.ph:                                 ; preds = %for.cond8.preheader
  %mbox42 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %pf43 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %stat_len.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 25
  br label %for.body14

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0255 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 3, i32 %i.0255
  %desc = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx, i32 0, i32 13
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then:                                          ; preds = %for.body
  %4 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mbox, align 8
  %6 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pf, align 4
  %cntxt_id = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx, i32 0, i32 11
  %8 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cntxt_id, align 4
  %conv4 = zext i16 %9 to i32
  %size = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 3, i32 %i.0255, i32 1, i32 10
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %cntxt_id7 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 3, i32 %i.0255, i32 1, i32 9
  %12 = ptrtoint ptr %cntxt_id7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cntxt_id7, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %13, %cond.true ], [ 65535, %if.then.cond.end_crit_edge ]
  %call = tail call i32 @t4_iq_stop(ptr noundef %adap, i32 noundef %5, i32 noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef %conv4, i32 noundef %cond, i32 noundef 65535) #17
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0255, 1
  %14 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ethqsets, align 2
  %conv = zext i16 %15 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.cond8.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond56.preheader:                             ; preds = %for.inc53.for.cond56.preheader_crit_edge, %for.cond8.preheader.for.cond56.preheader_crit_edge, %entry.for.cond56.preheader_crit_edge
  %mbox66 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %pf67 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  %pdev_dev.i210 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %stat_len.i213 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 25
  br label %for.body59

for.body14:                                       ; preds = %for.inc53.for.body14_crit_edge, %for.body14.lr.ph
  %i.1260 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc54, %for.inc53.for.body14_crit_edge ]
  %arrayidx17 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 3, i32 %i.1260
  %desc19 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx17, i32 0, i32 13
  %16 = ptrtoint ptr %desc19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc19, align 8
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %for.body14.if.end31_crit_edge, label %if.then21

for.body14.if.end31_crit_edge:                    ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then21:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #19
  %size24 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 3, i32 %i.1260, i32 1, i32 10
  %18 = ptrtoint ptr %size24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool25.not = icmp eq i32 %19, 0
  %fl23 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 3, i32 %i.1260, i32 1
  %spec.select = select i1 %tobool25.not, ptr null, ptr %fl23
  tail call void @free_rspq_fl(ptr noundef %adap, ptr noundef %arrayidx17, ptr noundef %spec.select)
  br label %if.end31

if.end31:                                         ; preds = %if.then21, %for.body14.if.end31_crit_edge
  %msix = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 3, i32 %i.1260, i32 3
  %20 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %msix, align 4
  %tobool32.not = icmp eq ptr %21, null
  br i1 %tobool32.not, label %if.end31.if.end36_crit_edge, label %if.then33

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  %idx = getelementptr inbounds %struct.msix_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx, align 4
  tail call void @cxgb4_free_msix_idx_in_bmap(ptr noundef %adap, i32 noundef %23) #17
  %24 = ptrtoint ptr %msix to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %msix, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end31.if.end36_crit_edge
  %arrayidx38 = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.le, i32 0, i32 %i.1260
  %desc39 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx38, i32 0, i32 8
  %25 = ptrtoint ptr %desc39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc39, align 32
  %tobool40.not = icmp eq ptr %26, null
  br i1 %tobool40.not, label %if.end36.for.inc53_crit_edge, label %if.then41

if.end36.for.inc53_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc53

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %mbox42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mbox42, align 8
  %29 = ptrtoint ptr %pf43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pf43, align 4
  %cntxt_id45 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx38, i32 0, i32 7
  %31 = ptrtoint ptr %cntxt_id45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cntxt_id45, align 4
  %call46 = tail call i32 @t4_eth_eq_free(ptr noundef %adap, i32 noundef %28, i32 noundef %30, i32 noundef 0, i32 noundef %32) #17
  %txq = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.le, i32 0, i32 %i.1260, i32 1
  %33 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %txq, align 4
  %_xmit_lock.i = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %_xmit_lock.i) #17
  %35 = tail call i32 @llvm.read_register.i32(metadata !102) #17
  %and.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i, align 4
  %xmit_lock_owner.i = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 11
  %39 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %38, ptr %xmit_lock_owner.i, align 4
  %40 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx38, align 128
  tail call void @free_tx_desc(ptr noundef %adap, ptr noundef %arrayidx38, i32 noundef %41, i1 noundef zeroext true)
  %42 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %txq, align 4
  %xmit_lock_owner.i208 = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %xmit_lock_owner.i208 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 -1, ptr %xmit_lock_owner.i208, align 4
  %_xmit_lock.i209 = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 10
  tail call void @_raw_spin_unlock_bh(ptr noundef %_xmit_lock.i209) #17
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %arrayidx38, i32 0, i32 9
  %45 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdesc, align 4
  tail call void @kfree(ptr noundef %46) #17
  %47 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev_dev.i, align 16
  %size.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx38, i32 0, i32 2
  %49 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size.i, align 4
  %mul.i = shl i32 %50, 6
  %51 = ptrtoint ptr %stat_len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stat_len.i, align 32
  %add.i = add i32 %mul.i, %52
  %53 = ptrtoint ptr %desc39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %desc39, align 4
  %phys_addr.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx38, i32 0, i32 11
  %55 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %phys_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %48, i32 noundef %add.i, ptr noundef %54, i32 noundef %56, i32 noundef 0) #17
  %57 = ptrtoint ptr %cntxt_id45 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %cntxt_id45, align 4
  %58 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %sdesc, align 4
  %59 = ptrtoint ptr %desc39 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %desc39, align 4
  br label %for.inc53

for.inc53:                                        ; preds = %if.then41, %if.end36.for.inc53_crit_edge
  %inc54 = add nuw nsw i32 %i.1260, 1
  %60 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ethqsets, align 2
  %conv11 = zext i16 %61 to i32
  %cmp12 = icmp ult i32 %inc54, %conv11
  br i1 %cmp12, label %for.inc53.for.body14_crit_edge, label %for.inc53.for.cond56.preheader_crit_edge

for.inc53.for.cond56.preheader_crit_edge:         ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond56.preheader

for.inc53.for.body14_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body14

for.body59:                                       ; preds = %if.end72.for.body59_crit_edge, %for.cond56.preheader
  %i.2263 = phi i32 [ 0, %for.cond56.preheader ], [ %inc74, %if.end72.for.body59_crit_edge ]
  %arrayidx61 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 2, i32 %i.2263
  %desc63 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx61, i32 0, i32 8
  %62 = ptrtoint ptr %desc63 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %desc63, align 32
  %tobool64.not = icmp eq ptr %63, null
  br i1 %tobool64.not, label %for.body59.if.end72_crit_edge, label %if.then65

for.body59.if.end72_crit_edge:                    ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end72

if.then65:                                        ; preds = %for.body59
  %qresume_tsk = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 2, i32 %i.2263, i32 3
  tail call void @tasklet_kill(ptr noundef %qresume_tsk) #17
  %64 = ptrtoint ptr %mbox66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mbox66, align 8
  %66 = ptrtoint ptr %pf67 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pf67, align 4
  %cntxt_id69 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx61, i32 0, i32 7
  %68 = ptrtoint ptr %cntxt_id69 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cntxt_id69, align 4
  %call70 = tail call i32 @t4_ctrl_eq_free(ptr noundef %adap, i32 noundef %65, i32 noundef %67, i32 noundef 0, i32 noundef %69) #17
  %sendq = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 2, i32 %i.2263, i32 2
  %70 = ptrtoint ptr %sendq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sendq, align 4
  %cmp.i.i2.i = icmp eq ptr %71, %sendq
  %tobool.not.i13.i = icmp eq ptr %71, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.then65.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

if.then65.__skb_queue_purge.exit_crit_edge:       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #19
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %if.then65
  %qlen.i.i.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 2, i32 %i.2263, i32 2, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %72 = phi ptr [ %71, %while.body.lr.ph.i ], [ %82, %while.body.i.while.body.i_crit_edge ]
  %73 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %74, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %72, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.53, ptr %72, i32 0, i32 1
  %77 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %72, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.53, ptr %76, i32 0, i32 1
  %79 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %78, ptr %prev17.i.i.i, align 4
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %76, ptr %78, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %72, i32 noundef 0) #17
  %81 = ptrtoint ptr %sendq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sendq, align 4
  %cmp.i.i.i = icmp eq ptr %82, %sendq
  %tobool.not.i1.i = icmp eq ptr %82, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %if.then65.__skb_queue_purge.exit_crit_edge
  %83 = ptrtoint ptr %pdev_dev.i210 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev_dev.i210, align 16
  %size.i211 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx61, i32 0, i32 2
  %85 = ptrtoint ptr %size.i211 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %size.i211, align 4
  %mul.i212 = shl i32 %86, 6
  %87 = ptrtoint ptr %stat_len.i213 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %stat_len.i213, align 32
  %add.i214 = add i32 %mul.i212, %88
  %89 = ptrtoint ptr %desc63 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %desc63, align 4
  %phys_addr.i216 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx61, i32 0, i32 11
  %91 = ptrtoint ptr %phys_addr.i216 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %phys_addr.i216, align 4
  tail call void @dma_free_attrs(ptr noundef %84, i32 noundef %add.i214, ptr noundef %90, i32 noundef %92, i32 noundef 0) #17
  %93 = ptrtoint ptr %cntxt_id69 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %cntxt_id69, align 4
  %sdesc.i218 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx61, i32 0, i32 9
  %94 = ptrtoint ptr %sdesc.i218 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %sdesc.i218, align 4
  %95 = ptrtoint ptr %desc63 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %desc63, align 4
  br label %if.end72

if.end72:                                         ; preds = %__skb_queue_purge.exit, %for.body59.if.end72_crit_edge
  %inc74 = add nuw nsw i32 %i.2263, 1
  %exitcond.not = icmp eq i32 %inc74, 4
  br i1 %exitcond.not, label %for.end75, label %if.end72.for.body59_crit_edge

if.end72.for.body59_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body59

for.end75:                                        ; preds = %if.end72
  %desc77 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 13
  %96 = ptrtoint ptr %desc77 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %desc77, align 8
  %tobool78.not = icmp eq ptr %97, null
  br i1 %tobool78.not, label %for.end75.if.end89_crit_edge, label %if.then79

for.end75.if.end89_crit_edge:                     ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end89

if.then79:                                        ; preds = %for.end75
  %fw_evtq = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4
  %ingr_map.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 35
  %98 = ptrtoint ptr %ingr_map.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ingr_map.i, align 8
  %cntxt_id2.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 11
  %100 = ptrtoint ptr %cntxt_id2.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %cntxt_id2.i, align 4
  %conv.i = zext i16 %101 to i32
  %ingr_start.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 32
  %102 = ptrtoint ptr %ingr_start.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ingr_start.i, align 4
  %sub.i = sub i32 %conv.i, %103
  %arrayidx.i = getelementptr ptr, ptr %99, i32 %sub.i
  %104 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %arrayidx.i, align 4
  %105 = ptrtoint ptr %mbox66 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mbox66, align 8
  %107 = ptrtoint ptr %pf67 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pf67, align 4
  %109 = load i16, ptr %cntxt_id2.i, align 4
  %conv5.i = zext i16 %109 to i32
  %call.i = tail call i32 @t4_iq_free(ptr noundef %adap, i32 noundef %106, i32 noundef %108, i32 noundef 0, i32 noundef 0, i32 noundef %conv5.i, i32 noundef 65535, i32 noundef 65535) #17
  %110 = ptrtoint ptr %pdev_dev.i210 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev_dev.i210, align 16
  %size.i220 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 18
  %112 = ptrtoint ptr %size.i220 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %size.i220, align 4
  %add.i221 = add i32 %113, 1
  %iqe_len.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 17
  %114 = ptrtoint ptr %iqe_len.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %iqe_len.i, align 8
  %mul.i222 = mul i32 %add.i221, %115
  %116 = ptrtoint ptr %desc77 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %desc77, align 8
  %phys_addr.i224 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 14
  %118 = ptrtoint ptr %phys_addr.i224 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %phys_addr.i224, align 4
  tail call void @dma_free_attrs(ptr noundef %111, i32 noundef %mul.i222, ptr noundef %117, i32 noundef %119, i32 noundef 0) #17
  tail call void @__netif_napi_del(ptr noundef %fw_evtq) #17
  tail call void @synchronize_net() #17
  %netdev.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 20
  %120 = ptrtoint ptr %netdev.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %netdev.i, align 4
  %121 = ptrtoint ptr %cntxt_id2.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 8)
  store i64 0, ptr %cntxt_id2.i, align 4
  %fwevtq_msix_idx = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 41
  %122 = ptrtoint ptr %fwevtq_msix_idx to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %fwevtq_msix_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %123)
  %cmp83 = icmp sgt i32 %123, -1
  br i1 %cmp83, label %if.then85, label %if.then79.if.end89_crit_edge

if.then79.if.end89_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end89

if.then85:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @cxgb4_free_msix_idx_in_bmap(ptr noundef %adap, i32 noundef %123) #17
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %if.then79.if.end89_crit_edge, %for.end75.if.end89_crit_edge
  %nd_msix_idx = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 42
  %124 = ptrtoint ptr %nd_msix_idx to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nd_msix_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %125)
  %cmp91 = icmp sgt i32 %125, -1
  br i1 %cmp91, label %if.then93, label %if.end89.if.end96_crit_edge

if.end89.if.end96_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end96

if.then93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @cxgb4_free_msix_idx_in_bmap(ptr noundef %adap, i32 noundef %125) #17
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end89.if.end96_crit_edge
  %desc98 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 13
  %126 = ptrtoint ptr %desc98 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %desc98, align 8
  %tobool99.not = icmp eq ptr %127, null
  br i1 %tobool99.not, label %if.end96.if.end103_crit_edge, label %if.then100

if.end96.if.end103_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103

if.then100:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #19
  %intrq = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8
  %ingr_map.i225 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 35
  %128 = ptrtoint ptr %ingr_map.i225 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ingr_map.i225, align 8
  %cntxt_id2.i226 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 11
  %130 = ptrtoint ptr %cntxt_id2.i226 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %cntxt_id2.i226, align 4
  %conv.i227 = zext i16 %131 to i32
  %ingr_start.i228 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 32
  %132 = ptrtoint ptr %ingr_start.i228 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ingr_start.i228, align 4
  %sub.i229 = sub i32 %conv.i227, %133
  %arrayidx.i230 = getelementptr ptr, ptr %129, i32 %sub.i229
  %134 = ptrtoint ptr %arrayidx.i230 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %arrayidx.i230, align 4
  %135 = ptrtoint ptr %mbox66 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %mbox66, align 8
  %137 = ptrtoint ptr %pf67 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %pf67, align 4
  %139 = load i16, ptr %cntxt_id2.i226, align 4
  %conv5.i233 = zext i16 %139 to i32
  %call.i234 = tail call i32 @t4_iq_free(ptr noundef %adap, i32 noundef %136, i32 noundef %138, i32 noundef 0, i32 noundef 0, i32 noundef %conv5.i233, i32 noundef 65535, i32 noundef 65535) #17
  %140 = ptrtoint ptr %pdev_dev.i210 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pdev_dev.i210, align 16
  %size.i236 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 18
  %142 = ptrtoint ptr %size.i236 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %size.i236, align 4
  %add.i237 = add i32 %143, 1
  %iqe_len.i238 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 17
  %144 = ptrtoint ptr %iqe_len.i238 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %iqe_len.i238, align 8
  %mul.i239 = mul i32 %add.i237, %145
  %146 = ptrtoint ptr %desc98 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %desc98, align 8
  %phys_addr.i241 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 14
  %148 = ptrtoint ptr %phys_addr.i241 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %phys_addr.i241, align 4
  tail call void @dma_free_attrs(ptr noundef %141, i32 noundef %mul.i239, ptr noundef %147, i32 noundef %149, i32 noundef 0) #17
  tail call void @__netif_napi_del(ptr noundef %intrq) #17
  tail call void @synchronize_net() #17
  %netdev.i242 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 20
  %150 = ptrtoint ptr %netdev.i242 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %netdev.i242, align 4
  %151 = ptrtoint ptr %cntxt_id2.i226 to i32
  call void @__asan_storeN_noabort(i32 %151, i32 8)
  store i64 0, ptr %cntxt_id2.i226, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end96.if.end103_crit_edge
  %chip = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %152 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %chip, align 8
  %154 = and i32 %153, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %154)
  %cmp.i.not = icmp eq i32 %154, 64
  br i1 %cmp.i.not, label %if.end103.if.end125_crit_edge, label %if.then106

if.end103.if.end125_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end125

if.then106:                                       ; preds = %if.end103
  %desc109 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 1, i32 0, i32 8
  %155 = ptrtoint ptr %desc109 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %desc109, align 32
  %tobool110.not = icmp eq ptr %156, null
  br i1 %tobool110.not, label %if.then106.if.end125_crit_edge, label %if.then111

if.then106.if.end125_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end125

if.then111:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #19
  %ptptxq = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 1
  %157 = ptrtoint ptr %mbox66 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %mbox66, align 8
  %159 = ptrtoint ptr %pf67 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %pf67, align 4
  %cntxt_id115 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 1, i32 0, i32 7
  %161 = ptrtoint ptr %cntxt_id115 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cntxt_id115, align 4
  %call116 = tail call i32 @t4_eth_eq_free(ptr noundef %adap, i32 noundef %158, i32 noundef %160, i32 noundef 0, i32 noundef %162) #17
  %ptp_lock = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %ptp_lock) #17
  %163 = ptrtoint ptr %ptptxq to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ptptxq, align 128
  tail call void @free_tx_desc(ptr noundef %adap, ptr noundef %ptptxq, i32 noundef %164, i1 noundef zeroext true)
  tail call void @_raw_spin_unlock_bh(ptr noundef %ptp_lock) #17
  %sdesc122 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 1, i32 0, i32 9
  %165 = ptrtoint ptr %sdesc122 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %sdesc122, align 4
  tail call void @kfree(ptr noundef %166) #17
  %167 = ptrtoint ptr %pdev_dev.i210 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pdev_dev.i210, align 16
  %size.i245 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 1, i32 0, i32 2
  %169 = ptrtoint ptr %size.i245 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %size.i245, align 4
  %mul.i246 = shl i32 %170, 6
  %171 = ptrtoint ptr %stat_len.i213 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %stat_len.i213, align 32
  %add.i248 = add i32 %mul.i246, %172
  %173 = ptrtoint ptr %desc109 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %desc109, align 4
  %phys_addr.i250 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 1, i32 0, i32 11
  %175 = ptrtoint ptr %phys_addr.i250 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %phys_addr.i250, align 4
  tail call void @dma_free_attrs(ptr noundef %168, i32 noundef %add.i248, ptr noundef %174, i32 noundef %176, i32 noundef 0) #17
  %177 = ptrtoint ptr %cntxt_id115 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %cntxt_id115, align 4
  %178 = ptrtoint ptr %sdesc122 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %sdesc122, align 4
  %179 = ptrtoint ptr %desc109 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %desc109, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then111, %if.then106.if.end125_crit_edge, %if.end103.if.end125_crit_edge
  %egr_map = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 34
  %180 = ptrtoint ptr %egr_map to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %egr_map, align 4
  %egr_sz = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 31
  %182 = ptrtoint ptr %egr_sz to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %egr_sz, align 8
  %mul = shl i32 %183, 2
  %184 = call ptr @memset(ptr %181, i32 0, i32 %mul)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_iq_stop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_free_msix_idx_in_bmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_eth_eq_free(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_ctrl_eq_free(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t4_sge_start(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtxq_rover = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 15
  %0 = ptrtoint ptr %ethtxq_rover to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %ethtxq_rover, align 16
  %rx_timer = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, 50
  %call = tail call i32 @mod_timer(ptr noundef %rx_timer, i32 noundef %add) #17
  %tx_timer = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add3 = add i32 %2, 50
  %call4 = tail call i32 @mod_timer(ptr noundef %tx_timer, i32 noundef %add3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t4_sge_stop(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %function = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 39, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %function, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %rx_timer = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 39
  %call = tail call i32 @del_timer_sync(ptr noundef %rx_timer) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %function2 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 40, i32 2
  %2 = ptrtoint ptr %function2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %function2, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %tx_timer = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 40
  %call6 = tail call i32 @del_timer_sync(ptr noundef %tx_timer) #17
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %offload.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 24
  %4 = ptrtoint ptr %offload.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %offload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %if.end7.if.end20_crit_edge, label %if.then10

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then10:                                        ; preds = %if.end7
  %uld_txq_info = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 6
  %6 = ptrtoint ptr %uld_txq_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uld_txq_info, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.then10.if.end20_crit_edge, label %if.then13

if.then10.if.end20_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then13:                                        ; preds = %if.then10
  %ofldqsets = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 16
  %10 = ptrtoint ptr %ofldqsets to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ofldqsets, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp88.not = icmp eq i16 %11, 0
  br i1 %cmp88.not, label %if.then13.if.end20_crit_edge, label %for.body.lr.ph

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

for.body.lr.ph:                                   ; preds = %if.then13
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %desc = getelementptr inbounds %struct.sge_txq, ptr %13, i32 0, i32 8
  %qresume_tsk = getelementptr inbounds %struct.sge_uld_txq, ptr %13, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 32
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %if.then17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @tasklet_kill(ptr noundef %qresume_tsk) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.089, 1
  %16 = ptrtoint ptr %ofldqsets to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ofldqsets, align 2
  %conv = zext i16 %17 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end20_crit_edge

for.inc.if.end20_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end20:                                         ; preds = %for.inc.if.end20_crit_edge, %if.then13.if.end20_crit_edge, %if.then10.if.end20_crit_edge, %if.end7.if.end20_crit_edge
  %crypto.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 25
  %18 = ptrtoint ptr %crypto.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %crypto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool22.not = icmp eq i8 %19, 0
  br i1 %tobool22.not, label %if.end20.if.end49_crit_edge, label %if.then23

if.end20.if.end49_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then23:                                        ; preds = %if.end20
  %uld_txq_info26 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 6
  %20 = ptrtoint ptr %uld_txq_info26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %uld_txq_info26, align 4
  %arrayidx27 = getelementptr ptr, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx27, align 4
  %tobool28.not = icmp eq ptr %23, null
  br i1 %tobool28.not, label %if.then23.if.end49_crit_edge, label %if.then29

if.then23.if.end49_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then29:                                        ; preds = %if.then23
  %ofldqsets34 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 16
  %24 = ptrtoint ptr %ofldqsets34 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ofldqsets34, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp3691.not = icmp eq i16 %25, 0
  br i1 %cmp3691.not, label %if.then29.if.end49_crit_edge, label %for.body38.lr.ph

if.then29.if.end49_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

for.body38.lr.ph:                                 ; preds = %if.then29
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %desc40 = getelementptr inbounds %struct.sge_txq, ptr %27, i32 0, i32 8
  %qresume_tsk43 = getelementptr inbounds %struct.sge_uld_txq, ptr %27, i32 0, i32 3
  br label %for.body38

for.body38:                                       ; preds = %for.inc45.for.body38_crit_edge, %for.body38.lr.ph
  %i.192 = phi i32 [ 0, %for.body38.lr.ph ], [ %inc46, %for.inc45.for.body38_crit_edge ]
  %28 = ptrtoint ptr %desc40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc40, align 32
  %tobool41.not = icmp eq ptr %29, null
  br i1 %tobool41.not, label %for.body38.for.inc45_crit_edge, label %if.then42

for.body38.for.inc45_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc45

if.then42:                                        ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @tasklet_kill(ptr noundef %qresume_tsk43) #17
  br label %for.inc45

for.inc45:                                        ; preds = %if.then42, %for.body38.for.inc45_crit_edge
  %inc46 = add nuw nsw i32 %i.192, 1
  %30 = ptrtoint ptr %ofldqsets34 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ofldqsets34, align 2
  %conv35 = zext i16 %31 to i32
  %cmp36 = icmp ult i32 %inc46, %conv35
  br i1 %cmp36, label %for.inc45.for.body38_crit_edge, label %for.inc45.if.end49_crit_edge

for.inc45.if.end49_crit_edge:                     ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

for.inc45.for.body38_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body38

if.end49:                                         ; preds = %for.inc45.if.end49_crit_edge, %if.then29.if.end49_crit_edge, %if.then23.if.end49_crit_edge, %if.end20.if.end49_crit_edge
  %desc56 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 2, i32 0, i32 0, i32 8
  %32 = ptrtoint ptr %desc56 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc56, align 32
  %tobool57.not = icmp eq ptr %33, null
  br i1 %tobool57.not, label %if.end49.if.end60_crit_edge, label %if.then58

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60

if.then58:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  %qresume_tsk59 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 2, i32 0, i32 3
  tail call void @tasklet_kill(ptr noundef %qresume_tsk59) #17
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end49.if.end60_crit_edge
  %desc56.1 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 2, i32 1, i32 0, i32 8
  %34 = ptrtoint ptr %desc56.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc56.1, align 32
  %tobool57.not.1 = icmp eq ptr %35, null
  br i1 %tobool57.not.1, label %if.end60.if.end60.1_crit_edge, label %if.then58.1

if.end60.if.end60.1_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60.1

if.then58.1:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  %qresume_tsk59.1 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 2, i32 1, i32 3
  tail call void @tasklet_kill(ptr noundef %qresume_tsk59.1) #17
  br label %if.end60.1

if.end60.1:                                       ; preds = %if.then58.1, %if.end60.if.end60.1_crit_edge
  %desc56.2 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 2, i32 2, i32 0, i32 8
  %36 = ptrtoint ptr %desc56.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc56.2, align 32
  %tobool57.not.2 = icmp eq ptr %37, null
  br i1 %tobool57.not.2, label %if.end60.1.if.end60.2_crit_edge, label %if.then58.2

if.end60.1.if.end60.2_crit_edge:                  ; preds = %if.end60.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60.2

if.then58.2:                                      ; preds = %if.end60.1
  call void @__sanitizer_cov_trace_pc() #19
  %qresume_tsk59.2 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 2, i32 2, i32 3
  tail call void @tasklet_kill(ptr noundef %qresume_tsk59.2) #17
  br label %if.end60.2

if.end60.2:                                       ; preds = %if.then58.2, %if.end60.1.if.end60.2_crit_edge
  %desc56.3 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 2, i32 3, i32 0, i32 8
  %38 = ptrtoint ptr %desc56.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc56.3, align 32
  %tobool57.not.3 = icmp eq ptr %39, null
  br i1 %tobool57.not.3, label %if.end60.2.if.end60.3_crit_edge, label %if.then58.3

if.end60.2.if.end60.3_crit_edge:                  ; preds = %if.end60.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60.3

if.then58.3:                                      ; preds = %if.end60.2
  call void @__sanitizer_cov_trace_pc() #19
  %qresume_tsk59.3 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 2, i32 3, i32 3
  tail call void @tasklet_kill(ptr noundef %qresume_tsk59.3) #17
  br label %if.end60.3

if.end60.3:                                       ; preds = %if.then58.3, %if.end60.2.if.end60.3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4_sge_init(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 4104
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #17, !srcloc !151
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !152
  %shr = lshr i32 %3, 10
  %and = and i32 %shr, 7
  %pktshift = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 26
  %4 = ptrtoint ptr %pktshift to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %pktshift, align 4
  %and1 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %cond = select i1 %tobool.not, i32 64, i32 128
  %stat_len = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 25
  %5 = ptrtoint ptr %stat_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %stat_len, align 32
  %call2 = tail call i32 @t4_fl_pkt_align(ptr noundef %adap) #17
  %fl_align = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 27
  %6 = ptrtoint ptr %fl_align to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2, ptr %fl_align, align 8
  %7 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adap, align 128
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4104
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !152
  %10 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %11 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev_dev.i, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.31) #20
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %13 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap, align 128
  %add.ptr.i152.i = getelementptr i8, ptr %14, i32 4164
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i152.i) #17, !srcloc !151
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !152
  %17 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap, align 128
  %add.ptr.i153.i = getelementptr i8, ptr %18, i32 4168
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153.i) #17, !srcloc !151
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !152
  %21 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adap, align 128
  %add.ptr.i154.i = getelementptr i8, ptr %22, i32 4172
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154.i) #17, !srcloc !151
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !152
  %25 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adap, align 128
  %add.ptr.i155.i = getelementptr i8, ptr %26, i32 4176
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155.i) #17, !srcloc !151
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !152
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %16)
  %cmp5.not.i = icmp ugt i32 %20, %16
  %spec.store.select.i = select i1 %cmp5.not.i, i32 %20, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %15)
  %cmp8.not.i = icmp eq i32 %15, 1048576
  %29 = tail call i32 @llvm.ctpop.i32(i32 %spec.store.select.i) #17, !range !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp10.not.i = icmp ult i32 %29, 2
  %or.cond.i = select i1 %cmp8.not.i, i1 %cmp10.not.i, i1 false
  br i1 %or.cond.i, label %if.end16.i, label %do.end14.i

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %pdev_dev15.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %30 = ptrtoint ptr %pdev_dev15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev_dev15.i, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.34, i32 noundef %16, i32 noundef %spec.store.select.i) #20
  br label %cleanup

if.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %tobool.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %tobool.not.i, label %if.end16.i.if.end26.i_crit_edge, label %cond.end23.i

if.end16.i.if.end26.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26.i

cond.end23.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  %32 = tail call i32 @llvm.ctlz.i32(i32 %spec.store.select.i, i1 true) #17, !range !139
  %sub25.i = sub nsw i32 19, %32
  %fl_pg_order.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 24
  %33 = ptrtoint ptr %fl_pg_order.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub25.i, ptr %fl_pg_order.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %cond.end23.i, %if.end16.i.if.end26.i_crit_edge
  %34 = ptrtoint ptr %pktshift to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pktshift, align 4
  %36 = ptrtoint ptr %fl_align to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fl_align, align 8
  %add2.i.i = add i32 %37, %35
  %add3.i.i = add i32 %add2.i.i, 1517
  %neg.i.i = sub i32 0, %37
  %and.i.i = and i32 %add3.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %and.i.i)
  %cmp28.i = icmp ult i32 %24, %and.i.i
  br i1 %cmp28.i, label %if.end26.i.do.end37.i_crit_edge, label %lor.lhs.false30.i

if.end26.i.do.end37.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end37.i

lor.lhs.false30.i:                                ; preds = %if.end26.i
  %add3.i159.i = add i32 %add2.i.i, 9017
  %and.i161.i = and i32 %add3.i159.i, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %and.i161.i)
  %cmp32.i = icmp ult i32 %28, %and.i161.i
  br i1 %cmp32.i, label %lor.lhs.false30.i.do.end37.i_crit_edge, label %if.end

lor.lhs.false30.i.do.end37.i_crit_edge:           ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end37.i

do.end37.i:                                       ; preds = %lor.lhs.false30.i.do.end37.i_crit_edge, %if.end26.i.do.end37.i_crit_edge
  %pdev_dev38.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %38 = ptrtoint ptr %pdev_dev38.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev_dev38.i, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.37, i32 noundef %24, i32 noundef %28) #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false30.i
  %40 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adap, align 128
  %add.ptr.i162.i = getelementptr i8, ptr %41, i32 4280
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162.i) #17, !srcloc !151
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !152
  %44 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adap, align 128
  %add.ptr.i163.i = getelementptr i8, ptr %45, i32 4284
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i163.i) #17, !srcloc !151
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !152
  %48 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adap, align 128
  %add.ptr.i164.i = getelementptr i8, ptr %49, i32 4288
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164.i) #17, !srcloc !151
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !152
  %shr.i = lshr i32 %43, 16
  %mul.i.i = mul nuw nsw i32 %shr.i, 1000
  %vpd.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 2
  %52 = ptrtoint ptr %vpd.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vpd.i.i, align 8
  %div6.i.i = lshr i32 %53, 1
  %add.i.i = add nuw i32 %div6.i.i, %mul.i.i
  %div4.i.i = udiv i32 %add.i.i, %53
  %conv45.i = trunc i32 %div4.i.i to i16
  %timer_val.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 20
  %54 = ptrtoint ptr %timer_val.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv45.i, ptr %timer_val.i, align 2
  %and47.i = and i32 %43, 65535
  %mul.i165.i = mul nuw nsw i32 %and47.i, 1000
  %add.i168.i = add nuw i32 %div6.i.i, %mul.i165.i
  %div4.i169.i = udiv i32 %add.i168.i, %53
  %conv49.i = trunc i32 %div4.i169.i to i16
  %arrayidx51.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 20, i32 1
  %55 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv49.i, ptr %arrayidx51.i, align 2
  %shr52.i = lshr i32 %47, 16
  %mul.i170.i = mul nuw nsw i32 %shr52.i, 1000
  %add.i173.i = add nuw i32 %div6.i.i, %mul.i170.i
  %div4.i174.i = udiv i32 %add.i173.i, %53
  %conv55.i = trunc i32 %div4.i174.i to i16
  %arrayidx57.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 20, i32 2
  %56 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv55.i, ptr %arrayidx57.i, align 2
  %and59.i = and i32 %47, 65535
  %mul.i175.i = mul nuw nsw i32 %and59.i, 1000
  %add.i178.i = add nuw i32 %div6.i.i, %mul.i175.i
  %div4.i179.i = udiv i32 %add.i178.i, %53
  %conv61.i = trunc i32 %div4.i179.i to i16
  %arrayidx63.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 20, i32 3
  %57 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv61.i, ptr %arrayidx63.i, align 2
  %shr64.i = lshr i32 %51, 16
  %mul.i180.i = mul nuw nsw i32 %shr64.i, 1000
  %add.i183.i = add nuw i32 %div6.i.i, %mul.i180.i
  %div4.i184.i = udiv i32 %add.i183.i, %53
  %conv67.i = trunc i32 %div4.i184.i to i16
  %arrayidx69.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 20, i32 4
  %58 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv67.i, ptr %arrayidx69.i, align 2
  %and71.i = and i32 %51, 65535
  %mul.i185.i = mul nuw nsw i32 %and71.i, 1000
  %add.i188.i = add nuw i32 %div6.i.i, %mul.i185.i
  %div4.i189.i = udiv i32 %add.i188.i, %53
  %conv73.i = trunc i32 %div4.i189.i to i16
  %arrayidx75.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 20, i32 5
  %59 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv73.i, ptr %arrayidx75.i, align 2
  %60 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adap, align 128
  %add.ptr.i190.i = getelementptr i8, ptr %61, i32 4256
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i190.i) #17, !srcloc !151
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !152
  %shr77.i = lshr i32 %63, 24
  %64 = trunc i32 %shr77.i to i8
  %conv79.i = and i8 %64, 63
  %counter_val.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 21
  %65 = ptrtoint ptr %counter_val.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv79.i, ptr %counter_val.i, align 2
  %shr81.i = lshr i32 %63, 16
  %66 = trunc i32 %shr81.i to i8
  %conv83.i = and i8 %66, 63
  %arrayidx85.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 21, i32 1
  %67 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv83.i, ptr %arrayidx85.i, align 1
  %shr86.i = lshr i32 %63, 8
  %68 = trunc i32 %shr86.i to i8
  %conv88.i = and i8 %68, 63
  %arrayidx90.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 21, i32 2
  %69 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv88.i, ptr %arrayidx90.i, align 2
  %70 = trunc i32 %63 to i8
  %conv93.i = and i8 %70, 63
  %arrayidx95.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 21, i32 3
  %71 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv93.i, ptr %arrayidx95.i, align 1
  %72 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adap, align 128
  %add.ptr.i52 = getelementptr i8, ptr %73, i32 4244
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #17, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !152
  %chip = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %75 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %chip, align 8
  %shr5 = lshr i32 %76, 4
  %and6 = and i32 %shr5, 15
  %switch.tableidx = add nsw i32 %and6, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %77 = icmp ult i32 %switch.tableidx, 3
  br i1 %77, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %78 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.8, i32 noundef %and6) #20
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %80 = tail call i32 @llvm.bswap.i32(i32 %74) #17
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.t4_sge_init, i32 0, i32 %switch.tableidx
  %81 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %81)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep56 = getelementptr inbounds [3 x i32], ptr @switch.table.t4_sge_init.39, i32 0, i32 %switch.tableidx
  %82 = ptrtoint ptr %switch.gep56 to i32
  call void @__asan_load4_noabort(i32 %82)
  %switch.load57 = load i32, ptr %switch.gep56, align 4
  %shr13 = lshr i32 %80, %switch.load
  %and14 = and i32 %shr13, %switch.load57
  %mul = shl nuw nsw i32 %and14, 1
  %add = or i32 %mul, 1
  %fl_starve_thres = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 28
  %83 = ptrtoint ptr %fl_starve_thres to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add, ptr %fl_starve_thres, align 4
  %idma_monitor = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 29
  tail call void @t4_idma_monitor_init(ptr noundef %adap, ptr noundef %idma_monitor) #17
  %rx_timer = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 39
  tail call void @init_timer_key(ptr noundef %rx_timer, ptr noundef nonnull @sge_rx_timer_cb, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @t4_sge_init.__key) #17
  %tx_timer = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 40
  tail call void @init_timer_key(ptr noundef %tx_timer, ptr noundef nonnull @sge_tx_timer_cb, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @t4_sge_init.__key.12) #17
  %intrq_lock = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %intrq_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @t4_sge_init.__key.14, i16 noundef signext 3) #17
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end, %do.end37.i, %do.end14.i, %do.end.i
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %switch.lookup ], [ -22, %do.end.i ], [ -22, %do.end14.i ], [ -22, %do.end37.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_fl_pkt_align(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_idma_monitor_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sge_rx_timer_cb(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -27576
  %egr_sz = getelementptr i8, ptr %t, i32 -32
  %0 = ptrtoint ptr %egr_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %egr_sz, align 8
  %sub49 = add i32 %1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub49)
  %cmp51.not = icmp ult i32 %sub49, 32
  br i1 %cmp51.not, label %entry.for.end20_crit_edge, label %for.body.lr.ph

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end20

for.body.lr.ph:                                   ; preds = %entry
  %starving_fl = getelementptr i8, ptr %t, i32 -12
  %egr_map = getelementptr i8, ptr %t, i32 -20
  %fl_starve_thres.i = getelementptr i8, ptr %t, i32 -76
  br label %for.body

for.body:                                         ; preds = %for.inc18.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc19, %for.inc18.for.body_crit_edge ]
  %2 = ptrtoint ptr %starving_fl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %starving_fl, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %i.052
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not47 = icmp eq i32 %5, 0
  br i1 %tobool.not47, label %for.body.for.inc18_crit_edge, label %for.body2.lr.ph

for.body.for.inc18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc18

for.body2.lr.ph:                                  ; preds = %for.body
  %mul = shl i32 %i.052, 5
  br label %for.body2

for.body2:                                        ; preds = %if.end16.for.body2_crit_edge, %for.body2.lr.ph
  %m.048 = phi i32 [ %5, %for.body2.lr.ph ], [ %and, %if.end16.for.body2_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %m.048, i1 true) #17, !range !139
  %add3 = or i32 %6, %mul
  %7 = ptrtoint ptr %egr_map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %egr_map, align 4
  %arrayidx4 = getelementptr ptr, ptr %8, i32 %add3
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx4, align 4
  %11 = ptrtoint ptr %starving_fl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %starving_fl, align 4
  tail call void @_clear_bit(i32 noundef %add3, ptr noundef %12) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !153
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  %pend_cred.i = getelementptr inbounds %struct.sge_fl, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %pend_cred.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pend_cred.i, align 4
  %sub.i = sub i32 %14, %16
  %17 = ptrtoint ptr %fl_starve_thres.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fl_starve_thres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %18)
  %cmp.i.not = icmp ugt i32 %sub.i, %18
  br i1 %cmp.i.not, label %for.body2.if.end16_crit_edge, label %if.then

for.body2.if.end16_crit_edge:                     ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then:                                          ; preds = %for.body2
  %add.ptr12 = getelementptr i8, ptr %10, i32 -360
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %add.ptr12) #17
  br i1 %call.i, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__napi_schedule(ptr noundef %add.ptr12) #17
  %starving = getelementptr inbounds %struct.sge_fl, ptr %10, i32 0, i32 8
  %19 = ptrtoint ptr %starving to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %starving, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %starving, align 4
  br label %if.end16

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %starving_fl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %starving_fl, align 4
  tail call void @_set_bit(i32 noundef %add3, ptr noundef %22) #17
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14, %for.body2.if.end16_crit_edge
  %sub17 = add i32 %m.048, -1
  %and = and i32 %sub17, %m.048
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end16.for.inc18_crit_edge, label %if.end16.for.body2_crit_edge

if.end16.for.body2_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body2

if.end16.for.inc18_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc18

for.inc18:                                        ; preds = %if.end16.for.inc18_crit_edge, %for.body.for.inc18_crit_edge
  %inc19 = add nuw nsw i32 %i.052, 1
  %23 = ptrtoint ptr %egr_sz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %egr_sz, align 8
  %sub = add i32 %24, 31
  %div46 = lshr i32 %sub, 5
  %cmp = icmp ult i32 %inc19, %div46
  br i1 %cmp, label %for.inc18.for.body_crit_edge, label %for.inc18.for.end20_crit_edge

for.inc18.for.end20_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end20

for.inc18.for.body_crit_edge:                     ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end20:                                        ; preds = %for.inc18.for.end20_crit_edge, %entry.for.end20_crit_edge
  %flags = getelementptr i8, ptr %t, i32 -27544
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 32
  %and21 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %for.end20.done_crit_edge, label %if.end24

for.end20.done_crit_edge:                         ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.end24:                                         ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #19
  %idma_monitor = getelementptr i8, ptr %t, i32 -72
  tail call void @t4_idma_monitor(ptr noundef %add.ptr, ptr noundef %idma_monitor, i32 noundef 100, i32 noundef 50) #17
  br label %done

done:                                             ; preds = %if.end24, %for.end20.done_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add25 = add i32 %27, 50
  %call26 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add25) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sge_tx_timer_cb(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -27624
  %sge = getelementptr i8, ptr %t, i32 -26856
  %egr_sz = getelementptr i8, ptr %t, i32 -80
  %0 = ptrtoint ptr %egr_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %egr_sz, align 8
  %sub87 = add i32 %1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub87)
  %cmp89.not = icmp ult i32 %sub87, 32
  br i1 %cmp89.not, label %entry.for.end8_crit_edge, label %for.body.lr.ph

entry.for.end8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end8

for.body.lr.ph:                                   ; preds = %entry
  %txq_maperr = getelementptr i8, ptr %t, i32 -56
  %egr_map = getelementptr i8, ptr %t, i32 -68
  br label %for.body

for.body:                                         ; preds = %for.inc7.for.body_crit_edge, %for.body.lr.ph
  %i.090 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc7.for.body_crit_edge ]
  %2 = ptrtoint ptr %txq_maperr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txq_maperr, align 16
  %arrayidx = getelementptr i32, ptr %3, i32 %i.090
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not85 = icmp eq i32 %5, 0
  br i1 %tobool.not85, label %for.body.for.inc7_crit_edge, label %for.body2.lr.ph

for.body.for.inc7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc7

for.body2.lr.ph:                                  ; preds = %for.body
  %mul = shl i32 %i.090, 5
  br label %for.body2

for.body2:                                        ; preds = %tasklet_schedule.exit.for.body2_crit_edge, %for.body2.lr.ph
  %m.086 = phi i32 [ %5, %for.body2.lr.ph ], [ %and, %tasklet_schedule.exit.for.body2_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %m.086, i1 true) #17, !range !139
  %add3 = or i32 %6, %mul
  %7 = ptrtoint ptr %egr_map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %egr_map, align 4
  %arrayidx4 = getelementptr ptr, ptr %8, i32 %add3
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx4, align 4
  %11 = ptrtoint ptr %txq_maperr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %txq_maperr, align 16
  tail call void @_clear_bit(i32 noundef %add3, ptr noundef %12) #17
  %state.i = getelementptr inbounds %struct.sge_uld_txq, ptr %10, i32 0, i32 3, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body2.tasklet_schedule.exit_crit_edge

for.body2.tasklet_schedule.exit_crit_edge:        ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #19
  %qresume_tsk = getelementptr inbounds %struct.sge_uld_txq, ptr %10, i32 0, i32 3
  tail call void @__tasklet_schedule(ptr noundef %qresume_tsk) #17
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %for.body2.tasklet_schedule.exit_crit_edge
  %sub6 = add i32 %m.086, -1
  %and = and i32 %sub6, %m.086
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %tasklet_schedule.exit.for.inc7_crit_edge, label %tasklet_schedule.exit.for.body2_crit_edge

tasklet_schedule.exit.for.body2_crit_edge:        ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body2

tasklet_schedule.exit.for.inc7_crit_edge:         ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc7

for.inc7:                                         ; preds = %tasklet_schedule.exit.for.inc7_crit_edge, %for.body.for.inc7_crit_edge
  %inc = add nuw nsw i32 %i.090, 1
  %13 = ptrtoint ptr %egr_sz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %egr_sz, align 8
  %sub = add i32 %14, 31
  %div77 = lshr i32 %sub, 5
  %cmp = icmp ult i32 %inc, %div77
  br i1 %cmp, label %for.inc7.for.body_crit_edge, label %for.inc7.for.end8_crit_edge

for.inc7.for.end8_crit_edge:                      ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end8

for.inc7.for.body_crit_edge:                      ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end8:                                         ; preds = %for.inc7.for.end8_crit_edge, %entry.for.end8_crit_edge
  %chip = getelementptr i8, ptr %t, i32 -27120
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chip, align 8
  %17 = and i32 %16, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %17)
  %cmp.i.not = icmp eq i32 %17, 64
  br i1 %cmp.i.not, label %for.end8.if.end19_crit_edge, label %if.then

for.end8.if.end19_crit_edge:                      ; preds = %for.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then:                                          ; preds = %for.end8
  %ptptxq = getelementptr i8, ptr %t, i32 -18664
  %ptp_lock = getelementptr i8, ptr %t, i32 1296
  tail call void @_raw_spin_lock(ptr noundef %ptp_lock) #17
  %stat.i = getelementptr i8, ptr %t, i32 -18624
  %18 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stat.i, align 4
  %cidx.i = getelementptr inbounds %struct.sge_qstat, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load volatile i16, ptr %cidx.i, align 4
  %conv.i78 = zext i16 %21 to i32
  %cidx1.i = getelementptr i8, ptr %t, i32 -18652
  %22 = ptrtoint ptr %cidx1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cidx1.i, align 4
  %sub.i = sub i32 %conv.i78, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i79 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i79, label %cond.true.i, label %if.then.reclaimable.exit_crit_edge

if.then.reclaimable.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %reclaimable.exit

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %size.i = getelementptr i8, ptr %t, i32 -18656
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  %add.i = add i32 %25, %sub.i
  br label %reclaimable.exit

reclaimable.exit:                                 ; preds = %cond.true.i, %if.then.reclaimable.exit_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.true.i ], [ %sub.i, %if.then.reclaimable.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool13.not = icmp eq i32 %cond.i, 0
  br i1 %tobool13.not, label %reclaimable.exit.if.end_crit_edge, label %while.body.lr.ph.i

reclaimable.exit.if.end_crit_edge:                ; preds = %reclaimable.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

while.body.lr.ph.i:                               ; preds = %reclaimable.exit
  %sdesc.i = getelementptr i8, ptr %t, i32 -18628
  %26 = ptrtoint ptr %sdesc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdesc.i, align 4
  %arrayidx.i = getelementptr %struct.tx_sw_desc, ptr %27, i32 %23
  %size.i81 = getelementptr i8, ptr %t, i32 -18656
  br label %while.body.i

while.body.i:                                     ; preds = %if.end16.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec36.in.i = phi i32 [ %cond.i, %while.body.lr.ph.i ], [ %dec36.i, %if.end16.i.while.body.i_crit_edge ]
  %d.034.i = phi ptr [ %arrayidx.i, %while.body.lr.ph.i ], [ %d.1.i, %if.end16.i.while.body.i_crit_edge ]
  %cidx.033.i = phi i32 [ %23, %while.body.lr.ph.i ], [ %cidx.1.i, %if.end16.i.while.body.i_crit_edge ]
  %dec36.i = add i32 %dec36.in.i, -1
  %28 = ptrtoint ptr %d.034.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d.034.i, align 4
  %tobool2.not.i = icmp eq ptr %29, null
  br i1 %tobool2.not.i, label %while.body.i.if.end13.i_crit_edge, label %if.then.i82

while.body.i.if.end13.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i

if.then.i82:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %29, i32 noundef 0) #17
  %30 = ptrtoint ptr %d.034.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %d.034.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then.i82, %while.body.i.if.end13.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.tx_sw_desc, ptr %d.034.i, i32 1
  %inc.i = add i32 %cidx.033.i, 1
  %31 = ptrtoint ptr %size.i81 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %32)
  %cmp.i83 = icmp eq i32 %inc.i, %32
  br i1 %cmp.i83, label %if.then14.i, label %if.end13.i.if.end16.i_crit_edge

if.end13.i.if.end16.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %sdesc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sdesc.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end13.i.if.end16.i_crit_edge
  %cidx.1.i = phi i32 [ 0, %if.then14.i ], [ %inc.i, %if.end13.i.if.end16.i_crit_edge ]
  %d.1.i = phi ptr [ %34, %if.then14.i ], [ %incdec.ptr.i, %if.end13.i.if.end16.i_crit_edge ]
  %tobool.not.i84 = icmp eq i32 %dec36.i, 0
  br i1 %tobool.not.i84, label %free_tx_desc.exit, label %if.end16.i.while.body.i_crit_edge

if.end16.i.while.body.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

free_tx_desc.exit:                                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  %35 = ptrtoint ptr %cidx1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cidx.1.i, ptr %cidx1.i, align 4
  %36 = ptrtoint ptr %ptptxq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ptptxq, align 128
  %sub17 = sub i32 %37, %cond.i
  store i32 %sub17, ptr %ptptxq, align 128
  br label %if.end

if.end:                                           ; preds = %free_tx_desc.exit, %reclaimable.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ptp_lock) #17
  br label %if.end19

if.end19:                                         ; preds = %if.end, %for.end8.if.end19_crit_edge
  %ethtxq_rover = getelementptr i8, ptr %t, i32 -184
  %38 = ptrtoint ptr %ethtxq_rover to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ethtxq_rover, align 16
  %conv = zext i16 %39 to i32
  %ethqsets = getelementptr i8, ptr %t, i32 -186
  br label %do.body

do.body:                                          ; preds = %if.end25.do.body_crit_edge, %if.end19
  %i.1 = phi i32 [ %conv, %if.end19 ], [ %spec.store.select, %if.end25.do.body_crit_edge ]
  %budget.0 = phi i32 [ 100, %if.end19 ], [ %sub22, %if.end25.do.body_crit_edge ]
  %arrayidx20 = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %i.1
  %call21 = tail call i32 @t4_sge_eth_txq_egress_update(ptr noundef %add.ptr, ptr noundef %arrayidx20, i32 noundef %budget.0)
  %sub22 = sub i32 %budget.0, %call21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub22)
  %tobool23.not = icmp eq i32 %sub22, 0
  br i1 %tobool23.not, label %do.body.do.end_crit_edge, label %if.end25

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end25:                                         ; preds = %do.body
  %inc26 = add i32 %i.1, 1
  %40 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ethqsets, align 2
  %conv27 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc26, i32 %conv27)
  %cmp28.not = icmp ult i32 %inc26, %conv27
  %spec.store.select = select i1 %cmp28.not, i32 %inc26, i32 0
  %42 = ptrtoint ptr %ethtxq_rover to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ethtxq_rover, align 16
  %conv33 = zext i16 %43 to i32
  %cmp34.not = icmp eq i32 %spec.store.select, %conv33
  br i1 %cmp34.not, label %if.end25.do.end_crit_edge, label %if.end25.do.body_crit_edge

if.end25.do.body_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

if.end25.do.end_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %if.end25.do.end_crit_edge, %do.body.do.end_crit_edge
  %. = phi i32 [ 2, %do.body.do.end_crit_edge ], [ 50, %if.end25.do.end_crit_edge ]
  %i.2 = phi i32 [ %i.1, %do.body.do.end_crit_edge ], [ %spec.store.select, %if.end25.do.end_crit_edge ]
  %conv36 = trunc i32 %i.2 to i16
  %44 = ptrtoint ptr %ethtxq_rover to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv36, ptr %ethtxq_rover, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add42 = add i32 %45, %.
  %call43 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add42) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i64 @hwcsum(i32 noundef %chip, ptr noundef readonly %skb) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %encapsulation, align 8
  %1 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp ne i16 %1, 0
  %2 = and i32 %chip, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %2)
  %cmp = icmp ugt i32 %2, 80
  %or.cond = and i1 %cmp, %tobool.not
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  br i1 %or.cond, label %if.then3, label %if.else

if.then3:                                         ; preds = %entry
  %inner_network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %5 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %inner_network_header.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load4 = load i8, ptr %add.ptr.i.i, align 4
  %bf.lshr5 = lshr i8 %bf.load4, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.lshr5)
  %cmp8 = icmp eq i8 %bf.lshr5, 4
  br i1 %cmp8, label %if.then3.if.end33.thread_crit_edge, label %if.then3.if.end33_crit_edge

if.then3.if.end33_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

if.then3.if.end33.thread_crit_edge:               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.thread

if.else:                                          ; preds = %entry
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i144 = zext i16 %9 to i32
  %add.ptr.i.i145 = getelementptr i8, ptr %4, i32 %conv.i.i144
  %10 = ptrtoint ptr %add.ptr.i.i145 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load16 = load i8, ptr %add.ptr.i.i145, align 4
  %bf.lshr17 = lshr i8 %bf.load16, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.lshr17)
  %cmp20 = icmp eq i8 %bf.lshr17, 4
  br i1 %cmp20, label %if.else.if.end33.thread_crit_edge, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

if.else.if.end33.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.thread

if.end33.thread:                                  ; preds = %if.else.if.end33.thread_crit_edge, %if.then3.if.end33.thread_crit_edge
  %11 = phi i32 [ %conv.i.i, %if.then3.if.end33.thread_crit_edge ], [ %conv.i.i144, %if.else.if.end33.thread_crit_edge ]
  %12 = getelementptr i8, ptr %4, i32 %11
  %proto.0.in.in.ph = getelementptr inbounds %struct.iphdr, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %proto.0.in.in.ph to i32
  call void @__asan_load1_noabort(i32 %13)
  %proto.0.in171 = load i8, ptr %proto.0.in.in.ph, align 1
  br label %if.then37

if.end33:                                         ; preds = %if.else.if.end33_crit_edge, %if.then3.if.end33_crit_edge
  %14 = phi i32 [ %conv.i.i, %if.then3.if.end33_crit_edge ], [ %conv.i.i144, %if.else.if.end33_crit_edge ]
  %ver.0.in = phi i8 [ %bf.lshr5, %if.then3.if.end33_crit_edge ], [ %bf.lshr17, %if.else.if.end33_crit_edge ]
  %15 = getelementptr i8, ptr %4, i32 %14
  %proto.0.in.in = getelementptr inbounds %struct.ipv6hdr, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %proto.0.in.in to i32
  call void @__asan_load1_noabort(i32 %16)
  %proto.0.in = load i8, ptr %proto.0.in.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %ver.0.in)
  %cmp35 = icmp eq i8 %ver.0.in, 4
  br i1 %cmp35, label %if.end33.if.then37_crit_edge, label %if.else50

if.end33.if.then37_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then37

if.then37:                                        ; preds = %if.end33.if.then37_crit_edge, %if.end33.thread
  %proto.0.in173 = phi i8 [ %proto.0.in171, %if.end33.thread ], [ %proto.0.in, %if.end33.if.then37_crit_edge ]
  %17 = zext i8 %proto.0.in173 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %proto.0.in173, label %if.then37.cleanup_crit_edge [
    i8 6, label %if.then37.if.then68_crit_edge
    i8 17, label %if.then46
  ]

if.then37.if.then68_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then68

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then46:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then68

if.else50:                                        ; preds = %if.end33
  %18 = zext i8 %proto.0.in to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %proto.0.in, label %if.else50.cleanup_crit_edge [
    i8 6, label %if.else50.if.then68_crit_edge
    i8 17, label %if.then59
  ]

if.else50.if.then68_crit_edge:                    ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then68

if.else50.cleanup_crit_edge:                      ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then59:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then68

if.then68:                                        ; preds = %if.then59, %if.else50.if.then68_crit_edge, %if.then46, %if.then37.if.then68_crit_edge
  %csum_type.0 = phi i32 [ 9, %if.then46 ], [ 11, %if.then59 ], [ 8, %if.then37.if.then68_crit_edge ], [ 10, %if.else50.if.then68_crit_edge ]
  br i1 %or.cond, label %if.then70, label %if.else73

if.then70:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #19
  %inner_transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %19 = ptrtoint ptr %inner_transport_header.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %inner_transport_header.i, align 2
  %conv.i = zext i16 %20 to i32
  %inner_network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %21 = ptrtoint ptr %inner_network_header.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %inner_network_header.i, align 4
  %conv1.i = zext i16 %22 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  br label %if.end77

if.else73:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #19
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %23 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %transport_header.i, align 2
  %conv.i158 = zext i16 %24 to i32
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %25 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %network_header.i, align 4
  %conv1.i159 = zext i16 %26 to i32
  %sub.i160 = sub nsw i32 %conv.i158, %conv1.i159
  br label %if.end77

if.end77:                                         ; preds = %if.else73, %if.then70
  %conv1.i159.sink = phi i32 [ %conv1.i159, %if.else73 ], [ %conv1.i, %if.then70 ]
  %l4_len.0 = phi i32 [ %sub.i160, %if.else73 ], [ %sub.i, %if.then70 ]
  %head.i.i161 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %27 = ptrtoint ptr %head.i.i161 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i161, align 8
  %add.ptr.i.i164 = getelementptr i8, ptr %28, i32 %conv1.i159.sink
  %data.i165 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data.i165 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i165, align 4
  %sub.ptr.lhs.cast.i166 = ptrtoint ptr %add.ptr.i.i164 to i32
  %sub.ptr.rhs.cast.i167 = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i168 = sub i32 %sub.ptr.lhs.cast.i166, %sub.ptr.rhs.cast.i167
  %eth_hdr_len.0 = add i32 %sub.ptr.sub.i168, -14
  %conv78 = sext i32 %l4_len.0 to i64
  %shl = shl nsw i64 %conv78, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %2)
  %cmp81 = icmp ult i32 %2, 96
  %. = select i1 %cmp81, i64 34, i64 32
  %conv87133 = zext i32 %eth_hdr_len.0 to i64
  %shl88 = shl i64 %conv87133, %.
  %31 = zext i32 %csum_type.0 to i64
  %shl92 = shl nuw nsw i64 %31, 40
  %hdr_len.0 = or i64 %shl, %shl92
  %or93 = or i64 %hdr_len.0, %shl88
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.else50.cleanup_crit_edge, %if.then37.cleanup_crit_edge
  %retval.0 = phi i64 [ %or93, %if.end77 ], [ -9223372036854775808, %if.then37.cleanup_crit_edge ], [ -9223372036854775808, %if.else50.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @write_tso_wr(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %skb, ptr noundef writeonly %lso) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 -14, %sub.ptr.rhs.cast.i
  %sub = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %7 to i32
  %sub.i = sub nsw i32 %conv.i, %conv.i.i
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gso_type, align 8
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 -306184192, i32 -305135616
  %div = sdiv i32 %sub, 4
  %shl4 = shl i32 %div, 16
  %div6 = sdiv i32 %sub.i, 4
  %shl7 = shl nsw i32 %div6, 4
  %add.ptr.i.i35 = getelementptr i8, ptr %1, i32 %conv.i
  %doff = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i35, i32 0, i32 4
  %12 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %doff, align 4
  %bf.lshr = lshr i16 %bf.load, 12
  %conv10 = zext i16 %bf.lshr to i32
  %or5 = or i32 %shl7, %shl4
  %or8 = or i32 %or5, %spec.select
  %or12 = or i32 %or8, %conv10
  %13 = ptrtoint ptr %lso to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or12, ptr %lso, align 4
  %ipid_ofst = getelementptr inbounds %struct.cpl_tx_pkt_lso_core, ptr %lso, i32 0, i32 1
  %14 = ptrtoint ptr %ipid_ofst to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %ipid_ofst, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 4
  %15 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %gso_size, align 4
  %mss = getelementptr inbounds %struct.cpl_tx_pkt_lso_core, ptr %lso, i32 0, i32 2
  %17 = ptrtoint ptr %mss to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %mss, align 2
  %seqno_offset = getelementptr inbounds %struct.cpl_tx_pkt_lso_core, ptr %lso, i32 0, i32 3
  %18 = ptrtoint ptr %seqno_offset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %seqno_offset, align 4
  %.sink.in = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %.sink = load i32, ptr %.sink.in, align 4
  %20 = getelementptr inbounds %struct.cpl_tx_pkt_lso_core, ptr %lso, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %20, align 4
  %add.ptr = getelementptr %struct.cpl_tx_pkt_lso_core, ptr %lso, i32 1
  ret ptr %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tls_validate_xmit_skb(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cxgb_fcoe_sof_eof_supported(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @ctrlq_check_stop(ptr nocapture noundef %q, ptr nocapture noundef %wr) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %stat.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stat.i, align 4
  %cidx.i = getelementptr inbounds %struct.sge_qstat, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load volatile i16, ptr %cidx.i, align 4
  %conv.i = zext i16 %3 to i32
  %cidx1.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 3
  %4 = ptrtoint ptr %cidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cidx1.i, align 4
  %sub.i = sub i32 %conv.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.reclaim_completed_tx_imm.exit_crit_edge

entry.reclaim_completed_tx_imm.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %reclaim_completed_tx_imm.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %size.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 2
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %add.i = add i32 %7, %sub.i
  br label %reclaim_completed_tx_imm.exit

reclaim_completed_tx_imm.exit:                    ; preds = %if.then.i, %entry.reclaim_completed_tx_imm.exit_crit_edge
  %reclaim.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub.i, %entry.reclaim_completed_tx_imm.exit_crit_edge ]
  %8 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q, align 4
  %sub3.i = sub i32 %9, %reclaim.0.i
  store i32 %sub3.i, ptr %q, align 4
  %10 = ptrtoint ptr %cidx1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i, ptr %cidx1.i, align 4
  %size.i8 = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 2
  %11 = ptrtoint ptr %size.i8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i8, align 4
  %13 = xor i32 %sub3.i, -1
  %sub1.i = add i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub1.i)
  %cmp = icmp ult i32 %sub1.i, 8
  br i1 %cmp, label %if.then, label %reclaim_completed_tx_imm.exit.if.end_crit_edge, !prof !113

reclaim_completed_tx_imm.exit.if.end_crit_edge:   ; preds = %reclaim_completed_tx_imm.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %reclaim_completed_tx_imm.exit
  call void @__sanitizer_cov_trace_pc() #19
  %lo = getelementptr inbounds %struct.fw_wr_hdr, ptr %wr, i32 0, i32 1
  %14 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lo, align 4
  %or = or i32 %15, -1073741824
  store i32 %or, ptr %lo, align 4
  %stops = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 5
  %16 = ptrtoint ptr %stops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stops, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %stops, align 4
  %full = getelementptr inbounds %struct.sge_ctrl_txq, ptr %q, i32 0, i32 4
  %18 = ptrtoint ptr %full to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %full, align 64
  br label %if.end

if.end:                                           ; preds = %if.then, %reclaim_completed_tx_imm.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @service_ofldq(ptr noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %service_ofldq_running = getelementptr inbounds %struct.sge_uld_txq, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %service_ofldq_running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %service_ofldq_running, align 64, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %service_ofldq_running to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %service_ofldq_running, align 64
  %sendq = getelementptr inbounds %struct.sge_uld_txq, ptr %q, i32 0, i32 2
  %3 = ptrtoint ptr %sendq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sendq, align 4
  %cmp.i250 = icmp eq ptr %4, %sendq
  %cmp.not241251 = icmp eq ptr %4, null
  %cmp.not252 = or i1 %cmp.i250, %cmp.not241251
  br i1 %cmp.not252, label %if.end.if.end111_crit_edge, label %land.rhs.lr.ph

if.end.if.end111_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end111

land.rhs.lr.ph:                                   ; preds = %if.end
  %full = getelementptr inbounds %struct.sge_uld_txq, ptr %q, i32 0, i32 5
  %lock = getelementptr inbounds %struct.sge_uld_txq, ptr %q, i32 0, i32 2, i32 2
  %adap = getelementptr inbounds %struct.sge_uld_txq, ptr %q, i32 0, i32 1
  %stat.i.i.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 10
  %cidx1.i.i.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 3
  %size.i.i.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 2
  %sdesc.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 9
  %stops.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 5
  %desc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 8
  %pidx = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 4
  %qlen.i = getelementptr inbounds %struct.sge_uld_txq, ptr %q, i32 0, i32 2, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end100.land.rhs_crit_edge, %land.rhs.lr.ph
  %5 = phi ptr [ %4, %land.rhs.lr.ph ], [ %156, %if.end100.land.rhs_crit_edge ]
  %written.0253 = phi i32 [ 0, %land.rhs.lr.ph ], [ %written.1, %if.end100.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %full to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %full, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %land.rhs
  tail call void @_raw_spin_unlock(ptr noundef %lock) #17
  %8 = ptrtoint ptr %stat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stat.i.i.i, align 4
  %cidx.i.i.i = getelementptr inbounds %struct.sge_qstat, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %cidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load volatile i16, ptr %cidx.i.i.i, align 4
  %conv.i.i.i = zext i16 %11 to i32
  %12 = ptrtoint ptr %cidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cidx1.i.i.i, align 4
  %sub.i.i.i = sub i32 %conv.i.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %cond.true.i.i.i, label %while.body.reclaimable.exit.i.i_crit_edge

while.body.reclaimable.exit.i.i_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %reclaimable.exit.i.i

cond.true.i.i.i:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i.i.i, align 4
  %add.i.i.i = add i32 %15, %sub.i.i.i
  br label %reclaimable.exit.i.i

reclaimable.exit.i.i:                             ; preds = %cond.true.i.i.i, %while.body.reclaimable.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %add.i.i.i, %cond.true.i.i.i ], [ %sub.i.i.i, %while.body.reclaimable.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i.i)
  %tobool.not.i.i = icmp eq i32 %cond.i.i.i, 0
  br i1 %tobool.not.i.i, label %reclaimable.exit.i.i.cxgb4_reclaim_completed_tx.exit_crit_edge, label %if.then.i.i

reclaimable.exit.i.i.cxgb4_reclaim_completed_tx.exit_crit_edge: ; preds = %reclaimable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cxgb4_reclaim_completed_tx.exit

if.then.i.i:                                      ; preds = %reclaimable.exit.i.i
  %16 = tail call i32 @llvm.smin.i32(i32 %cond.i.i.i, i32 32) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not32.i = icmp eq i32 %16, 0
  br i1 %tobool.not32.i, label %if.then.i.i.free_tx_desc.exit_crit_edge, label %while.body.lr.ph.i

if.then.i.i.free_tx_desc.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_tx_desc.exit

while.body.lr.ph.i:                               ; preds = %if.then.i.i
  %17 = ptrtoint ptr %sdesc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdesc.i, align 4
  %arrayidx.i = getelementptr %struct.tx_sw_desc, ptr %18, i32 %13
  br label %while.body.i

while.body.i:                                     ; preds = %if.end16.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec36.in.i = phi i32 [ %16, %while.body.lr.ph.i ], [ %dec36.i, %if.end16.i.while.body.i_crit_edge ]
  %d.034.i = phi ptr [ %arrayidx.i, %while.body.lr.ph.i ], [ %d.1.i, %if.end16.i.while.body.i_crit_edge ]
  %cidx.033.i = phi i32 [ %13, %while.body.lr.ph.i ], [ %cidx.1.i, %if.end16.i.while.body.i_crit_edge ]
  %dec36.i = add i32 %dec36.in.i, -1
  %19 = ptrtoint ptr %d.034.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d.034.i, align 4
  %tobool2.not.i236 = icmp eq ptr %20, null
  br i1 %tobool2.not.i236, label %while.body.i.if.end13.i_crit_edge, label %if.then.i237

while.body.i.if.end13.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i

if.then.i237:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %20, i32 noundef 0) #17
  %21 = ptrtoint ptr %d.034.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %d.034.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then.i237, %while.body.i.if.end13.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.tx_sw_desc, ptr %d.034.i, i32 1
  %inc.i239 = add i32 %cidx.033.i, 1
  %22 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i239, i32 %23)
  %cmp.i240 = icmp eq i32 %inc.i239, %23
  br i1 %cmp.i240, label %if.then14.i, label %if.end13.i.if.end16.i_crit_edge

if.end13.i.if.end16.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  %24 = ptrtoint ptr %sdesc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdesc.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end13.i.if.end16.i_crit_edge
  %cidx.1.i = phi i32 [ 0, %if.then14.i ], [ %inc.i239, %if.end13.i.if.end16.i_crit_edge ]
  %d.1.i = phi ptr [ %25, %if.then14.i ], [ %incdec.ptr.i, %if.end13.i.if.end16.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %dec36.i, 0
  br i1 %tobool.not.i, label %if.end16.i.free_tx_desc.exit_crit_edge, label %if.end16.i.while.body.i_crit_edge

if.end16.i.while.body.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

if.end16.i.free_tx_desc.exit_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_tx_desc.exit

free_tx_desc.exit:                                ; preds = %if.end16.i.free_tx_desc.exit_crit_edge, %if.then.i.i.free_tx_desc.exit_crit_edge
  %cidx.0.lcssa.i = phi i32 [ %13, %if.then.i.i.free_tx_desc.exit_crit_edge ], [ %cidx.1.i, %if.end16.i.free_tx_desc.exit_crit_edge ]
  %26 = ptrtoint ptr %cidx1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cidx.0.lcssa.i, ptr %cidx1.i.i.i, align 4
  %27 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %q, align 4
  %sub.i.i = sub i32 %28, %16
  store i32 %sub.i.i, ptr %q, align 4
  br label %cxgb4_reclaim_completed_tx.exit

cxgb4_reclaim_completed_tx.exit:                  ; preds = %free_tx_desc.exit, %reclaimable.exit.i.i.cxgb4_reclaim_completed_tx.exit_crit_edge
  %priority = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 6
  %29 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %30)
  %cmp.i194 = icmp ugt i32 %30, 64
  br i1 %cmp.i194, label %do.body2.i, label %flits_to_desc.exit, !prof !113

do.body2.i:                                       ; preds = %cxgb4_reclaim_completed_tx.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 718, 0\0A.popsection", ""() #17, !srcloc !122
  unreachable

flits_to_desc.exit:                               ; preds = %cxgb4_reclaim_completed_tx.exit
  %sub.i = add nuw nsw i32 %30, 7
  %div7.i = lshr i32 %sub.i, 3
  %31 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i.i.i, align 4
  %33 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %q, align 4
  %35 = xor i32 %34, -1
  %sub1.i = sub i32 %32, %div7.i
  %sub = add i32 %sub1.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp8 = icmp slt i32 %sub, 0
  br i1 %cmp8, label %do.body13, label %do.end19, !prof !113

do.body13:                                        ; preds = %flits_to_desc.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2984, 0\0A.popsection", ""() #17, !srcloc !154
  unreachable

do.end19:                                         ; preds = %flits_to_desc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp20 = icmp ult i32 %sub, 8
  br i1 %cmp20, label %if.then27, label %do.end19.if.end28_crit_edge, !prof !113

do.end19.if.end28_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

if.then27:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #19
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %lo.i = getelementptr inbounds %struct.fw_wr_hdr, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %lo.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lo.i, align 4
  %or.i = or i32 %39, -1073741824
  store i32 %or.i, ptr %lo.i, align 4
  %40 = ptrtoint ptr %stops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stops.i, align 4
  %inc.i = add i32 %41, 1
  store i32 %inc.i, ptr %stops.i, align 4
  %42 = ptrtoint ptr %full to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %full, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %do.end19.if.end28_crit_edge
  %43 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %desc, align 32
  %45 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pidx, align 16
  %arrayidx = getelementptr %struct.tx_desc, ptr %44, i32 %46
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %shr.i = lshr i32 %50, 24
  %trunc.i = trunc i32 %shr.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %trunc.i)
  %switch.selectcmp.i = icmp eq i8 %trunc.i, 109
  %switch.select.i = select i1 %switch.selectcmp.i, i32 513, i32 272
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %trunc.i)
  %switch.selectcmp19.i = icmp eq i8 %trunc.i, 4
  %switch.select20.i = select i1 %switch.selectcmp19.i, i32 305, i32 %switch.select.i
  %len10.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %51 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %switch.select20.i)
  %cmp11.i.not = icmp ult i32 %52, %switch.select20.i
  br i1 %cmp11.i.not, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end28
  %53 = ptrtoint ptr %stat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stat.i.i.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %arrayidx to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %sub.ptr.sub.i)
  %cmp.not.i = icmp ugt i32 %52, %sub.ptr.sub.i
  br i1 %cmp.not.i, label %if.else15.i, label %if.then.i, !prof !113

if.then.i:                                        ; preds = %if.then33
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 7
  %55 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool2.not.i = icmp eq i32 %56, 0
  br i1 %tobool2.not.i, label %if.then11.i, label %if.else.i, !prof !112

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %57 = call ptr @memcpy(ptr %arrayidx, ptr %48, i32 %52)
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i32 @skb_copy_bits(ptr noundef %5, i32 noundef 0, ptr noundef %arrayidx, i32 noundef %52) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then11.i
  %58 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len10.i, align 4
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 %59
  br label %if.end23.i

if.else15.i:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #19
  %call16.i = tail call i32 @skb_copy_bits(ptr noundef %5, i32 noundef 0, ptr noundef %arrayidx, i32 noundef %sub.ptr.sub.i) #17
  %60 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %desc, align 4
  %62 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len10.i, align 4
  %sub.i195 = sub i32 %63, %sub.ptr.sub.i
  %call18.i = tail call i32 @skb_copy_bits(ptr noundef %5, i32 noundef %sub.ptr.sub.i, ptr noundef %61, i32 noundef %sub.i195) #17
  %64 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %desc, align 4
  %66 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len10.i, align 4
  %sub21.i = sub i32 %67, %sub.ptr.sub.i
  %add.ptr22.i = getelementptr i8, ptr %65, i32 %sub21.i
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else15.i, %if.end.i
  %pos.addr.0.i = phi ptr [ %add.ptr.i, %if.end.i ], [ %add.ptr22.i, %if.else15.i ]
  %68 = ptrtoint ptr %pos.addr.0.i to i32
  %add.i = add i32 %68, 7
  %and24.i = and i32 %add.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end80_crit_edge, label %if.then26.i

if.end23.i.if.end80_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end80

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  %and.i = and i32 %add.i, -8
  %69 = inttoptr i32 %and.i to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 0, ptr %69, align 8
  br label %if.end80

if.else:                                          ; preds = %if.end28
  %71 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adap, align 4
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev_dev, align 16
  %head = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 18
  %75 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head, align 8
  %call36 = tail call i32 @cxgb4_map_skb(ptr noundef %74, ptr noundef nonnull %5, ptr noundef %76)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.else41, label %if.then38

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %mapping_err.i = getelementptr inbounds %struct.sge_uld_txq, ptr %q, i32 0, i32 6
  %77 = ptrtoint ptr %mapping_err.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mapping_err.i, align 4
  %inc.i196 = add i32 %78, 1
  store i32 %inc.i196, ptr %mapping_err.i, align 4
  %79 = ptrtoint ptr %stops.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %stops.i, align 4
  %inc2.i = add i32 %80, 1
  store i32 %inc2.i, ptr %stops.i, align 4
  %cntxt_id.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 7
  %81 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cntxt_id.i, align 4
  %83 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adap, align 4
  %egr_start.i = getelementptr inbounds %struct.adapter, ptr %84, i32 0, i32 22, i32 30
  %85 = ptrtoint ptr %egr_start.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %egr_start.i, align 4
  %sub.i198 = sub i32 %82, %86
  %txq_maperr.i = getelementptr inbounds %struct.adapter, ptr %84, i32 0, i32 22, i32 37
  %87 = ptrtoint ptr %txq_maperr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %txq_maperr.i, align 16
  tail call void @_set_bit(i32 noundef %sub.i198, ptr noundef %88) #17
  tail call void @_raw_spin_lock(ptr noundef %lock) #17
  br label %while.end

if.else41:                                        ; preds = %if.else
  %89 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %head, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 19
  %91 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %92 to i32
  %add.ptr.i.i = getelementptr i8, ptr %90, i32 %conv.i.i
  %93 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i200 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i201 = ptrtoint ptr %94 to i32
  %sub.ptr.sub.i202 = sub i32 %sub.ptr.lhs.cast.i200, %sub.ptr.rhs.cast.i201
  %add.ptr = getelementptr i64, ptr %arrayidx, i32 %30
  %95 = ptrtoint ptr %stat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %stat.i.i.i, align 4
  %sub.ptr.lhs.cast.i204 = ptrtoint ptr %96 to i32
  %sub.ptr.rhs.cast.i205 = ptrtoint ptr %arrayidx to i32
  %sub.ptr.sub.i206 = sub i32 %sub.ptr.lhs.cast.i204, %sub.ptr.rhs.cast.i205
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i202, i32 %sub.ptr.sub.i206)
  %cmp.not.i207 = icmp sgt i32 %sub.ptr.sub.i202, %sub.ptr.sub.i206
  br i1 %cmp.not.i207, label %if.else.i212, label %if.then.i209, !prof !113

if.then.i209:                                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #19
  %97 = call ptr @memcpy(ptr %arrayidx, ptr %94, i32 %sub.ptr.sub.i202)
  %add.ptr.i208 = getelementptr i8, ptr %arrayidx, i32 %sub.ptr.sub.i202
  br label %if.end.i216

if.else.i212:                                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #19
  %98 = call ptr @memcpy(ptr %arrayidx, ptr %94, i32 %sub.ptr.sub.i206)
  %99 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %desc, align 4
  %101 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %102, i32 %sub.ptr.sub.i206
  %sub.i211 = sub i32 %sub.ptr.sub.i202, %sub.ptr.sub.i206
  %103 = call ptr @memcpy(ptr %100, ptr %add.ptr4.i, i32 %sub.i211)
  %104 = load ptr, ptr %desc, align 4
  %add.ptr7.i = getelementptr i8, ptr %104, i32 %sub.i211
  br label %if.end.i216

if.end.i216:                                      ; preds = %if.else.i212, %if.then.i209
  %pos.addr.0.i213 = phi ptr [ %add.ptr.i208, %if.then.i209 ], [ %add.ptr7.i, %if.else.i212 ]
  %105 = ptrtoint ptr %pos.addr.0.i213 to i32
  %add.i214 = add i32 %105, 7
  %and.i215 = and i32 %add.i214, -8
  %106 = inttoptr i32 %and.i215 to ptr
  %and8.i = and i32 %add.i214, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end.i216.inline_tx_skb_header.exit_crit_edge, label %if.then10.i

if.end.i216.inline_tx_skb_header.exit_crit_edge:  ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #19
  br label %inline_tx_skb_header.exit

if.then10.i:                                      ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #19
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 0, ptr %106, align 8
  %add.ptr11.i = getelementptr i64, ptr %106, i32 1
  br label %inline_tx_skb_header.exit

inline_tx_skb_header.exit:                        ; preds = %if.then10.i, %if.end.i216.inline_tx_skb_header.exit_crit_edge
  %retval.0.i217 = phi ptr [ %add.ptr11.i, %if.then10.i ], [ %106, %if.end.i216.inline_tx_skb_header.exit_crit_edge ]
  %cmp46 = icmp ugt ptr %arrayidx, %retval.0.i217
  br i1 %cmp46, label %if.then47, label %inline_tx_skb_header.exit.if.end50_crit_edge

inline_tx_skb_header.exit.if.end50_crit_edge:     ; preds = %inline_tx_skb_header.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.then47:                                        ; preds = %inline_tx_skb_header.exit
  call void @__sanitizer_cov_trace_pc() #19
  %108 = ptrtoint ptr %stat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %stat.i.i.i, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %109 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %110 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %desc, align 4
  %add.ptr49 = getelementptr i8, ptr %111, i32 %sub.ptr.sub
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %inline_tx_skb_header.exit.if.end50_crit_edge
  %end.0 = phi ptr [ %add.ptr49, %if.then47 ], [ %add.ptr, %inline_tx_skb_header.exit.if.end50_crit_edge ]
  %112 = ptrtoint ptr %stat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %stat.i.i.i, align 4
  %cmp52 = icmp eq ptr %retval.0.i217, %113
  br i1 %cmp52, label %if.then53, label %if.end50.if.end61_crit_edge

if.end50.if.end61_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end61

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  %sub.ptr.lhs.cast55 = ptrtoint ptr %end.0 to i32
  %sub.ptr.rhs.cast56 = ptrtoint ptr %retval.0.i217 to i32
  %sub.ptr.sub57 = sub i32 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  %114 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %desc, align 4
  %add.ptr59 = getelementptr i8, ptr %115, i32 %sub.ptr.sub57
  br label %if.end61

if.end61:                                         ; preds = %if.then53, %if.end50.if.end61_crit_edge
  %pos.0 = phi ptr [ %115, %if.then53 ], [ %retval.0.i217, %if.end50.if.end61_crit_edge ]
  %end.1 = phi ptr [ %add.ptr59, %if.then53 ], [ %end.0, %if.end50.if.end61_crit_edge ]
  %116 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %head, align 8
  tail call void @cxgb4_write_sgl(ptr noundef nonnull %5, ptr noundef %q, ptr noundef %pos.0, ptr noundef %end.1, i32 noundef %sub.ptr.sub.i202, ptr noundef %117)
  %118 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %adap, align 4
  %port = getelementptr inbounds %struct.adapter, ptr %119, i32 0, i32 23
  %120 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %port, align 128
  %122 = getelementptr inbounds %struct.anon.53, ptr %5, i32 0, i32 2
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %121, ptr %122, align 8
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 4, i32 0, i32 1
  %124 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @deferred_unmap_destructor, ptr %destructor, align 4
  %125 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pidx, align 16
  %add = add nsw i32 %div7.i, -1
  %sub68 = add i32 %add, %126
  %127 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %size.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub68, i32 %128)
  %cmp70.not = icmp ult i32 %sub68, %128
  %sub74 = select i1 %cmp70.not, i32 0, i32 %128
  %spec.select = sub i32 %sub68, %sub74
  %129 = ptrtoint ptr %sdesc.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sdesc.i, align 4
  %arrayidx77 = getelementptr %struct.tx_sw_desc, ptr %130, i32 %spec.select
  %131 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %5, ptr %arrayidx77, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.end61, %if.then26.i, %if.end23.i.if.end80_crit_edge
  %132 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %q, align 4
  %add.i218 = add i32 %133, %div7.i
  store i32 %add.i218, ptr %q, align 4
  %134 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pidx, align 4
  %add1.i = add i32 %135, %div7.i
  store i32 %add1.i, ptr %pidx, align 4
  %136 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %137)
  %cmp.not.i220 = icmp ult i32 %add1.i, %137
  br i1 %cmp.not.i220, label %if.end80.txq_advance.exit_crit_edge, label %if.then.i222

if.end80.txq_advance.exit_crit_edge:              ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #19
  br label %txq_advance.exit

if.then.i222:                                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i221 = sub i32 %add1.i, %137
  %138 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %sub.i221, ptr %pidx, align 4
  br label %txq_advance.exit

txq_advance.exit:                                 ; preds = %if.then.i222, %if.end80.txq_advance.exit_crit_edge
  %add82 = add i32 %div7.i, %written.0253
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add82)
  %cmp83 = icmp ugt i32 %add82, 32
  br i1 %cmp83, label %if.then90, label %txq_advance.exit.if.end93_crit_edge, !prof !113

txq_advance.exit.if.end93_crit_edge:              ; preds = %txq_advance.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93

if.then90:                                        ; preds = %txq_advance.exit
  call void @__sanitizer_cov_trace_pc() #19
  %139 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %adap, align 4
  tail call void @cxgb4_ring_tx_db(ptr noundef %140, ptr noundef %q, i32 noundef %add82)
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %txq_advance.exit.if.end93_crit_edge
  %written.1 = phi i32 [ 0, %if.then90 ], [ %add82, %txq_advance.exit.if.end93_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %lock) #17
  %141 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %qlen.i, align 4
  %sub.i224 = add i32 %142, -1
  store volatile i32 %sub.i224, ptr %qlen.i, align 4
  %143 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %5, align 8
  %prev9.i = getelementptr inbounds %struct.anon.53, ptr %5, i32 0, i32 1
  %145 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %5, align 8
  %prev17.i = getelementptr inbounds %struct.anon.53, ptr %144, i32 0, i32 1
  %147 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %146, ptr %prev17.i, align 4
  %148 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %144, ptr %146, align 8
  %149 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %data.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %150, align 8
  %shr.i226 = lshr i32 %152, 24
  %trunc.i227 = trunc i32 %shr.i226 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %trunc.i227)
  %switch.selectcmp.i228 = icmp eq i8 %trunc.i227, 109
  %switch.select.i229 = select i1 %switch.selectcmp.i228, i32 513, i32 272
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %trunc.i227)
  %switch.selectcmp19.i230 = icmp eq i8 %trunc.i227, 4
  %switch.select20.i231 = select i1 %switch.selectcmp19.i230, i32 305, i32 %switch.select.i229
  %153 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %len10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %switch.select20.i231)
  %cmp11.i233.not = icmp ult i32 %154, %switch.select20.i231
  br i1 %cmp11.i233.not, label %if.then99, label %if.end93.if.end100_crit_edge

if.end93.if.end100_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end100

if.then99:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #17
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.end93.if.end100_crit_edge
  %155 = ptrtoint ptr %sendq to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %sendq, align 4
  %cmp.i = icmp eq ptr %156, %sendq
  %cmp.not241 = icmp eq ptr %156, null
  %cmp.not = or i1 %cmp.i, %cmp.not241
  br i1 %cmp.not, label %if.end100.while.end_crit_edge, label %if.end100.land.rhs_crit_edge

if.end100.land.rhs_crit_edge:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

if.end100.while.end_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end100.while.end_crit_edge, %if.then38, %land.rhs.while.end_crit_edge
  %written.0245 = phi i32 [ %written.0253, %if.then38 ], [ %written.0253, %land.rhs.while.end_crit_edge ], [ %written.1, %if.end100.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.0245)
  %tobool101.not = icmp eq i32 %written.0245, 0
  br i1 %tobool101.not, label %while.end.if.end111_crit_edge, label %if.then108, !prof !113

while.end.if.end111_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end111

if.then108:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  %adap109 = getelementptr inbounds %struct.sge_uld_txq, ptr %q, i32 0, i32 1
  %157 = ptrtoint ptr %adap109 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %adap109, align 4
  tail call void @cxgb4_ring_tx_db(ptr noundef %158, ptr noundef %q, i32 noundef %written.0245)
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %while.end.if.end111_crit_edge, %if.end.if.end111_crit_edge
  %159 = ptrtoint ptr %service_ofldq_running to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %service_ofldq_running, align 64
  br label %cleanup

cleanup:                                          ; preds = %if.end111, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deferred_unmap_destructor(ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.53, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %10, %12
  tail call void @dma_unmap_page_attrs(ptr noundef %4, i32 noundef %8, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #17
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %13 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i.i, align 4
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 12
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nr_frags.i, align 2
  %idxprom.i = zext i8 %16 to i32
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %14, i32 0, i32 12, i32 %idxprom.i
  %cmp13.i = icmp ult ptr %frags.i, %arrayidx.i
  br i1 %cmp13.i, label %entry.for.body.i_crit_edge, label %entry.unmap_skb.exit_crit_edge

entry.unmap_skb.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %unmap_skb.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %addr.pn15.i = phi ptr [ %addr.addr.0.i, %for.body.i.for.body.i_crit_edge ], [ %6, %entry.for.body.i_crit_edge ]
  %fp.014.i = phi ptr [ %incdec.ptr5.i, %for.body.i.for.body.i_crit_edge ], [ %frags.i, %entry.for.body.i_crit_edge ]
  %addr.addr.0.i = getelementptr i32, ptr %addr.pn15.i, i32 1
  %17 = ptrtoint ptr %addr.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.addr.0.i, align 4
  %bv_len.i.i = getelementptr inbounds %struct.bio_vec, ptr %fp.014.i, i32 0, i32 1
  %19 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bv_len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %4, i32 noundef %18, i32 noundef %20, i32 noundef 1, i32 noundef 0) #17
  %incdec.ptr5.i = getelementptr %struct.bio_vec, ptr %fp.014.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr5.i, %arrayidx.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.unmap_skb.exit_crit_edge

for.body.i.unmap_skb.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unmap_skb.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

unmap_skb.exit:                                   ; preds = %for.body.i.unmap_skb.exit_crit_edge, %entry.unmap_skb.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @napi_get_frags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_frags(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !112

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #17
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !113

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.27) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #17, !srcloc !135
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #17
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #17, !srcloc !137
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #17
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !132

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #17
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__put_page(ptr noundef %4) #17
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t4_systim_to_hwstamp(ptr noundef %skb) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 24) #17
  %5 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data1, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 14
  %7 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %add.ptr5, align 4
  %bf.clear = shl i8 %bf.load, 2
  %8 = and i8 %bf.clear, 60
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %narrow = add nuw nsw i8 %8, 54
  %add8 = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add8)
  %cmp = icmp ult i32 %10, %add8
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %11 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %hwtstamps.i, align 8
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %add.ptr, align 1
  store i64 %15, ptr %hwtstamps.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_ptp_read_hwstamp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_slow_intr_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_intrq(ptr noundef %adap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %intrq_lock = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 9
  tail call void @_raw_spin_lock(ptr noundef %intrq_lock) #17
  %cur_desc = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 1
  %iqe_len = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 17
  %gen.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 3
  %0 = ptrtoint ptr %cur_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_desc, align 8
  %2 = ptrtoint ptr %iqe_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iqe_len, align 8
  %sub50 = add i32 %3, -16
  %add.ptr51 = getelementptr i8, ptr %1, i32 %sub50
  %4 = getelementptr inbounds %struct.rsp_ctrl, ptr %add.ptr51, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 8
  %7 = lshr i8 %6, 7
  %8 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gen.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp.i52 = icmp eq i8 %7, %9
  br i1 %cmp.i52, label %if.end.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %ingr_start = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 32
  %ingr_map = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 35
  %cidx.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 2
  %size.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 18
  %desc.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 13
  br label %if.end

if.end:                                           ; preds = %rspq_next.exit.if.end_crit_edge, %if.end.lr.ph
  %10 = phi ptr [ %4, %if.end.lr.ph ], [ %41, %rspq_next.exit.if.end_crit_edge ]
  %add.ptr54 = phi ptr [ %add.ptr51, %if.end.lr.ph ], [ %add.ptr, %rspq_next.exit.if.end_crit_edge ]
  %credits.053 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %rspq_next.exit.if.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !155
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 8
  %13 = and i8 %12, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %13)
  %cmp = icmp eq i8 %13, 32
  br i1 %cmp, label %if.then3, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %pldbuflen_qid = getelementptr inbounds %struct.rsp_ctrl, ptr %add.ptr54, i32 0, i32 1
  %14 = ptrtoint ptr %pldbuflen_qid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pldbuflen_qid, align 4
  %16 = ptrtoint ptr %ingr_start to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ingr_start, align 4
  %sub5 = sub i32 %15, %17
  %18 = ptrtoint ptr %ingr_map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ingr_map, align 8
  %arrayidx = getelementptr ptr, ptr %19, i32 %sub5
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %21) #17
  br i1 %call.i, label %if.then.i, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__napi_schedule(ptr noundef %21) #17
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then3.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %22 = ptrtoint ptr %cur_desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur_desc, align 8
  %24 = ptrtoint ptr %iqe_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iqe_len, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 %25
  store ptr %add.ptr.i, ptr %cur_desc, align 8
  %26 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cidx.i, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %cidx.i, align 4
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %29)
  %cmp.i46 = icmp eq i32 %inc.i, %29
  br i1 %cmp.i46, label %if.then.i48, label %if.end7.rspq_next.exit_crit_edge, !prof !113

if.end7.rspq_next.exit_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %rspq_next.exit

if.then.i48:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %cidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %cidx.i, align 4
  %31 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %gen.i, align 8
  %33 = xor i8 %32, 1
  store i8 %33, ptr %gen.i, align 8
  %34 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc.i, align 8
  %36 = ptrtoint ptr %cur_desc to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %cur_desc, align 8
  br label %rspq_next.exit

rspq_next.exit:                                   ; preds = %if.then.i48, %if.end7.rspq_next.exit_crit_edge
  %inc = add i32 %credits.053, 1
  %37 = ptrtoint ptr %cur_desc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur_desc, align 8
  %39 = ptrtoint ptr %iqe_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iqe_len, align 8
  %sub = add i32 %40, -16
  %add.ptr = getelementptr i8, ptr %38, i32 %sub
  %41 = getelementptr inbounds %struct.rsp_ctrl, ptr %add.ptr, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 8
  %44 = lshr i8 %43, 7
  %45 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %gen.i, align 8
  %cmp.i = icmp eq i8 %44, %46
  br i1 %cmp.i, label %rspq_next.exit.if.end_crit_edge, label %rspq_next.exit.for.end_crit_edge

rspq_next.exit.for.end_crit_edge:                 ; preds = %rspq_next.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

rspq_next.exit.if.end_crit_edge:                  ; preds = %rspq_next.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.end:                                          ; preds = %rspq_next.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %credits.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %rspq_next.exit.for.end_crit_edge ]
  %intr_params = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 4
  %47 = ptrtoint ptr %intr_params to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %intr_params, align 1
  %conv8 = zext i8 %48 to i32
  %shl9 = shl nuw nsw i32 %conv8, 12
  %or = or i32 %shl9, %credits.0.lcssa
  %bar2_addr = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 15
  %49 = ptrtoint ptr %bar2_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bar2_addr, align 8
  %cmp10 = icmp eq ptr %50, null
  br i1 %cmp10, label %if.then13, label %do.body, !prof !113

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %cntxt_id = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 11
  %51 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %cntxt_id, align 4
  %conv14 = zext i16 %52 to i32
  %shl15 = shl nuw i32 %conv14, 16
  %or16 = or i32 %shl15, %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !115
  tail call void @arm_heavy_mb() #17
  %53 = tail call i32 @llvm.bswap.i32(i32 %or16) #17
  %54 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adap, align 128
  %add.ptr.i49 = getelementptr i8, ptr %55, i32 110596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %53) #17, !srcloc !116
  br label %if.end24

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !156
  tail call void @arm_heavy_mb() #17
  %bar2_qid = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 16
  %56 = ptrtoint ptr %bar2_qid to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bar2_qid, align 4
  %shl17 = shl i32 %57, 16
  %or18 = or i32 %shl17, %or
  %58 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %59 = ptrtoint ptr %bar2_addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bar2_addr, align 8
  %add.ptr20 = getelementptr i8, ptr %60, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %58) #17, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !157
  tail call void @arm_heavy_mb() #17
  br label %if.end24

if.end24:                                         ; preds = %do.body, %if.then13
  tail call void @_raw_spin_unlock(ptr noundef %intrq_lock) #17
  ret i32 %credits.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_wr_mbox_meat(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @restore_rx_bufs(ptr nocapture noundef readonly %si, ptr nocapture noundef %q, i32 noundef %frags) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frags)
  %tobool.not17 = icmp eq i32 %frags, 0
  br i1 %tobool.not17, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %cidx = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 2
  %size = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 10
  %sdesc = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %dec18.in = phi i32 [ %frags, %while.body.lr.ph ], [ %dec18, %if.end.while.body_crit_edge ]
  %dec18 = add i32 %dec18.in, -1
  %0 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %storemerge.in = phi i32 [ %3, %if.then ], [ %1, %while.body.if.end_crit_edge ]
  %storemerge = add i32 %storemerge.in, -1
  %4 = ptrtoint ptr %cidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %cidx, align 4
  %5 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdesc, align 4
  %arrayidx = getelementptr %struct.rx_sw_desc, ptr %6, i32 %storemerge
  %arrayidx6 = getelementptr %struct.pkt_gl, ptr %si, i32 0, i32 1, i32 %dec18
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx6, align 8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %arrayidx, align 4
  %dma_addr = getelementptr %struct.rx_sw_desc, ptr %6, i32 %storemerge, i32 1
  %10 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr, align 4
  %or = or i32 %11, 16
  store i32 %or, ptr %dma_addr, align 4
  %12 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %q, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %q, align 4
  %tobool.not = icmp eq i32 %dec18, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_bar2_sge_qregs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_idma_monitor(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind readnone }
attributes #22 = { nobuiltin }
attributes #23 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !35, !36, !38, !39, !40, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !55, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !72, !74, !75, !76, !77, !79, !81, !83, !84, !86, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101}
!llvm.named.register.sp = !{!102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__ksymtab_cxgb4_map_skb, !1, !"__ksymtab_cxgb4_map_skb", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 272, i32 1}
!2 = !{ptr @__ksymtab_cxgb4_reclaim_completed_tx, !3, !"__ksymtab_cxgb4_reclaim_completed_tx", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 396, i32 1}
!4 = !{ptr @__ksymtab_cxgb4_write_sgl, !5, !"__ksymtab_cxgb4_write_sgl", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 891, i32 1}
!6 = !{ptr @__ksymtab_cxgb4_write_partial_sgl, !7, !"__ksymtab_cxgb4_write_partial_sgl", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 999, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 1059, i32 3}
!10 = !{ptr @__ksymtab_cxgb4_ring_tx_db, !11, !"__ksymtab_cxgb4_ring_tx_db", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 1092, i32 1}
!12 = !{ptr @__ksymtab_cxgb4_inline_tx_skb, !13, !"__ksymtab_cxgb4_inline_tx_skb", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 1128, i32 1}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 2721, i32 51}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 2722, i32 4}
!18 = !{ptr @__ksymtab_cxgb4_ofld_send, !19, !"__ksymtab_cxgb4_ofld_send", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 3186, i32 1}
!20 = !{ptr @__ksymtab_cxgb4_immdata_send, !21, !"__ksymtab_cxgb4_immdata_send", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 3283, i32 1}
!22 = !{ptr @__ksymtab_cxgb4_crypto_send, !23, !"__ksymtab_cxgb4_crypto_send", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 3316, i32 1}
!24 = !{ptr @__ksymtab_cxgb4_pktgl_to_skb, !25, !"__ksymtab_cxgb4_pktgl_to_skb", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 3376, i32 1}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 4541, i32 4}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @t4_sge_alloc_rxq._entry, !27, !"_entry", i1 false, i1 false}
!32 = !{ptr @t4_sge_alloc_rxq._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @t4_sge_alloc_ethofld_txq.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 4842, i32 2}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 5217, i32 3}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @t4_sge_init._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @t4_sge_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @t4_sge_init.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 5228, i32 2}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @t4_sge_init.__key.12, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 5229, i32 2}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @t4_sge_init.__key.14, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 5231, i32 2}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 1880, i32 3}
!59 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @cxgb4_vf_eth_xmit._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @cxgb4_vf_eth_xmit._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 1568, i32 3}
!64 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @cxgb4_eth_xmit._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @cxgb4_eth_xmit._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @init_completion.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../include/linux/completion.h", i32 87, i32 2}
!69 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 3614, i32 3}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @t4_tx_completion_handler._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @t4_tx_completion_handler._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/mm.h", i32 717, i32 2}
!79 = !{ptr @timer_pkt_quota, !80, !"timer_pkt_quota", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 188, i32 12}
!81 = !{ptr @skb_queue_head_init.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!83 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!86 = !{ptr @init_txq.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 4577, i32 2}
!88 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 5091, i32 3}
!91 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @t4_sge_init_soft._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @t4_sge_init_soft._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 5124, i32 3}
!96 = !{ptr @t4_sge_init_soft._entry.33, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @t4_sge_init_soft._entry_ptr.35, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/chelsio/cxgb4/sge.c", i32 5133, i32 3}
!100 = !{ptr @t4_sge_init_soft._entry.36, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @t4_sge_init_soft._entry_ptr.38, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{!"sp"}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{!"branch_weights", i32 1, i32 2000}
!114 = !{i64 2160688070}
!115 = !{i64 2160392038}
!116 = !{i64 6173397}
!117 = !{i64 2160393640}
!118 = !{i64 2160394013}
!119 = !{i64 2160689443}
!120 = !{i64 2160689846}
!121 = !{!"auto-init"}
!122 = !{i64 2160675258, i64 2160675763, i64 2160675295, i64 2160675351, i64 2160675385, i64 2160675409, i64 2160675450, i64 2160675471, i64 2160675499, i64 2160675533}
!123 = !{i64 2154729022, i64 2154729510, i64 2154729059, i64 2154729115, i64 2154729149, i64 2154729173, i64 2154729214, i64 2154729235, i64 2154729263, i64 2154729297}
!124 = !{i64 2160154090}
!125 = !{i64 2148499703, i64 2148499735, i64 2148499764, i64 2148499798, i64 2148499829, i64 2148499852}
!126 = !{i64 6599467, i64 6599506, i64 6599532, i64 6599556, i64 6599581, i64 6599607, i64 6599632, i64 6599658, i64 6599685, i64 6599711, i64 6599750, i64 6599794, i64 6599825, i64 6599850}
!127 = !{i64 6599084}
!128 = !{i64 2154711004, i64 2154711492, i64 2154711041, i64 2154711097, i64 2154711131, i64 2154711155, i64 2154711196, i64 2154711217, i64 2154711245, i64 2154711279}
!129 = !{i8 0, i8 2}
!130 = !{i64 2153457972, i64 2153458456, i64 2153458009, i64 2153458065, i64 2153458099, i64 2153458123, i64 2153458164, i64 2153458185, i64 2153458213, i64 2153458247}
!131 = !{i64 2148498173, i64 2148498199, i64 2148498228, i64 2148498262, i64 2148498293, i64 2148498316}
!132 = !{i64 2148979988, i64 2148979993, i64 2148980006, i64 2148980050, i64 2148980084, i64 2148980105}
!133 = !{i64 2148888707, i64 2148888987, i64 2148889321, i64 2148889655}
!134 = !{i64 2154713972, i64 2154714460, i64 2154714009, i64 2154714065, i64 2154714099, i64 2154714123, i64 2154714164, i64 2154714185, i64 2154714213, i64 2154714247}
!135 = !{i64 2153433999, i64 2153434482, i64 2153434036, i64 2153434092, i64 2153434126, i64 2153434150, i64 2153434191, i64 2153434212, i64 2153434240, i64 2153434274}
!136 = !{i64 2148586625}
!137 = !{i64 2148501358, i64 2148501390, i64 2148501419, i64 2148501453, i64 2148501484, i64 2148501507}
!138 = !{i64 2148586854}
!139 = !{i32 0, i32 33}
!140 = !{i64 2160766557}
!141 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!142 = !{i64 2160668324, i64 2160668829, i64 2160668361, i64 2160668417, i64 2160668451, i64 2160668475, i64 2160668516, i64 2160668537, i64 2160668565, i64 2160668599}
!143 = !{i64 995664}
!144 = !{i64 2160782028}
!145 = !{i64 2160782432}
!146 = !{i64 2160670213}
!147 = !{i64 2160670623}
!148 = !{i64 2160671026}
!149 = !{i64 2160672114}
!150 = !{i64 2160736967, i64 2160737473, i64 2160737004, i64 2160737060, i64 2160737094, i64 2160737118, i64 2160737159, i64 2160737180, i64 2160737208, i64 2160737242}
!151 = !{i64 6173815}
!152 = !{i64 2160391651}
!153 = !{i64 2160787236}
!154 = !{i64 2160739940, i64 2160740446, i64 2160739977, i64 2160740033, i64 2160740067, i64 2160740091, i64 2160740132, i64 2160740153, i64 2160740181, i64 2160740215}
!155 = !{i64 2160784425}
!156 = !{i64 2160785088}
!157 = !{i64 2160785492}
