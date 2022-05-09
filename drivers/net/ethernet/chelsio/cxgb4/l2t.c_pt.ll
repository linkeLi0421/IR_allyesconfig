; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/l2t.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/l2t.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cxgb4_l2t_send\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_l2t_send\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_l2t_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_l2t_send:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_l2t_send\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_l2t_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_l2t_release\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_l2t_release\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_l2t_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_l2t_release:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_l2t_release\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_l2t_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_l2t_get\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_l2t_get\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_l2t_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_l2t_get:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_l2t_get\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_l2t_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_select_ntuple\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_select_ntuple\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_select_ntuple\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_select_ntuple:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_select_ntuple\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_select_ntuple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_l2t_alloc_switching\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_l2t_alloc_switching\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_l2t_alloc_switching\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_l2t_alloc_switching:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_l2t_alloc_switching\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_l2t_alloc_switching:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_check_l2t_valid\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_check_l2t_valid\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_check_l2t_valid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_check_l2t_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_check_l2t_valid\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_check_l2t_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.190, i32 }
%struct.atomic_t = type { i32 }
%union.anon.190 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.cpl_l2t_write_rpl = type { %union.opcode_tid, i8, [3 x i8] }
%union.opcode_tid = type { i32 }
%struct.l2t_data = type { i32, i32, %struct.rwlock_t, %struct.atomic_t, ptr, [0 x %struct.l2t_entry] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.l2t_entry = type { i16, i16, [4 x i32], i32, ptr, ptr, ptr, %struct.sk_buff_head, %struct.spinlock, %struct.atomic_t, i16, i16, i8, i8, [6 x i8] }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
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
%struct.work_request_hdr = type { i32, i32, i64 }
%struct.cpl_l2t_write_req = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i16, [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.167, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.189, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.167 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.189 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.vlan_dev_priv = type { i32, [8 x i32], i32, [16 x ptr], i16, i16, i16, ptr, ptr, [6 x i8], ptr, ptr, ptr }
%struct.vlan_priority_tci_mapping = type { i32, i16, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.194, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.195, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.196, ptr, %struct.address_space, %struct.list_head, %union.anon.197, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.194 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.195 = type { %struct.callback_head }
%union.anon.196 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.197 = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@do_l2t_write_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 195, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unexpected L2T_WRITE_RPL status %u for entry %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_l2t_write_rpl\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/chelsio/cxgb4/l2t.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@do_l2t_write_rpl._entry_ptr = internal global ptr @do_l2t_write_rpl._entry, section ".printk_index", align 4
@__kstrtab_cxgb4_l2t_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_l2t_send = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_l2t_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_l2t_send to i32), ptr @__kstrtab_cxgb4_l2t_send, ptr @__kstrtabns_cxgb4_l2t_send }, section "___ksymtab+cxgb4_l2t_send", align 4
@__kstrtab_cxgb4_l2t_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_l2t_release = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_l2t_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_l2t_release to i32), ptr @__kstrtab_cxgb4_l2t_release, ptr @__kstrtabns_cxgb4_l2t_release }, section "___ksymtab+cxgb4_l2t_release", align 4
@__kstrtab_cxgb4_l2t_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_l2t_get = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_l2t_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_l2t_get to i32), ptr @__kstrtab_cxgb4_l2t_get, ptr @__kstrtabns_cxgb4_l2t_get }, section "___ksymtab+cxgb4_l2t_get", align 4
@__kstrtab_cxgb4_select_ntuple = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_select_ntuple = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_select_ntuple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_select_ntuple to i32), ptr @__kstrtab_cxgb4_select_ntuple, ptr @__kstrtabns_cxgb4_select_ntuple }, section "___ksymtab+cxgb4_select_ntuple", align 4
@__kstrtab_cxgb4_l2t_alloc_switching = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_l2t_alloc_switching = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_l2t_alloc_switching = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_l2t_alloc_switching to i32), ptr @__kstrtab_cxgb4_l2t_alloc_switching, ptr @__kstrtabns_cxgb4_l2t_alloc_switching }, section "___ksymtab+cxgb4_l2t_alloc_switching", align 4
@t4_init_l2t.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&d->lock\00", [23 x i8] zeroinitializer }, align 32
@t4_init_l2t.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&d->l2tab[i].lock\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_cxgb4_check_l2t_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_check_l2t_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_check_l2t_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_check_l2t_valid to i32), ptr @__kstrtab_cxgb4_check_l2t_valid, ptr @__kstrtabns_cxgb4_check_l2t_valid }, section "___ksymtab+cxgb4_check_l2t_valid", align 4
@t4_l2t_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @l2t_seq_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@l2t_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @l2t_seq_start, ptr @l2t_seq_stop, ptr @l2t_seq_next, ptr @l2t_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c" Idx IP address                Ethernet address  VLAN/P LP State Users Port\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI6c\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%4u %-25s %17pM %4d %u %2u   %c   %5u %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 2, i64 3, i64 5]
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 193, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 651, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 656, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"t4_l2t_fops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 756, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1984, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"l2t_seq_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 736, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 714, i32 17 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 725, i32 24 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 725, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 726, i32 19 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [44 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/l2t.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 730, i32 40 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_cxgb4_check_l2t_valid, ptr @__ksymtab_cxgb4_l2t_alloc_switching, ptr @__ksymtab_cxgb4_l2t_get, ptr @__ksymtab_cxgb4_l2t_release, ptr @__ksymtab_cxgb4_l2t_send, ptr @__ksymtab_cxgb4_select_ntuple, ptr @do_l2t_write_rpl._entry, ptr @do_l2t_write_rpl._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @t4_init_l2t.__key, ptr @.str.5, ptr @t4_init_l2t.__key.6, ptr @.str.7, ptr @t4_l2t_fops, ptr @skb_queue_head_init.__key, ptr @.str.8, ptr @l2t_seq_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_l2t_write_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_init_l2t.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_init_l2t.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_l2t_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2t_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_l2t_write_rpl(ptr noundef %adap, ptr nocapture noundef readonly %rpl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %l2t = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 30
  %0 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l2t, align 8
  %2 = ptrtoint ptr %rpl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rpl, align 4
  %rem = and i32 %3, 4095
  %status = getelementptr inbounds %struct.cpl_l2t_write_rpl, ptr %rpl, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end, label %do.end, !prof !52

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %5 to i32
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %6 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %rem) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and5 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %sub = sub i32 %rem, %9
  %arrayidx = getelementptr %struct.l2t_data, ptr %1, i32 0, i32 5, i32 %sub
  %lock = getelementptr %struct.l2t_data, ptr %1, i32 0, i32 5, i32 %sub, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %11)
  %cmp9.not = icmp eq i16 %11, 5
  br i1 %cmp9.not, label %if.then7.if.end17_crit_edge, label %if.then11

if.then7.if.end17_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then11:                                        ; preds = %if.then7
  %arpq.i = getelementptr %struct.l2t_data, ptr %1, i32 0, i32 5, i32 %sub, i32 7
  %12 = ptrtoint ptr %arpq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arpq.i, align 4
  %cmp.i.i3.i = icmp eq ptr %13, %arpq.i
  %tobool.not.i24.i = icmp eq ptr %13, null
  %tobool.not.i5.i = or i1 %cmp.i.i3.i, %tobool.not.i24.i
  br i1 %tobool.not.i5.i, label %if.then11.send_pending.exit_crit_edge, label %while.body.lr.ph.i

if.then11.send_pending.exit_crit_edge:            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %send_pending.exit

while.body.lr.ph.i:                               ; preds = %if.then11
  %qlen.i.i.i = getelementptr %struct.l2t_data, ptr %1, i32 0, i32 5, i32 %sub, i32 7, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %14 = phi ptr [ %13, %while.body.lr.ph.i ], [ %24, %while.body.i.while.body.i_crit_edge ]
  %15 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %14, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %prev17.i.i.i, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %18, ptr %20, align 8
  %call1.i = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %14) #13
  %23 = ptrtoint ptr %arpq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arpq.i, align 4
  %cmp.i.i.i = icmp eq ptr %24, %arpq.i
  %tobool.not.i2.i = icmp eq ptr %24, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i2.i
  br i1 %tobool.not.i.i, label %while.body.i.send_pending.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.send_pending.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %send_pending.exit

send_pending.exit:                                ; preds = %while.body.i.send_pending.exit_crit_edge, %if.then11.send_pending.exit_crit_edge
  %neigh = getelementptr %struct.l2t_data, ptr %1, i32 0, i32 5, i32 %sub, i32 4
  %25 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %neigh, align 4
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nud_state, align 8
  %29 = lshr i8 %28, 2
  %.lobit = and i8 %29, 1
  %30 = zext i8 %.lobit to i16
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %arrayidx, align 4
  br label %if.end17

if.end17:                                         ; preds = %send_pending.exit, %if.then7.if.end17_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_l2t_send(ptr nocapture noundef readonly %dev, ptr noundef %skb, ptr noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %lock10 = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 8
  br label %again

again:                                            ; preds = %if.then19, %entry
  %2 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %e, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %again.cleanup_crit_edge [
    i16 1, label %sw.bb
    i16 0, label %again.sw.bb7_crit_edge
    i16 2, label %again.sw.bb9_crit_edge
    i16 3, label %again.sw.bb9_crit_edge76
  ]

again.sw.bb9_crit_edge76:                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb9

again.sw.bb9_crit_edge:                           ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb9

again.sw.bb7_crit_edge:                           ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb7

again.cleanup_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %again
  %neigh = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 4
  %5 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %neigh, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %used.i.i = getelementptr inbounds %struct.neighbour, ptr %6, i32 0, i32 10
  %8 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %used.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not.i.i = icmp eq i32 %9, %7
  br i1 %cmp.not.i.i, label %sw.bb.if.end.i.i_crit_edge, label %do.body5.i.i

sw.bb.if.end.i.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.body5.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %7, ptr %used.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body5.i.i, %sw.bb.if.end.i.i_crit_edge
  %nud_state.i.i = getelementptr inbounds %struct.neighbour, ptr %6, i32 0, i32 12
  %11 = ptrtoint ptr %nud_state.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nud_state.i.i, align 8
  %13 = and i8 %12, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.then11.i.i, label %if.end.i.i.neigh_event_send.exit_crit_edge

if.end.i.i.neigh_event_send.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %neigh_event_send.exit

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call i32 @__neigh_event_send(ptr noundef %6, ptr noundef null, i1 noundef zeroext true) #13
  br label %neigh_event_send.exit

neigh_event_send.exit:                            ; preds = %if.then11.i.i, %if.end.i.i.neigh_event_send.exit_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock10) #13
  %14 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp = icmp eq i16 %15, 1
  br i1 %cmp, label %if.then, label %neigh_event_send.exit.if.end_crit_edge

neigh_event_send.exit.if.end_crit_edge:           ; preds = %neigh_event_send.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %neigh_event_send.exit
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %e, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %neigh_event_send.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock10) #13
  br label %sw.bb7

sw.bb7:                                           ; preds = %if.end, %again.sw.bb7_crit_edge
  %call8 = tail call i32 @t4_ofld_send(ptr noundef %1, ptr noundef %skb) #13
  br label %cleanup

sw.bb9:                                           ; preds = %again.sw.bb9_crit_edge, %again.sw.bb9_crit_edge76
  tail call void @_raw_spin_lock_bh(ptr noundef %lock10) #13
  %17 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %e, align 4
  %19 = and i16 %18, -2
  %switch = icmp eq i16 %19, 2
  br i1 %switch, label %if.end21, label %if.then19

if.then19:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock10) #13
  br label %again

if.end21:                                         ; preds = %sw.bb9
  %arpq.i = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 7
  %prev.i.i.i = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 7, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arpq.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %23 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %skb, ptr %21, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock10) #13
  %27 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %28)
  %cmp25 = icmp eq i16 %28, 2
  br i1 %cmp25, label %land.lhs.true27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true27:                                  ; preds = %if.end21
  %neigh28 = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 4
  %29 = ptrtoint ptr %neigh28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %neigh28, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %used.i.i64 = getelementptr inbounds %struct.neighbour, ptr %30, i32 0, i32 10
  %32 = ptrtoint ptr %used.i.i64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %used.i.i64, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp.not.i.i65 = icmp eq i32 %33, %31
  br i1 %cmp.not.i.i65, label %land.lhs.true27.if.end.i.i69_crit_edge, label %do.body5.i.i66

land.lhs.true27.if.end.i.i69_crit_edge:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i69

do.body5.i.i66:                                   ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %used.i.i64 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %31, ptr %used.i.i64, align 8
  br label %if.end.i.i69

if.end.i.i69:                                     ; preds = %do.body5.i.i66, %land.lhs.true27.if.end.i.i69_crit_edge
  %nud_state.i.i67 = getelementptr inbounds %struct.neighbour, ptr %30, i32 0, i32 12
  %35 = ptrtoint ptr %nud_state.i.i67 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nud_state.i.i67, align 8
  %37 = and i8 %36, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i68 = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i68, label %neigh_event_send.exit73, label %if.end.i.i69.if.then30_crit_edge

if.end.i.i69.if.then30_crit_edge:                 ; preds = %if.end.i.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

neigh_event_send.exit73:                          ; preds = %if.end.i.i69
  %call.i.i70 = tail call i32 @__neigh_event_send(ptr noundef %30, ptr noundef null, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %tobool.not = icmp eq i32 %call.i.i70, 0
  br i1 %tobool.not, label %neigh_event_send.exit73.if.then30_crit_edge, label %neigh_event_send.exit73.cleanup_crit_edge

neigh_event_send.exit73.cleanup_crit_edge:        ; preds = %neigh_event_send.exit73
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

neigh_event_send.exit73.if.then30_crit_edge:      ; preds = %neigh_event_send.exit73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

if.then30:                                        ; preds = %neigh_event_send.exit73.if.then30_crit_edge, %if.end.i.i69.if.then30_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock10) #13
  %38 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %39)
  %cmp34 = icmp eq i16 %39, 2
  br i1 %cmp34, label %land.lhs.true36, label %if.then30.if.end41_crit_edge

if.then30.if.end41_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

land.lhs.true36:                                  ; preds = %if.then30
  %40 = ptrtoint ptr %arpq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arpq.i, align 4
  %cmp.i.not = icmp eq ptr %41, %arpq.i
  br i1 %cmp.i.not, label %land.lhs.true36.if.end41_crit_edge, label %if.then39

land.lhs.true36.if.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #15
  %call40 = tail call fastcc i32 @write_l2e(ptr noundef %1, ptr noundef %e, i32 noundef 1)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %land.lhs.true36.if.end41_crit_edge, %if.then30.if.end41_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock10) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %neigh_event_send.exit73.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %sw.bb7, %again.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %sw.bb7 ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %neigh_event_send.exit73.cleanup_crit_edge ], [ 0, %if.end41 ], [ 0, %again.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_ofld_send(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_l2e(ptr noundef %adap, ptr nocapture noundef %e, i32 noundef %sync) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %l2t = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 30
  %0 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l2t, align 8
  %idx = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 1
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idx, align 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !52

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #13, !srcloc !53
  unreachable

__skb_put.exit:                                   ; preds = %if.end
  %conv = zext i16 %3 to i32
  %add = add i32 %5, %conv
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 32
  store ptr %add.ptr.i, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %11, 32
  store i32 %add.i, ptr %len9.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 83886096, ptr %9, align 8
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %wr_lo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync)
  %tobool4.not = icmp eq i32 %sync, 0
  %abs_id = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %15 = ptrtoint ptr %abs_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %abs_id, align 2
  %conv5 = zext i16 %16 to i32
  %shl = shl nuw nsw i32 %conv5, 14
  %or = select i1 %tobool4.not, i32 301989888, i32 301993984
  %or6 = or i32 %or, %add
  %or7 = or i32 %or6, %shl
  %ot = getelementptr inbounds %struct.cpl_l2t_write_req, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or7, ptr %ot, align 8
  %lport = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 13
  %18 = ptrtoint ptr %lport to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lport, align 1
  %conv8 = zext i8 %19 to i16
  %shl9 = shl nuw i16 %conv8, 8
  %shl11 = select i1 %tobool4.not, i16 -32768, i16 0
  %or12 = or i16 %shl9, %shl11
  %params = getelementptr inbounds %struct.cpl_l2t_write_req, ptr %9, i32 0, i32 2
  %20 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %or12, ptr %params, align 4
  %conv14 = trunc i32 %add to i16
  %l2t_idx15 = getelementptr inbounds %struct.cpl_l2t_write_req, ptr %9, i32 0, i32 3
  %21 = ptrtoint ptr %l2t_idx15 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv14, ptr %l2t_idx15, align 2
  %vlan = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 11
  %22 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vlan, align 2
  %vlan16 = getelementptr inbounds %struct.cpl_l2t_write_req, ptr %9, i32 0, i32 4
  %24 = ptrtoint ptr %vlan16 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %vlan16, align 8
  %neigh = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 4
  %25 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %neigh, align 4
  %tobool17.not = icmp eq ptr %26, null
  br i1 %tobool17.not, label %__skb_put.exit.if.end23_crit_edge, label %land.lhs.true

__skb_put.exit.if.end23_crit_edge:                ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

land.lhs.true:                                    ; preds = %__skb_put.exit
  %dev = getelementptr inbounds %struct.neighbour, ptr %26, i32 0, i32 25
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 8
  %and = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %dmac = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 14
  %ha = getelementptr inbounds %struct.neighbour, ptr %26, i32 0, i32 18
  %31 = call ptr @memcpy(ptr %dmac, ptr %ha, i32 6)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %land.lhs.true.if.end23_crit_edge, %__skb_put.exit.if.end23_crit_edge
  %dst_mac = getelementptr inbounds %struct.cpl_l2t_write_req, ptr %9, i32 0, i32 5
  %dmac25 = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 14
  %32 = call ptr @memcpy(ptr %dst_mac, ptr %dmac25, i32 6)
  %call27 = tail call i32 @t4_mgmt_tx(ptr noundef %adap, ptr noundef nonnull %call.i) #13
  br i1 %tobool4.not, label %if.end23.cleanup_crit_edge, label %land.lhs.true29

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true29:                                  ; preds = %if.end23
  %33 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %34)
  %cmp.not = icmp eq i16 %34, 5
  br i1 %cmp.not, label %land.lhs.true29.cleanup_crit_edge, label %if.then32

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then32:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 3, ptr %e, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %land.lhs.true29.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %land.lhs.true29.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_l2t_release(ptr noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !55
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #13
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.t4_l2e_free.exit_crit_edge

if.then.t4_l2e_free.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %t4_l2e_free.exit

if.then.i:                                        ; preds = %if.then
  %neigh.i = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 4
  %3 = ptrtoint ptr %neigh.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %neigh.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  %refcnt.i.i = getelementptr inbounds %struct.neighbour, ptr %4, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #13, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.neigh_release.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !52

if.end5.i.i.i.i.i.neigh_release.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %neigh_release.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #13
  br label %neigh_release.exit.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !59
  tail call void @neigh_destroy(ptr noundef nonnull %4) #13
  br label %neigh_release.exit.i

neigh_release.exit.i:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.neigh_release.exit.i_crit_edge
  %6 = ptrtoint ptr %neigh.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %neigh.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %neigh_release.exit.i, %if.then.i.if.end.i_crit_edge
  %arpq.i = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 7
  %7 = ptrtoint ptr %arpq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arpq.i, align 4
  %cmp.i.i2.i.i = icmp eq ptr %8, %arpq.i
  %tobool.not.i13.i.i = icmp eq ptr %8, null
  %tobool.not.i4.i.i = or i1 %cmp.i.i2.i.i, %tobool.not.i13.i.i
  br i1 %tobool.not.i4.i.i, label %if.end.i.t4_l2e_free.exit_crit_edge, label %while.body.lr.ph.i.i

if.end.i.t4_l2e_free.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %t4_l2e_free.exit

while.body.lr.ph.i.i:                             ; preds = %if.end.i
  %qlen.i.i.i.i = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 7, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %9 = phi ptr [ %8, %while.body.lr.ph.i.i ], [ %19, %while.body.i.i.while.body.i.i_crit_edge ]
  %10 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %9, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %prev17.i.i.i.i, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %13, ptr %15, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %9, i32 noundef 0) #13
  %18 = ptrtoint ptr %arpq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arpq.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %19, %arpq.i
  %tobool.not.i1.i.i = icmp eq ptr %19, null
  %tobool.not.i.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i1.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i.i.t4_l2e_free.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.body.i.i.t4_l2e_free.exit_crit_edge:        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %t4_l2e_free.exit

t4_l2e_free.exit:                                 ; preds = %while.body.i.i.t4_l2e_free.exit_crit_edge, %if.end.i.t4_l2e_free.exit_crit_edge, %if.then.t4_l2e_free.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #13
  %idx.i = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 1
  %20 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %idx.i, align 2
  %conv.i = zext i16 %21 to i32
  %.neg.i = mul nsw i32 %conv.i, -152
  %idx.neg.i = add nsw i32 %.neg.i, -60
  %add.ptr.i = getelementptr i8, ptr %e, i32 %idx.neg.i
  %nfree.i = getelementptr inbounds %struct.l2t_data, ptr %add.ptr.i, i32 0, i32 3
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfree.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nfree.i, i32 1, i32 3, i32 1) #13
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nfree.i, ptr %nfree.i, i32 1, ptr elementtype(i32) %nfree.i) #13, !srcloc !60
  br label %if.end

if.end:                                           ; preds = %t4_l2e_free.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cxgb4_l2t_get(ptr noundef %d, ptr noundef %neigh, ptr nocapture noundef readonly %physdev, i32 noundef %priority) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tbl = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 1
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tbl, align 4
  %key_len = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_len, align 4
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 27
  %dev = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 25
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex, align 4
  %call = tail call fastcc i32 @addr_hash(ptr noundef %d, ptr noundef %primary_key, i32 noundef %3, i32 noundef %7)
  %flags = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %tx_chan = getelementptr i8, ptr %physdev, i32 2326
  %10 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_chan, align 2
  %add = add i8 %11, 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lport5 = getelementptr i8, ptr %physdev, i32 2327
  %12 = ptrtoint ptr %lport5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %lport5, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %lport.0 = phi i8 [ %add, %if.then ], [ %13, %if.else ]
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 15
  %14 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %15, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end17_crit_edge, label %if.then8

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then8:                                         ; preds = %if.end
  %call10 = tail call zeroext i16 @vlan_dev_vlan_id(ptr noundef %5) #13
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !61
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 2304
  %and.i131 = and i32 %priority, 15
  %arrayidx.i = getelementptr %struct.vlan_dev_priv, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %and.i131
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %mp.09.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not10.i = icmp eq ptr %mp.09.i, null
  br i1 %tobool.not10.i, label %if.then8.vlan_dev_get_egress_qos_mask.exit_crit_edge, label %if.then8.while.body.i_crit_edge

if.then8.while.body.i_crit_edge:                  ; preds = %if.then8
  br label %while.body.i

if.then8.vlan_dev_get_egress_qos_mask.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %vlan_dev_get_egress_qos_mask.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then8.while.body.i_crit_edge
  %mp.011.i = phi ptr [ %mp.0.i, %if.end.i.while.body.i_crit_edge ], [ %mp.09.i, %if.then8.while.body.i_crit_edge ]
  %19 = ptrtoint ptr %mp.011.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mp.011.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %priority)
  %cmp.i = icmp eq i32 %20, %priority
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_qos.i = getelementptr inbounds %struct.vlan_priority_tci_mapping, ptr %mp.011.i, i32 0, i32 1
  %21 = ptrtoint ptr %vlan_qos.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vlan_qos.i, align 4
  br label %vlan_dev_get_egress_qos_mask.exit

if.end.i:                                         ; preds = %while.body.i
  %next.i = getelementptr inbounds %struct.vlan_priority_tci_mapping, ptr %mp.011.i, i32 0, i32 2
  %23 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %mp.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %mp.0.i, null
  br i1 %tobool.not.i, label %if.end.i.vlan_dev_get_egress_qos_mask.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.vlan_dev_get_egress_qos_mask.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vlan_dev_get_egress_qos_mask.exit

vlan_dev_get_egress_qos_mask.exit:                ; preds = %if.end.i.vlan_dev_get_egress_qos_mask.exit_crit_edge, %if.then.i, %if.then8.vlan_dev_get_egress_qos_mask.exit_crit_edge
  %retval.0.i = phi i16 [ %22, %if.then.i ], [ 0, %if.then8.vlan_dev_get_egress_qos_mask.exit_crit_edge ], [ 0, %if.end.i.vlan_dev_get_egress_qos_mask.exit_crit_edge ]
  %or128 = or i16 %retval.0.i, %call10
  br label %if.end17

if.end17:                                         ; preds = %vlan_dev_get_egress_qos_mask.exit, %if.end.if.end17_crit_edge
  %vlan.0 = phi i16 [ %or128, %vlan_dev_get_egress_qos_mask.exit ], [ 4095, %if.end.if.end17_crit_edge ]
  %lock = getelementptr inbounds %struct.l2t_data, ptr %d, i32 0, i32 2
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #13
  %first = getelementptr %struct.l2t_data, ptr %d, i32 0, i32 5, i32 %call, i32 5
  %24 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %24)
  %e.0159 = load ptr, ptr %first, align 4
  %tobool18.not160 = icmp eq ptr %e.0159, null
  br i1 %tobool18.not160, label %if.end17.for.end_crit_edge, label %for.body.lr.ph

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %25 = ptrtoint ptr %primary_key to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %primary_key, align 4
  %arrayidx5.i = getelementptr %struct.neighbour, ptr %neigh, i32 1
  %arrayidx9.i = getelementptr %struct.neighbour, ptr %neigh, i32 1, i32 1
  %arrayidx14.i = getelementptr %struct.neighbour, ptr %neigh, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %e.0161 = phi ptr [ %e.0159, %for.body.lr.ph ], [ %e.0, %for.inc.for.body_crit_edge ]
  %v6.i = getelementptr inbounds %struct.l2t_entry, ptr %e.0161, i32 0, i32 12
  %27 = ptrtoint ptr %v6.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %v6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i132 = icmp eq i8 %28, 0
  %addr17.i = getelementptr inbounds %struct.l2t_entry, ptr %e.0161, i32 0, i32 2
  %29 = ptrtoint ptr %addr17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr17.i, align 4
  %xor20.i = xor i32 %26, %30
  br i1 %tobool.not.i132, label %for.body.addreq.exit_crit_edge, label %if.then.i133

for.body.addreq.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %addreq.exit

if.then.i133:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4.i = getelementptr %struct.l2t_entry, ptr %e.0161, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx4.i, align 4
  %33 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx5.i, align 4
  %xor6.i = xor i32 %34, %32
  %or.i = or i32 %xor6.i, %xor20.i
  %arrayidx8.i = getelementptr %struct.l2t_entry, ptr %e.0161, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx8.i, align 4
  %37 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx9.i, align 4
  %xor10.i = xor i32 %38, %36
  %or11.i = or i32 %or.i, %xor10.i
  %arrayidx13.i = getelementptr %struct.l2t_entry, ptr %e.0161, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx13.i, align 4
  %41 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx14.i, align 4
  %xor15.i = xor i32 %42, %40
  %or16.i = or i32 %or11.i, %xor15.i
  br label %addreq.exit

addreq.exit:                                      ; preds = %if.then.i133, %for.body.addreq.exit_crit_edge
  %retval.0.i134 = phi i32 [ %or16.i, %if.then.i133 ], [ %xor20.i, %for.body.addreq.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i134)
  %tobool20.not = icmp eq i32 %retval.0.i134, 0
  br i1 %tobool20.not, label %land.lhs.true, label %addreq.exit.for.inc_crit_edge

addreq.exit.for.inc_crit_edge:                    ; preds = %addreq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %addreq.exit
  %ifindex21 = getelementptr inbounds %struct.l2t_entry, ptr %e.0161, i32 0, i32 3
  %43 = ptrtoint ptr %ifindex21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ifindex21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %7)
  %cmp = icmp eq i32 %44, %7
  br i1 %cmp, label %land.lhs.true23, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true23:                                  ; preds = %land.lhs.true
  %vlan24 = getelementptr inbounds %struct.l2t_entry, ptr %e.0161, i32 0, i32 11
  %45 = ptrtoint ptr %vlan24 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vlan24, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %vlan.0)
  %cmp27 = icmp eq i16 %46, %vlan.0
  br i1 %cmp27, label %land.lhs.true29, label %land.lhs.true23.for.inc_crit_edge

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true29:                                  ; preds = %land.lhs.true23
  %lport30 = getelementptr inbounds %struct.l2t_entry, ptr %e.0161, i32 0, i32 13
  %47 = ptrtoint ptr %lport30 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %lport30, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %lport.0)
  %cmp33 = icmp eq i8 %48, %lport.0
  br i1 %cmp33, label %if.then35, label %land.lhs.true29.for.inc_crit_edge

land.lhs.true29.for.inc_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then35:                                        ; preds = %land.lhs.true29
  %refcnt.i = getelementptr inbounds %struct.l2t_entry, ptr %e.0161, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !63
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %49, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp.i135 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp.i135, label %if.then.i136, label %if.then35.l2t_hold.exit_crit_edge

if.then35.l2t_hold.exit_crit_edge:                ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %l2t_hold.exit

if.then.i136:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  %nfree.i = getelementptr inbounds %struct.l2t_data, ptr %d, i32 0, i32 3
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfree.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nfree.i, i32 1, i32 3, i32 1) #13
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nfree.i, ptr %nfree.i, i32 1, ptr elementtype(i32) %nfree.i) #13, !srcloc !65
  br label %l2t_hold.exit

l2t_hold.exit:                                    ; preds = %if.then.i136, %if.then35.l2t_hold.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #13
  %51 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp37 = icmp eq i32 %52, 1
  br i1 %cmp37, label %if.then39, label %l2t_hold.exit.done_crit_edge

l2t_hold.exit.done_crit_edge:                     ; preds = %l2t_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then39:                                        ; preds = %l2t_hold.exit
  %lock.i = getelementptr inbounds %struct.l2t_entry, ptr %e.0161, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %neigh1.i = getelementptr inbounds %struct.l2t_entry, ptr %e.0161, i32 0, i32 4
  %53 = ptrtoint ptr %neigh1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %neigh1.i, align 4
  %cmp.not.i = icmp eq ptr %54, %neigh
  br i1 %cmp.not.i, label %if.then39.reuse_entry.exit_crit_edge, label %if.then.i138

if.then39.reuse_entry.exit_crit_edge:             ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %reuse_entry.exit

if.then.i138:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @neigh_replace(ptr noundef nonnull %e.0161, ptr noundef %neigh) #13
  br label %reuse_entry.exit

reuse_entry.exit:                                 ; preds = %if.then.i138, %if.then39.reuse_entry.exit_crit_edge
  %nud_state2.i = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %55 = ptrtoint ptr %nud_state2.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nud_state2.i, align 8
  %conv.i = zext i8 %56 to i32
  %dmac.i = getelementptr inbounds %struct.l2t_entry, ptr %e.0161, i32 0, i32 14
  %ha.i = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 18
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dmac.i, ptr noundef dereferenceable(6) %ha.i, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i139 = icmp ne i32 %bcmp.i, 0
  %and.i140 = and i32 %conv.i, 222
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140)
  %tobool4.not.i = icmp eq i32 %and.i140, 0
  %or.cond.i = select i1 %tobool.not.i139, i1 true, i1 %tobool4.not.i
  %and6.i = and i32 %conv.i, 194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %..i = zext i1 %tobool7.not.i to i16
  %.sink.i = select i1 %or.cond.i, i16 2, i16 %..i
  %57 = ptrtoint ptr %e.0161 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %.sink.i, ptr %e.0161, align 4
  br label %done.sink.split

for.inc:                                          ; preds = %land.lhs.true29.for.inc_crit_edge, %land.lhs.true23.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %addreq.exit.for.inc_crit_edge
  %next = getelementptr inbounds %struct.l2t_entry, ptr %e.0161, i32 0, i32 6
  %58 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %58)
  %e.0 = load ptr, ptr %next, align 4
  %tobool18.not = icmp eq ptr %e.0, null
  br i1 %tobool18.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end17.for.end_crit_edge
  %nfree.i142 = getelementptr inbounds %struct.l2t_data, ptr %d, i32 0, i32 3
  %call.i.i.i143 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nfree.i142, i32 noundef 4) #13
  %59 = ptrtoint ptr %nfree.i142 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %nfree.i142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i144 = icmp eq i32 %60, 0
  br i1 %tobool.not.i144, label %for.end.done_crit_edge, label %if.end.i146

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end.i146:                                      ; preds = %for.end
  %rover.i = getelementptr inbounds %struct.l2t_data, ptr %d, i32 0, i32 4
  %61 = ptrtoint ptr %rover.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rover.i, align 4
  %l2tab.i = getelementptr inbounds %struct.l2t_data, ptr %d, i32 0, i32 5
  %l2t_size.i = getelementptr inbounds %struct.l2t_data, ptr %d, i32 0, i32 1
  %63 = ptrtoint ptr %l2t_size.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %l2t_size.i, align 4
  %arrayidx.i145 = getelementptr %struct.l2t_data, ptr %d, i32 0, i32 5, i32 %64
  %cmp.not64.i = icmp eq ptr %62, %arrayidx.i145
  br i1 %cmp.not64.i, label %if.end.i146.for.cond6.i.preheader_crit_edge, label %if.end.i146.for.body.i_crit_edge

if.end.i146.for.body.i_crit_edge:                 ; preds = %if.end.i146
  br label %for.body.i

if.end.i146.for.cond6.i.preheader_crit_edge:      ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond6.i.preheader

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i146.for.body.i_crit_edge
  %e.065.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %62, %if.end.i146.for.body.i_crit_edge ]
  %refcnt.i147 = getelementptr inbounds %struct.l2t_entry, ptr %e.065.i, i32 0, i32 9
  %call.i.i58.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i147, i32 noundef 4) #13
  %65 = ptrtoint ptr %refcnt.i147 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %refcnt.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp2.i = icmp eq i32 %66, 0
  br i1 %cmp2.i, label %for.body.i.found.i_crit_edge, label %for.inc.i

for.body.i.found.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %found.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.l2t_entry, ptr %e.065.i, i32 1
  %cmp.not.i148 = icmp eq ptr %incdec.ptr.i, %arrayidx.i145
  br i1 %cmp.not.i148, label %for.inc.i.for.cond6.i.preheader_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.cond6.i.preheader_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond6.i.preheader

for.cond6.i.preheader:                            ; preds = %for.inc.i.for.cond6.i.preheader_crit_edge, %if.end.i146.for.cond6.i.preheader_crit_edge
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.cond6.i.for.cond6.i_crit_edge, %for.cond6.i.preheader
  %e.1.i = phi ptr [ %incdec.ptr12.i, %for.cond6.i.for.cond6.i_crit_edge ], [ %l2tab.i, %for.cond6.i.preheader ]
  %refcnt7.i = getelementptr inbounds %struct.l2t_entry, ptr %e.1.i, i32 0, i32 9
  %call.i.i59.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt7.i, i32 noundef 4) #13
  %67 = ptrtoint ptr %refcnt7.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %refcnt7.i, align 4
  %tobool9.not.i = icmp eq i32 %68, 0
  %incdec.ptr12.i = getelementptr %struct.l2t_entry, ptr %e.1.i, i32 1
  br i1 %tobool9.not.i, label %for.cond6.i.found.i_crit_edge, label %for.cond6.i.for.cond6.i_crit_edge

for.cond6.i.for.cond6.i_crit_edge:                ; preds = %for.cond6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond6.i

for.cond6.i.found.i_crit_edge:                    ; preds = %for.cond6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %found.i

found.i:                                          ; preds = %for.cond6.i.found.i_crit_edge, %for.body.i.found.i_crit_edge
  %e.2.i = phi ptr [ %e.1.i, %for.cond6.i.found.i_crit_edge ], [ %e.065.i, %for.body.i.found.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.l2t_entry, ptr %e.2.i, i32 1
  %69 = ptrtoint ptr %rover.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr.i, ptr %rover.i, align 4
  %call.i.i60.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfree.i142, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nfree.i142, i32 1, i32 3, i32 1) #13
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nfree.i142, ptr %nfree.i142, i32 1, ptr elementtype(i32) %nfree.i142) #13, !srcloc !65
  %71 = ptrtoint ptr %e.2.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %e.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %72)
  %cmp16.i = icmp ult i16 %72, 5
  br i1 %cmp16.i, label %if.then18.i, label %found.i.alloc_l2e.exit_crit_edge

found.i.alloc_l2e.exit_crit_edge:                 ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_l2e.exit

if.then18.i:                                      ; preds = %found.i
  %hash.i = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 10
  %73 = ptrtoint ptr %hash.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %hash.i, align 4
  %idxprom.i = zext i16 %74 to i32
  %first.i = getelementptr %struct.l2t_data, ptr %d, i32 0, i32 5, i32 %idxprom.i, i32 5
  %75 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %first.i, align 4
  %tobool22.not66.i = icmp eq ptr %76, null
  br i1 %tobool22.not66.i, label %if.then18.i.alloc_l2e.exit_crit_edge, label %for.body23.i.preheader

if.then18.i.alloc_l2e.exit_crit_edge:             ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_l2e.exit

for.body23.i.preheader:                           ; preds = %if.then18.i
  %cmp24.i163 = icmp eq ptr %76, %e.2.i
  br i1 %cmp24.i163, label %for.body23.i.preheader.if.then26.i_crit_edge, label %for.body23.i.preheader.for.cond21.i_crit_edge

for.body23.i.preheader.for.cond21.i_crit_edge:    ; preds = %for.body23.i.preheader
  br label %for.cond21.i

for.body23.i.preheader.if.then26.i_crit_edge:     ; preds = %for.body23.i.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26.i

for.cond21.i:                                     ; preds = %for.body23.i.for.cond21.i_crit_edge, %for.body23.i.preheader.for.cond21.i_crit_edge
  %77 = phi ptr [ %79, %for.body23.i.for.cond21.i_crit_edge ], [ %76, %for.body23.i.preheader.for.cond21.i_crit_edge ]
  %next30.i = getelementptr inbounds %struct.l2t_entry, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %next30.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %next30.i, align 4
  %tobool22.not.i = icmp eq ptr %79, null
  br i1 %tobool22.not.i, label %for.cond21.i.alloc_l2e.exit_crit_edge, label %for.body23.i

for.cond21.i.alloc_l2e.exit_crit_edge:            ; preds = %for.cond21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_l2e.exit

for.body23.i:                                     ; preds = %for.cond21.i
  %cmp24.i = icmp eq ptr %79, %e.2.i
  br i1 %cmp24.i, label %if.then26.i.loopexit, label %for.body23.i.for.cond21.i_crit_edge

for.body23.i.for.cond21.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond21.i

if.then26.i.loopexit:                             ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #15
  %next30.i.le = getelementptr inbounds %struct.l2t_entry, ptr %77, i32 0, i32 6
  br label %if.then26.i

if.then26.i:                                      ; preds = %if.then26.i.loopexit, %for.body23.i.preheader.if.then26.i_crit_edge
  %p.067.i.lcssa = phi ptr [ %first.i, %for.body23.i.preheader.if.then26.i_crit_edge ], [ %next30.i.le, %if.then26.i.loopexit ]
  %next.i149 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 6
  %80 = ptrtoint ptr %next.i149 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %next.i149, align 4
  %82 = ptrtoint ptr %p.067.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %p.067.i.lcssa, align 4
  store ptr null, ptr %next.i149, align 4
  br label %alloc_l2e.exit

alloc_l2e.exit:                                   ; preds = %if.then26.i, %for.cond21.i.alloc_l2e.exit_crit_edge, %if.then18.i.alloc_l2e.exit_crit_edge, %found.i.alloc_l2e.exit_crit_edge
  %83 = ptrtoint ptr %e.2.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 6, ptr %e.2.i, align 4
  %tobool43.not = icmp eq ptr %e.2.i, null
  br i1 %tobool43.not, label %alloc_l2e.exit.done_crit_edge, label %if.then44

alloc_l2e.exit.done_crit_edge:                    ; preds = %alloc_l2e.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then44:                                        ; preds = %alloc_l2e.exit
  %lock45 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock45) #13
  %84 = ptrtoint ptr %e.2.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 2, ptr %e.2.i, align 4
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  %flags47 = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 14
  %87 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags47, align 8
  %and48 = and i32 %88, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then44.if.end52_crit_edge, label %if.then50

if.then44.if.end52_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then50:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  %dmac = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 14
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %physdev, i32 0, i32 86
  %89 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev_addr, align 64
  %91 = call ptr @memcpy(ptr %dmac, ptr %90, i32 6)
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.then44.if.end52_crit_edge
  %addr53 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 2
  %92 = call ptr @memcpy(ptr %addr53, ptr %primary_key, i32 %3)
  %ifindex55 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 3
  %93 = ptrtoint ptr %ifindex55 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %7, ptr %ifindex55, align 4
  %conv56 = trunc i32 %call to i16
  %hash57 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 10
  %94 = ptrtoint ptr %hash57 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv56, ptr %hash57, align 4
  %lport58 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 13
  %95 = ptrtoint ptr %lport58 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %lport.0, ptr %lport58, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp59 = icmp eq i32 %3, 16
  %conv61 = zext i1 %cmp59 to i8
  %v6 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 12
  %96 = ptrtoint ptr %v6 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv61, ptr %v6, align 4
  %refcnt62 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 9
  %call.i.i129 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt62, i32 noundef 4) #13
  %97 = ptrtoint ptr %refcnt62 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 1, ptr %refcnt62, align 4
  tail call fastcc void @neigh_replace(ptr noundef nonnull %e.2.i, ptr noundef %neigh)
  %vlan63 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 11
  %98 = ptrtoint ptr %vlan63 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %vlan.0, ptr %vlan63, align 2
  %99 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %first, align 4
  %next67 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 6
  %101 = ptrtoint ptr %next67 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %next67, align 4
  store ptr %e.2.i, ptr %first, align 4
  br label %done.sink.split

done.sink.split:                                  ; preds = %if.end52, %reuse_entry.exit
  %lock45.sink = phi ptr [ %lock45, %if.end52 ], [ %lock.i, %reuse_entry.exit ]
  %e.1.ph = phi ptr [ %e.2.i, %if.end52 ], [ %e.0161, %reuse_entry.exit ]
  tail call void @_raw_spin_unlock(ptr noundef %lock45.sink) #13
  br label %done

done:                                             ; preds = %done.sink.split, %alloc_l2e.exit.done_crit_edge, %for.end.done_crit_edge, %l2t_hold.exit.done_crit_edge
  %e.1 = phi ptr [ %e.0161, %l2t_hold.exit.done_crit_edge ], [ null, %alloc_l2e.exit.done_crit_edge ], [ null, %for.end.done_crit_edge ], [ %e.1.ph, %done.sink.split ]
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #13
  ret ptr %e.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @addr_hash(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %addr, i32 noundef %addr_len, i32 noundef %ifindex) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %addr_len)
  %cmp = icmp eq i32 %addr_len, 4
  %l2t_size.i = getelementptr inbounds %struct.l2t_data, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %l2t_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l2t_size.i, align 4
  %div1.i = lshr i32 %1, 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.i.i.i = add i32 %3, -559038729
  %add1.i.i.i = add i32 %ifindex, -559038729
  %xor.i.i.i = xor i32 %add1.i.i.i, -559038729
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #13
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #13
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #13
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #13
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #13
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #13
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #13
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %rem.i = urem i32 %sub20.i.i.i, %div1.i
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx1.i = getelementptr i32, ptr %addr, i32 1
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.i, align 4
  %xor2.i = xor i32 %5, %3
  %arrayidx3.i = getelementptr i32, ptr %addr, i32 2
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3.i, align 4
  %xor4.i = xor i32 %xor2.i, %7
  %arrayidx5.i = getelementptr i32, ptr %addr, i32 3
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.i, align 4
  %xor6.i = xor i32 %xor4.i, %9
  %add.i.i.i6 = add i32 %xor6.i, -559038729
  %add1.i.i.i7 = add i32 %ifindex, -559038729
  %xor.i.i.i8 = xor i32 %add1.i.i.i7, -559038729
  %or.i.i.i.i9 = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i7, i32 %add1.i.i.i7, i32 14) #13
  %sub.i.i.i10 = sub i32 %xor.i.i.i8, %or.i.i.i.i9
  %xor3.i.i.i11 = xor i32 %add.i.i.i6, %sub.i.i.i10
  %or.i1.i.i.i12 = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i10, i32 %sub.i.i.i10, i32 11) #13
  %sub5.i.i.i13 = sub i32 %xor3.i.i.i11, %or.i1.i.i.i12
  %xor6.i.i.i14 = xor i32 %sub5.i.i.i13, %add1.i.i.i7
  %or.i2.i.i.i15 = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i13, i32 %sub5.i.i.i13, i32 25) #13
  %sub8.i.i.i16 = sub i32 %xor6.i.i.i14, %or.i2.i.i.i15
  %xor9.i.i.i17 = xor i32 %sub8.i.i.i16, %sub.i.i.i10
  %or.i3.i.i.i18 = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i16, i32 %sub8.i.i.i16, i32 16) #13
  %sub11.i.i.i19 = sub i32 %xor9.i.i.i17, %or.i3.i.i.i18
  %xor12.i.i.i20 = xor i32 %sub11.i.i.i19, %sub5.i.i.i13
  %or.i4.i.i.i21 = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i19, i32 %sub11.i.i.i19, i32 4) #13
  %sub14.i.i.i22 = sub i32 %xor12.i.i.i20, %or.i4.i.i.i21
  %xor15.i.i.i23 = xor i32 %sub14.i.i.i22, %sub8.i.i.i16
  %or.i5.i.i.i24 = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i22, i32 %sub14.i.i.i22, i32 14) #13
  %sub17.i.i.i25 = sub i32 %xor15.i.i.i23, %or.i5.i.i.i24
  %xor18.i.i.i26 = xor i32 %sub17.i.i.i25, %sub11.i.i.i19
  %or.i6.i.i.i27 = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i25, i32 %sub17.i.i.i25, i32 24) #13
  %sub20.i.i.i28 = sub i32 %xor18.i.i.i26, %or.i6.i.i.i27
  %rem.i29 = urem i32 %sub20.i.i.i28, %div1.i
  %add.i = add nuw i32 %rem.i29, %div1.i
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %rem.i, %cond.true ], [ %add.i, %cond.false ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neigh_replace(ptr nocapture noundef %e, ptr noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !66
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !67

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !52

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %neigh = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 4
  %2 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %neigh, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %refcount_inc.exit.if.end_crit_edge, label %if.then

refcount_inc.exit.if.end_crit_edge:               ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %refcount_inc.exit
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %3, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !58
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !52

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !59
  tail call void @neigh_destroy(ptr noundef nonnull %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %refcount_inc.exit.if.end_crit_edge
  %5 = ptrtoint ptr %neigh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %n, ptr %neigh, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @cxgb4_select_ntuple(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %l2t) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %vlan_shift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 12
  %2 = ptrtoint ptr %vlan_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vlan_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %vlan = getelementptr inbounds %struct.l2t_entry, ptr %l2t, i32 0, i32 11
  %4 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlan, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %5)
  %cmp2.not = icmp eq i16 %5, 4095
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %5 to i32
  %or = or i32 %conv, 65536
  %conv6 = zext i32 %or to i64
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 %conv6, %sh_prom
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ntuple.0 = phi i64 [ %shl, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %port_shift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 10
  %6 = ptrtoint ptr %port_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp9 = icmp sgt i32 %7, -1
  br i1 %cmp9, label %if.then11, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %lport = getelementptr inbounds %struct.l2t_entry, ptr %l2t, i32 0, i32 13
  %8 = ptrtoint ptr %lport to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lport, align 1
  %conv12 = zext i8 %9 to i64
  %sh_prom14 = zext i32 %7 to i64
  %shl15 = shl i64 %conv12, %sh_prom14
  %or16 = or i64 %shl15, %ntuple.0
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end.if.end17_crit_edge
  %ntuple.1 = phi i64 [ %or16, %if.then11 ], [ %ntuple.0, %if.end.if.end17_crit_edge ]
  %protocol_shift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 14
  %10 = ptrtoint ptr %protocol_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %protocol_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp18 = icmp sgt i32 %11, -1
  br i1 %cmp18, label %if.then20, label %if.end17.if.end25_crit_edge

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %sh_prom22 = zext i32 %11 to i64
  %shl23 = shl i64 6, %sh_prom22
  %or24 = or i64 %shl23, %ntuple.1
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end17.if.end25_crit_edge
  %ntuple.2 = phi i64 [ %or24, %if.then20 ], [ %ntuple.1, %if.end17.if.end25_crit_edge ]
  %vnic_shift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 11
  %12 = ptrtoint ptr %vnic_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vnic_shift, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp26 = icmp sgt i32 %13, -1
  br i1 %cmp26, label %land.lhs.true28, label %if.end25.if.end43_crit_edge

if.end25.if.end43_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

land.lhs.true28:                                  ; preds = %if.end25
  %ingress_config = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 7
  %14 = ptrtoint ptr %ingress_config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ingress_config, align 8
  %and = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true28.if.end43_crit_edge, label %if.then29

land.lhs.true28.if.end43_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then29:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  %vin = getelementptr i8, ptr %dev, i32 2964
  %16 = ptrtoint ptr %vin to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vin, align 4
  %conv31 = zext i8 %17 to i32
  %pf = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pf, align 4
  %shl33 = shl i32 %19, 7
  %or34 = or i32 %shl33, %conv31
  %vivld = getelementptr i8, ptr %dev, i32 2965
  %20 = ptrtoint ptr %vivld to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vivld, align 1
  %conv35 = zext i8 %21 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %or37 = or i32 %or34, %shl36
  %conv38 = zext i32 %or37 to i64
  %sh_prom40 = zext i32 %13 to i64
  %shl41 = shl i64 %conv38, %sh_prom40
  %or42 = or i64 %shl41, %ntuple.2
  br label %if.end43

if.end43:                                         ; preds = %if.then29, %land.lhs.true28.if.end43_crit_edge, %if.end25.if.end43_crit_edge
  %ntuple.3 = phi i64 [ %or42, %if.then29 ], [ %ntuple.2, %land.lhs.true28.if.end43_crit_edge ], [ %ntuple.2, %if.end25.if.end43_crit_edge ]
  ret i64 %ntuple.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t4_l2t_update(ptr noundef %adap, ptr noundef %neigh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tbl = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 1
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tbl, align 4
  %key_len = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_len, align 4
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 27
  %dev = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 25
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex, align 4
  %l2t = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 30
  %8 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %l2t, align 8
  %call = tail call fastcc i32 @addr_hash(ptr noundef %9, ptr noundef %primary_key, i32 noundef %3, i32 noundef %7)
  %lock = getelementptr inbounds %struct.l2t_data, ptr %9, i32 0, i32 2
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #13
  %first = getelementptr %struct.l2t_data, ptr %9, i32 0, i32 5, i32 %call, i32 5
  %10 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %10)
  %e.0122 = load ptr, ptr %first, align 4
  %tobool.not123 = icmp eq ptr %e.0122, null
  br i1 %tobool.not123, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %11 = ptrtoint ptr %primary_key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %primary_key, align 4
  %arrayidx5.i = getelementptr %struct.neighbour, ptr %neigh, i32 1
  %arrayidx9.i = getelementptr %struct.neighbour, ptr %neigh, i32 1, i32 1
  %arrayidx14.i = getelementptr %struct.neighbour, ptr %neigh, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %e.0124 = phi ptr [ %e.0122, %for.body.lr.ph ], [ %e.0, %for.inc.for.body_crit_edge ]
  %v6.i = getelementptr inbounds %struct.l2t_entry, ptr %e.0124, i32 0, i32 12
  %13 = ptrtoint ptr %v6.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %v6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %addr17.i = getelementptr inbounds %struct.l2t_entry, ptr %e.0124, i32 0, i32 2
  %15 = ptrtoint ptr %addr17.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr17.i, align 4
  %xor20.i = xor i32 %12, %16
  br i1 %tobool.not.i, label %for.body.addreq.exit_crit_edge, label %if.then.i

for.body.addreq.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %addreq.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4.i = getelementptr %struct.l2t_entry, ptr %e.0124, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx4.i, align 4
  %19 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx5.i, align 4
  %xor6.i = xor i32 %20, %18
  %or.i = or i32 %xor6.i, %xor20.i
  %arrayidx8.i = getelementptr %struct.l2t_entry, ptr %e.0124, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx8.i, align 4
  %23 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx9.i, align 4
  %xor10.i = xor i32 %24, %22
  %or11.i = or i32 %or.i, %xor10.i
  %arrayidx13.i = getelementptr %struct.l2t_entry, ptr %e.0124, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx13.i, align 4
  %27 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx14.i, align 4
  %xor15.i = xor i32 %28, %26
  %or16.i = or i32 %or11.i, %xor15.i
  br label %addreq.exit

addreq.exit:                                      ; preds = %if.then.i, %for.body.addreq.exit_crit_edge
  %retval.0.i = phi i32 [ %or16.i, %if.then.i ], [ %xor20.i, %for.body.addreq.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool2.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool2.not, label %land.lhs.true, label %addreq.exit.for.inc_crit_edge

addreq.exit.for.inc_crit_edge:                    ; preds = %addreq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %addreq.exit
  %ifindex3 = getelementptr inbounds %struct.l2t_entry, ptr %e.0124, i32 0, i32 3
  %29 = ptrtoint ptr %ifindex3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ifindex3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %7)
  %cmp = icmp eq i32 %30, %7
  br i1 %cmp, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %lock4 = getelementptr inbounds %struct.l2t_entry, ptr %e.0124, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock4) #13
  %refcnt = getelementptr inbounds %struct.l2t_entry, ptr %e.0124, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #13
  %31 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool6.not = icmp eq i32 %32, 0
  br i1 %tobool6.not, label %if.end, label %found

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %lock4) #13
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %addreq.exit.for.inc_crit_edge
  %next = getelementptr inbounds %struct.l2t_entry, ptr %e.0124, i32 0, i32 6
  %33 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %33)
  %e.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %e.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end, %entry.for.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #13
  br label %cleanup

found:                                            ; preds = %if.then
  tail call void @_raw_read_unlock(ptr noundef %lock) #13
  %neigh12 = getelementptr inbounds %struct.l2t_entry, ptr %e.0124, i32 0, i32 4
  %34 = ptrtoint ptr %neigh12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %neigh12, align 4
  %cmp13.not = icmp eq ptr %35, %neigh
  br i1 %cmp13.not, label %found.if.end15_crit_edge, label %if.then14

found.if.end15_crit_edge:                         ; preds = %found
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then14:                                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @neigh_replace(ptr noundef nonnull %e.0124, ptr noundef %neigh)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %found.if.end15_crit_edge
  %36 = ptrtoint ptr %e.0124 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %e.0124, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %37)
  %cmp16 = icmp eq i16 %37, 2
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %38 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nud_state, align 8
  br i1 %cmp16, label %if.then18, label %if.else35

if.then18:                                        ; preds = %if.end15
  %conv19 = zext i8 %39 to i32
  %and = and i32 %conv19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then18
  %arpq22 = getelementptr inbounds %struct.l2t_entry, ptr %e.0124, i32 0, i32 7
  %phi.cmp = icmp eq ptr %arpq22, null
  br i1 %phi.cmp, label %if.then21.if.end66_crit_edge, label %while.cond.preheader

if.then21.if.end66_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

while.cond.preheader:                             ; preds = %if.then21
  %40 = ptrtoint ptr %arpq22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arpq22, align 4
  %cmp.i.i126 = icmp eq ptr %41, %arpq22
  %tobool.not.i118120127 = icmp eq ptr %41, null
  %tobool.not.i118128 = or i1 %cmp.i.i126, %tobool.not.i118120127
  br i1 %tobool.not.i118128, label %while.cond.preheader.if.end66_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end66_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %qlen.i.i = getelementptr inbounds %struct.l2t_entry, ptr %e.0124, i32 0, i32 7, i32 1
  br label %while.body

if.else:                                          ; preds = %if.then18
  %and25 = and i32 %conv19, 198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else.if.end66_crit_edge, label %land.lhs.true27

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

land.lhs.true27:                                  ; preds = %if.else
  %arpq28 = getelementptr inbounds %struct.l2t_entry, ptr %e.0124, i32 0, i32 7
  %42 = ptrtoint ptr %arpq28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arpq28, align 4
  %cmp.i.not = icmp eq ptr %43, %arpq28
  br i1 %cmp.i.not, label %land.lhs.true27.if.end66_crit_edge, label %land.lhs.true27.if.end66.sink.split_crit_edge

land.lhs.true27.if.end66.sink.split_crit_edge:    ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.sink.split

land.lhs.true27.if.end66_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.else35:                                        ; preds = %if.end15
  %44 = and i8 %39, -62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool39.not = icmp eq i8 %44, 0
  %conv40 = zext i1 %tobool39.not to i16
  %45 = ptrtoint ptr %e.0124 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv40, ptr %e.0124, align 4
  %dmac = getelementptr inbounds %struct.l2t_entry, ptr %e.0124, i32 0, i32 14
  %ha = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 18
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dmac, ptr noundef dereferenceable(6) %ha, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool45.not = icmp eq i32 %bcmp, 0
  br i1 %tobool45.not, label %if.else35.if.end66_crit_edge, label %if.else35.if.end66.sink.split_crit_edge

if.else35.if.end66.sink.split_crit_edge:          ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.sink.split

if.else35.if.end66_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

while.body:                                       ; preds = %if.end64.while.body_crit_edge, %while.body.lr.ph
  %46 = phi ptr [ %41, %while.body.lr.ph ], [ %60, %if.end64.while.body_crit_edge ]
  %47 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %46, i32 0, i32 1
  %51 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %46, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %52, ptr %prev17.i.i, align 4
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %50, ptr %52, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock4) #13
  %arp_err_handler = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 3, i32 4
  %55 = ptrtoint ptr %arp_err_handler to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arp_err_handler, align 4
  %tobool59.not = icmp eq ptr %56, null
  br i1 %tobool59.not, label %if.else62, label %if.then60

if.then60:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %cb56 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 3
  %57 = ptrtoint ptr %cb56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cb56, align 4
  tail call void %56(ptr noundef %58, ptr noundef nonnull %46) #13
  br label %if.end64

if.else62:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %call63 = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %46) #13
  br label %if.end64

if.end64:                                         ; preds = %if.else62, %if.then60
  tail call void @_raw_spin_lock(ptr noundef %lock4) #13
  %59 = ptrtoint ptr %arpq22 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arpq22, align 4
  %cmp.i.i = icmp eq ptr %60, %arpq22
  %tobool.not.i118120 = icmp eq ptr %60, null
  %tobool.not.i118 = or i1 %cmp.i.i, %tobool.not.i118120
  br i1 %tobool.not.i118, label %if.end64.if.end66_crit_edge, label %if.end64.while.body_crit_edge

if.end64.while.body_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end64.if.end66_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.end66.sink.split:                              ; preds = %if.else35.if.end66.sink.split_crit_edge, %land.lhs.true27.if.end66.sink.split_crit_edge
  %.sink = phi i32 [ 1, %land.lhs.true27.if.end66.sink.split_crit_edge ], [ 0, %if.else35.if.end66.sink.split_crit_edge ]
  %call47 = tail call fastcc i32 @write_l2e(ptr noundef %adap, ptr noundef nonnull %e.0124, i32 noundef %.sink)
  br label %if.end66

if.end66:                                         ; preds = %if.end66.sink.split, %if.end64.if.end66_crit_edge, %if.else35.if.end66_crit_edge, %land.lhs.true27.if.end66_crit_edge, %if.else.if.end66_crit_edge, %while.cond.preheader.if.end66_crit_edge, %if.then21.if.end66_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @t4_l2t_alloc_switching(ptr noundef %adap, i16 noundef zeroext %vlan, i8 noundef zeroext %port, ptr nocapture noundef readonly %eth_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %l2t = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 30
  %0 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l2t, align 8
  %lock = getelementptr inbounds %struct.l2t_data, ptr %1, i32 0, i32 2
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #13
  %l2tab.i = getelementptr inbounds %struct.l2t_data, ptr %1, i32 0, i32 5
  %l2t_size.i = getelementptr inbounds %struct.l2t_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %l2t_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l2t_size.i, align 4
  %arrayidx2.i = getelementptr %struct.l2t_data, ptr %1, i32 0, i32 5, i32 %3
  %cmp.not76.i = icmp eq ptr %l2tab.i, %arrayidx2.i
  br i1 %cmp.not76.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %add.ptr1.i.i = getelementptr i8, ptr %eth_addr, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %first_free.079.i = phi ptr [ null, %for.body.lr.ph.i ], [ %first_free.1.i, %for.inc.i.for.body.i_crit_edge ]
  %e.077.i = phi ptr [ %l2tab.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.l2t_entry, ptr %e.077.i, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #13
  %4 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.i = icmp eq i32 %5, 0
  br i1 %cmp3.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not.i = icmp eq ptr %first_free.079.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr %e.077.i, ptr %first_free.079.i
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %6 = ptrtoint ptr %e.077.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %e.077.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %7)
  %cmp5.i = icmp eq i16 %7, 5
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then7.i:                                       ; preds = %if.else.i
  %dmac8.i = getelementptr inbounds %struct.l2t_entry, ptr %e.077.i, i32 0, i32 14
  %8 = ptrtoint ptr %dmac8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dmac8.i, align 4
  %10 = ptrtoint ptr %eth_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eth_addr, align 4
  %xor.i.i = xor i32 %11, %9
  %add.ptr.i.i = getelementptr %struct.l2t_entry, ptr %e.077.i, i32 0, i32 14, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  %14 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %15, %13
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.then7.i.for.inc.i_crit_edge

if.then7.i.for.inc.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.then7.i
  %vlan11.i = getelementptr inbounds %struct.l2t_entry, ptr %e.077.i, i32 0, i32 11
  %16 = ptrtoint ptr %vlan11.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vlan11.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %vlan)
  %cmp14.i = icmp eq i16 %17, %vlan
  br i1 %cmp14.i, label %land.lhs.true16.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true16.i:                                ; preds = %land.lhs.true.i
  %lport.i = getelementptr inbounds %struct.l2t_entry, ptr %e.077.i, i32 0, i32 13
  %18 = ptrtoint ptr %lport.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lport.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %port)
  %cmp19.i = icmp eq i8 %19, %port
  br i1 %cmp19.i, label %land.lhs.true16.i.find_or_alloc_l2e.exit_crit_edge, label %land.lhs.true16.i.for.inc.i_crit_edge

land.lhs.true16.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true16.i.find_or_alloc_l2e.exit_crit_edge: ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_or_alloc_l2e.exit

for.inc.i:                                        ; preds = %land.lhs.true16.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %if.then7.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %if.then.i
  %first_free.1.i = phi ptr [ %first_free.079.i, %land.lhs.true16.i.for.inc.i_crit_edge ], [ %first_free.079.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %first_free.079.i, %if.then7.i.for.inc.i_crit_edge ], [ %first_free.079.i, %if.else.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.then.i ]
  %incdec.ptr.i = getelementptr %struct.l2t_entry, ptr %e.077.i, i32 1
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, %arrayidx2.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %tobool25.not.i = icmp eq ptr %first_free.1.i, null
  br i1 %tobool25.not.i, label %for.end.i.cleanup_crit_edge, label %if.then26.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then26.i:                                      ; preds = %for.end.i
  %20 = ptrtoint ptr %first_free.1.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %first_free.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %21)
  %cmp30.i = icmp ult i16 %21, 5
  br i1 %cmp30.i, label %if.then32.i, label %if.then26.i.if.end46.i_crit_edge

if.then26.i.if.end46.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i

if.then32.i:                                      ; preds = %if.then26.i
  %hash.i = getelementptr inbounds %struct.l2t_entry, ptr %first_free.1.i, i32 0, i32 10
  %22 = ptrtoint ptr %hash.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hash.i, align 4
  %idxprom.i = zext i16 %23 to i32
  %first.i = getelementptr %struct.l2t_data, ptr %1, i32 0, i32 5, i32 %idxprom.i, i32 5
  %24 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %first.i, align 4
  %tobool36.not80.i = icmp eq ptr %25, null
  br i1 %tobool36.not80.i, label %if.then32.i.if.end46.i_crit_edge, label %for.body37.i.preheader

if.then32.i.if.end46.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i

for.body37.i.preheader:                           ; preds = %if.then32.i
  %cmp38.i51 = icmp eq ptr %25, %first_free.1.i
  br i1 %cmp38.i51, label %for.body37.i.preheader.if.then40.i_crit_edge, label %for.body37.i.preheader.for.cond35.i_crit_edge

for.body37.i.preheader.for.cond35.i_crit_edge:    ; preds = %for.body37.i.preheader
  br label %for.cond35.i

for.body37.i.preheader.if.then40.i_crit_edge:     ; preds = %for.body37.i.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then40.i

for.cond35.i:                                     ; preds = %for.body37.i.for.cond35.i_crit_edge, %for.body37.i.preheader.for.cond35.i_crit_edge
  %26 = phi ptr [ %28, %for.body37.i.for.cond35.i_crit_edge ], [ %25, %for.body37.i.preheader.for.cond35.i_crit_edge ]
  %next44.i = getelementptr inbounds %struct.l2t_entry, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %next44.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %next44.i, align 4
  %tobool36.not.i = icmp eq ptr %28, null
  br i1 %tobool36.not.i, label %for.cond35.i.if.end46.i_crit_edge, label %for.body37.i

for.cond35.i.if.end46.i_crit_edge:                ; preds = %for.cond35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i

for.body37.i:                                     ; preds = %for.cond35.i
  %cmp38.i = icmp eq ptr %28, %first_free.1.i
  br i1 %cmp38.i, label %if.then40.i.loopexit, label %for.body37.i.for.cond35.i_crit_edge

for.body37.i.for.cond35.i_crit_edge:              ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond35.i

if.then40.i.loopexit:                             ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #15
  %next44.i.le = getelementptr inbounds %struct.l2t_entry, ptr %26, i32 0, i32 6
  br label %if.then40.i

if.then40.i:                                      ; preds = %if.then40.i.loopexit, %for.body37.i.preheader.if.then40.i_crit_edge
  %p.081.i.lcssa = phi ptr [ %first.i, %for.body37.i.preheader.if.then40.i_crit_edge ], [ %next44.i.le, %if.then40.i.loopexit ]
  %next.i = getelementptr inbounds %struct.l2t_entry, ptr %first_free.1.i, i32 0, i32 6
  %29 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %next.i, align 4
  %31 = ptrtoint ptr %p.081.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %p.081.i.lcssa, align 4
  store ptr null, ptr %next.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then40.i, %for.cond35.i.if.end46.i_crit_edge, %if.then32.i.if.end46.i_crit_edge, %if.then26.i.if.end46.i_crit_edge
  %32 = ptrtoint ptr %first_free.1.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 6, ptr %first_free.1.i, align 4
  br label %find_or_alloc_l2e.exit

find_or_alloc_l2e.exit:                           ; preds = %if.end46.i, %land.lhs.true16.i.find_or_alloc_l2e.exit_crit_edge
  %retval.0.i = phi ptr [ %first_free.1.i, %if.end46.i ], [ %e.077.i, %land.lhs.true16.i.find_or_alloc_l2e.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %find_or_alloc_l2e.exit.cleanup_crit_edge, label %if.then

find_or_alloc_l2e.exit.cleanup_crit_edge:         ; preds = %find_or_alloc_l2e.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %find_or_alloc_l2e.exit
  %lock1 = getelementptr inbounds %struct.l2t_entry, ptr %retval.0.i, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock1) #13
  %refcnt = getelementptr inbounds %struct.l2t_entry, ptr %retval.0.i, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #13
  %33 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool3.not = icmp eq i32 %34, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %35 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 5, ptr %retval.0.i, align 4
  %vlan5 = getelementptr inbounds %struct.l2t_entry, ptr %retval.0.i, i32 0, i32 11
  %36 = ptrtoint ptr %vlan5 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %vlan, ptr %vlan5, align 2
  %lport = getelementptr inbounds %struct.l2t_entry, ptr %retval.0.i, i32 0, i32 13
  %37 = ptrtoint ptr %lport to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %port, ptr %lport, align 1
  %dmac = getelementptr inbounds %struct.l2t_entry, ptr %retval.0.i, i32 0, i32 14
  %38 = ptrtoint ptr %eth_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %eth_addr, align 4
  %40 = ptrtoint ptr %dmac to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dmac, align 4
  %41 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr1.i.i, align 2
  %add.ptr1.i = getelementptr %struct.l2t_entry, ptr %retval.0.i, i32 0, i32 14, i32 4
  %43 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %add.ptr1.i, align 2
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  %44 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 1, ptr %refcnt, align 4
  %call7 = tail call fastcc i32 @write_l2e(ptr noundef %adap, ptr noundef nonnull %retval.0.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.then4.cleanup.sink.split_crit_edge

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then8:                                         ; preds = %if.then4
  %call.i.i.i41 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #13
  %45 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i = icmp eq i32 %46, 0
  br i1 %cmp.i, label %if.then.i43, label %if.then8._t4_l2e_free.exit_crit_edge

if.then8._t4_l2e_free.exit_crit_edge:             ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %_t4_l2e_free.exit

if.then.i43:                                      ; preds = %if.then8
  %neigh.i = getelementptr inbounds %struct.l2t_entry, ptr %retval.0.i, i32 0, i32 4
  %47 = ptrtoint ptr %neigh.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %neigh.i, align 4
  %tobool.not.i42 = icmp eq ptr %48, null
  br i1 %tobool.not.i42, label %if.then.i43.if.end.i_crit_edge, label %if.then1.i

if.then.i43.if.end.i_crit_edge:                   ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i43
  %refcnt.i.i = getelementptr inbounds %struct.neighbour, ptr %48, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #13
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #13, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.neigh_release.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !52

if.end5.i.i.i.i.i.neigh_release.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %neigh_release.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #13
  br label %neigh_release.exit.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !59
  tail call void @neigh_destroy(ptr noundef nonnull %48) #13
  br label %neigh_release.exit.i

neigh_release.exit.i:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.neigh_release.exit.i_crit_edge
  %50 = ptrtoint ptr %neigh.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %neigh.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %neigh_release.exit.i, %if.then.i43.if.end.i_crit_edge
  %arpq.i = getelementptr inbounds %struct.l2t_entry, ptr %retval.0.i, i32 0, i32 7
  %51 = ptrtoint ptr %arpq.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arpq.i, align 4
  %cmp.i.i2.i.i = icmp eq ptr %52, %arpq.i
  %tobool.not.i13.i.i = icmp eq ptr %52, null
  %tobool.not.i4.i.i = or i1 %cmp.i.i2.i.i, %tobool.not.i13.i.i
  br i1 %tobool.not.i4.i.i, label %if.end.i._t4_l2e_free.exit_crit_edge, label %while.body.lr.ph.i.i

if.end.i._t4_l2e_free.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_t4_l2e_free.exit

while.body.lr.ph.i.i:                             ; preds = %if.end.i
  %qlen.i.i.i.i = getelementptr inbounds %struct.l2t_entry, ptr %retval.0.i, i32 0, i32 7, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %53 = phi ptr [ %52, %while.body.lr.ph.i.i ], [ %63, %while.body.i.i.while.body.i.i_crit_edge ]
  %54 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qlen.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %55, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %53, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %53, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %59, ptr %prev17.i.i.i.i, align 4
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %57, ptr %59, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %53, i32 noundef 0) #13
  %62 = ptrtoint ptr %arpq.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arpq.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %63, %arpq.i
  %tobool.not.i1.i.i = icmp eq ptr %63, null
  %tobool.not.i.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i1.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i.i._t4_l2e_free.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.body.i.i._t4_l2e_free.exit_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_t4_l2e_free.exit

_t4_l2e_free.exit:                                ; preds = %while.body.i.i._t4_l2e_free.exit_crit_edge, %if.end.i._t4_l2e_free.exit_crit_edge, %if.then8._t4_l2e_free.exit_crit_edge
  %idx.i = getelementptr inbounds %struct.l2t_entry, ptr %retval.0.i, i32 0, i32 1
  %64 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %idx.i, align 2
  %conv.i = zext i16 %65 to i32
  %.neg.i = mul nsw i32 %conv.i, -152
  %idx.neg.i = add nsw i32 %.neg.i, -60
  %add.ptr.i44 = getelementptr i8, ptr %retval.0.i, i32 %idx.neg.i
  %nfree.i = getelementptr inbounds %struct.l2t_data, ptr %add.ptr.i44, i32 0, i32 3
  %call.i.i11.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfree.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nfree.i, i32 1, i32 3, i32 1) #13
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nfree.i, ptr %nfree.i, i32 1, ptr elementtype(i32) %nfree.i) #13, !srcloc !60
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !60
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %_t4_l2e_free.exit, %if.then4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ null, %_t4_l2e_free.exit ], [ %retval.0.i, %if.then4.cleanup.sink.split_crit_edge ], [ %retval.0.i, %if.else ]
  tail call void @_raw_spin_unlock(ptr noundef %lock1) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %find_or_alloc_l2e.exit.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %find_or_alloc_l2e.exit.cleanup_crit_edge ], [ null, %for.end.i.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cxgb4_l2t_alloc_switching(ptr nocapture noundef readonly %dev, i16 noundef zeroext %vlan, i8 noundef zeroext %port, ptr nocapture noundef readonly %dmac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1 = tail call ptr @t4_l2t_alloc_switching(ptr noundef %1, i16 noundef zeroext %vlan, i8 noundef zeroext %port, ptr noundef %dmac)
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @t4_init_l2t(i32 noundef %l2t_start, i32 noundef %l2t_end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %l2t_end, i32 %l2t_start)
  %cmp.not = icmp ule i32 %l2t_end, %l2t_start
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %l2t_end)
  %cmp1 = icmp ugt i32 %l2t_end, 4095
  %or.cond = or i1 %cmp.not, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %l2t_end, %l2t_start
  %add = add i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp2 = icmp ult i32 %add, 2
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 152) #13
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %3 = add nuw i32 %2, 60
  %retval.0.i = select i1 %1, i32 -1, i32 %3
  %call.i.i56 = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 3520, i32 noundef -1) #19
  %tobool.not = icmp eq ptr %call.i.i56, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %call.i.i56 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %l2t_start, ptr %call.i.i56, align 4
  %l2t_size9 = getelementptr inbounds %struct.l2t_data, ptr %call.i.i56, i32 0, i32 1
  %5 = ptrtoint ptr %l2t_size9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %l2t_size9, align 4
  %l2tab = getelementptr inbounds %struct.l2t_data, ptr %call.i.i56, i32 0, i32 5
  %rover = getelementptr inbounds %struct.l2t_data, ptr %call.i.i56, i32 0, i32 4
  %6 = ptrtoint ptr %rover to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %l2tab, ptr %rover, align 4
  %nfree = getelementptr inbounds %struct.l2t_data, ptr %call.i.i56, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfree, i32 noundef 4) #13
  %7 = ptrtoint ptr %nfree to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %add, ptr %nfree, align 4
  %lock = getelementptr inbounds %struct.l2t_data, ptr %call.i.i56, i32 0, i32 2
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @t4_init_l2t.__key) #13
  %8 = ptrtoint ptr %l2t_size9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %l2t_size9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1157.not = icmp eq i32 %9, 0
  br i1 %cmp1157.not, label %if.end7.cleanup_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.058 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %conv = trunc i32 %i.058 to i16
  %arrayidx = getelementptr %struct.l2t_data, ptr %call.i.i56, i32 0, i32 5, i32 %i.058
  %idx = getelementptr %struct.l2t_data, ptr %call.i.i56, i32 0, i32 5, i32 %i.058, i32 1
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %idx, align 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 6, ptr %arrayidx, align 4
  %lock18 = getelementptr %struct.l2t_data, ptr %call.i.i56, i32 0, i32 5, i32 %i.058, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock18, ptr noundef nonnull @.str.7, ptr noundef nonnull @t4_init_l2t.__key.6, i16 noundef signext 3) #13
  %refcnt = getelementptr %struct.l2t_data, ptr %call.i.i56, i32 0, i32 5, i32 %i.058, i32 9
  %call.i.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  %12 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %refcnt, align 4
  %arpq = getelementptr %struct.l2t_data, ptr %call.i.i56, i32 0, i32 5, i32 %i.058, i32 7
  %lock.i = getelementptr %struct.l2t_data, ptr %call.i.i56, i32 0, i32 5, i32 %i.058, i32 7, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %13 = ptrtoint ptr %arpq to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arpq, ptr %arpq, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.107, ptr %arpq, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arpq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr %struct.l2t_data, ptr %call.i.i56, i32 0, i32 5, i32 %i.058, i32 7, i32 1
  %15 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qlen.i.i, align 4
  %inc = add nuw i32 %i.058, 1
  %16 = ptrtoint ptr %l2t_size9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %l2t_size9, align 4
  %cmp11 = icmp ult i32 %inc, %17
  br i1 %cmp11, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ], [ %call.i.i56, %if.end7.cleanup_crit_edge ], [ %call.i.i56, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cxgb4_check_l2t_valid(ptr noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2t_seq_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @l2t_seq_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %l2t = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %l2t, align 8
  %private = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__neigh_event_send(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_mgmt_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @l2t_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add i64 %1, -1
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %l2t_size.i = getelementptr inbounds %struct.l2t_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %l2t_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %l2t_size.i, align 4
  %conv.i = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv.i)
  %cmp.not.i = icmp slt i64 %sub, %conv.i
  %idxprom.i = trunc i64 %sub to i32
  %arrayidx.i = getelementptr %struct.l2t_data, ptr %3, i32 0, i32 5, i32 %idxprom.i
  %cond.i = select i1 %cmp.not.i, ptr %arrayidx.i, ptr null
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %cond.i, %cond.true ], [ inttoptr (i32 1 to ptr), %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2t_seq_stop(ptr nocapture noundef %seq, ptr nocapture noundef %v) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @l2t_seq_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %l2t_size.i = getelementptr inbounds %struct.l2t_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %l2t_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %l2t_size.i, align 4
  %conv.i = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv.i)
  %cmp.not.i = icmp slt i64 %1, %conv.i
  %idxprom.i = trunc i64 %1 to i32
  %arrayidx.i = getelementptr %struct.l2t_data, ptr %3, i32 0, i32 5, i32 %idxprom.i
  %cond.i = select i1 %cmp.not.i, ptr %arrayidx.i, ptr null
  %inc = add i64 %1, 1
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %inc, ptr %pos, align 8
  ret ptr %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2t_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %ip = alloca [60 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.9) #13
  br label %if.end21

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %ip) #13
  %0 = call ptr @memset(ptr %ip, i32 255, i32 60)
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.l2t_entry, ptr %v, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %4)
  %cmp1 = icmp eq i16 %4, 5
  br i1 %cmp1, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ip, align 1
  br label %if.end

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %v6 = getelementptr inbounds %struct.l2t_entry, ptr %v, i32 0, i32 12
  %6 = ptrtoint ptr %v6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %v6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, ptr @.str.11, ptr @.str.10
  %addr = getelementptr inbounds %struct.l2t_entry, ptr %v, i32 0, i32 2
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %ip, ptr noundef nonnull %cond, ptr noundef %addr)
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  %idx = getelementptr inbounds %struct.l2t_entry, ptr %v, i32 0, i32 1
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %idx, align 2
  %conv7 = zext i16 %9 to i32
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 4
  %add = add i32 %11, %conv7
  %dmac = getelementptr inbounds %struct.l2t_entry, ptr %v, i32 0, i32 14
  %vlan = getelementptr inbounds %struct.l2t_entry, ptr %v, i32 0, i32 11
  %12 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vlan, align 2
  %14 = and i16 %13, 4095
  %and = zext i16 %14 to i32
  %15 = lshr i16 %13, 13
  %16 = zext i16 %15 to i32
  %lport = getelementptr inbounds %struct.l2t_entry, ptr %v, i32 0, i32 13
  %17 = ptrtoint ptr %lport to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lport, align 1
  %conv12 = zext i8 %18 to i32
  %19 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %v, align 4
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %20, label %sw.default.i [
    i16 0, label %if.end.l2e_state.exit_crit_edge
    i16 1, label %sw.bb1.i
    i16 3, label %sw.bb2.i
    i16 2, label %sw.bb3.i
    i16 5, label %sw.bb5.i
  ]

if.end.l2e_state.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %l2e_state.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %l2e_state.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %l2e_state.exit

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %arpq.i = getelementptr inbounds %struct.l2t_entry, ptr %v, i32 0, i32 7
  %22 = ptrtoint ptr %arpq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arpq.i, align 4
  %cmp.i.not.i = icmp eq ptr %23, %arpq.i
  %phi.cast = select i1 %cmp.i.not.i, i32 82, i32 65
  br label %l2e_state.exit

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %l2e_state.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %l2e_state.exit

l2e_state.exit:                                   ; preds = %sw.default.i, %sw.bb5.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.l2e_state.exit_crit_edge
  %retval.0.i = phi i32 [ 85, %sw.default.i ], [ 88, %sw.bb5.i ], [ %phi.cast, %sw.bb3.i ], [ 87, %sw.bb2.i ], [ 83, %sw.bb1.i ], [ 86, %if.end.l2e_state.exit_crit_edge ]
  %refcnt = getelementptr inbounds %struct.l2t_entry, ptr %v, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #13
  %24 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %refcnt, align 4
  %neigh = getelementptr inbounds %struct.l2t_entry, ptr %v, i32 0, i32 4
  %26 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %neigh, align 4
  %tobool16.not = icmp eq ptr %27, null
  br i1 %tobool16.not, label %l2e_state.exit.cond.end_crit_edge, label %cond.true

l2e_state.exit.cond.end_crit_edge:                ; preds = %l2e_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %l2e_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.neighbour, ptr %27, i32 0, i32 25
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %l2e_state.exit.cond.end_crit_edge
  %cond19 = phi ptr [ %29, %cond.true ], [ @.str.13, %l2e_state.exit.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, i32 noundef %add, ptr noundef nonnull %ip, ptr noundef %dmac, i32 noundef %and, i32 noundef %16, i32 noundef %conv12, i32 noundef %retval.0.i, i32 noundef %25, ptr noundef %cond19) #13
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %ip) #13
  br label %if.end21

if.end21:                                         ; preds = %cond.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !28, !30, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 193, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @do_l2t_write_rpl._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @do_l2t_write_rpl._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_cxgb4_l2t_send, !9, !"__ksymtab_cxgb4_l2t_send", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 259, i32 1}
!10 = !{ptr @__ksymtab_cxgb4_l2t_release, !11, !"__ksymtab_cxgb4_l2t_release", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 391, i32 1}
!12 = !{ptr @__ksymtab_cxgb4_l2t_get, !13, !"__ksymtab_cxgb4_l2t_get", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 472, i32 1}
!14 = !{ptr @__ksymtab_cxgb4_select_ntuple, !15, !"__ksymtab_cxgb4_select_ntuple", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 503, i32 1}
!16 = !{ptr @__ksymtab_cxgb4_l2t_alloc_switching, !17, !"__ksymtab_cxgb4_l2t_alloc_switching", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 628, i32 1}
!18 = !{ptr @t4_init_l2t.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 651, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @t4_init_l2t.__key.6, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 656, i32 3}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__ksymtab_cxgb4_check_l2t_valid, !25, !"__ksymtab_cxgb4_check_l2t_valid", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 709, i32 1}
!26 = !{ptr @t4_l2t_fops, !27, !"t4_l2t_fops", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 756, i32 30}
!28 = !{ptr @skb_queue_head_init.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @l2t_seq_ops, !32, !"l2t_seq_ops", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 736, i32 36}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 714, i32 17}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 725, i32 24}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 725, i32 34}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 726, i32 19}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/chelsio/cxgb4/l2t.c", i32 730, i32 40}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2154579856, i64 2154580344, i64 2154579893, i64 2154579949, i64 2154579983, i64 2154580007, i64 2154580048, i64 2154580069, i64 2154580097, i64 2154580131}
!54 = !{i64 2148455477}
!55 = !{i64 2148370210, i64 2148370242, i64 2148370271, i64 2148370305, i64 2148370336, i64 2148370359}
!56 = !{i64 2148455706}
!57 = !{i64 2148456556}
!58 = !{i64 2148371020, i64 2148371052, i64 2148371081, i64 2148371115, i64 2148371146, i64 2148371169}
!59 = !{i64 2150538209}
!60 = !{i64 2148367025, i64 2148367051, i64 2148367080, i64 2148367114, i64 2148367145, i64 2148367168}
!61 = !{i64 2156035427}
!62 = !{i64 2148452436}
!63 = !{i64 2148367745, i64 2148367777, i64 2148367806, i64 2148367840, i64 2148367871, i64 2148367894}
!64 = !{i64 2148452665}
!65 = !{i64 2148369490, i64 2148369516, i64 2148369545, i64 2148369579, i64 2148369610, i64 2148369633}
!66 = !{i64 2148368555, i64 2148368587, i64 2148368616, i64 2148368650, i64 2148368681, i64 2148368704}
!67 = !{!"branch_weights", i32 1, i32 2000}
