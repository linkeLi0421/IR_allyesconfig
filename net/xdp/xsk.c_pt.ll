; ModuleID = '/llk/IR_all_yes/net/xdp/xsk.c_pt.bc'
source_filename = "../net/xdp/xsk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xsk_set_rx_need_wakeup\22, \22a\22\09"
module asm "\09.weak\09__crc_xsk_set_rx_need_wakeup\09\09\09\09"
module asm "\09.long\09__crc_xsk_set_rx_need_wakeup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xsk_set_rx_need_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22xsk_set_rx_need_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_xsk_set_rx_need_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xsk_set_tx_need_wakeup\22, \22a\22\09"
module asm "\09.weak\09__crc_xsk_set_tx_need_wakeup\09\09\09\09"
module asm "\09.long\09__crc_xsk_set_tx_need_wakeup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xsk_set_tx_need_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22xsk_set_tx_need_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_xsk_set_tx_need_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xsk_clear_rx_need_wakeup\22, \22a\22\09"
module asm "\09.weak\09__crc_xsk_clear_rx_need_wakeup\09\09\09\09"
module asm "\09.long\09__crc_xsk_clear_rx_need_wakeup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xsk_clear_rx_need_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22xsk_clear_rx_need_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_xsk_clear_rx_need_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xsk_clear_tx_need_wakeup\22, \22a\22\09"
module asm "\09.weak\09__crc_xsk_clear_tx_need_wakeup\09\09\09\09"
module asm "\09.long\09__crc_xsk_clear_tx_need_wakeup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xsk_clear_tx_need_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22xsk_clear_tx_need_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_xsk_clear_tx_need_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xsk_uses_need_wakeup\22, \22a\22\09"
module asm "\09.weak\09__crc_xsk_uses_need_wakeup\09\09\09\09"
module asm "\09.long\09__crc_xsk_uses_need_wakeup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xsk_uses_need_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22xsk_uses_need_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_xsk_uses_need_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xsk_get_pool_from_qid\22, \22a\22\09"
module asm "\09.weak\09__crc_xsk_get_pool_from_qid\09\09\09\09"
module asm "\09.long\09__crc_xsk_get_pool_from_qid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xsk_get_pool_from_qid:\09\09\09\09\09"
module asm "\09.asciz \09\22xsk_get_pool_from_qid\22\09\09\09\09\09"
module asm "__kstrtabns_xsk_get_pool_from_qid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xsk_tx_completed\22, \22a\22\09"
module asm "\09.weak\09__crc_xsk_tx_completed\09\09\09\09"
module asm "\09.long\09__crc_xsk_tx_completed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xsk_tx_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22xsk_tx_completed\22\09\09\09\09\09"
module asm "__kstrtabns_xsk_tx_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xsk_tx_release\22, \22a\22\09"
module asm "\09.weak\09__crc_xsk_tx_release\09\09\09\09"
module asm "\09.long\09__crc_xsk_tx_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xsk_tx_release:\09\09\09\09\09"
module asm "\09.asciz \09\22xsk_tx_release\22\09\09\09\09\09"
module asm "__kstrtabns_xsk_tx_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xsk_tx_peek_desc\22, \22a\22\09"
module asm "\09.weak\09__crc_xsk_tx_peek_desc\09\09\09\09"
module asm "\09.long\09__crc_xsk_tx_peek_desc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xsk_tx_peek_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22xsk_tx_peek_desc\22\09\09\09\09\09"
module asm "__kstrtabns_xsk_tx_peek_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xsk_tx_peek_release_desc_batch\22, \22a\22\09"
module asm "\09.weak\09__crc_xsk_tx_peek_release_desc_batch\09\09\09\09"
module asm "\09.long\09__crc_xsk_tx_peek_release_desc_batch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xsk_tx_peek_release_desc_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22xsk_tx_peek_release_desc_batch\22\09\09\09\09\09"
module asm "__kstrtabns_xsk_tx_peek_release_desc_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.70, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.70 = type { ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.127 }
%struct.atomic_t = type { i32 }
%union.anon.127 = type { i32 }
%struct.xsk_buff_pool = type { ptr, ptr, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, %struct.work_struct, %struct.list_head, i32, i16, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, %struct.spinlock, [0 x ptr], [16 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.xsk_queue = type { i32, i32, i32, i32, ptr, i64, i64 }
%struct.xdp_ring = type { i32, [124 x i8], i32, [124 x i8], i32, [124 x i8], i32, i32, [120 x i8], i32, [124 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.173, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.173 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_rx_queue = type { %struct.xdp_rxq_info, ptr, ptr, %struct.kobject, ptr, ptr, ptr, [100 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.xdp_sock = type { %struct.sock, [64 x i8], ptr, ptr, ptr, %struct.list_head, ptr, i16, i8, i32, [96 x i8], ptr, %struct.list_head, %struct.spinlock, i64, i64, %struct.list_head, %struct.spinlock, %struct.mutex, ptr, ptr, [32 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.xdp_buff_xsk = type { %struct.xdp_buff, i32, i32, ptr, i64, %struct.list_head }
%struct.xdp_rxtx_ring = type { %struct.xdp_ring, [0 x %struct.xdp_desc] }
%struct.xdp_desc = type { i64, i32, i32 }
%struct.xdp_umem_ring = type { %struct.xdp_ring, [0 x i64] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.91, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.91 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.xsk_map_node = type { %struct.list_head, ptr, ptr }
%struct.sockaddr_xdp = type { i16, i16, i32, i32, i32 }
%struct.xdp_umem = type { ptr, i64, i32, i32, i32, i32, ptr, %struct.refcount_struct, i8, i8, ptr, i32, %struct.list_head, %struct.work_struct }
%struct.xdp_umem_reg = type { i64, i64, i32, i32, i32 }
%struct.xdp_statistics = type { i64, i64, i64, i64, i64, i64 }
%struct.xdp_mmap_offsets = type { %struct.xdp_ring_offset, %struct.xdp_ring_offset, %struct.xdp_ring_offset, %struct.xdp_ring_offset }
%struct.xdp_ring_offset = type { i64, i64, i64, i64 }
%struct.xdp_mmap_offsets_v1 = type { %struct.xdp_ring_offset_v1, %struct.xdp_ring_offset_v1, %struct.xdp_ring_offset_v1, %struct.xdp_ring_offset_v1 }
%struct.xdp_ring_offset_v1 = type { i64, i64, i64 }
%struct.xdp_options = type { i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.110 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.125, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.125 = type { %struct.atomic_t }
%struct.anon.6 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__kstrtab_xsk_set_rx_need_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_xsk_set_rx_need_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_xsk_set_rx_need_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xsk_set_rx_need_wakeup to i32), ptr @__kstrtab_xsk_set_rx_need_wakeup, ptr @__kstrtabns_xsk_set_rx_need_wakeup }, section "___ksymtab+xsk_set_rx_need_wakeup", align 4
@xsk_set_tx_need_wakeup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/xdp/xsk.c\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_xsk_set_tx_need_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_xsk_set_tx_need_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_xsk_set_tx_need_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xsk_set_tx_need_wakeup to i32), ptr @__kstrtab_xsk_set_tx_need_wakeup, ptr @__kstrtabns_xsk_set_tx_need_wakeup }, section "___ksymtab+xsk_set_tx_need_wakeup", align 4
@__kstrtab_xsk_clear_rx_need_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_xsk_clear_rx_need_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_xsk_clear_rx_need_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xsk_clear_rx_need_wakeup to i32), ptr @__kstrtab_xsk_clear_rx_need_wakeup, ptr @__kstrtabns_xsk_clear_rx_need_wakeup }, section "___ksymtab+xsk_clear_rx_need_wakeup", align 4
@xsk_clear_tx_need_wakeup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_xsk_clear_tx_need_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_xsk_clear_tx_need_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_xsk_clear_tx_need_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xsk_clear_tx_need_wakeup to i32), ptr @__kstrtab_xsk_clear_tx_need_wakeup, ptr @__kstrtabns_xsk_clear_tx_need_wakeup }, section "___ksymtab+xsk_clear_tx_need_wakeup", align 4
@__kstrtab_xsk_uses_need_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_xsk_uses_need_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_xsk_uses_need_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xsk_uses_need_wakeup to i32), ptr @__kstrtab_xsk_uses_need_wakeup, ptr @__kstrtabns_xsk_uses_need_wakeup }, section "___ksymtab+xsk_uses_need_wakeup", align 4
@__kstrtab_xsk_get_pool_from_qid = external dso_local constant [0 x i8], align 1
@__kstrtabns_xsk_get_pool_from_qid = external dso_local constant [0 x i8], align 1
@__ksymtab_xsk_get_pool_from_qid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xsk_get_pool_from_qid to i32), ptr @__kstrtab_xsk_get_pool_from_qid, ptr @__kstrtabns_xsk_get_pool_from_qid }, section "___ksymtab+xsk_get_pool_from_qid", align 4
@xskmap_flush_list = weak dso_local global %struct.list_head zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_xsk_tx_completed = external dso_local constant [0 x i8], align 1
@__kstrtabns_xsk_tx_completed = external dso_local constant [0 x i8], align 1
@__ksymtab_xsk_tx_completed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xsk_tx_completed to i32), ptr @__kstrtab_xsk_tx_completed, ptr @__kstrtabns_xsk_tx_completed }, section "___ksymtab+xsk_tx_completed", align 4
@xsk_tx_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_xsk_tx_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_xsk_tx_release = external dso_local constant [0 x i8], align 1
@__ksymtab_xsk_tx_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xsk_tx_release to i32), ptr @__kstrtab_xsk_tx_release, ptr @__kstrtabns_xsk_tx_release }, section "___ksymtab+xsk_tx_release", align 4
@xsk_tx_peek_desc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_xsk_tx_peek_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_xsk_tx_peek_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_xsk_tx_peek_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xsk_tx_peek_desc to i32), ptr @__kstrtab_xsk_tx_peek_desc, ptr @__kstrtabns_xsk_tx_peek_desc }, section "___ksymtab+xsk_tx_peek_desc", align 4
@__kstrtab_xsk_tx_peek_release_desc_batch = external dso_local constant [0 x i8], align 1
@__kstrtabns_xsk_tx_peek_release_desc_batch = external dso_local constant [0 x i8], align 1
@__ksymtab_xsk_tx_peek_release_desc_batch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xsk_tx_peek_release_desc_batch to i32), ptr @__kstrtab_xsk_tx_peek_release_desc_batch, ptr @__kstrtabns_xsk_tx_peek_release_desc_batch }, section "___ksymtab+xsk_tx_peek_release_desc_batch", align 4
@__initcall__kmod_xsk__570_1463_xsk_init5 = internal global ptr @xsk_init, section ".initcall5.init", align 4
@__pcpu_unique_xskmap_flush_list = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@xsk_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1408, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.70 zeroinitializer, ptr null, [32 x i8] c"XDP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@xsk_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 44, ptr @xsk_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@xsk_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @xsk_net_init, ptr null, ptr @xsk_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@xsk_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @xsk_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@xsk_proto_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 44, ptr null, ptr @xsk_release, ptr @xsk_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @xsk_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @xsk_setsockopt, ptr @xsk_getsockopt, ptr null, ptr @xsk_sendmsg, ptr @xsk_recvmsg, ptr @xsk_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@xsk_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&xs->mutex\00", [21 x i8] zeroinitializer }, align 32
@xsk_create.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xs->rx_lock\00", [19 x i8] zeroinitializer }, align 32
@xsk_create.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&xs->map_list_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@xsk_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&net->xdp.lock\00", [17 x i8] zeroinitializer }, align 32
@xsk_net_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 7, i64 8]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 524288]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1048576, i64 1572864]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 55, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 695, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 723, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"xsk_proto\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1314, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"xsk_family_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1402, i32 38 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"xsk_net_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1424, i32 33 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"xsk_netdev_notifier\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1408, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"xsk_proto_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1320, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1387, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1388, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1391, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 729, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 1160, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 230, i32 6 }
@___asan_gen_.78 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 214, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 156, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 698, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [17 x i8] c"../net/xdp/xsk.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1414, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__initcall__kmod_xsk__570_1463_xsk_init5, ptr @__ksymtab_xsk_clear_rx_need_wakeup, ptr @__ksymtab_xsk_clear_tx_need_wakeup, ptr @__ksymtab_xsk_get_pool_from_qid, ptr @__ksymtab_xsk_set_rx_need_wakeup, ptr @__ksymtab_xsk_set_tx_need_wakeup, ptr @__ksymtab_xsk_tx_completed, ptr @__ksymtab_xsk_tx_peek_desc, ptr @__ksymtab_xsk_tx_peek_release_desc_batch, ptr @__ksymtab_xsk_tx_release, ptr @__ksymtab_xsk_uses_need_wakeup, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @xsk_proto, ptr @xsk_family_ops, ptr @xsk_net_ops, ptr @xsk_netdev_notifier, ptr @xsk_proto_ops, ptr @xsk_create.__key, ptr @.str.5, ptr @xsk_create.__key.6, ptr @.str.7, ptr @xsk_create.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @xsk_net_init.__key, ptr @.str.16], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsk_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsk_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsk_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsk_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsk_proto_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsk_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsk_create.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsk_create.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsk_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xsk_set_rx_need_wakeup(ptr nocapture noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cached_need_wakeup = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 23
  %0 = ptrtoint ptr %cached_need_wakeup to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cached_need_wakeup, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fq = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 10
  %3 = ptrtoint ptr %fq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fq, align 128
  %ring = getelementptr inbounds %struct.xsk_queue, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring, align 8
  %flags = getelementptr inbounds %struct.xdp_ring, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 1
  store i32 %or, ptr %flags, align 4
  %9 = ptrtoint ptr %cached_need_wakeup to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cached_need_wakeup, align 4
  %11 = or i8 %10, 1
  store i8 %11, ptr %cached_need_wakeup, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xsk_set_tx_need_wakeup(ptr noundef %pool) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cached_need_wakeup = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 23
  %0 = ptrtoint ptr %cached_need_wakeup to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cached_need_wakeup, align 4
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b32 = load i1, ptr @xsk_set_tx_need_wakeup.__warned, align 1
  br i1 %.b32, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @xsk_set_tx_need_wakeup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 55, ptr noundef nonnull @.str.1) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %xsk_tx_list = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 2
  %7 = ptrtoint ptr %xsk_tx_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn42 = load volatile ptr, ptr %xsk_tx_list, align 4
  %cmp.not43 = icmp eq ptr %.pn42, %xsk_tx_list
  br i1 %cmp.not43, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn44 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn42, %do.end.for.body_crit_edge ]
  %tx = getelementptr i8, ptr %.pn44, i32 -4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx, align 128
  %ring = getelementptr inbounds %struct.xsk_queue, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring, align 8
  %flags = getelementptr inbounds %struct.xdp_ring, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or = or i32 %13, 1
  store i32 %or, ptr %flags, align 4
  %14 = ptrtoint ptr %.pn44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load volatile ptr, ptr %.pn44, align 4
  %cmp.not = icmp eq ptr %.pn, %xsk_tx_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i33 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i33, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i36

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i36:                                ; preds = %for.end
  %call1.i34 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !90
  %15 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i40 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i41, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %19 = ptrtoint ptr %cached_need_wakeup to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cached_need_wakeup, align 4
  %21 = or i8 %20, 2
  store i8 %21, ptr %cached_need_wakeup, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xsk_clear_rx_need_wakeup(ptr nocapture noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cached_need_wakeup = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 23
  %0 = ptrtoint ptr %cached_need_wakeup to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cached_need_wakeup, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fq = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 10
  %3 = ptrtoint ptr %fq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fq, align 128
  %ring = getelementptr inbounds %struct.xsk_queue, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring, align 8
  %flags = getelementptr inbounds %struct.xdp_ring, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and1 = and i32 %8, -2
  store i32 %and1, ptr %flags, align 4
  %9 = ptrtoint ptr %cached_need_wakeup to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cached_need_wakeup, align 4
  %11 = and i8 %10, -2
  store i8 %11, ptr %cached_need_wakeup, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xsk_clear_tx_need_wakeup(ptr noundef %pool) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cached_need_wakeup = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 23
  %0 = ptrtoint ptr %cached_need_wakeup to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cached_need_wakeup, align 4
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @xsk_clear_tx_need_wakeup.__warned, align 1
  br i1 %.b33, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @xsk_clear_tx_need_wakeup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @.str.1) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %xsk_tx_list = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 2
  %7 = ptrtoint ptr %xsk_tx_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn43 = load volatile ptr, ptr %xsk_tx_list, align 4
  %cmp.not44 = icmp eq ptr %.pn43, %xsk_tx_list
  br i1 %cmp.not44, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn45 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn43, %do.end.for.body_crit_edge ]
  %tx = getelementptr i8, ptr %.pn45, i32 -4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx, align 128
  %ring = getelementptr inbounds %struct.xsk_queue, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring, align 8
  %flags = getelementptr inbounds %struct.xdp_ring, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and14 = and i32 %13, -2
  store i32 %and14, ptr %flags, align 4
  %14 = ptrtoint ptr %.pn45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load volatile ptr, ptr %.pn45, align 4
  %cmp.not = icmp eq ptr %.pn, %xsk_tx_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i34 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i34, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i37

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i37:                                ; preds = %for.end
  %call1.i35 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i39

land.lhs.true.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i39:                               ; preds = %land.lhs.true.i37
  %.b4.i38 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38, label %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, label %if.then.i40

land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i40:                                      ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i40, %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !90
  %15 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i41 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i41 to ptr
  %preempt_count.i.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i42, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i42, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %19 = ptrtoint ptr %cached_need_wakeup to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cached_need_wakeup, align 4
  %21 = and i8 %20, -3
  store i8 %21, ptr %cached_need_wakeup, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xsk_uses_need_wakeup(ptr nocapture noundef readonly %pool) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %uses_need_wakeup = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 24
  %0 = ptrtoint ptr %uses_need_wakeup to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %uses_need_wakeup, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xsk_get_pool_from_qid(ptr nocapture noundef readonly %dev, i16 noundef zeroext %queue_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %queue_id to i32
  %real_num_rx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %0 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %real_num_rx_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp ugt i32 %1, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %_rx = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 87
  %2 = ptrtoint ptr %_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_rx, align 4
  %pool = getelementptr %struct.netdev_rx_queue, ptr %3, i32 %conv, i32 6
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool, align 8
  br label %return

if.end:                                           ; preds = %entry
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 105
  %6 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %real_num_tx_queues, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp3 = icmp ugt i32 %7, %conv
  br i1 %cmp3, label %if.then5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %_tx = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx, align 128
  %pool8 = getelementptr %struct.netdev_queue, ptr %9, i32 %conv, i32 8
  %10 = ptrtoint ptr %pool8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pool8, align 4
  br label %return

return:                                           ; preds = %if.then5, %if.end.return_crit_edge, %if.then
  %retval.0 = phi ptr [ %5, %if.then ], [ %11, %if.then5 ], [ null, %if.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xsk_clear_pool_at_qid(ptr nocapture noundef readonly %dev, i16 noundef zeroext %queue_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %queue_id to i32
  %num_rx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 88
  %0 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx_queues, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp ugt i32 %1, %conv
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %_rx = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 87
  %2 = ptrtoint ptr %_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_rx, align 4
  %pool = getelementptr %struct.netdev_rx_queue, ptr %3, i32 %conv, i32 6
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pool, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %5 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp3 = icmp ugt i32 %6, %conv
  br i1 %cmp3, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %_tx = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %7 = ptrtoint ptr %_tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx, align 128
  %pool8 = getelementptr %struct.netdev_queue, ptr %8, i32 %conv, i32 8
  %9 = ptrtoint ptr %pool8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pool8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xsk_reg_pool_at_qid(ptr nocapture noundef readonly %dev, ptr noundef %pool, i16 noundef zeroext %queue_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %queue_id to i32
  %real_num_rx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %0 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %real_num_rx_queues, align 4
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 105
  %2 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %real_num_tx_queues, align 8
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %3)
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp2.not = icmp ugt i32 %4, %conv
  br i1 %cmp2.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp6 = icmp ugt i32 %1, %conv
  br i1 %cmp6, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %_rx = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 87
  %5 = ptrtoint ptr %_rx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_rx, align 4
  %pool9 = getelementptr %struct.netdev_rx_queue, ptr %6, i32 %conv, i32 6
  %7 = ptrtoint ptr %pool9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pool, ptr %pool9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %8 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %real_num_tx_queues, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp13 = icmp ugt i32 %9, %conv
  br i1 %cmp13, label %if.then15, label %if.end10.return_crit_edge

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %_tx = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx, align 128
  %pool18 = getelementptr %struct.netdev_queue, ptr %11, i32 %conv, i32 8
  %12 = ptrtoint ptr %pool18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pool, ptr %pool18, align 4
  br label %return

return:                                           ; preds = %if.then15, %if.end10.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.then15 ], [ 0, %if.end10.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xsk_generic_rcv(ptr noundef %xs, ptr nocapture noundef readonly %xdp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_lock = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #12
  %state.i.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 9
  %0 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 1
  br i1 %cmp.i.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !92
  %dev.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %rxq.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %4 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rxq.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %cmp.not.i = icmp eq ptr %3, %7
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.end.i
  %queue_id.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 7
  %8 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %queue_id.i, align 8
  %conv.i = zext i16 %9 to i32
  %queue_index.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %queue_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i)
  %cmp3.not.i = icmp eq i32 %11, %conv.i
  br i1 %cmp3.not.i, label %if.end6.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %napi_id.i.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %napi_id.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %napi_id.i.i, align 4
  %sk_napi_id.i.i.i = getelementptr inbounds %struct.sock, ptr %xs, i32 0, i32 14
  %14 = ptrtoint ptr %sk_napi_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %sk_napi_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %if.end6.i.if.then_crit_edge

if.end6.i.if.then_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

do.body4.i.i.i:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %sk_napi_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %13, ptr %sk_napi_id.i.i.i, align 4
  br label %if.then

if.then:                                          ; preds = %do.body4.i.i.i, %if.end6.i.if.then_crit_edge
  %call1 = tail call fastcc i32 @__xsk_rcv(ptr noundef %xs, ptr noundef %xdp)
  %rx.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 2
  %17 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx.i, align 128
  %cached_prod.i.i = getelementptr inbounds %struct.xsk_queue, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %cached_prod.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cached_prod.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !93
  %ring.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %18, i32 0, i32 4
  %21 = ptrtoint ptr %ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring.i.i.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %20, ptr %22, align 128
  %pool.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 6
  %24 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pool.i, align 4
  %fq.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %fq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fq.i, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  %cached_cons.i.i = getelementptr inbounds %struct.xsk_queue, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cached_cons.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cached_cons.i.i, align 4
  %ring.i.i = getelementptr inbounds %struct.xsk_queue, ptr %27, i32 0, i32 4
  %30 = ptrtoint ptr %ring.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring.i.i, align 8
  %consumer.i.i = getelementptr inbounds %struct.xdp_ring, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %consumer.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %29, ptr %consumer.i.i, align 128
  tail call void @sock_def_readable(ptr noundef %xs) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call1, %if.then ], [ -22, %lor.lhs.false.i.if.end_crit_edge ], [ -22, %if.end.i.if.end_crit_edge ], [ -22, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xsk_rcv(ptr nocapture noundef %xs, ptr nocapture noundef readonly %xdp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data_end = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %0 = ptrtoint ptr %data_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_end, align 4
  %2 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %pool = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 6
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool, align 4
  %chunk_size.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %chunk_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chunk_size.i.i, align 16
  %headroom.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %headroom.i.i, align 4
  %add.i.neg.i = add i32 %7, -256
  %sub.i = sub i32 %add.i.neg.i, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %sub.i)
  %cmp = icmp ugt i32 %sub.ptr.sub, %sub.i
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rx_dropped = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 14
  %10 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rx_dropped, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %rx_dropped, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @xp_alloc(ptr noundef %5) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rx_dropped4 = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 14
  %12 = ptrtoint ptr %rx_dropped4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_dropped4, align 8
  %inc5 = add i64 %13, 1
  store i64 %inc5, ptr %rx_dropped4, align 8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data_meta.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %14 = ptrtoint ptr %data_meta.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data_meta.i.i, align 4
  %16 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xdp, align 4
  %cmp.i.i = icmp ugt ptr %15, %17
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i, !prof !95

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  br label %xsk_copy_xdp.exit

if.else.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %idx.neg.i = sub i32 0, %sub.ptr.sub.i
  %add.ptr.i = getelementptr i8, ptr %21, i32 %idx.neg.i
  br label %xsk_copy_xdp.exit

xsk_copy_xdp.exit:                                ; preds = %if.else.i, %if.then.i
  %from_buf.0.i = phi ptr [ %17, %if.then.i ], [ %15, %if.else.i ]
  %to_buf.0.i = phi ptr [ %19, %if.then.i ], [ %add.ptr.i, %if.else.i ]
  %metalen.0.i = phi i32 [ 0, %if.then.i ], [ %sub.ptr.sub.i, %if.else.i ]
  %add.i = add i32 %metalen.0.i, %sub.ptr.sub
  %22 = call ptr @memcpy(ptr %to_buf.0.i, ptr %from_buf.0.i, i32 %add.i)
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 8
  %data_hard_start.i.i = getelementptr inbounds %struct.xdp_buff, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %data_hard_start.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data_hard_start.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = sext i32 %sub.ptr.sub.i.i to i64
  %pool.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pool.i.i, align 4
  %headroom.i.i25 = getelementptr inbounds %struct.xsk_buff_pool, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %headroom.i.i25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %headroom.i.i25, align 4
  %conv2.i.i = zext i32 %30 to i64
  %add.i.i = add nsw i64 %conv.i.i, %conv2.i.i
  %unaligned.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %28, i32 0, i32 26
  %31 = ptrtoint ptr %unaligned.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %unaligned.i.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i = icmp eq i8 %32, 0
  %orig_addr.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %call.i, i32 0, i32 4
  %33 = ptrtoint ptr %orig_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %orig_addr.i.i, align 8
  %shl.i.i = shl i64 %add.i.i, 48
  %shl.sink.i.i = select i1 %tobool.not.i.i, i64 %add.i.i, i64 %shl.i.i
  %add6.i.i = add i64 %shl.sink.i.i, %34
  %rx.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 2
  %35 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx.i, align 128
  %ring1.i.i = getelementptr inbounds %struct.xsk_queue, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ring1.i.i, align 8
  %nentries.i.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %nentries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nentries.i.i.i.i, align 4
  %cached_prod.i.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %36, i32 0, i32 2
  %41 = ptrtoint ptr %cached_prod.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cached_prod.i.i.i.i, align 8
  %cached_cons.i.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %36, i32 0, i32 3
  %43 = ptrtoint ptr %cached_cons.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cached_cons.i.i.i.i, align 4
  %sub.neg.i.i.i.i = sub i32 %40, %42
  %sub1.i.i.i.i = sub i32 0, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.neg.i.i.i.i, i32 %sub1.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %sub.neg.i.i.i.i, %sub1.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %xskq_prod_is_full.exit.i.i, label %xsk_copy_xdp.exit.if.end.i_crit_edge

xsk_copy_xdp.exit.if.end.i_crit_edge:             ; preds = %xsk_copy_xdp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

xskq_prod_is_full.exit.i.i:                       ; preds = %xsk_copy_xdp.exit
  %consumer.i.i.i.i = getelementptr inbounds %struct.xdp_ring, ptr %38, i32 0, i32 4
  %45 = ptrtoint ptr %consumer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %consumer.i.i.i.i, align 128
  %47 = ptrtoint ptr %cached_cons.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %cached_cons.i.i.i.i, align 4
  %sub7.i.i.i.i = sub i32 0, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.neg.i.i.i.i, i32 %sub7.i.i.i.i)
  %.not.i.i.i = icmp eq i32 %sub.neg.i.i.i.i, %sub7.i.i.i.i
  br i1 %.not.i.i.i, label %if.then9, label %xskq_prod_is_full.exit.i.i.if.end.i_crit_edge

xskq_prod_is_full.exit.i.i.if.end.i_crit_edge:    ; preds = %xskq_prod_is_full.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %xskq_prod_is_full.exit.i.i.if.end.i_crit_edge, %xsk_copy_xdp.exit.if.end.i_crit_edge
  %inc.i.i = add i32 %42, 1
  %48 = ptrtoint ptr %cached_prod.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %inc.i.i, ptr %cached_prod.i.i.i.i, align 8
  %49 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %36, align 8
  %and.i.i = and i32 %50, %42
  %arrayidx.i.i = getelementptr %struct.xdp_rxtx_ring, ptr %38, i32 0, i32 1, i32 %and.i.i
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %add6.i.i, ptr %arrayidx.i.i, align 16
  %len5.i.i = getelementptr %struct.xdp_rxtx_ring, ptr %38, i32 0, i32 1, i32 %and.i.i, i32 1
  %52 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub.ptr.sub, ptr %len5.i.i, align 8
  %53 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pool.i.i, align 4
  %unaligned.i8.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %54, i32 0, i32 26
  %55 = ptrtoint ptr %unaligned.i8.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %unaligned.i8.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i9.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i9.i, label %if.end.i.cleanup_crit_edge, label %if.then.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %free_heads_cnt.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %54, i32 0, i32 18
  %57 = ptrtoint ptr %free_heads_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %free_heads_cnt.i.i, align 8
  %inc.i10.i = add i32 %58, 1
  store i32 %inc.i10.i, ptr %free_heads_cnt.i.i, align 8
  %arrayidx.i11.i = getelementptr %struct.xsk_buff_pool, ptr %54, i32 0, i32 29, i32 %58
  %59 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %arrayidx.i11.i, align 4
  br label %cleanup

if.then9:                                         ; preds = %xskq_prod_is_full.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rx_queue_full.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 15
  %60 = ptrtoint ptr %rx_queue_full.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %rx_queue_full.i, align 64
  %inc.i = add i64 %61, 1
  store i64 %inc.i, ptr %rx_queue_full.i, align 64
  tail call void @xp_free(ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then.i.i, %if.end.i.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ -28, %if.then ], [ -28, %if.then9 ], [ -28, %if.then3 ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__xsk_map_redirect(ptr noundef %xs, ptr noundef %xdp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @xskmap_flush_list to i32)
  %6 = inttoptr i32 %add to ptr
  %state.i.i.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 9
  %7 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i.i.i = icmp eq i32 %8, 1
  br i1 %cmp.i.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !92
  %dev.i.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  %rxq.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %11 = ptrtoint ptr %rxq.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rxq.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  %cmp.not.i.i = icmp eq ptr %10, %14
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %queue_id.i.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 7
  %15 = ptrtoint ptr %queue_id.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %queue_id.i.i, align 8
  %conv.i.i = zext i16 %16 to i32
  %queue_index.i.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %queue_index.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %queue_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv.i.i)
  %cmp3.not.i.i = icmp eq i32 %18, %conv.i.i
  br i1 %cmp3.not.i.i, label %if.end6.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6.i.i:                                      ; preds = %lor.lhs.false.i.i
  %napi_id.i.i.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %12, i32 0, i32 4
  %19 = ptrtoint ptr %napi_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %napi_id.i.i.i, align 4
  %sk_napi_id.i.i.i.i = getelementptr inbounds %struct.sock, ptr %xs, i32 0, i32 14
  %21 = ptrtoint ptr %sk_napi_id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %sk_napi_id.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i.i, label %do.body4.i.i.i.i, label %if.end6.i.i.if.end.i_crit_edge

if.end6.i.i.if.end.i_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.body4.i.i.i.i:                                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %sk_napi_id.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %20, ptr %sk_napi_id.i.i.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body4.i.i.i.i, %if.end6.i.i.if.end.i_crit_edge
  %24 = ptrtoint ptr %rxq.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rxq.i.i, align 4
  %mem.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.i = icmp eq i32 %27, 3
  br i1 %cmp.i, label %if.then1.i, label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  %data_end.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %28 = ptrtoint ptr %data_end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data_end.i, align 4
  %30 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %data_hard_start.i.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %32 = ptrtoint ptr %data_hard_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data_hard_start.i.i.i, align 4
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = sext i32 %sub.ptr.sub.i.i.i to i64
  %pool.i.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %xdp, i32 0, i32 3
  %34 = ptrtoint ptr %pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pool.i.i.i, align 4
  %headroom.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %headroom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %headroom.i.i.i, align 4
  %conv2.i.i.i = zext i32 %37 to i64
  %add.i.i.i = add nsw i64 %conv.i.i.i, %conv2.i.i.i
  %unaligned.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %35, i32 0, i32 26
  %38 = ptrtoint ptr %unaligned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %unaligned.i.i.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.i.i = icmp eq i8 %39, 0
  %orig_addr.i.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %xdp, i32 0, i32 4
  %40 = ptrtoint ptr %orig_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %orig_addr.i.i.i, align 8
  %shl.i.i.i = shl i64 %add.i.i.i, 48
  %shl.sink.i.i.i = select i1 %tobool.not.i.i.i, i64 %add.i.i.i, i64 %shl.i.i.i
  %add6.i.i.i = add i64 %shl.sink.i.i.i, %41
  %rx.i.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 2
  %42 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx.i.i, align 128
  %ring1.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %ring1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ring1.i.i.i, align 8
  %nentries.i.i.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %nentries.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nentries.i.i.i.i.i, align 4
  %cached_prod.i.i.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %43, i32 0, i32 2
  %48 = ptrtoint ptr %cached_prod.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cached_prod.i.i.i.i.i, align 8
  %cached_cons.i.i.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %43, i32 0, i32 3
  %50 = ptrtoint ptr %cached_cons.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cached_cons.i.i.i.i.i, align 4
  %sub.neg.i.i.i.i.i = sub i32 %47, %49
  %sub1.i.i.i.i.i = sub i32 0, %51
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.neg.i.i.i.i.i, i32 %sub1.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %sub.neg.i.i.i.i.i, %sub1.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %xskq_prod_is_full.exit.i.i.i, label %if.then1.i.if.end.i20.i_crit_edge

if.then1.i.if.end.i20.i_crit_edge:                ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i20.i

xskq_prod_is_full.exit.i.i.i:                     ; preds = %if.then1.i
  %consumer.i.i.i.i.i = getelementptr inbounds %struct.xdp_ring, ptr %45, i32 0, i32 4
  %52 = ptrtoint ptr %consumer.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %consumer.i.i.i.i.i, align 128
  %54 = ptrtoint ptr %cached_cons.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %cached_cons.i.i.i.i.i, align 4
  %sub7.i.i.i.i.i = sub i32 0, %53
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.neg.i.i.i.i.i, i32 %sub7.i.i.i.i.i)
  %.not.i.i.i.i = icmp eq i32 %sub.neg.i.i.i.i.i, %sub7.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %if.then.i.i, label %xskq_prod_is_full.exit.i.i.i.if.end.i20.i_crit_edge

xskq_prod_is_full.exit.i.i.i.if.end.i20.i_crit_edge: ; preds = %xskq_prod_is_full.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i20.i

if.then.i.i:                                      ; preds = %xskq_prod_is_full.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rx_queue_full.i.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 15
  %55 = ptrtoint ptr %rx_queue_full.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %rx_queue_full.i.i, align 64
  %inc.i.i = add i64 %56, 1
  store i64 %inc.i.i, ptr %rx_queue_full.i.i, align 64
  br label %cleanup

if.end.i20.i:                                     ; preds = %xskq_prod_is_full.exit.i.i.i.if.end.i20.i_crit_edge, %if.then1.i.if.end.i20.i_crit_edge
  %inc.i.i.i = add i32 %49, 1
  %57 = ptrtoint ptr %cached_prod.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %inc.i.i.i, ptr %cached_prod.i.i.i.i.i, align 8
  %58 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %43, align 8
  %and.i.i.i = and i32 %59, %49
  %arrayidx.i.i.i = getelementptr %struct.xdp_rxtx_ring, ptr %45, i32 0, i32 1, i32 %and.i.i.i
  %60 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add6.i.i.i, ptr %arrayidx.i.i.i, align 16
  %len5.i.i.i = getelementptr %struct.xdp_rxtx_ring, ptr %45, i32 0, i32 1, i32 %and.i.i.i, i32 1
  %61 = ptrtoint ptr %len5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub.ptr.sub.i, ptr %len5.i.i.i, align 8
  %62 = ptrtoint ptr %pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pool.i.i.i, align 4
  %unaligned.i8.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %63, i32 0, i32 26
  %64 = ptrtoint ptr %unaligned.i8.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %unaligned.i8.i.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i9.i.i = icmp eq i8 %65, 0
  br i1 %tobool.not.i9.i.i, label %if.end.i20.i.if.end_crit_edge, label %if.then.i.i.i

if.end.i20.i.if.end_crit_edge:                    ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i.i.i:                                    ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  %free_heads_cnt.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %63, i32 0, i32 18
  %66 = ptrtoint ptr %free_heads_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %free_heads_cnt.i.i.i, align 8
  %inc.i10.i.i = add i32 %67, 1
  store i32 %inc.i10.i.i, ptr %free_heads_cnt.i.i.i, align 8
  %arrayidx.i11.i.i = getelementptr %struct.xsk_buff_pool, ptr %63, i32 0, i32 29, i32 %67
  %68 = ptrtoint ptr %arrayidx.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %xdp, ptr %arrayidx.i11.i.i, align 4
  br label %if.end

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call fastcc i32 @__xsk_rcv(ptr noundef %xs, ptr noundef %xdp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @xdp_return_buff(ptr noundef %xdp) #12
  br label %if.end

if.end:                                           ; preds = %if.then6.i, %if.then.i.i.i, %if.end.i20.i.if.end_crit_edge
  %prev = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 5, i32 1
  %69 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev, align 4
  %tobool3.not = icmp eq ptr %70, null
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %flush_node = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 5
  %71 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %6, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %flush_node, ptr noundef %6, ptr noundef %72) #12
  br i1 %call.i.i, label %if.end.i.i11, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i11:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %flush_node, ptr %prev1.i.i, align 4
  %74 = ptrtoint ptr %flush_node to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %72, ptr %flush_node, align 4
  %75 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %6, ptr %prev, align 4
  %76 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %flush_node, ptr %6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i11, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.then.i.i, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge ], [ 0, %if.end.i.i11 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -28, %if.then.i.i ], [ %call4.i, %if.end3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__xsk_map_flush() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @xskmap_flush_list to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %cmp.not21 = icmp eq ptr %8, %6
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in22 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %8, %entry.for.body_crit_edge ]
  %xs.0 = getelementptr i8, ptr %.pn.in22, i32 -1036
  %9 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in22, align 4
  %rx.i = getelementptr i8, ptr %.pn.in22, i32 -12
  %10 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx.i, align 128
  %cached_prod.i.i = getelementptr inbounds %struct.xsk_queue, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %cached_prod.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cached_prod.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !93
  %ring.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring.i.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %13, ptr %15, align 128
  %pool.i = getelementptr i8, ptr %.pn.in22, i32 8
  %17 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pool.i, align 4
  %fq.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %fq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fq.i, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  %cached_cons.i.i = getelementptr inbounds %struct.xsk_queue, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cached_cons.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cached_cons.i.i, align 4
  %ring.i.i = getelementptr inbounds %struct.xsk_queue, ptr %20, i32 0, i32 4
  %23 = ptrtoint ptr %ring.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring.i.i, align 8
  %consumer.i.i = getelementptr inbounds %struct.xdp_ring, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %consumer.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %22, ptr %consumer.i.i, align 128
  tail call void @sock_def_readable(ptr noundef %xs.0) #12
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in22, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %28 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %.pn.in22, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  store ptr null, ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %.pn, %6
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xsk_tx_completed(ptr nocapture noundef readonly %pool, i32 noundef %nb_entries) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cq = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 11
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq, align 4
  %ring.i = getelementptr inbounds %struct.xsk_queue, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 128
  %add.i = add i32 %5, %nb_entries
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !93
  %6 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %add.i, ptr %7, align 128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xsk_tx_release(ptr noundef %pool) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b29 = load i1, ptr @xsk_tx_release.__warned, align 1
  br i1 %.b29, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @xsk_tx_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 307, ptr noundef nonnull @.str.1) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %xsk_tx_list = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 2
  %4 = ptrtoint ptr %xsk_tx_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn39 = load volatile ptr, ptr %xsk_tx_list, align 4
  %cmp.not41 = icmp eq ptr %.pn39, %xsk_tx_list
  br i1 %cmp.not41, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn42 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn39, %do.end.for.body_crit_edge ]
  %tx = getelementptr i8, ptr %.pn42, i32 -4
  %5 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  %cached_cons.i = getelementptr inbounds %struct.xsk_queue, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cached_cons.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cached_cons.i, align 4
  %ring.i = getelementptr inbounds %struct.xsk_queue, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ring.i, align 8
  %consumer.i = getelementptr inbounds %struct.xdp_ring, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %consumer.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %8, ptr %consumer.i, align 128
  %12 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx, align 128
  %ring.i.i = getelementptr inbounds %struct.xsk_queue, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ring.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 128
  %consumer.i.i = getelementptr inbounds %struct.xdp_ring, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %consumer.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %consumer.i.i, align 128
  %sub.i.i = sub i32 %17, %19
  %nentries.i = getelementptr inbounds %struct.xsk_queue, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %nentries.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nentries.i, align 4
  %div3.i = lshr i32 %21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %div3.i)
  %cmp.i.not = icmp ugt i32 %sub.i.i, %div3.i
  br i1 %cmp.i.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %xs.043 = getelementptr i8, ptr %.pn42, i32 -1156
  %sk_write_space = getelementptr i8, ptr %.pn42, i32 -240
  %22 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk_write_space, align 4
  tail call void %23(ptr noundef %xs.043) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %.pn42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load volatile ptr, ptr %.pn42, align 4
  %cmp.not = icmp eq ptr %.pn, %xsk_tx_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i30 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i30, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i33

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i33:                                ; preds = %for.end
  %call1.i31 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i35

land.lhs.true.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i35:                               ; preds = %land.lhs.true.i33
  %.b4.i34 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i34, label %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, label %if.then.i36

land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i36:                                      ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i36, %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !90
  %25 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i37 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i37 to ptr
  %preempt_count.i.i.i.i38 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i38, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i38, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xsk_tx_peek_desc(ptr noundef %pool, ptr nocapture noundef %desc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b36 = load i1, ptr @xsk_tx_peek_desc.__warned, align 1
  br i1 %.b36, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @xsk_tx_peek_desc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 321, ptr noundef nonnull @.str.1) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %xsk_tx_list = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 2
  %4 = ptrtoint ptr %xsk_tx_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn60 = load volatile ptr, ptr %xsk_tx_list, align 4
  %cmp.not61 = icmp eq ptr %.pn60, %xsk_tx_list
  br i1 %cmp.not61, label %do.end.out_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body:                                         ; preds = %if.then11.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn62 = phi ptr [ %.pn, %if.then11.for.body_crit_edge ], [ %.pn60, %do.end.for.body_crit_edge ]
  %tx = getelementptr i8, ptr %.pn62, i32 -4
  %5 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx, align 128
  %call10 = tail call fastcc zeroext i1 @xskq_cons_peek_desc(ptr noundef %6, ptr noundef %desc, ptr noundef %pool)
  br i1 %call10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %for.body
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx, align 128
  %queue_empty_descs = getelementptr inbounds %struct.xsk_queue, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %queue_empty_descs to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %queue_empty_descs, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %queue_empty_descs, align 8
  %11 = ptrtoint ptr %.pn62 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load volatile ptr, ptr %.pn62, align 4
  %cmp.not = icmp eq ptr %.pn, %xsk_tx_list
  br i1 %cmp.not, label %if.then11.out_crit_edge, label %if.then11.for.body_crit_edge

if.then11.for.body_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end13:                                         ; preds = %for.body
  %cq = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 11
  %12 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cq, align 4
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %desc, align 8
  %ring1.i = getelementptr inbounds %struct.xsk_queue, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring1.i, align 8
  %nentries.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %nentries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nentries.i.i.i, align 4
  %cached_prod.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %cached_prod.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cached_prod.i.i.i, align 8
  %cached_cons.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %13, i32 0, i32 3
  %22 = ptrtoint ptr %cached_cons.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cached_cons.i.i.i, align 4
  %sub.neg.i.i.i = sub i32 %19, %21
  %sub1.i.i.i = sub i32 0, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.neg.i.i.i, i32 %sub1.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %sub.neg.i.i.i, %sub1.i.i.i
  br i1 %cmp.not.i.i.i, label %xskq_prod_is_full.exit.i, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

xskq_prod_is_full.exit.i:                         ; preds = %if.end13
  %consumer.i.i.i = getelementptr inbounds %struct.xdp_ring, ptr %17, i32 0, i32 4
  %24 = ptrtoint ptr %consumer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %consumer.i.i.i, align 128
  %26 = ptrtoint ptr %cached_cons.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cached_cons.i.i.i, align 4
  %sub7.i.i.i = sub i32 0, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.neg.i.i.i, i32 %sub7.i.i.i)
  %.not.i.i = icmp eq i32 %sub.neg.i.i.i, %sub7.i.i.i
  br i1 %.not.i.i, label %xskq_prod_is_full.exit.i.out_crit_edge, label %xskq_prod_is_full.exit.i.if.end17_crit_edge

xskq_prod_is_full.exit.i.if.end17_crit_edge:      ; preds = %xskq_prod_is_full.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

xskq_prod_is_full.exit.i.out_crit_edge:           ; preds = %xskq_prod_is_full.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end17:                                         ; preds = %xskq_prod_is_full.exit.i.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %inc.i = add i32 %21, 1
  %27 = ptrtoint ptr %cached_prod.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %inc.i, ptr %cached_prod.i.i.i, align 8
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %13, align 8
  %and.i = and i32 %29, %21
  %arrayidx.i = getelementptr %struct.xdp_umem_ring, ptr %17, i32 0, i32 1, i32 %and.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %15, ptr %arrayidx.i, align 8
  %31 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx, align 128
  %cached_cons.i = getelementptr inbounds %struct.xsk_queue, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cached_cons.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cached_cons.i, align 4
  %inc.i37 = add i32 %34, 1
  store i32 %inc.i37, ptr %cached_cons.i, align 4
  %call.i38 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i38, label %if.end17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i41

if.end17.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i41:                                ; preds = %if.end17
  %call1.i39 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39)
  %tobool.not.i40 = icmp eq i32 %call1.i39, 0
  br i1 %tobool.not.i40, label %land.lhs.true.i41.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i43

land.lhs.true.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i43:                               ; preds = %land.lhs.true.i41
  %.b4.i42 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i42, label %land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge, label %if.then.i44

land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i43
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i44:                                      ; preds = %land.lhs.true2.i43
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i44, %land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i41.rcu_read_unlock.exit_crit_edge, %if.end17.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !90
  br label %cleanup

out:                                              ; preds = %xskq_prod_is_full.exit.i.out_crit_edge, %if.then11.out_crit_edge, %do.end.out_crit_edge
  %call.i47 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i47, label %out.rcu_read_unlock.exit57_crit_edge, label %land.lhs.true.i50

out.rcu_read_unlock.exit57_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit57

land.lhs.true.i50:                                ; preds = %out
  %call1.i48 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit57_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit57_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit57

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit57_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit57_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit57

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #12
  br label %rcu_read_unlock.exit57

rcu_read_unlock.exit57:                           ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit57_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit57_crit_edge, %out.rcu_read_unlock.exit57_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !90
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit57, %rcu_read_unlock.exit
  %retval.0 = phi i1 [ false, %rcu_read_unlock.exit57 ], [ true, %rcu_read_unlock.exit ]
  %35 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i54 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i56 = add i32 %38, -1
  store volatile i32 %sub.i.i.i56, ptr %preempt_count.i.i.i.i55, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xskq_cons_peek_desc(ptr nocapture noundef %q, ptr nocapture noundef %desc, ptr nocapture noundef readonly %pool) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %cached_prod = getelementptr inbounds %struct.xsk_queue, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %cached_prod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cached_prod, align 8
  %cached_cons = getelementptr inbounds %struct.xsk_queue, ptr %q, i32 0, i32 3
  %2 = ptrtoint ptr %cached_cons to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cached_cons, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  %4 = ptrtoint ptr %cached_cons to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cached_cons, align 4
  %ring.i.i = getelementptr inbounds %struct.xsk_queue, ptr %q, i32 0, i32 4
  %6 = ptrtoint ptr %ring.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring.i.i, align 8
  %consumer.i.i = getelementptr inbounds %struct.xdp_ring, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %consumer.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %5, ptr %consumer.i.i, align 128
  %9 = load ptr, ptr %ring.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  %12 = ptrtoint ptr %cached_prod to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cached_prod, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %cached_cons to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cached_cons, align 4
  %15 = ptrtoint ptr %cached_prod to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cached_prod, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not17.i = icmp eq i32 %14, %16
  br i1 %cmp.not17.i, label %if.end.xskq_cons_read_desc.exit_crit_edge, label %while.body.lr.ph.i

if.end.xskq_cons_read_desc.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_cons_read_desc.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %ring1.i = getelementptr inbounds %struct.xsk_queue, ptr %q, i32 0, i32 4
  %unaligned.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 26
  %len.i.i.i.i = getelementptr inbounds %struct.xdp_desc, ptr %desc, i32 0, i32 1
  %chunk_size.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 20
  %addrs_cnt.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 15
  %dma_pages_cnt.i.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 17
  %dma_pages.i.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 12
  %chunk_mask.i.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 14
  %options.i11.i.i.i = getelementptr inbounds %struct.xdp_desc, ptr %desc, i32 0, i32 2
  %invalid_descs.i.i = getelementptr inbounds %struct.xsk_queue, ptr %q, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %17 = phi i32 [ %14, %while.body.lr.ph.i ], [ %inc.i, %cleanup.i.while.body.i_crit_edge ]
  %18 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring1.i, align 8
  %20 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %q, align 8
  %and.i = and i32 %21, %17
  %arrayidx.i = getelementptr %struct.xdp_rxtx_ring, ptr %19, i32 0, i32 1, i32 %and.i
  %22 = call ptr @memcpy(ptr %desc, ptr %arrayidx.i, i32 16)
  %23 = ptrtoint ptr %unaligned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %unaligned.i.i.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i.i = icmp eq i8 %24, 0
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %desc, align 8
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i

cond.true.i.i.i:                                  ; preds = %while.body.i
  %and.i.i.i.i.i = and i64 %26, 281474976710655
  %shr.i.i.i.i.i.i = lshr i64 %26, 48
  %add.i.i.i.i.i = add nuw nsw i64 %and.i.i.i.i.i, %shr.i.i.i.i.i.i
  %27 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i.i.i, align 8
  %29 = ptrtoint ptr %chunk_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chunk_size.i.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.i.i.i.i = icmp ugt i32 %28, %30
  br i1 %cmp.i.i.i.i, label %cond.true.i.i.i.cleanup.i_crit_edge, label %if.end.i.i.i.i

cond.true.i.i.i.cleanup.i_crit_edge:              ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i.i.i.i:                                   ; preds = %cond.true.i.i.i
  %31 = ptrtoint ptr %addrs_cnt.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %addrs_cnt.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i.i.i, i64 %32)
  %cmp4.not.i.i.i.i = icmp ult i64 %and.i.i.i.i.i, %32
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i.i.i, i64 %32)
  %cmp6.not.i.i.i.i = icmp ult i64 %add.i.i.i.i.i, %32
  %or.cond.i.i.i.i = select i1 %cmp4.not.i.i.i.i, i1 %cmp6.not.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %lor.lhs.false7.i.i.i.i, label %if.end.i.i.i.i.cleanup.i_crit_edge

if.end.i.i.i.i.cleanup.i_crit_edge:               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

lor.lhs.false7.i.i.i.i:                           ; preds = %if.end.i.i.i.i
  %and.i24.i.i.i.i = and i64 %add.i.i.i.i.i, 4095
  %conv.i.i.i.i.i = zext i32 %28 to i64
  %add.i25.i.i.i.i = add nuw nsw i64 %and.i24.i.i.i.i, %conv.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4097, i64 %add.i25.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i64 %add.i25.i.i.i.i, 4097
  br i1 %cmp.i.i.i.i.i, label %lor.lhs.false7.i.i.i.i.xp_validate_desc.exit.i.i_crit_edge, label %if.end.i.i.i.i.i, !prof !97

lor.lhs.false7.i.i.i.i.xp_validate_desc.exit.i.i_crit_edge: ; preds = %lor.lhs.false7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xp_validate_desc.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %lor.lhs.false7.i.i.i.i
  %33 = ptrtoint ptr %dma_pages_cnt.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_pages_cnt.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool5.not.i.i.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool5.not.i.i.i.i.i, label %xp_desc_crosses_non_contig_pg.exit.i.i.i.i, label %if.then6.i.i.i.i.i

if.then6.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  %35 = ptrtoint ptr %dma_pages.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma_pages.i.i.i.i.i, align 8
  %shr.i.i.i.i.i = lshr i64 %add.i.i.i.i.i, 12
  %idxprom.i.i.i.i.i = trunc i64 %shr.i.i.i.i.i to i32
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %36, i32 %idxprom.i.i.i.i.i
  %37 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %39 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool9.not.i.i.i.i.i = icmp eq i32 %39, 0
  br i1 %tobool9.not.i.i.i.i.i, label %if.then6.i.i.i.i.i.cleanup.i_crit_edge, label %if.then6.i.i.i.i.i.xp_validate_desc.exit.i.i_crit_edge

if.then6.i.i.i.i.i.xp_validate_desc.exit.i.i_crit_edge: ; preds = %if.then6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xp_validate_desc.exit.i.i

if.then6.i.i.i.i.i.cleanup.i_crit_edge:           ; preds = %if.then6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

xp_desc_crosses_non_contig_pg.exit.i.i.i.i:       ; preds = %if.end.i.i.i.i.i
  %add14.i.i.i.i.i = add nuw nsw i64 %add.i.i.i.i.i, %conv.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add14.i.i.i.i.i, i64 %32)
  %cmp15.i.i.i.i.i = icmp ugt i64 %add14.i.i.i.i.i, %32
  br i1 %cmp15.i.i.i.i.i, label %xp_desc_crosses_non_contig_pg.exit.i.i.i.i.cleanup.i_crit_edge, label %xp_desc_crosses_non_contig_pg.exit.i.i.i.i.xp_validate_desc.exit.i.i_crit_edge

xp_desc_crosses_non_contig_pg.exit.i.i.i.i.xp_validate_desc.exit.i.i_crit_edge: ; preds = %xp_desc_crosses_non_contig_pg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xp_validate_desc.exit.i.i

xp_desc_crosses_non_contig_pg.exit.i.i.i.i.cleanup.i_crit_edge: ; preds = %xp_desc_crosses_non_contig_pg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

cond.false.i.i.i:                                 ; preds = %while.body.i
  %40 = ptrtoint ptr %chunk_mask.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %chunk_mask.i.i.i.i.i, align 16
  %and.i.i7.i.i.i = and i64 %41, %26
  %42 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i9.i.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i9.i.i.i, label %cond.false.i.i.i.if.end8.i.i.i.i_crit_edge, label %if.then.i.i.i.i, !prof !95

cond.false.i.i.i.if.end8.i.i.i.i_crit_edge:       ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %cond.false.i.i.i
  %conv.i.i.i.i = zext i32 %43 to i64
  %add.i.i.i.i = add i64 %26, -1
  %sub.i.i.i.i = add i64 %add.i.i.i.i, %conv.i.i.i.i
  %and.i25.i.i.i.i = and i64 %sub.i.i.i.i, %41
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i7.i.i.i, i64 %and.i25.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i64 %and.i.i7.i.i.i, %and.i25.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.then.i.i.i.i.if.end8.i.i.i.i_crit_edge, label %if.then.i.i.i.i.cleanup.i_crit_edge

if.then.i.i.i.i.cleanup.i_crit_edge:              ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.then.i.i.i.i.if.end8.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.then.i.i.i.i.if.end8.i.i.i.i_crit_edge, %cond.false.i.i.i.if.end8.i.i.i.i_crit_edge
  %44 = ptrtoint ptr %addrs_cnt.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %addrs_cnt.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i7.i.i.i, i64 %45)
  %cmp9.not.i.i.i.i = icmp ult i64 %and.i.i7.i.i.i, %45
  br i1 %cmp9.not.i.i.i.i, label %if.end8.i.i.i.i.xp_validate_desc.exit.i.i_crit_edge, label %if.end8.i.i.i.i.cleanup.i_crit_edge

if.end8.i.i.i.i.cleanup.i_crit_edge:              ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end8.i.i.i.i.xp_validate_desc.exit.i.i_crit_edge: ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xp_validate_desc.exit.i.i

xp_validate_desc.exit.i.i:                        ; preds = %if.end8.i.i.i.i.xp_validate_desc.exit.i.i_crit_edge, %xp_desc_crosses_non_contig_pg.exit.i.i.i.i.xp_validate_desc.exit.i.i_crit_edge, %if.then6.i.i.i.i.i.xp_validate_desc.exit.i.i_crit_edge, %lor.lhs.false7.i.i.i.i.xp_validate_desc.exit.i.i_crit_edge
  %46 = ptrtoint ptr %options.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %options.i11.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool13.not.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool13.not.i.i.i.i, label %xp_validate_desc.exit.i.i.xskq_cons_read_desc.exit_crit_edge, label %xp_validate_desc.exit.i.i.cleanup.i_crit_edge

xp_validate_desc.exit.i.i.cleanup.i_crit_edge:    ; preds = %xp_validate_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

xp_validate_desc.exit.i.i.xskq_cons_read_desc.exit_crit_edge: ; preds = %xp_validate_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_cons_read_desc.exit

cleanup.i:                                        ; preds = %xp_validate_desc.exit.i.i.cleanup.i_crit_edge, %if.end8.i.i.i.i.cleanup.i_crit_edge, %if.then.i.i.i.i.cleanup.i_crit_edge, %xp_desc_crosses_non_contig_pg.exit.i.i.i.i.cleanup.i_crit_edge, %if.then6.i.i.i.i.i.cleanup.i_crit_edge, %if.end.i.i.i.i.cleanup.i_crit_edge, %cond.true.i.i.i.cleanup.i_crit_edge
  %48 = ptrtoint ptr %invalid_descs.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %invalid_descs.i.i, align 8
  %inc.i.i = add i64 %49, 1
  store i64 %inc.i.i, ptr %invalid_descs.i.i, align 8
  %50 = ptrtoint ptr %cached_cons to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cached_cons, align 4
  %inc.i = add i32 %51, 1
  store i32 %inc.i, ptr %cached_cons, align 4
  %52 = ptrtoint ptr %cached_prod to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cached_prod, align 8
  %cmp.not.i = icmp eq i32 %inc.i, %53
  br i1 %cmp.not.i, label %cleanup.i.xskq_cons_read_desc.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.xskq_cons_read_desc.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_cons_read_desc.exit

xskq_cons_read_desc.exit:                         ; preds = %cleanup.i.xskq_cons_read_desc.exit_crit_edge, %xp_validate_desc.exit.i.i.xskq_cons_read_desc.exit_crit_edge, %if.end.xskq_cons_read_desc.exit_crit_edge
  %cmp.not.lcssa.i = phi i1 [ false, %if.end.xskq_cons_read_desc.exit_crit_edge ], [ false, %cleanup.i.xskq_cons_read_desc.exit_crit_edge ], [ true, %xp_validate_desc.exit.i.i.xskq_cons_read_desc.exit_crit_edge ]
  ret i1 %cmp.not.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xsk_tx_peek_release_desc_batch(ptr noundef %pool, ptr nocapture noundef %descs, i32 noundef %max_entries) #1 align 64 {
entry:
  %__next = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %xsk_tx_list = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 2
  %4 = ptrtoint ptr %xsk_tx_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %xsk_tx_list, align 4
  %cmp.i.not.i = icmp eq ptr %5, %xsk_tx_list
  br i1 %cmp.i.not.i, label %rcu_read_lock.exit.if.then_crit_edge, label %list_is_singular.exit

rcu_read_lock.exit.if.then_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

list_is_singular.exit:                            ; preds = %rcu_read_lock.exit
  %prev.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %5, %7
  br i1 %cmp.i.not, label %if.end, label %list_is_singular.exit.if.then_crit_edge

list_is_singular.exit.if.then_crit_edge:          ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %list_is_singular.exit.if.then_crit_edge, %rcu_read_lock.exit.if.then_crit_edge
  %call.i46 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i46, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i49

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i49:                                ; preds = %if.then
  %call1.i47 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47)
  %tobool.not.i48 = icmp eq i32 %call1.i47, 0
  br i1 %tobool.not.i48, label %land.lhs.true.i49.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i51

land.lhs.true.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i51:                               ; preds = %land.lhs.true.i49
  %.b4.i50 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i50, label %land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge, label %if.then.i52

land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i52:                                      ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i52, %land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i49.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !90
  %8 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i53 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i53 to ptr
  %preempt_count.i.i.i.i54 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i54, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i54, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_entries)
  %cmp5.not.i = icmp eq i32 %max_entries, 0
  br i1 %cmp5.not.i, label %rcu_read_unlock.exit.xsk_tx_peek_release_fallback.exit_crit_edge, label %rcu_read_unlock.exit.land.rhs.i56_crit_edge

rcu_read_unlock.exit.land.rhs.i56_crit_edge:      ; preds = %rcu_read_unlock.exit
  br label %land.rhs.i56

rcu_read_unlock.exit.xsk_tx_peek_release_fallback.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_tx_peek_release_fallback.exit

land.rhs.i56:                                     ; preds = %while.body.i.land.rhs.i56_crit_edge, %rcu_read_unlock.exit.land.rhs.i56_crit_edge
  %nb_pkts.06.i = phi i32 [ %inc.i, %while.body.i.land.rhs.i56_crit_edge ], [ 0, %rcu_read_unlock.exit.land.rhs.i56_crit_edge ]
  %arrayidx.i = getelementptr %struct.xdp_desc, ptr %descs, i32 %nb_pkts.06.i
  %call.i55 = tail call zeroext i1 @xsk_tx_peek_desc(ptr noundef %pool, ptr noundef %arrayidx.i) #12
  br i1 %call.i55, label %while.body.i, label %land.rhs.i56.xsk_tx_peek_release_fallback.exit_crit_edge

land.rhs.i56.xsk_tx_peek_release_fallback.exit_crit_edge: ; preds = %land.rhs.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_tx_peek_release_fallback.exit

while.body.i:                                     ; preds = %land.rhs.i56
  %inc.i = add nuw i32 %nb_pkts.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %max_entries
  br i1 %exitcond.not.i, label %while.body.i.xsk_tx_peek_release_fallback.exit_crit_edge, label %while.body.i.land.rhs.i56_crit_edge

while.body.i.land.rhs.i56_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i56

while.body.i.xsk_tx_peek_release_fallback.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_tx_peek_release_fallback.exit

xsk_tx_peek_release_fallback.exit:                ; preds = %while.body.i.xsk_tx_peek_release_fallback.exit_crit_edge, %land.rhs.i56.xsk_tx_peek_release_fallback.exit_crit_edge, %rcu_read_unlock.exit.xsk_tx_peek_release_fallback.exit_crit_edge
  %nb_pkts.0.lcssa.i = phi i32 [ 0, %rcu_read_unlock.exit.xsk_tx_peek_release_fallback.exit_crit_edge ], [ %nb_pkts.06.i, %land.rhs.i56.xsk_tx_peek_release_fallback.exit_crit_edge ], [ %max_entries, %while.body.i.xsk_tx_peek_release_fallback.exit_crit_edge ]
  tail call void @xsk_tx_release(ptr noundef %pool) #12
  br label %cleanup

if.end:                                           ; preds = %list_is_singular.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next)
  %12 = ptrtoint ptr %xsk_tx_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %xsk_tx_list, align 4
  %14 = ptrtoint ptr %__next to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %__next, align 4
  %cmp.not = icmp eq ptr %xsk_tx_list, %13
  br i1 %cmp.not, label %cond.end.thread, label %cond.end, !prof !95

cond.end.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  br label %out

cond.end:                                         ; preds = %if.end
  %15 = ptrtoint ptr %__next to i32
  call void @__asan_load4_noabort(i32 %15)
  %__next.0.__next.0.__next.0.27 = load volatile ptr, ptr %__next, align 4
  %add.ptr = getelementptr i8, ptr %__next.0.__next.0.__next.0.27, i32 -1156
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  %tobool11.not = icmp eq ptr %add.ptr, null
  br i1 %tobool11.not, label %cond.end.out_crit_edge, label %if.end13

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end13:                                         ; preds = %cond.end
  %tx = getelementptr i8, ptr %__next.0.__next.0.__next.0.27, i32 -4
  %16 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx, align 128
  %cached_prod.i.i = getelementptr inbounds %struct.xsk_queue, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %cached_prod.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cached_prod.i.i, align 8
  %cached_cons.i.i = getelementptr inbounds %struct.xsk_queue, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %cached_cons.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cached_cons.i.i, align 4
  %sub.i.i = sub i32 %19, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %max_entries)
  %cmp.not.i.i = icmp ult i32 %sub.i.i, %max_entries
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end13.xskq_cons_nb_entries.exit.i_crit_edge

if.end13.xskq_cons_nb_entries.exit.i_crit_edge:   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_cons_nb_entries.exit.i

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %ring.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %17, i32 0, i32 4
  %22 = ptrtoint ptr %ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ring.i.i.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  %26 = ptrtoint ptr %cached_prod.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cached_prod.i.i, align 8
  %27 = ptrtoint ptr %cached_cons.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cached_cons.i.i, align 4
  %sub3.i.i = sub i32 %25, %28
  %29 = tail call i32 @llvm.umin.i32(i32 %sub3.i.i, i32 %max_entries) #12
  br label %xskq_cons_nb_entries.exit.i

xskq_cons_nb_entries.exit.i:                      ; preds = %if.end.i.i, %if.end13.xskq_cons_nb_entries.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %29, %if.end.i.i ], [ %max_entries, %if.end13.xskq_cons_nb_entries.exit.i_crit_edge ]
  %30 = ptrtoint ptr %cached_cons.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cached_cons.i.i, align 4
  %32 = ptrtoint ptr %cached_prod.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cached_prod.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp.not28.i.i = icmp ne i32 %31, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp229.i.i = icmp ne i32 %retval.0.i.i, 0
  %or.cond30.i.i = and i1 %cmp229.i.i, %cmp.not28.i.i
  br i1 %or.cond30.i.i, label %while.body.lr.ph.i.i, label %xskq_cons_nb_entries.exit.i.if.then16_crit_edge

xskq_cons_nb_entries.exit.i.if.then16_crit_edge:  ; preds = %xskq_cons_nb_entries.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

while.body.lr.ph.i.i:                             ; preds = %xskq_cons_nb_entries.exit.i
  %ring3.i.i = getelementptr inbounds %struct.xsk_queue, ptr %17, i32 0, i32 4
  %unaligned.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 26
  %chunk_size.i.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 20
  %addrs_cnt.i.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 15
  %dma_pages_cnt.i.i.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 17
  %dma_pages.i.i.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 12
  %chunk_mask.i.i.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 14
  %invalid_descs.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %17, i32 0, i32 5
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %cached_cons.034.i.i = phi i32 [ %31, %while.body.lr.ph.i.i ], [ %cached_cons.1.i.i, %while.cond.i.i.while.body.i.i_crit_edge ]
  %nb_entries.031.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %67, %while.cond.i.i.while.body.i.i_crit_edge ]
  %34 = ptrtoint ptr %ring3.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ring3.i.i, align 8
  %36 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %17, align 8
  %and.i.i = and i32 %37, %cached_cons.034.i.i
  %arrayidx.i.i = getelementptr %struct.xdp_desc, ptr %descs, i32 %nb_entries.031.i.i
  %arrayidx4.i.i = getelementptr %struct.xdp_rxtx_ring, ptr %35, i32 0, i32 1, i32 %and.i.i
  %38 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %arrayidx4.i.i, i32 16)
  %39 = ptrtoint ptr %unaligned.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %unaligned.i.i.i.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i.i.i = icmp eq i8 %40, 0
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx.i.i, align 8
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i

cond.true.i.i.i.i:                                ; preds = %while.body.i.i
  %and.i.i.i.i.i.i = and i64 %42, 281474976710655
  %shr.i.i.i.i.i.i.i = lshr i64 %42, 48
  %add.i.i.i.i.i.i = add nuw nsw i64 %and.i.i.i.i.i.i, %shr.i.i.i.i.i.i.i
  %len.i.i.i.i.i = getelementptr %struct.xdp_desc, ptr %descs, i32 %nb_entries.031.i.i, i32 1
  %43 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i.i.i.i.i, align 8
  %45 = ptrtoint ptr %chunk_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chunk_size.i.i.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp.i.i.i.i.i = icmp ugt i32 %44, %46
  br i1 %cmp.i.i.i.i.i, label %cond.true.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge, label %if.end.i.i.i.i.i

cond.true.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge: ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_cons_is_valid_desc.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %cond.true.i.i.i.i
  %47 = ptrtoint ptr %addrs_cnt.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %addrs_cnt.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i.i.i.i, i64 %48)
  %cmp4.not.i.i.i.i.i = icmp ult i64 %and.i.i.i.i.i.i, %48
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i.i.i.i, i64 %48)
  %cmp6.not.i.i.i.i.i = icmp ult i64 %add.i.i.i.i.i.i, %48
  %or.cond.i.i.i.i.i = select i1 %cmp4.not.i.i.i.i.i, i1 %cmp6.not.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %lor.lhs.false7.i.i.i.i.i, label %if.end.i.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge

if.end.i.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_cons_is_valid_desc.exit.i.i

lor.lhs.false7.i.i.i.i.i:                         ; preds = %if.end.i.i.i.i.i
  %and.i24.i.i.i.i.i = and i64 %add.i.i.i.i.i.i, 4095
  %conv.i.i.i.i.i.i = zext i32 %44 to i64
  %add.i25.i.i.i.i.i = add nuw nsw i64 %and.i24.i.i.i.i.i, %conv.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4097, i64 %add.i25.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp ult i64 %add.i25.i.i.i.i.i, 4097
  br i1 %cmp.i.i.i.i.i.i, label %lor.lhs.false7.i.i.i.i.i.xp_validate_desc.exit.i.i.i_crit_edge, label %if.end.i.i.i.i.i.i, !prof !97

lor.lhs.false7.i.i.i.i.i.xp_validate_desc.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false7.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xp_validate_desc.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %lor.lhs.false7.i.i.i.i.i
  %49 = ptrtoint ptr %dma_pages_cnt.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_pages_cnt.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool5.not.i.i.i.i.i.i = icmp eq i32 %50, 0
  br i1 %tobool5.not.i.i.i.i.i.i, label %xp_desc_crosses_non_contig_pg.exit.i.i.i.i.i, label %if.then6.i.i.i.i.i.i

if.then6.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i.i.i
  %51 = ptrtoint ptr %dma_pages.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_pages.i.i.i.i.i.i, align 8
  %shr.i.i.i.i.i.i = lshr i64 %add.i.i.i.i.i.i, 12
  %idxprom.i.i.i.i.i.i = trunc i64 %shr.i.i.i.i.i.i to i32
  %arrayidx.i.i.i.i.i.i = getelementptr i32, ptr %52, i32 %idxprom.i.i.i.i.i.i
  %53 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i.i.i.i.i, align 4
  %55 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool9.not.i.i.i.i.i.i = icmp eq i32 %55, 0
  br i1 %tobool9.not.i.i.i.i.i.i, label %if.then6.i.i.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge, label %if.then6.i.i.i.i.i.i.xp_validate_desc.exit.i.i.i_crit_edge

if.then6.i.i.i.i.i.i.xp_validate_desc.exit.i.i.i_crit_edge: ; preds = %if.then6.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xp_validate_desc.exit.i.i.i

if.then6.i.i.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge: ; preds = %if.then6.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_cons_is_valid_desc.exit.i.i

xp_desc_crosses_non_contig_pg.exit.i.i.i.i.i:     ; preds = %if.end.i.i.i.i.i.i
  %add14.i.i.i.i.i.i = add nuw nsw i64 %add.i.i.i.i.i.i, %conv.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add14.i.i.i.i.i.i, i64 %48)
  %cmp15.i.i.i.i.i.i = icmp ugt i64 %add14.i.i.i.i.i.i, %48
  br i1 %cmp15.i.i.i.i.i.i, label %xp_desc_crosses_non_contig_pg.exit.i.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge, label %xp_desc_crosses_non_contig_pg.exit.i.i.i.i.i.xp_validate_desc.exit.i.i.i_crit_edge

xp_desc_crosses_non_contig_pg.exit.i.i.i.i.i.xp_validate_desc.exit.i.i.i_crit_edge: ; preds = %xp_desc_crosses_non_contig_pg.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xp_validate_desc.exit.i.i.i

xp_desc_crosses_non_contig_pg.exit.i.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge: ; preds = %xp_desc_crosses_non_contig_pg.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_cons_is_valid_desc.exit.i.i

cond.false.i.i.i.i:                               ; preds = %while.body.i.i
  %56 = ptrtoint ptr %chunk_mask.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %chunk_mask.i.i.i.i.i.i, align 16
  %and.i.i7.i.i.i.i = and i64 %57, %42
  %len.i8.i.i.i.i = getelementptr %struct.xdp_desc, ptr %descs, i32 %nb_entries.031.i.i, i32 1
  %58 = ptrtoint ptr %len.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i8.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i9.i.i.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i9.i.i.i.i, label %cond.false.i.i.i.i.if.end8.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i, !prof !95

cond.false.i.i.i.i.if.end8.i.i.i.i.i_crit_edge:   ; preds = %cond.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %cond.false.i.i.i.i
  %conv.i.i.i.i.i = zext i32 %59 to i64
  %add.i.i.i.i.i = add i64 %42, -1
  %sub.i.i.i.i.i = add i64 %add.i.i.i.i.i, %conv.i.i.i.i.i
  %and.i25.i.i.i.i.i = and i64 %sub.i.i.i.i.i, %57
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i7.i.i.i.i, i64 %and.i25.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i64 %and.i.i7.i.i.i.i, %and.i25.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end8.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge

if.then.i.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_cons_is_valid_desc.exit.i.i

if.then.i.i.i.i.i.if.end8.i.i.i.i.i_crit_edge:    ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i.i.i

if.end8.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i.i.if.end8.i.i.i.i.i_crit_edge, %cond.false.i.i.i.i.if.end8.i.i.i.i.i_crit_edge
  %60 = ptrtoint ptr %addrs_cnt.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %addrs_cnt.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i7.i.i.i.i, i64 %61)
  %cmp9.not.i.i.i.i.i = icmp ult i64 %and.i.i7.i.i.i.i, %61
  br i1 %cmp9.not.i.i.i.i.i, label %if.end8.i.i.i.i.i.xp_validate_desc.exit.i.i.i_crit_edge, label %if.end8.i.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge

if.end8.i.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge: ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_cons_is_valid_desc.exit.i.i

if.end8.i.i.i.i.i.xp_validate_desc.exit.i.i.i_crit_edge: ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xp_validate_desc.exit.i.i.i

xp_validate_desc.exit.i.i.i:                      ; preds = %if.end8.i.i.i.i.i.xp_validate_desc.exit.i.i.i_crit_edge, %xp_desc_crosses_non_contig_pg.exit.i.i.i.i.i.xp_validate_desc.exit.i.i.i_crit_edge, %if.then6.i.i.i.i.i.i.xp_validate_desc.exit.i.i.i_crit_edge, %lor.lhs.false7.i.i.i.i.i.xp_validate_desc.exit.i.i.i_crit_edge
  %options.i11.i.i.i.i = getelementptr %struct.xdp_desc, ptr %descs, i32 %nb_entries.031.i.i, i32 2
  %62 = ptrtoint ptr %options.i11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %options.i11.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool13.not.i.i.i.i.i = icmp eq i32 %63, 0
  br i1 %tobool13.not.i.i.i.i.i, label %66, label %xp_validate_desc.exit.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge

xp_validate_desc.exit.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge: ; preds = %xp_validate_desc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_cons_is_valid_desc.exit.i.i

xskq_cons_is_valid_desc.exit.i.i:                 ; preds = %xp_validate_desc.exit.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge, %if.end8.i.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge, %if.then.i.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge, %xp_desc_crosses_non_contig_pg.exit.i.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge, %if.then6.i.i.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge, %if.end.i.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge, %cond.true.i.i.i.i.xskq_cons_is_valid_desc.exit.i.i_crit_edge
  %64 = ptrtoint ptr %invalid_descs.i.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %invalid_descs.i.i.i, align 8
  %inc.i.i.i = add i64 %65, 1
  store i64 %inc.i.i.i, ptr %invalid_descs.i.i.i, align 8
  br label %while.cond.i.i

66:                                               ; preds = %xp_validate_desc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc826.i.i = add nuw i32 %nb_entries.031.i.i, 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %66, %xskq_cons_is_valid_desc.exit.i.i
  %67 = phi i32 [ %inc826.i.i, %66 ], [ %nb_entries.031.i.i, %xskq_cons_is_valid_desc.exit.i.i ]
  %cached_cons.1.i.i = add i32 %cached_cons.034.i.i, 1
  %68 = ptrtoint ptr %cached_prod.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cached_prod.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cached_cons.1.i.i, i32 %69)
  %cmp.not.i4.i = icmp ne i32 %cached_cons.1.i.i, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %retval.0.i.i)
  %cmp2.i.i = icmp ult i32 %67, %retval.0.i.i
  %or.cond.i.i = select i1 %cmp.not.i4.i, i1 %cmp2.i.i, i1 false
  br i1 %or.cond.i.i, label %while.cond.i.i.while.body.i.i_crit_edge, label %xskq_cons_peek_desc_batch.exit

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

xskq_cons_peek_desc_batch.exit:                   ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool15.not = icmp eq i32 %67, 0
  br i1 %tobool15.not, label %xskq_cons_peek_desc_batch.exit.if.then16_crit_edge, label %if.end18

xskq_cons_peek_desc_batch.exit.if.then16_crit_edge: ; preds = %xskq_cons_peek_desc_batch.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16:                                        ; preds = %xskq_cons_peek_desc_batch.exit.if.then16_crit_edge, %xskq_cons_nb_entries.exit.i.if.then16_crit_edge
  %70 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tx, align 128
  %queue_empty_descs = getelementptr inbounds %struct.xsk_queue, ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %queue_empty_descs to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %queue_empty_descs, align 8
  %inc = add i64 %73, 1
  store i64 %inc, ptr %queue_empty_descs, align 8
  br label %out

if.end18:                                         ; preds = %xskq_cons_peek_desc_batch.exit
  %cq = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 11
  %74 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cq, align 4
  %ring1.i = getelementptr inbounds %struct.xsk_queue, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ring1.i, align 8
  %nentries.i.i = getelementptr inbounds %struct.xsk_queue, ptr %75, i32 0, i32 1
  %78 = ptrtoint ptr %nentries.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nentries.i.i, align 4
  %cached_prod.i.i57 = getelementptr inbounds %struct.xsk_queue, ptr %75, i32 0, i32 2
  %80 = ptrtoint ptr %cached_prod.i.i57 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cached_prod.i.i57, align 8
  %cached_cons.i.i58 = getelementptr inbounds %struct.xsk_queue, ptr %75, i32 0, i32 3
  %82 = ptrtoint ptr %cached_cons.i.i58 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cached_cons.i.i58, align 4
  %sub.neg.i.i = sub i32 %79, %81
  %sub1.i.i = add i32 %sub.neg.i.i, %83
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.i, i32 %67)
  %cmp.not.i.i59 = icmp ult i32 %sub1.i.i, %67
  br i1 %cmp.not.i.i59, label %xskq_prod_nb_free.exit.i, label %if.end18.for.body.i.preheader_crit_edge

if.end18.for.body.i.preheader_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.preheader

xskq_prod_nb_free.exit.i:                         ; preds = %if.end18
  %consumer.i.i = getelementptr inbounds %struct.xdp_ring, ptr %77, i32 0, i32 4
  %84 = ptrtoint ptr %consumer.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %consumer.i.i, align 128
  %86 = ptrtoint ptr %cached_cons.i.i58 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %cached_cons.i.i58, align 4
  %sub7.i.i = add i32 %85, %sub.neg.i.i
  %87 = tail call i32 @llvm.umin.i32(i32 %sub7.i.i, i32 %67) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp14.not.i = icmp eq i32 %87, 0
  br i1 %cmp14.not.i, label %xskq_prod_reserve_addr_batch.exit.thread, label %xskq_prod_nb_free.exit.i.for.body.i.preheader_crit_edge

xskq_prod_nb_free.exit.i.for.body.i.preheader_crit_edge: ; preds = %xskq_prod_nb_free.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %xskq_prod_nb_free.exit.i.for.body.i.preheader_crit_edge, %if.end18.for.body.i.preheader_crit_edge
  %retval.0.i.i6084 = phi i32 [ %87, %xskq_prod_nb_free.exit.i.for.body.i.preheader_crit_edge ], [ %67, %if.end18.for.body.i.preheader_crit_edge ]
  br label %for.body.i

xskq_prod_reserve_addr_batch.exit.thread:         ; preds = %xskq_prod_nb_free.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %cached_prod.i.i57 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %81, ptr %cached_prod.i.i57, align 8
  br label %out

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %cached_prod.016.i = phi i32 [ %inc.i62, %for.body.i.for.body.i_crit_edge ], [ %81, %for.body.i.preheader ]
  %i.015.i = phi i32 [ %inc4.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i61 = getelementptr %struct.xdp_desc, ptr %descs, i32 %i.015.i
  %89 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx.i61, align 8
  %inc.i62 = add i32 %cached_prod.016.i, 1
  %91 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %75, align 8
  %and.i = and i32 %92, %cached_prod.016.i
  %arrayidx3.i = getelementptr %struct.xdp_umem_ring, ptr %77, i32 0, i32 1, i32 %and.i
  %93 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %90, ptr %arrayidx3.i, align 8
  %inc4.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i63 = icmp eq i32 %inc4.i, %retval.0.i.i6084
  br i1 %exitcond.not.i63, label %if.end22, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end22:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %cached_prod.i.i57 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %inc.i62, ptr %cached_prod.i.i57, align 8
  %95 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tx, align 128
  %cached_cons.i = getelementptr inbounds %struct.xsk_queue, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %cached_cons.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cached_cons.i, align 4
  %add.i = add i32 %98, %retval.0.i.i6084
  store i32 %add.i, ptr %cached_cons.i, align 4
  %99 = load ptr, ptr %tx, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  %cached_cons.i64 = getelementptr inbounds %struct.xsk_queue, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %cached_cons.i64 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cached_cons.i64, align 4
  %ring.i = getelementptr inbounds %struct.xsk_queue, ptr %99, i32 0, i32 4
  %102 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ring.i, align 8
  %consumer.i = getelementptr inbounds %struct.xdp_ring, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %consumer.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 %101, ptr %consumer.i, align 128
  %sk_write_space = getelementptr i8, ptr %__next.0.__next.0.__next.0.27, i32 -240
  %105 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sk_write_space, align 4
  tail call void %106(ptr noundef nonnull %add.ptr) #12
  br label %out

out:                                              ; preds = %if.end22, %xskq_prod_reserve_addr_batch.exit.thread, %if.then16, %cond.end.out_crit_edge, %cond.end.thread
  %nb_pkts.0 = phi i32 [ %retval.0.i.i6084, %if.end22 ], [ 0, %if.then16 ], [ 0, %cond.end.out_crit_edge ], [ 0, %cond.end.thread ], [ 0, %xskq_prod_reserve_addr_batch.exit.thread ]
  %call.i65 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i65, label %out.rcu_read_unlock.exit75_crit_edge, label %land.lhs.true.i68

out.rcu_read_unlock.exit75_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit75

land.lhs.true.i68:                                ; preds = %out
  %call1.i66 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67 = icmp eq i32 %call1.i66, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i68.rcu_read_unlock.exit75_crit_edge, label %land.lhs.true2.i70

land.lhs.true.i68.rcu_read_unlock.exit75_crit_edge: ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit75

land.lhs.true2.i70:                               ; preds = %land.lhs.true.i68
  %.b4.i69 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69, label %land.lhs.true2.i70.rcu_read_unlock.exit75_crit_edge, label %if.then.i71

land.lhs.true2.i70.rcu_read_unlock.exit75_crit_edge: ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit75

if.then.i71:                                      ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #12
  br label %rcu_read_unlock.exit75

rcu_read_unlock.exit75:                           ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit75_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit75_crit_edge, %out.rcu_read_unlock.exit75_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !90
  %107 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i72 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i74 = add i32 %110, -1
  store volatile i32 %sub.i.i.i74, ptr %preempt_count.i.i.i.i73, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit75, %xsk_tx_peek_release_fallback.exit
  %retval.0 = phi i32 [ %nb_pkts.0, %rcu_read_unlock.exit75 ], [ %nb_pkts.0.lcssa.i, %xsk_tx_peek_release_fallback.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @xsk_proto, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @sock_register(ptr noundef nonnull @xsk_family_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_proto_crit_edge

if.end.out_proto_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_proto

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @xsk_net_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_sk_crit_edge

if.end4.out_sk_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_sk

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @xsk_netdev_notifier) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.cond.preheader, label %out_pernet

for.cond.preheader:                               ; preds = %if.end8
  %call1322 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1322, i32 %0)
  %cmp23 = icmp ult i32 %call1322, %0
  br i1 %cmp23, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %call1324 = phi i32 [ %call13, %do.body.do.body_crit_edge ], [ %call1322, %for.cond.preheader.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1324
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @xskmap_flush_list to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %prev.i, align 4
  %call13 = tail call i32 @cpumask_next(i32 noundef %call1324, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call13, %6
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

out_pernet:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @xsk_net_ops) #12
  br label %out_sk

out_sk:                                           ; preds = %out_pernet, %if.end4.out_sk_crit_edge
  %err.0 = phi i32 [ %call5, %if.end4.out_sk_crit_edge ], [ %call9, %out_pernet ]
  tail call void @sock_unregister(i32 noundef 44) #12
  br label %out_proto

out_proto:                                        ; preds = %out_sk, %if.end.out_proto_crit_edge
  %err.1 = phi i32 [ %call1, %if.end.out_proto_crit_edge ], [ %err.0, %out_sk ]
  tail call void @proto_unregister(ptr noundef nonnull @xsk_proto) #12
  br label %cleanup

cleanup:                                          ; preds = %out_proto, %do.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %err.1, %out_proto ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
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
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
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
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xp_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_def_readable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_buff(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ns = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %0 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ns, align 4
  %call = tail call zeroext i1 @ns_capable(ptr noundef %1, i32 noundef 13) #12
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp.not = icmp eq i16 %3, 3
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %protocol)
  %tobool.not = icmp eq i32 %protocol, 0
  br i1 %tobool.not, label %if.end5, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %4 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %sock, align 128
  %call6 = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 44, i32 noundef 3264, ptr noundef nonnull @xsk_proto, i32 noundef %kern) #12
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xsk_proto_ops, ptr %ops, align 4
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call6) #12
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %call6, i32 0, i32 3
  %6 = ptrtoint ptr %skc_family to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 44, ptr %skc_family, align 8
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call6, i32 0, i32 82
  %7 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @xsk_destruct, ptr %sk_destruct, align 4
  %8 = getelementptr inbounds %struct.sock_common, ptr %call6, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %or.i.i = or i32 %10, 8388608
  store i32 %or.i.i, ptr %8, align 4
  %state11 = getelementptr inbounds %struct.xdp_sock, ptr %call6, i32 0, i32 9
  %11 = ptrtoint ptr %state11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %state11, align 4
  %mutex = getelementptr inbounds %struct.xdp_sock, ptr %call6, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @xsk_create.__key) #12
  %rx_lock = getelementptr inbounds %struct.xdp_sock, ptr %call6, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @xsk_create.__key.6, i16 noundef signext 3) #12
  %map_list = getelementptr inbounds %struct.xdp_sock, ptr %call6, i32 0, i32 16
  %12 = ptrtoint ptr %map_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %map_list, ptr %map_list, align 4
  %prev.i = getelementptr inbounds %struct.xdp_sock, ptr %call6, i32 0, i32 16, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %map_list, ptr %prev.i, align 4
  %map_list_lock = getelementptr inbounds %struct.xdp_sock, ptr %call6, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %map_list_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @xsk_create.__key.8, i16 noundef signext 3) #12
  %xdp = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %xdp, i32 noundef 0) #12
  %list = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 51, i32 1
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call6, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #12, !srcloc !98
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end9.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !95

if.end9.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end9
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !97

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end9.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end9.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %skc_reuseport.i = getelementptr inbounds %struct.sock_common, ptr %call6, i32 0, i32 5
  %16 = ptrtoint ptr %skc_reuseport.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %skc_reuseport.i, align 1
  %17 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %sock_hold.exit.i.if.else.i_crit_edge, label %land.lhs.true.i

sock_hold.exit.i.if.else.i_crit_edge:             ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sock_hold.exit.i
  %18 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %19)
  %cmp.i = icmp eq i16 %19, 10
  br i1 %cmp.i, label %land.lhs.true.i.for.cond.i.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i.for.cond.i.i_crit_edge:           ; preds = %land.lhs.true.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %land.lhs.true.i.for.cond.i.i_crit_edge
  %last.0.i.i = phi ptr [ %i.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ null, %land.lhs.true.i.for.cond.i.i_crit_edge ]
  %i.0.in.i.i = phi ptr [ %i.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ %list, %land.lhs.true.i.for.cond.i.i_crit_edge ]
  %20 = ptrtoint ptr %i.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %i.0.i.i = load ptr, ptr %i.0.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %i.0.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %21 = getelementptr inbounds %struct.sock_common, ptr %call6, i32 0, i32 15
  %tobool1.not.i.i = icmp eq ptr %last.0.i.i, null
  br i1 %tobool1.not.i.i, label %if.else47.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %last.0.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %last.0.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %21, align 4
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %call6, i32 0, i32 15, i32 0, i32 1
  %25 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %last.0.i.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !99
  br label %if.end48.sink.split.i.i

if.else47.i.i:                                    ; preds = %for.end.i.i
  %26 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list, align 4
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %21, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call6, i32 0, i32 15, i32 0, i32 1
  %29 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list, ptr %pprev.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !100
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %21, ptr %list, align 4
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %if.else47.i.i.sk_add_node_rcu.exit_crit_edge, label %do.body49.i.i.i

if.else47.i.i.sk_add_node_rcu.exit_crit_edge:     ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_add_node_rcu.exit

do.body49.i.i.i:                                  ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %27, i32 0, i32 1
  br label %if.end48.sink.split.i.i

if.end48.sink.split.i.i:                          ; preds = %do.body49.i.i.i, %if.then.i.i
  %pprev51.i.sink.i.i = phi ptr [ %pprev51.i.i.i, %do.body49.i.i.i ], [ %last.0.i.i, %if.then.i.i ]
  %31 = ptrtoint ptr %pprev51.i.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %21, ptr %pprev51.i.sink.i.i, align 4
  br label %sk_add_node_rcu.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sock_hold.exit.i.if.else.i_crit_edge
  %32 = getelementptr inbounds %struct.sock_common, ptr %call6, i32 0, i32 15
  %33 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %list, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %32, align 4
  %pprev.i11.i = getelementptr inbounds %struct.sock_common, ptr %call6, i32 0, i32 15, i32 0, i32 1
  %36 = ptrtoint ptr %pprev.i11.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list, ptr %pprev.i11.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !100
  %37 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %32, ptr %list, align 4
  %tobool.not.i12.i = icmp eq ptr %34, null
  br i1 %tobool.not.i12.i, label %if.else.i.sk_add_node_rcu.exit_crit_edge, label %do.body49.i.i

if.else.i.sk_add_node_rcu.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_add_node_rcu.exit

do.body49.i.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %34, i32 0, i32 1
  %38 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %32, ptr %pprev51.i.i, align 4
  br label %sk_add_node_rcu.exit

sk_add_node_rcu.exit:                             ; preds = %do.body49.i.i, %if.else.i.sk_add_node_rcu.exit_crit_edge, %if.end48.sink.split.i.i, %if.else47.i.i.sk_add_node_rcu.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %xdp) #12
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !101
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 29, i32 2
  %40 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prot_inuse.i, align 8
  %42 = load i32, ptr getelementptr inbounds (%struct.proto, ptr @xsk_proto, i32 0, i32 26), align 4
  %arrayidx.i = getelementptr %struct.prot_inuse, ptr %41, i32 0, i32 1, i32 %42
  %43 = ptrtoint ptr %arrayidx.i to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %49, %43
  %50 = inttoptr i32 %add.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add15.i = add i32 %52, 1
  store i32 %add15.i, ptr %50, align 4
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !102
  %and.i.i.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i45 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i45, label %if.then.i, label %sk_add_node_rcu.exit.sock_prot_inuse_add.exit_crit_edge, !prof !95

sk_add_node_rcu.exit.sock_prot_inuse_add.exit_crit_edge: ; preds = %sk_add_node_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_prot_inuse_add.exit

if.then.i:                                        ; preds = %sk_add_node_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i, %sk_add_node_rcu.exit.sock_prot_inuse_add.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %39) #12, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %sock_prot_inuse_add.exit, %if.end5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sock_prot_inuse_add.exit ], [ -1, %entry.cleanup_crit_edge ], [ -94, %if.end.cleanup_crit_edge ], [ -93, %if.end3.cleanup_crit_edge ], [ -105, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xsk_destruct(ptr noundef %sk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %pool = getelementptr inbounds %struct.xdp_sock, ptr %sk, i32 0, i32 6
  %3 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pool, align 4
  %call2 = tail call zeroext i1 @xp_put_pool(ptr noundef %4) #12
  br i1 %call2, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %umem = getelementptr inbounds %struct.xdp_sock, ptr %sk, i32 0, i32 4
  %5 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %umem, align 8
  %7 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pool, align 4
  %tobool.not = icmp eq ptr %8, null
  tail call void @xdp_put_umem(ptr noundef %6, i1 noundef zeroext %tobool.not) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_release(ptr nocapture noundef %sock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %xdp = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %xdp, i32 noundef 0) #12
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i.i.not.i, label %if.end.sk_del_node_init.exit_crit_edge, label %if.then.i.i

if.end.sk_del_node_init.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_del_node_init.exit

if.then.i.i:                                      ; preds = %if.end
  %6 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %5, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %5, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %11 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #12
  %12 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !95

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 729, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #12, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.sk_del_node_init.exit_crit_edge, !prof !95

if.end.i.sk_del_node_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_del_node_init.exit

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #12
  br label %sk_del_node_init.exit

sk_del_node_init.exit:                            ; preds = %if.then3.i.i.i.i, %if.end.i.sk_del_node_init.exit_crit_edge, %if.end.sk_del_node_init.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %xdp) #12
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_prot, align 8
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !101
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 29, i32 2
  %18 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prot_inuse.i, align 8
  %inuse_idx.i = getelementptr inbounds %struct.proto, ptr %16, i32 0, i32 26
  %20 = ptrtoint ptr %inuse_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inuse_idx.i, align 4
  %arrayidx.i = getelementptr %struct.prot_inuse, ptr %19, i32 0, i32 1, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %28, %22
  %29 = inttoptr i32 %add.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add15.i = add i32 %31, -1
  store i32 %add15.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !102
  %and.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i26, label %sk_del_node_init.exit.sock_prot_inuse_add.exit_crit_edge, !prof !95

sk_del_node_init.exit.sock_prot_inuse_add.exit_crit_edge: ; preds = %sk_del_node_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_prot_inuse_add.exit

if.then.i26:                                      ; preds = %sk_del_node_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i26, %sk_del_node_init.exit.sock_prot_inuse_add.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #12, !srcloc !103
  %map_list_lock.i.i = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %map_list_lock.i.i) #12
  %map_list.i.i = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 16
  %33 = ptrtoint ptr %map_list.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %map_list.i.i, align 4
  %cmp.not.i8.i = icmp eq ptr %34, %map_list.i.i
  %tobool.not16.i9.i = icmp eq ptr %34, null
  %tobool.not.i10.i = or i1 %cmp.not.i8.i, %tobool.not16.i9.i
  br i1 %tobool.not.i10.i, label %sock_prot_inuse_add.exit.xsk_get_map_list_entry.exit.thread.i_crit_edge, label %sock_prot_inuse_add.exit.xsk_get_map_list_entry.exit.i_crit_edge

sock_prot_inuse_add.exit.xsk_get_map_list_entry.exit.i_crit_edge: ; preds = %sock_prot_inuse_add.exit
  br label %xsk_get_map_list_entry.exit.i

sock_prot_inuse_add.exit.xsk_get_map_list_entry.exit.thread.i_crit_edge: ; preds = %sock_prot_inuse_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_get_map_list_entry.exit.thread.i

xsk_get_map_list_entry.exit.thread.i:             ; preds = %while.body.i.xsk_get_map_list_entry.exit.thread.i_crit_edge, %sock_prot_inuse_add.exit.xsk_get_map_list_entry.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %map_list_lock.i.i) #12
  br label %xsk_delete_from_maps.exit

xsk_get_map_list_entry.exit.i:                    ; preds = %while.body.i.xsk_get_map_list_entry.exit.i_crit_edge, %sock_prot_inuse_add.exit.xsk_get_map_list_entry.exit.i_crit_edge
  %35 = phi ptr [ %43, %while.body.i.xsk_get_map_list_entry.exit.i_crit_edge ], [ %34, %sock_prot_inuse_add.exit.xsk_get_map_list_entry.exit.i_crit_edge ]
  %map3.i.i = getelementptr inbounds %struct.xsk_map_node, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %map3.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map3.i.i, align 4
  tail call void @bpf_map_inc(ptr noundef %37) #12
  %38 = ptrtoint ptr %map3.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map3.i.i, align 4
  %map_entry6.i.i = getelementptr inbounds %struct.xsk_map_node, ptr %35, i32 0, i32 2
  %40 = ptrtoint ptr %map_entry6.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %map_entry6.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %map_list_lock.i.i) #12
  %tobool.not.i27 = icmp eq ptr %39, null
  br i1 %tobool.not.i27, label %xsk_get_map_list_entry.exit.i.xsk_delete_from_maps.exit_crit_edge, label %while.body.i

xsk_get_map_list_entry.exit.i.xsk_delete_from_maps.exit_crit_edge: ; preds = %xsk_get_map_list_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_delete_from_maps.exit

while.body.i:                                     ; preds = %xsk_get_map_list_entry.exit.i
  tail call void @xsk_map_try_sock_delete(ptr noundef nonnull %39, ptr noundef %1, ptr noundef %41) #12
  tail call void @bpf_map_put(ptr noundef nonnull %39) #12
  tail call void @_raw_spin_lock_bh(ptr noundef %map_list_lock.i.i) #12
  %42 = ptrtoint ptr %map_list.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %map_list.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %43, %map_list.i.i
  %tobool.not16.i.i = icmp eq ptr %43, null
  %tobool.not.i.i = or i1 %cmp.not.i.i, %tobool.not16.i.i
  br i1 %tobool.not.i.i, label %while.body.i.xsk_get_map_list_entry.exit.thread.i_crit_edge, label %while.body.i.xsk_get_map_list_entry.exit.i_crit_edge

while.body.i.xsk_get_map_list_entry.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_get_map_list_entry.exit.i

while.body.i.xsk_get_map_list_entry.exit.thread.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_get_map_list_entry.exit.thread.i

xsk_delete_from_maps.exit:                        ; preds = %xsk_get_map_list_entry.exit.i.xsk_delete_from_maps.exit_crit_edge, %xsk_get_map_list_entry.exit.thread.i
  %mutex = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %state.i = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 9
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.not.i = icmp eq i32 %45, 1
  br i1 %cmp.not.i, label %do.body3.i, label %xsk_delete_from_maps.exit.xsk_unbind_dev.exit_crit_edge

xsk_delete_from_maps.exit.xsk_unbind_dev.exit_crit_edge: ; preds = %xsk_delete_from_maps.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_unbind_dev.exit

do.body3.i:                                       ; preds = %xsk_delete_from_maps.exit
  %dev1.i = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1.i, align 4
  %48 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 2, ptr %state.i, align 4
  %pool.i = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pool.i, align 4
  tail call void @xp_del_xsk(ptr noundef %50, ptr noundef %1) #12
  %51 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %dev1.i, align 4
  tail call void @synchronize_net() #12
  %tobool.not.i.i28 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i28, label %do.body3.i.xsk_unbind_dev.exit_crit_edge, label %do.body1.i.i

do.body3.i.xsk_unbind_dev.exit_crit_edge:         ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_unbind_dev.exit

do.body1.i.i:                                     ; preds = %do.body3.i
  %52 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !101
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 118
  %53 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i29 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i29 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %61, %55
  %62 = inttoptr i32 %add.i.i to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %add13.i.i = add i32 %64, -1
  store i32 %add13.i.i, ptr %62, align 4
  %65 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !102
  %and.i.i.i.i = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !95

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %52) #12, !srcloc !103
  br label %xsk_unbind_dev.exit

xsk_unbind_dev.exit:                              ; preds = %do.end30.i.i, %do.body3.i.xsk_unbind_dev.exit_crit_edge, %xsk_delete_from_maps.exit.xsk_unbind_dev.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  %rx = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 2
  %66 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rx, align 128
  tail call void @xskq_destroy(ptr noundef %67) #12
  %tx = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 11
  %68 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tx, align 128
  tail call void @xskq_destroy(ptr noundef %69) #12
  %fq_tmp = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 19
  %70 = ptrtoint ptr %fq_tmp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fq_tmp, align 8
  tail call void @xskq_destroy(ptr noundef %71) #12
  %cq_tmp = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 20
  %72 = ptrtoint ptr %cq_tmp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cq_tmp, align 4
  tail call void @xskq_destroy(ptr noundef %73) #12
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #12
  %74 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %or.i.i.i = or i32 %76, 1
  store i32 %or.i.i.i, ptr %74, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %77 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %sk_socket.i.i, align 8
  %78 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %78, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #12
  %80 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %sk1, align 16
  %skc_refcnt.i30 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i30, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i30, i32 1, i32 3, i32 1) #12
  %81 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i30, ptr %skc_refcnt.i30, i32 1, ptr elementtype(i32) %skc_refcnt.i30) #12, !srcloc !105
  %asmresult.i.i.i.i.i.i.i32 = extractvalue { i32, i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i32)
  %cmp.i.i.i.i33 = icmp eq i32 %asmresult.i.i.i.i.i.i.i32, 1
  br i1 %cmp.i.i.i.i33, label %if.then.i34, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %xsk_unbind_dev.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i32)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i32, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !97

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i30, i32 noundef 3) #12
  br label %cleanup

if.then.i34:                                      ; preds = %xsk_unbind_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  tail call void @sk_free(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i34, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_bind(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %addr, i32 noundef %addr_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 16
  br i1 %cmp, label %entry.cleanup149_crit_edge, label %if.end

entry.cleanup149_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup149

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 44, i16 %3)
  %cmp2.not = icmp eq i16 %3, 44
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup149_crit_edge

if.end.cleanup149_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup149

if.end5:                                          ; preds = %if.end
  %sxdp_flags = getelementptr inbounds %struct.sockaddr_xdp, ptr %addr, i32 0, i32 1
  %4 = ptrtoint ptr %sxdp_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sxdp_flags, align 2
  %conv6 = zext i16 %5 to i32
  %and = and i32 %conv6, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %if.end5.cleanup149_crit_edge

if.end5.cleanup149_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup149

if.end8:                                          ; preds = %if.end5
  tail call void @rtnl_lock() #12
  %mutex = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %state = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9.not = icmp eq i32 %7, 0
  br i1 %cmp9.not, label %if.end12, label %if.end8.out_release_crit_edge

if.end8.out_release_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release

if.end12:                                         ; preds = %if.end8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i, align 4
  %sxdp_ifindex = getelementptr inbounds %struct.sockaddr_xdp, ptr %addr, i32 0, i32 2
  %10 = ptrtoint ptr %sxdp_ifindex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sxdp_ifindex, align 4
  %call14 = tail call ptr @dev_get_by_index(ptr noundef %9, i32 noundef %11) #12
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.out_release_crit_edge, label %if.end17

if.end12.out_release_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release

if.end17:                                         ; preds = %if.end12
  %rx = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx, align 128
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %land.lhs.true, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end17
  %tx = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx, align 128
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %land.lhs.true.if.then129_crit_edge, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true.if.then129_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then129

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.end17.if.end21_crit_edge
  %sxdp_queue_id = getelementptr inbounds %struct.sockaddr_xdp, ptr %addr, i32 0, i32 3
  %16 = ptrtoint ptr %sxdp_queue_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sxdp_queue_id, align 4
  %and22 = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else94, label %if.then24

if.then24:                                        ; preds = %if.end21
  %18 = and i32 %conv6, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %if.end34, label %if.then24.if.then129_crit_edge

if.then24.if.then129_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then129

if.end34:                                         ; preds = %if.then24
  %umem = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %umem, align 8
  %tobool35.not = icmp eq ptr %21, null
  br i1 %tobool35.not, label %if.end37, label %if.end34.if.then129_crit_edge

if.end34.if.then129_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then129

if.end37:                                         ; preds = %if.end34
  %sxdp_shared_umem_fd = getelementptr inbounds %struct.sockaddr_xdp, ptr %addr, i32 0, i32 4
  %22 = ptrtoint ptr %sxdp_shared_umem_fd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sxdp_shared_umem_fd, align 4
  %call38 = tail call fastcc ptr @xsk_lookup_xsk_from_fd(i32 noundef %23)
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out_unlock, label %if.end42

if.end42:                                         ; preds = %if.end37
  %sk43 = getelementptr inbounds %struct.socket, ptr %call38, i32 0, i32 4
  %24 = ptrtoint ptr %sk43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk43, align 16
  %state.i = getelementptr inbounds %struct.xdp_sock, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i226 = icmp eq i32 %27, 1
  br i1 %cmp.i226, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %file = getelementptr inbounds %struct.socket, ptr %call38, i32 0, i32 3
  %28 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %file, align 4
  tail call void @fput(ptr noundef %29) #12
  br label %if.then129

if.end47:                                         ; preds = %if.end42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !92
  %queue_id = getelementptr inbounds %struct.xdp_sock, ptr %25, i32 0, i32 7
  %30 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %queue_id, align 8
  %conv48 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv48)
  %cmp49.not = icmp eq i32 %17, %conv48
  br i1 %cmp49.not, label %lor.lhs.false51, label %if.end47.if.then55_crit_edge

if.end47.if.then55_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

lor.lhs.false51:                                  ; preds = %if.end47
  %dev52 = getelementptr inbounds %struct.xdp_sock, ptr %25, i32 0, i32 3
  %32 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev52, align 4
  %cmp53.not = icmp eq ptr %33, %call14
  br i1 %cmp53.not, label %if.else, label %lor.lhs.false51.if.then55_crit_edge

lor.lhs.false51.if.then55_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false51.if.then55_crit_edge, %if.end47.if.then55_crit_edge
  %umem56 = getelementptr inbounds %struct.xdp_sock, ptr %25, i32 0, i32 4
  %34 = ptrtoint ptr %umem56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %umem56, align 8
  %call57 = tail call ptr @xp_create_and_assign_umem(ptr noundef %1, ptr noundef %35) #12
  %pool = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call57, ptr %pool, align 4
  %tobool59.not = icmp eq ptr %call57, null
  br i1 %tobool59.not, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  %file61 = getelementptr inbounds %struct.socket, ptr %call38, i32 0, i32 3
  %37 = ptrtoint ptr %file61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %file61, align 4
  tail call void @fput(ptr noundef %38) #12
  br label %if.then129

if.end62:                                         ; preds = %if.then55
  %39 = ptrtoint ptr %umem56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %umem56, align 8
  %conv65 = trunc i32 %17 to i16
  %call66 = tail call i32 @xp_assign_dev_shared(ptr noundef nonnull %call57, ptr noundef %40, ptr noundef nonnull %call14, i16 noundef zeroext %conv65) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end62.cleanup_crit_edge, label %if.then68

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then68:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pool, align 4
  tail call void @xp_destroy(ptr noundef %42) #12
  %43 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %pool, align 4
  %file71 = getelementptr inbounds %struct.socket, ptr %call38, i32 0, i32 3
  %44 = ptrtoint ptr %file71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %file71, align 4
  tail call void @fput(ptr noundef %45) #12
  br label %if.then129

if.else:                                          ; preds = %lor.lhs.false51
  %fq_tmp = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 19
  %46 = ptrtoint ptr %fq_tmp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fq_tmp, align 8
  %tobool73.not = icmp eq ptr %47, null
  br i1 %tobool73.not, label %lor.lhs.false74, label %if.else.if.then76_crit_edge

if.else.if.then76_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then76

lor.lhs.false74:                                  ; preds = %if.else
  %cq_tmp = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 20
  %48 = ptrtoint ptr %cq_tmp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cq_tmp, align 4
  %tobool75.not = icmp eq ptr %49, null
  br i1 %tobool75.not, label %if.end78, label %lor.lhs.false74.if.then76_crit_edge

lor.lhs.false74.if.then76_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then76

if.then76:                                        ; preds = %lor.lhs.false74.if.then76_crit_edge, %if.else.if.then76_crit_edge
  %file77 = getelementptr inbounds %struct.socket, ptr %call38, i32 0, i32 3
  %50 = ptrtoint ptr %file77 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %file77, align 4
  tail call void @fput(ptr noundef %51) #12
  br label %if.then129

if.end78:                                         ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #14
  %pool79 = getelementptr inbounds %struct.xdp_sock, ptr %25, i32 0, i32 6
  %52 = ptrtoint ptr %pool79 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pool79, align 4
  tail call void @xp_get_pool(ptr noundef %53) #12
  %54 = ptrtoint ptr %pool79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pool79, align 4
  %pool81 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 6
  %56 = ptrtoint ptr %pool81 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %pool81, align 4
  %.pre239 = trunc i32 %17 to i16
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.end62.cleanup_crit_edge
  %.pre.pre-phi = phi i16 [ %.pre239, %if.end78 ], [ %conv65, %if.end62.cleanup_crit_edge ]
  %umem83 = getelementptr inbounds %struct.xdp_sock, ptr %25, i32 0, i32 4
  %57 = ptrtoint ptr %umem83 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %umem83, align 8
  tail call void @xdp_get_umem(ptr noundef %58) #12
  %59 = ptrtoint ptr %umem83 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %umem83, align 8
  %61 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %60, ptr %umem, align 8
  %file92 = getelementptr inbounds %struct.socket, ptr %call38, i32 0, i32 3
  %62 = ptrtoint ptr %file92 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %file92, align 4
  tail call void @fput(ptr noundef %63) #12
  br label %out_unlock.thread232

if.else94:                                        ; preds = %if.end21
  %umem95 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %umem95 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %umem95, align 8
  %tobool96.not = icmp eq ptr %65, null
  br i1 %tobool96.not, label %if.else94.if.then129_crit_edge, label %lor.lhs.false97

if.else94.if.then129_crit_edge:                   ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then129

lor.lhs.false97:                                  ; preds = %if.else94
  %fq_tmp.i = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 19
  %66 = ptrtoint ptr %fq_tmp.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fq_tmp.i, align 8
  %tobool.not.i = icmp eq ptr %67, null
  br i1 %tobool.not.i, label %lor.lhs.false97.if.then129_crit_edge, label %xsk_validate_queues.exit

lor.lhs.false97.if.then129_crit_edge:             ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then129

xsk_validate_queues.exit:                         ; preds = %lor.lhs.false97
  %cq_tmp.i = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 20
  %68 = ptrtoint ptr %cq_tmp.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cq_tmp.i, align 4
  %tobool1.i.not = icmp eq ptr %69, null
  br i1 %tobool1.i.not, label %xsk_validate_queues.exit.if.then129_crit_edge, label %if.else100

xsk_validate_queues.exit.if.then129_crit_edge:    ; preds = %xsk_validate_queues.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then129

if.else100:                                       ; preds = %xsk_validate_queues.exit
  %call102 = tail call ptr @xp_create_and_assign_umem(ptr noundef %1, ptr noundef nonnull %65) #12
  %pool103 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 6
  %70 = ptrtoint ptr %pool103 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call102, ptr %pool103, align 4
  %tobool105.not = icmp eq ptr %call102, null
  br i1 %tobool105.not, label %if.else100.if.then129_crit_edge, label %if.end107

if.else100.if.then129_crit_edge:                  ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then129

if.end107:                                        ; preds = %if.else100
  %conv109 = trunc i32 %17 to i16
  %call111 = tail call i32 @xp_assign_dev(ptr noundef nonnull %call102, ptr noundef nonnull %call14, i16 noundef zeroext %conv109, i16 noundef zeroext %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end107.out_unlock.thread232_crit_edge, label %if.then113

if.end107.out_unlock.thread232_crit_edge:         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock.thread232

if.then113:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %pool103 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pool103, align 4
  tail call void @xp_destroy(ptr noundef %72) #12
  %73 = ptrtoint ptr %pool103 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %pool103, align 4
  br label %if.then129

out_unlock.thread232:                             ; preds = %if.end107.out_unlock.thread232_crit_edge, %cleanup
  %conv125.pre-phi = phi i16 [ %conv109, %if.end107.out_unlock.thread232_crit_edge ], [ %.pre.pre-phi, %cleanup ]
  %fq_tmp119 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 19
  %74 = ptrtoint ptr %fq_tmp119 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %fq_tmp119, align 8
  %cq_tmp120 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 20
  %75 = ptrtoint ptr %cq_tmp120 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %cq_tmp120, align 4
  %dev121 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 3
  %76 = ptrtoint ptr %dev121 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call14, ptr %dev121, align 4
  %umem122 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 4
  %77 = ptrtoint ptr %umem122 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %umem122, align 8
  %zc = getelementptr inbounds %struct.xdp_umem, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %zc to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %zc, align 1, !range !91
  %zc124 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 8
  %81 = ptrtoint ptr %zc124 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %zc124, align 2
  %queue_id126 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 7
  %82 = ptrtoint ptr %queue_id126 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv125.pre-phi, ptr %queue_id126, align 8
  %pool127 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 6
  %83 = ptrtoint ptr %pool127 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pool127, align 4
  tail call void @xp_add_xsk(ptr noundef %84, ptr noundef %1) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !107
  %85 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 1, ptr %state, align 4
  br label %out_release

out_unlock:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %call38 to i32
  br label %if.then129

if.then129:                                       ; preds = %out_unlock, %if.then113, %if.else100.if.then129_crit_edge, %xsk_validate_queues.exit.if.then129_crit_edge, %lor.lhs.false97.if.then129_crit_edge, %if.else94.if.then129_crit_edge, %if.then76, %if.then68, %if.then60, %if.then46, %if.end34.if.then129_crit_edge, %if.then24.if.then129_crit_edge, %land.lhs.true.if.then129_crit_edge
  %err.3231 = phi i32 [ %86, %out_unlock ], [ -12, %if.else100.if.then129_crit_edge ], [ -22, %if.else94.if.then129_crit_edge ], [ -22, %xsk_validate_queues.exit.if.then129_crit_edge ], [ -22, %land.lhs.true.if.then129_crit_edge ], [ %call111, %if.then113 ], [ -22, %lor.lhs.false97.if.then129_crit_edge ], [ %call66, %if.then68 ], [ -12, %if.then60 ], [ -22, %if.then76 ], [ -9, %if.then46 ], [ -22, %if.then24.if.then129_crit_edge ], [ -22, %if.end34.if.then129_crit_edge ]
  tail call fastcc void @dev_put(ptr noundef nonnull %call14)
  br label %out_release

out_release:                                      ; preds = %if.then129, %out_unlock.thread232, %if.end12.out_release_crit_edge, %if.end8.out_release_crit_edge
  %err.4 = phi i32 [ %err.3231, %if.then129 ], [ 0, %out_unlock.thread232 ], [ -16, %if.end8.out_release_crit_edge ], [ -19, %if.end12.out_release_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  tail call void @rtnl_unlock() #12
  br label %cleanup149

cleanup149:                                       ; preds = %out_release, %if.end5.cleanup149_crit_edge, %if.end.cleanup149_crit_edge, %entry.cleanup149_crit_edge
  %retval.0 = phi i32 [ %err.4, %out_release ], [ -22, %entry.cleanup149_crit_edge ], [ -22, %if.end.cleanup149_crit_edge ], [ -22, %if.end5.cleanup149_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_poll(ptr noundef %file, ptr noundef %sock, ptr noundef %wait) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %cmp.i.i = icmp eq ptr %wait, null
  br i1 %cmp.i.i, label %entry.sock_poll_wait.exit_crit_edge, label %poll_does_not_wait.exit.i

entry.sock_poll_wait.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_poll_wait.exit

poll_does_not_wait.exit.i:                        ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %cmp1.i.i = icmp eq ptr %3, null
  br i1 %cmp1.i.i, label %poll_does_not_wait.exit.i.sock_poll_wait.exit_crit_edge, label %poll_wait.exit.i

poll_does_not_wait.exit.i.sock_poll_wait.exit_crit_edge: ; preds = %poll_does_not_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_poll_wait.exit

poll_wait.exit.i:                                 ; preds = %poll_does_not_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %wq.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 7
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wq.i, ptr noundef nonnull %wait) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  br label %sock_poll_wait.exit

sock_poll_wait.exit:                              ; preds = %poll_wait.exit.i, %poll_does_not_wait.exit.i.sock_poll_wait.exit_crit_edge, %entry.sock_poll_wait.exit_crit_edge
  %state.i = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.end, label %sock_poll_wait.exit.cleanup_crit_edge

sock_poll_wait.exit.cleanup_crit_edge:            ; preds = %sock_poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sock_poll_wait.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !92
  %pool5 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %pool5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pool5, align 4
  %cached_need_wakeup = getelementptr inbounds %struct.xsk_buff_pool, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %cached_need_wakeup to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cached_need_wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then7:                                         ; preds = %if.end
  %zc = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %zc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %zc, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call fastcc i32 @xsk_wakeup(ptr noundef %1, i8 noundef zeroext %9)
  br label %if.end14

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call fastcc i32 @__xsk_sendmsg(ptr noundef %1)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9, %if.end.if.end14_crit_edge
  %rx = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx, align 128
  %tobool15.not = icmp eq ptr %13, null
  br i1 %tobool15.not, label %if.end14.if.end19_crit_edge, label %land.lhs.true

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %ring.i = getelementptr inbounds %struct.xsk_queue, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring.i, align 8
  %consumer.i = getelementptr inbounds %struct.xdp_ring, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %consumer.i, align 128
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %15, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.i44 = icmp eq i32 %17, %19
  %spec.select = select i1 %cmp.i44, i32 0, i32 65
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.end14.if.end19_crit_edge
  %mask.0 = phi i32 [ 0, %if.end14.if.end19_crit_edge ], [ %spec.select, %land.lhs.true ]
  %tx = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx, align 128
  %tobool20.not = icmp eq ptr %21, null
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %land.lhs.true21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true21:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %ring.i.i = getelementptr inbounds %struct.xsk_queue, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %ring.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ring.i.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 128
  %consumer.i.i = getelementptr inbounds %struct.xdp_ring, ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %consumer.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %consumer.i.i, align 128
  %sub.i.i = sub i32 %25, %27
  %nentries.i = getelementptr inbounds %struct.xsk_queue, ptr %21, i32 0, i32 1
  %28 = ptrtoint ptr %nentries.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nentries.i, align 4
  %div3.i = lshr i32 %29, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %div3.i)
  %cmp.i45.not = icmp ugt i32 %sub.i.i, %div3.i
  %or24 = or i32 %mask.0, 260
  %spec.select43 = select i1 %cmp.i45.not, i32 %mask.0, i32 %or24
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true21, %if.end19.cleanup_crit_edge, %sock_poll_wait.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %mask.0, %if.end19.cleanup_crit_edge ], [ %spec.select43, %land.lhs.true21 ], [ 0, %sock_poll_wait.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #1 align 64 {
entry:
  %entries = alloca i32, align 4
  %mr = alloca %struct.xdp_umem_reg, align 8
  %entries65 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 283, i32 %level)
  %cmp.not = icmp eq i32 %level, 283
  br i1 %cmp.not, label %if.end, label %entry.cleanup85_crit_edge

entry.cleanup85_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup85

if.end:                                           ; preds = %entry
  %2 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %optname, label %if.end.cleanup85_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 3, label %if.end.sw.bb_crit_edge171
    i32 4, label %sw.bb21
    i32 5, label %if.end.sw.bb63_crit_edge
    i32 6, label %if.end.sw.bb63_crit_edge172
  ]

if.end.sw.bb63_crit_edge172:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb63

if.end.sw.bb63_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb63

if.end.sw.bb_crit_edge171:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.cleanup85_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup85

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entries) #12
  %3 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %entries, align 4, !annotation !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp2 = icmp ult i32 %optlen, 4
  br i1 %cmp2, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %4 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end59.i.i.i.i

if.end59.i.i.i.i:                                 ; preds = %if.end4
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #12
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i.i, label %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge:     ; preds = %if.end59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end59.i.i.i.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 4, i32 -1226833920) #16, !srcloc !110
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !97

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %entries, i32 noundef 4) #12
  %6 = call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #8, !srcloc !111
  %and.i.i.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #12, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %entries, ptr noundef %4, i32 noundef 4) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #12, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end7_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !97

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end7_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i163 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i.i.i163
  %add.ptr.i.i.i.i = getelementptr i8, ptr %entries, i32 %sub.i.i.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i163)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %4, align 1
  %12 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %entries, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end7_crit_edge
  %mutex = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %state = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8.not = icmp eq i32 %14, 0
  br i1 %cmp8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %optname)
  %cmp12 = icmp eq i32 %optname, 3
  %tx = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 11
  %rx = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 2
  %cond = select i1 %cmp12, ptr %tx, ptr %rx
  %15 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %entries, align 4
  %call13 = call fastcc i32 @xsk_init_queue(i32 noundef %16, ptr noundef %cond, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %17 = and i1 %cmp12, %tobool14.not
  br i1 %17, label %if.then16, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx, align 128
  %ring = getelementptr inbounds %struct.xsk_queue, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring, align 8
  %flags = getelementptr inbounds %struct.xdp_ring, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %or = or i32 %23, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end11.if.end18_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then9, %if.then11.i.i.i.i, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then9 ], [ %call13, %if.end18 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entries) #12
  br label %cleanup85

sw.bb21:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mr) #12
  %24 = call ptr @memset(ptr %mr, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %optlen)
  %cmp22 = icmp ult i32 %optlen, 24
  br i1 %cmp22, label %sw.bb21.cleanup60_crit_edge, label %if.else

sw.bb21.cleanup60_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup60

if.else:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %optlen)
  %cmp24 = icmp ult i32 %optlen, 32
  %spec.select = select i1 %cmp24, i32 24, i32 32
  %call28 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %mr, [2 x i32] %optval.coerce, i32 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.else.cleanup60_crit_edge

if.else.cleanup60_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup60

if.end31:                                         ; preds = %if.else
  %mutex32 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex32, i32 noundef 0) #12
  %state33 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %state33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp34.not = icmp eq i32 %26, 0
  br i1 %cmp34.not, label %lor.lhs.false, label %if.end31.if.then37_crit_edge

if.end31.if.then37_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.end31
  %umem35 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %umem35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %umem35, align 8
  %tobool36.not = icmp eq ptr %28, null
  br i1 %tobool36.not, label %if.end39, label %lor.lhs.false.if.then37_crit_edge

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %if.end31.if.then37_crit_edge
  call void @mutex_unlock(ptr noundef %mutex32) #12
  br label %cleanup60

if.end39:                                         ; preds = %lor.lhs.false
  %call40 = call ptr @xdp_umem_create(ptr noundef nonnull %mr) #12
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then42, label %do.end

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %mutex32) #12
  %29 = ptrtoint ptr %call40 to i32
  br label %cleanup60

do.end:                                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !114
  %30 = ptrtoint ptr %umem35 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call40, ptr %umem35, align 8
  call void @mutex_unlock(ptr noundef %mutex32) #12
  br label %cleanup60

cleanup60:                                        ; preds = %do.end, %if.then42, %if.then37, %if.else.cleanup60_crit_edge, %sw.bb21.cleanup60_crit_edge
  %retval.1 = phi i32 [ -16, %if.then37 ], [ %29, %if.then42 ], [ 0, %do.end ], [ -22, %sw.bb21.cleanup60_crit_edge ], [ -14, %if.else.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mr) #12
  br label %cleanup85

sw.bb63:                                          ; preds = %if.end.sw.bb63_crit_edge, %if.end.sw.bb63_crit_edge172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entries65) #12
  %31 = ptrtoint ptr %entries65 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %entries65, align 4, !annotation !109
  %src.coerce.fca.0.extract.i.i132 = extractvalue [2 x i32] %optval.coerce, 0
  %32 = inttoptr i32 %src.coerce.fca.0.extract.i.i132 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i133 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i133)
  %bf.cast.i.i.i134 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i133, 0
  br i1 %bf.cast.i.i.i134, label %if.end.i.i157, label %if.end59.i.i.i.i139

if.end59.i.i.i.i139:                              ; preds = %sw.bb63
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #12
  %call.i.i.i.i140 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i.i140, label %if.end59.i.i.i.i139.if.then11.i.i.i.i156_crit_edge, label %land.lhs.true.i.i.i.i143

if.end59.i.i.i.i139.if.then11.i.i.i.i156_crit_edge: ; preds = %if.end59.i.i.i.i139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i.i156

land.lhs.true.i.i.i.i143:                         ; preds = %if.end59.i.i.i.i139
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %32, i32 4, i32 -1226833920) #16, !srcloc !110
  %asmresult.i.i.i.i141 = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i141)
  %cmp.i6.i.i.i142 = icmp eq i32 %asmresult.i.i.i.i141, 0
  br i1 %cmp.i6.i.i.i142, label %if.end.i.i.i.i153, label %land.lhs.true.i.i.i.i143.if.then11.i.i.i.i156_crit_edge, !prof !97

land.lhs.true.i.i.i.i143.if.then11.i.i.i.i156_crit_edge: ; preds = %land.lhs.true.i.i.i.i143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i.i156

if.end.i.i.i.i153:                                ; preds = %land.lhs.true.i.i.i.i143
  %call.i.i.i.i.i144 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %entries65, i32 noundef 4) #12
  %34 = call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i.i.i.i145 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i.i.i.i145 to ptr
  %cpu_domain.i.i.i.i.i.i.i146 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i146) #8, !srcloc !111
  %and.i.i.i.i.i.i147 = and i32 %36, -13
  %or.i.i.i.i.i.i148 = or i32 %and.i.i.i.i.i.i147, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i148) #12, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %call1.i.i.i.i.i149 = call i32 @arm_copy_from_user(ptr noundef nonnull %entries65, ptr noundef %32, i32 noundef 4) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #12, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i149)
  %tobool4.not.i.i.i.i152 = icmp eq i32 %call1.i.i.i.i.i149, 0
  br i1 %tobool4.not.i.i.i.i152, label %if.end.i.i.i.i153.if.end69_crit_edge, label %if.end.i.i.i.i153.if.then11.i.i.i.i156_crit_edge, !prof !97

if.end.i.i.i.i153.if.then11.i.i.i.i156_crit_edge: ; preds = %if.end.i.i.i.i153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i.i156

if.end.i.i.i.i153.if.end69_crit_edge:             ; preds = %if.end.i.i.i.i153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then11.i.i.i.i156:                             ; preds = %if.end.i.i.i.i153.if.then11.i.i.i.i156_crit_edge, %land.lhs.true.i.i.i.i143.if.then11.i.i.i.i156_crit_edge, %if.end59.i.i.i.i139.if.then11.i.i.i.i156_crit_edge
  %res.0.i.i.i.i151168 = phi i32 [ %call1.i.i.i.i.i149, %if.end.i.i.i.i153.if.then11.i.i.i.i156_crit_edge ], [ 4, %if.end59.i.i.i.i139.if.then11.i.i.i.i156_crit_edge ], [ 4, %land.lhs.true.i.i.i.i143.if.then11.i.i.i.i156_crit_edge ]
  %sub.i.i.i.i154 = sub i32 4, %res.0.i.i.i.i151168
  %add.ptr.i.i.i.i155 = getelementptr i8, ptr %entries65, i32 %sub.i.i.i.i154
  %37 = call ptr @memset(ptr %add.ptr.i.i.i.i155, i32 0, i32 %res.0.i.i.i.i151168)
  br label %cleanup83

if.end.i.i157:                                    ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %32, align 1
  %40 = ptrtoint ptr %entries65 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %entries65, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.end.i.i157, %if.end.i.i.i.i153.if.end69_crit_edge
  %mutex70 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex70, i32 noundef 0) #12
  %state71 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 9
  %41 = ptrtoint ptr %state71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %state71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp72.not = icmp eq i32 %42, 0
  br i1 %cmp72.not, label %if.end75, label %if.then73

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %mutex70) #12
  br label %cleanup83

if.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %optname)
  %cmp76 = icmp eq i32 %optname, 5
  %fq_tmp = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 19
  %cq_tmp = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 20
  %cond80 = select i1 %cmp76, ptr %fq_tmp, ptr %cq_tmp
  %43 = ptrtoint ptr %entries65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %entries65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i160 = icmp eq i32 %44, 0
  br i1 %cmp.i160, label %if.end75.xsk_init_queue.exit_crit_edge, label %lor.lhs.false.i

if.end75.xsk_init_queue.exit_crit_edge:           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_init_queue.exit

lor.lhs.false.i:                                  ; preds = %if.end75
  %45 = ptrtoint ptr %cond80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cond80, align 4
  %tobool.not.i = icmp eq ptr %46, null
  %47 = call i32 @llvm.ctpop.i32(i32 %44) #12, !range !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp1.i.i = icmp ult i32 %47, 2
  %or.cond.i = and i1 %cmp1.i.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.i, label %lor.lhs.false.i.xsk_init_queue.exit_crit_edge

lor.lhs.false.i.xsk_init_queue.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_init_queue.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call3.i = call ptr @xskq_create(i32 noundef %44, i1 noundef zeroext true) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.xsk_init_queue.exit_crit_edge, label %do.end.i

if.end.i.xsk_init_queue.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_init_queue.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !116
  %48 = ptrtoint ptr %cond80 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %call3.i, ptr %cond80, align 4
  br label %xsk_init_queue.exit

xsk_init_queue.exit:                              ; preds = %do.end.i, %if.end.i.xsk_init_queue.exit_crit_edge, %lor.lhs.false.i.xsk_init_queue.exit_crit_edge, %if.end75.xsk_init_queue.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ -22, %lor.lhs.false.i.xsk_init_queue.exit_crit_edge ], [ -22, %if.end75.xsk_init_queue.exit_crit_edge ], [ -12, %if.end.i.xsk_init_queue.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex70) #12
  br label %cleanup83

cleanup83:                                        ; preds = %xsk_init_queue.exit, %if.then73, %if.then11.i.i.i.i156
  %retval.2 = phi i32 [ -16, %if.then73 ], [ %retval.0.i, %xsk_init_queue.exit ], [ -14, %if.then11.i.i.i.i156 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entries65) #12
  br label %cleanup85

cleanup85:                                        ; preds = %cleanup83, %cleanup60, %cleanup, %if.end.cleanup85_crit_edge, %entry.cleanup85_crit_edge
  %retval.3 = phi i32 [ %retval.2, %cleanup83 ], [ %retval.1, %cleanup60 ], [ %retval.0, %cleanup ], [ -92, %entry.cleanup85_crit_edge ], [ -92, %if.end.cleanup85_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #1 align 64 {
entry:
  %stats = alloca %struct.xdp_statistics, align 8
  %off = alloca %struct.xdp_mmap_offsets, align 8
  %off_v1 = alloca %struct.xdp_mmap_offsets_v1, align 8
  %opts = alloca %struct.xdp_options, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 283, i32 %level)
  %cmp.not = icmp eq i32 %level, 283
  br i1 %cmp.not, label %if.end, label %entry.cleanup134_crit_edge

entry.cleanup134_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup134

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1121) #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !111
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #12, !srcloc !117
  %asmresult = extractvalue { i32, i32 } %5, 0
  %asmresult3 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup134_crit_edge

if.end.cleanup134_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup134

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3)
  %cmp7 = icmp slt i32 %asmresult3, 0
  br i1 %cmp7, label %if.end6.cleanup134_crit_edge, label %if.end9

if.end6.cleanup134_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup134

if.end9:                                          ; preds = %if.end6
  %6 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %optname, label %if.end9.cleanup134_crit_edge [
    i32 7, label %sw.bb
    i32 1, label %sw.bb50
    i32 8, label %sw.bb101
  ]

if.end9.cleanup134_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup134

sw.bb:                                            ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %stats) #12
  %7 = getelementptr inbounds i8, ptr %stats, i32 24
  %8 = call ptr @memset(ptr %7, i32 0, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %asmresult3)
  %cmp10 = icmp ult i32 %asmresult3, 24
  br i1 %cmp10, label %sw.bb.cleanup_crit_edge, label %if.else

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %asmresult3)
  %cmp12 = icmp ult i32 %asmresult3, 48
  %. = select i1 %cmp12, i32 24, i32 48
  %mutex = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %rx_dropped = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rx_dropped, align 8
  %11 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %stats, align 8
  %rx_queue_full25 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %rx_queue_full25 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_queue_full25, align 64
  br i1 %cmp12, label %if.else24, label %if.then19

if.then19:                                        ; preds = %if.else
  %rx_ring_full = getelementptr inbounds %struct.xdp_statistics, ptr %stats, i32 0, i32 3
  %14 = ptrtoint ptr %rx_ring_full to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %rx_ring_full, align 8
  %pool = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pool, align 4
  %tobool20.not = icmp eq ptr %16, null
  br i1 %tobool20.not, label %if.then19.cond.end_crit_edge, label %cond.true

if.then19.cond.end_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.then19
  %fq = getelementptr inbounds %struct.xsk_buff_pool, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %fq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fq, align 128
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %cond.true.cond.end_crit_edge, label %cond.true.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true.i:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  %queue_empty_descs.i = getelementptr inbounds %struct.xsk_queue, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %queue_empty_descs.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %queue_empty_descs.i, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true.i, %cond.true.cond.end_crit_edge, %if.then19.cond.end_crit_edge
  %cond = phi i64 [ 0, %if.then19.cond.end_crit_edge ], [ %20, %cond.true.i ], [ 0, %cond.true.cond.end_crit_edge ]
  %rx_fill_ring_empty_descs = getelementptr inbounds %struct.xdp_statistics, ptr %stats, i32 0, i32 4
  %21 = ptrtoint ptr %rx_fill_ring_empty_descs to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %cond, ptr %rx_fill_ring_empty_descs, align 8
  %tx = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx, align 128
  %tobool.not.i212 = icmp eq ptr %23, null
  br i1 %tobool.not.i212, label %cond.end.xskq_nb_queue_empty_descs.exit216_crit_edge, label %cond.true.i214

cond.end.xskq_nb_queue_empty_descs.exit216_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_nb_queue_empty_descs.exit216

cond.true.i214:                                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %queue_empty_descs.i213 = getelementptr inbounds %struct.xsk_queue, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %queue_empty_descs.i213 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %queue_empty_descs.i213, align 8
  br label %xskq_nb_queue_empty_descs.exit216

xskq_nb_queue_empty_descs.exit216:                ; preds = %cond.true.i214, %cond.end.xskq_nb_queue_empty_descs.exit216_crit_edge
  %cond.i215 = phi i64 [ %25, %cond.true.i214 ], [ 0, %cond.end.xskq_nb_queue_empty_descs.exit216_crit_edge ]
  %tx_ring_empty_descs = getelementptr inbounds %struct.xdp_statistics, ptr %stats, i32 0, i32 5
  %26 = ptrtoint ptr %tx_ring_empty_descs to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %cond.i215, ptr %tx_ring_empty_descs, align 8
  br label %if.end27

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i64 %13, %10
  %27 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add, ptr %stats, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %xskq_nb_queue_empty_descs.exit216
  %rx = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx, align 128
  %tobool.not.i217 = icmp eq ptr %29, null
  br i1 %tobool.not.i217, label %if.end27.xskq_nb_invalid_descs.exit_crit_edge, label %cond.true.i218

if.end27.xskq_nb_invalid_descs.exit_crit_edge:    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_nb_invalid_descs.exit

cond.true.i218:                                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %invalid_descs.i = getelementptr inbounds %struct.xsk_queue, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %invalid_descs.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %invalid_descs.i, align 8
  br label %xskq_nb_invalid_descs.exit

xskq_nb_invalid_descs.exit:                       ; preds = %cond.true.i218, %if.end27.xskq_nb_invalid_descs.exit_crit_edge
  %cond.i219 = phi i64 [ %31, %cond.true.i218 ], [ 0, %if.end27.xskq_nb_invalid_descs.exit_crit_edge ]
  %rx_invalid_descs = getelementptr inbounds %struct.xdp_statistics, ptr %stats, i32 0, i32 1
  %32 = ptrtoint ptr %rx_invalid_descs to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %cond.i219, ptr %rx_invalid_descs, align 8
  %tx29 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 11
  %33 = ptrtoint ptr %tx29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx29, align 128
  %tobool.not.i220 = icmp eq ptr %34, null
  br i1 %tobool.not.i220, label %xskq_nb_invalid_descs.exit.xskq_nb_invalid_descs.exit224_crit_edge, label %cond.true.i222

xskq_nb_invalid_descs.exit.xskq_nb_invalid_descs.exit224_crit_edge: ; preds = %xskq_nb_invalid_descs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_nb_invalid_descs.exit224

cond.true.i222:                                   ; preds = %xskq_nb_invalid_descs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %invalid_descs.i221 = getelementptr inbounds %struct.xsk_queue, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %invalid_descs.i221 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %invalid_descs.i221, align 8
  br label %xskq_nb_invalid_descs.exit224

xskq_nb_invalid_descs.exit224:                    ; preds = %cond.true.i222, %xskq_nb_invalid_descs.exit.xskq_nb_invalid_descs.exit224_crit_edge
  %cond.i223 = phi i64 [ %36, %cond.true.i222 ], [ 0, %xskq_nb_invalid_descs.exit.xskq_nb_invalid_descs.exit224_crit_edge ]
  %tx_invalid_descs = getelementptr inbounds %struct.xdp_statistics, ptr %stats, i32 0, i32 2
  %37 = ptrtoint ptr %tx_invalid_descs to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %cond.i223, ptr %tx_invalid_descs, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  call void @__check_object_size(ptr noundef nonnull %stats, i32 noundef %., i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %xskq_nb_invalid_descs.exit224.cleanup_crit_edge, label %if.end.i.i

xskq_nb_invalid_descs.exit224.cleanup_crit_edge:  ; preds = %xskq_nb_invalid_descs.exit224
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %xskq_nb_invalid_descs.exit224
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %., i32 -1226833920) #16, !srcloc !118
  %asmresult.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %stats, i32 noundef %.) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %stats, i32 noundef %.) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool33.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool33.not, label %if.end35, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end35:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1158) #12
  %39 = call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i167 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i167 to ptr
  %cpu_domain.i.i168 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i168) #8, !srcloc !111
  %and.i169 = and i32 %41, -13
  %or.i170 = or i32 %and.i169, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i170) #12, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %42 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %., i32 -1226833921) #12, !srcloc !119
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #12, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool45.not = icmp eq i32 %42, 0
  %.164 = select i1 %tobool45.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %xskq_nb_invalid_descs.exit224.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ %.164, %if.end35 ], [ -14, %xskq_nb_invalid_descs.exit224.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stats) #12
  br label %cleanup134

sw.bb50:                                          ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %off) #12
  %43 = call ptr @memset(ptr %off, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %off_v1) #12
  %44 = call ptr @memset(ptr %off_v1, i32 255, i32 96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %asmresult3)
  %cmp51 = icmp ult i32 %asmresult3, 96
  br i1 %cmp51, label %sw.bb50.cleanup97_crit_edge, label %if.else53

sw.bb50.cleanup97_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

if.else53:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %asmresult3)
  %cmp54 = icmp ult i32 %asmresult3, 128
  br i1 %cmp54, label %if.else69, label %if.then59

if.then59:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %off, align 8
  %consumer.i = getelementptr inbounds %struct.xdp_ring_offset_v1, ptr %off, i32 0, i32 1
  %46 = ptrtoint ptr %consumer.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 256, ptr %consumer.i, align 8
  %desc.i = getelementptr inbounds %struct.xdp_ring_offset_v1, ptr %off, i32 0, i32 2
  %47 = ptrtoint ptr %desc.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 640, ptr %desc.i, align 8
  %tx61 = getelementptr inbounds %struct.xdp_mmap_offsets, ptr %off, i32 0, i32 1
  %48 = ptrtoint ptr %tx61 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 0, ptr %tx61, align 8
  %consumer.i225 = getelementptr inbounds %struct.xdp_mmap_offsets, ptr %off, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %consumer.i225 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 256, ptr %consumer.i225, align 8
  %desc.i226 = getelementptr inbounds %struct.xdp_mmap_offsets, ptr %off, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %desc.i226 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 640, ptr %desc.i226, align 8
  %fr = getelementptr inbounds %struct.xdp_mmap_offsets, ptr %off, i32 0, i32 2
  %51 = ptrtoint ptr %fr to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %fr, align 8
  %consumer.i227 = getelementptr inbounds %struct.xdp_mmap_offsets, ptr %off, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %consumer.i227 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 256, ptr %consumer.i227, align 8
  %desc.i228 = getelementptr inbounds %struct.xdp_mmap_offsets, ptr %off, i32 0, i32 2, i32 2
  %53 = ptrtoint ptr %desc.i228 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 640, ptr %desc.i228, align 8
  %cr = getelementptr inbounds %struct.xdp_mmap_offsets, ptr %off, i32 0, i32 3
  %54 = ptrtoint ptr %cr to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %cr, align 8
  %consumer.i229 = getelementptr inbounds %struct.xdp_mmap_offsets, ptr %off, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %consumer.i229 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 256, ptr %consumer.i229, align 8
  %desc.i230 = getelementptr inbounds %struct.xdp_mmap_offsets, ptr %off, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %desc.i230 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 640, ptr %desc.i230, align 8
  %flags = getelementptr inbounds %struct.xdp_ring_offset, ptr %off, i32 0, i32 3
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 388, ptr %flags, align 8
  %flags64 = getelementptr inbounds %struct.xdp_mmap_offsets, ptr %off, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %flags64 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 388, ptr %flags64, align 8
  %flags66 = getelementptr inbounds %struct.xdp_mmap_offsets, ptr %off, i32 0, i32 2, i32 3
  %59 = ptrtoint ptr %flags66 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 388, ptr %flags66, align 8
  %flags68 = getelementptr inbounds %struct.xdp_mmap_offsets, ptr %off, i32 0, i32 3, i32 3
  %60 = ptrtoint ptr %flags68 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 388, ptr %flags68, align 8
  br label %if.then.i.i.i178

if.else69:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %off_v1 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 0, ptr %off_v1, align 8
  %consumer.i231 = getelementptr inbounds %struct.xdp_ring_offset_v1, ptr %off_v1, i32 0, i32 1
  %62 = ptrtoint ptr %consumer.i231 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 256, ptr %consumer.i231, align 8
  %desc.i232 = getelementptr inbounds %struct.xdp_ring_offset_v1, ptr %off_v1, i32 0, i32 2
  %63 = ptrtoint ptr %desc.i232 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 640, ptr %desc.i232, align 8
  %tx71 = getelementptr inbounds %struct.xdp_mmap_offsets_v1, ptr %off_v1, i32 0, i32 1
  %64 = ptrtoint ptr %tx71 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %tx71, align 8
  %consumer.i233 = getelementptr inbounds %struct.xdp_mmap_offsets_v1, ptr %off_v1, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %consumer.i233 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 256, ptr %consumer.i233, align 8
  %desc.i234 = getelementptr inbounds %struct.xdp_mmap_offsets_v1, ptr %off_v1, i32 0, i32 1, i32 2
  %66 = ptrtoint ptr %desc.i234 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 640, ptr %desc.i234, align 8
  %fr72 = getelementptr inbounds %struct.xdp_mmap_offsets_v1, ptr %off_v1, i32 0, i32 2
  %67 = ptrtoint ptr %fr72 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 0, ptr %fr72, align 8
  %consumer.i235 = getelementptr inbounds %struct.xdp_mmap_offsets_v1, ptr %off_v1, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %consumer.i235 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 256, ptr %consumer.i235, align 8
  %desc.i236 = getelementptr inbounds %struct.xdp_mmap_offsets_v1, ptr %off_v1, i32 0, i32 2, i32 2
  %69 = ptrtoint ptr %desc.i236 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 640, ptr %desc.i236, align 8
  %cr73 = getelementptr inbounds %struct.xdp_mmap_offsets_v1, ptr %off_v1, i32 0, i32 3
  %70 = ptrtoint ptr %cr73 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 0, ptr %cr73, align 8
  %consumer.i237 = getelementptr inbounds %struct.xdp_mmap_offsets_v1, ptr %off_v1, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %consumer.i237 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 256, ptr %consumer.i237, align 8
  %desc.i238 = getelementptr inbounds %struct.xdp_mmap_offsets_v1, ptr %off_v1, i32 0, i32 3, i32 2
  %72 = ptrtoint ptr %desc.i238 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 640, ptr %desc.i238, align 8
  br label %if.then.i.i.i178

if.then.i.i.i178:                                 ; preds = %if.else69, %if.then59
  %to_copy.0 = phi ptr [ %off, %if.then59 ], [ %off_v1, %if.else69 ]
  %len.0 = phi i32 [ 128, %if.then59 ], [ 96, %if.else69 ]
  call void @__check_object_size(ptr noundef nonnull %to_copy.0, i32 noundef %len.0, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #12
  %call.i.i179 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i179, label %if.then.i.i.i178.cleanup97_crit_edge, label %if.end.i.i183

if.then.i.i.i178.cleanup97_crit_edge:             ; preds = %if.then.i.i.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

if.end.i.i183:                                    ; preds = %if.then.i.i.i178
  %73 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %len.0, i32 -1226833920) #16, !srcloc !118
  %asmresult.i.i181 = extractvalue { i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i181)
  %cmp.i6.i182 = icmp eq i32 %asmresult.i.i181, 0
  br i1 %cmp.i6.i182, label %copy_to_user.exit188, label %if.end.i.i183.cleanup97_crit_edge

if.end.i.i183.cleanup97_crit_edge:                ; preds = %if.end.i.i183
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

copy_to_user.exit188:                             ; preds = %if.end.i.i183
  %call.i.i.i184 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %to_copy.0, i32 noundef %len.0) #12
  %call.i12.i.i185 = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %to_copy.0, i32 noundef %len.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i185)
  %tobool76.not = icmp eq i32 %call.i12.i.i185, 0
  br i1 %tobool76.not, label %if.end78, label %copy_to_user.exit188.cleanup97_crit_edge

copy_to_user.exit188.cleanup97_crit_edge:         ; preds = %copy_to_user.exit188
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

if.end78:                                         ; preds = %copy_to_user.exit188
  call void @__sanitizer_cov_trace_pc() #14
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1210) #12
  %74 = call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i189 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i189 to ptr
  %cpu_domain.i.i190 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 4
  %76 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i190) #8, !srcloc !111
  %and.i191 = and i32 %76, -13
  %or.i192 = or i32 %and.i191, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i192) #12, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %77 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %len.0, i32 -1226833921) #12, !srcloc !120
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #12, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool94.not = icmp eq i32 %77, 0
  %.165 = select i1 %tobool94.not, i32 0, i32 -14
  br label %cleanup97

cleanup97:                                        ; preds = %if.end78, %copy_to_user.exit188.cleanup97_crit_edge, %if.end.i.i183.cleanup97_crit_edge, %if.then.i.i.i178.cleanup97_crit_edge, %sw.bb50.cleanup97_crit_edge
  %retval.1 = phi i32 [ -22, %sw.bb50.cleanup97_crit_edge ], [ -14, %copy_to_user.exit188.cleanup97_crit_edge ], [ %.165, %if.end78 ], [ -14, %if.then.i.i.i178.cleanup97_crit_edge ], [ -14, %if.end.i.i183.cleanup97_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %off_v1) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %off) #12
  br label %cleanup134

sw.bb101:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opts) #12
  %78 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %opts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult3)
  %cmp102 = icmp ult i32 %asmresult3, 4
  br i1 %cmp102, label %sw.bb101.cleanup133_crit_edge, label %if.end104

sw.bb101.cleanup133_crit_edge:                    ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup133

if.end104:                                        ; preds = %sw.bb101
  %mutex105 = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex105, i32 noundef 0) #12
  %zc = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 8
  %79 = ptrtoint ptr %zc to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %zc, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool106.not = icmp eq i8 %80, 0
  br i1 %tobool106.not, label %if.end104.if.end109_crit_edge, label %if.then107

if.end104.if.end109_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %opts, align 4
  %or = or i32 %82, 1
  store i32 %or, ptr %opts, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end104.if.end109_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex105) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #12
  %call.i.i198 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i198, label %if.end109.cleanup133_crit_edge, label %if.end.i.i202

if.end109.cleanup133_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup133

if.end.i.i202:                                    ; preds = %if.end109
  %83 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 4, i32 -1226833920) #16, !srcloc !118
  %asmresult.i.i200 = extractvalue { i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i200)
  %cmp.i6.i201 = icmp eq i32 %asmresult.i.i200, 0
  br i1 %cmp.i6.i201, label %copy_to_user.exit207, label %if.end.i.i202.cleanup133_crit_edge

if.end.i.i202.cleanup133_crit_edge:               ; preds = %if.end.i.i202
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup133

copy_to_user.exit207:                             ; preds = %if.end.i.i202
  %call.i.i.i203 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %opts, i32 noundef 4) #12
  %call.i12.i.i204 = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %opts, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i204)
  %tobool112.not = icmp eq i32 %call.i12.i.i204, 0
  br i1 %tobool112.not, label %if.end114, label %copy_to_user.exit207.cleanup133_crit_edge

copy_to_user.exit207.cleanup133_crit_edge:        ; preds = %copy_to_user.exit207
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup133

if.end114:                                        ; preds = %copy_to_user.exit207
  call void @__sanitizer_cov_trace_pc() #14
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1230) #12
  %84 = call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i208 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i208 to ptr
  %cpu_domain.i.i209 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 4
  %86 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i209) #8, !srcloc !111
  %and.i210 = and i32 %86, -13
  %or.i211 = or i32 %and.i210, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i211) #12, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %87 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 4, i32 -1226833921) #12, !srcloc !121
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #12, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool130.not = icmp eq i32 %87, 0
  %.166 = select i1 %tobool130.not, i32 0, i32 -14
  br label %cleanup133

cleanup133:                                       ; preds = %if.end114, %copy_to_user.exit207.cleanup133_crit_edge, %if.end.i.i202.cleanup133_crit_edge, %if.end109.cleanup133_crit_edge, %sw.bb101.cleanup133_crit_edge
  %retval.2 = phi i32 [ -22, %sw.bb101.cleanup133_crit_edge ], [ -14, %copy_to_user.exit207.cleanup133_crit_edge ], [ %.166, %if.end114 ], [ -14, %if.end109.cleanup133_crit_edge ], [ -14, %if.end.i.i202.cleanup133_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opts) #12
  br label %cleanup134

cleanup134:                                       ; preds = %cleanup133, %cleanup97, %cleanup, %if.end9.cleanup134_crit_edge, %if.end6.cleanup134_crit_edge, %if.end.cleanup134_crit_edge, %entry.cleanup134_crit_edge
  %retval.3 = phi i32 [ %retval.2, %cleanup133 ], [ %retval.1, %cleanup97 ], [ %retval.0, %cleanup ], [ -92, %entry.cleanup134_crit_edge ], [ -14, %if.end.cleanup134_crit_edge ], [ -22, %if.end6.cleanup134_crit_edge ], [ -95, %if.end9.cleanup134_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_sendmsg(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %m, i32 noundef %total_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %m, i32 0, i32 6
  %0 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_flags, align 4
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 16
  %state.i = getelementptr inbounds %struct.xdp_sock, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !92
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end15, !prof !95

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %sk_ll_usec.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %sk_ll_usec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sk_ll_usec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end15.if.end18_crit_edge, label %land.rhs.i

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.rhs.i:                                       ; preds = %if.end15
  %8 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %sk_can_busy_loop.exit, label %land.rhs.i.if.end18_crit_edge, !prof !97

land.rhs.i.if.end18_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

sk_can_busy_loop.exit:                            ; preds = %land.rhs.i
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %13, align 4
  %and1.i.i.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %phi.cmp.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %phi.cmp.i, label %if.then17, label %sk_can_busy_loop.exit.if.end18_crit_edge

sk_can_busy_loop.exit.if.end18_crit_edge:         ; preds = %sk_can_busy_loop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then17:                                        ; preds = %sk_can_busy_loop.exit
  %sk_napi_id.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 14
  %19 = ptrtoint ptr %sk_napi_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %sk_napi_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp.i36 = icmp ugt i32 %20, 4
  br i1 %cmp.i36, label %if.then.i, label %if.then17.if.end18_crit_edge

if.then17.if.end18_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %sk_prefer_busy_poll.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 56
  %21 = ptrtoint ptr %sk_prefer_busy_poll.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %sk_prefer_busy_poll.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool5.i = icmp ne i8 %22, 0
  %sk_busy_poll_budget.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 57
  %23 = ptrtoint ptr %sk_busy_poll_budget.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load volatile i16, ptr %sk_busy_poll_budget.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool10.not.i = icmp eq i16 %24, 0
  %narrow.i = select i1 %tobool10.not.i, i16 8, i16 %24
  tail call void @napi_busy_loop(i32 noundef %20, ptr noundef null, ptr noundef %3, i1 noundef zeroext %tobool5.i, i16 noundef zeroext %narrow.i) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then.i, %if.then17.if.end18_crit_edge, %sk_can_busy_loop.exit.if.end18_crit_edge, %land.rhs.i.if.end18_crit_edge, %if.end15.if.end18_crit_edge
  %sk_prefer_busy_poll.i37 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 56
  %25 = ptrtoint ptr %sk_prefer_busy_poll.i37 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %sk_prefer_busy_poll.i37, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i38 = icmp eq i8 %26, 0
  br i1 %tobool.not.i38, label %if.end18.if.end21_crit_edge, label %do.end2.i

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

do.end2.i:                                        ; preds = %if.end18
  %27 = ptrtoint ptr %sk_ll_usec.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %sk_ll_usec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool4.not.i = icmp eq i32 %28, 0
  br i1 %tobool4.not.i, label %do.end2.i.if.end21_crit_edge, label %xsk_no_wakeup.exit

do.end2.i.if.end21_crit_edge:                     ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

xsk_no_wakeup.exit:                               ; preds = %do.end2.i
  %sk_napi_id.i40 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 14
  %29 = ptrtoint ptr %sk_napi_id.i40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %sk_napi_id.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp.i41 = icmp ugt i32 %30, 4
  br i1 %cmp.i41, label %xsk_no_wakeup.exit.cleanup_crit_edge, label %xsk_no_wakeup.exit.if.end21_crit_edge

xsk_no_wakeup.exit.if.end21_crit_edge:            ; preds = %xsk_no_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

xsk_no_wakeup.exit.cleanup_crit_edge:             ; preds = %xsk_no_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %xsk_no_wakeup.exit.if.end21_crit_edge, %do.end2.i.if.end21_crit_edge, %if.end18.if.end21_crit_edge
  %pool22 = getelementptr inbounds %struct.xdp_sock, ptr %3, i32 0, i32 6
  %31 = ptrtoint ptr %pool22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pool22, align 4
  %cached_need_wakeup = getelementptr inbounds %struct.xsk_buff_pool, ptr %32, i32 0, i32 23
  %33 = ptrtoint ptr %cached_need_wakeup to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cached_need_wakeup, align 4
  %35 = and i8 %34, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool24.not = icmp eq i8 %35, 0
  br i1 %tobool24.not, label %if.end21.cleanup_crit_edge, label %if.then25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call fastcc i32 @__xsk_sendmsg(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end21.cleanup_crit_edge, %xsk_no_wakeup.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.then25 ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %xsk_no_wakeup.exit.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_recvmsg(ptr nocapture noundef readonly %sock, ptr nocapture noundef readnone %m, i32 noundef %len, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %state.i = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !92
  %dev = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %flags7 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags7, align 8
  %and8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end19, !prof !95

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %rx = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx, align 128
  %tobool20.not = icmp eq ptr %9, null
  %brmerge = or i1 %tobool.not, %tobool20.not
  %.mux = select i1 %tobool20.not, i32 -105, i32 -95, !prof !122
  br i1 %brmerge, label %if.end19.cleanup_crit_edge, label %if.end39, !prof !123

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %if.end19
  %sk_ll_usec.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %sk_ll_usec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %sk_ll_usec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end39.if.end42_crit_edge, label %land.rhs.i

if.end39.if.end42_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

land.rhs.i:                                       ; preds = %if.end39
  %12 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stack.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %20 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %sk_can_busy_loop.exit, label %land.rhs.i.if.end42_crit_edge, !prof !97

land.rhs.i.if.end42_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

sk_can_busy_loop.exit:                            ; preds = %land.rhs.i
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %17, align 4
  %and1.i.i.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %phi.cmp.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %phi.cmp.i, label %if.then41, label %sk_can_busy_loop.exit.if.end42_crit_edge

sk_can_busy_loop.exit.if.end42_crit_edge:         ; preds = %sk_can_busy_loop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then41:                                        ; preds = %sk_can_busy_loop.exit
  %sk_napi_id.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %sk_napi_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %sk_napi_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp.i63 = icmp ugt i32 %24, 4
  br i1 %cmp.i63, label %if.then.i, label %if.then41.if.end42_crit_edge

if.then41.if.end42_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  %sk_prefer_busy_poll.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 56
  %25 = ptrtoint ptr %sk_prefer_busy_poll.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %sk_prefer_busy_poll.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool5.i = icmp ne i8 %26, 0
  %sk_busy_poll_budget.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 57
  %27 = ptrtoint ptr %sk_busy_poll_budget.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load volatile i16, ptr %sk_busy_poll_budget.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool10.not.i = icmp eq i16 %28, 0
  %narrow.i = select i1 %tobool10.not.i, i16 8, i16 %28
  tail call void @napi_busy_loop(i32 noundef %24, ptr noundef null, ptr noundef %1, i1 noundef zeroext %tobool5.i, i16 noundef zeroext %narrow.i) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then.i, %if.then41.if.end42_crit_edge, %sk_can_busy_loop.exit.if.end42_crit_edge, %land.rhs.i.if.end42_crit_edge, %if.end39.if.end42_crit_edge
  %sk_prefer_busy_poll.i64 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 56
  %29 = ptrtoint ptr %sk_prefer_busy_poll.i64 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load volatile i8, ptr %sk_prefer_busy_poll.i64, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i65 = icmp eq i8 %30, 0
  br i1 %tobool.not.i65, label %if.end42.if.end45_crit_edge, label %do.end2.i

if.end42.if.end45_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.end2.i:                                        ; preds = %if.end42
  %31 = ptrtoint ptr %sk_ll_usec.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %sk_ll_usec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool4.not.i = icmp eq i32 %32, 0
  br i1 %tobool4.not.i, label %do.end2.i.if.end45_crit_edge, label %xsk_no_wakeup.exit

do.end2.i.if.end45_crit_edge:                     ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

xsk_no_wakeup.exit:                               ; preds = %do.end2.i
  %sk_napi_id.i67 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 14
  %33 = ptrtoint ptr %sk_napi_id.i67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %sk_napi_id.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp.i68 = icmp ugt i32 %34, 4
  br i1 %cmp.i68, label %xsk_no_wakeup.exit.cleanup_crit_edge, label %xsk_no_wakeup.exit.if.end45_crit_edge

xsk_no_wakeup.exit.if.end45_crit_edge:            ; preds = %xsk_no_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

xsk_no_wakeup.exit.cleanup_crit_edge:             ; preds = %xsk_no_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %xsk_no_wakeup.exit.if.end45_crit_edge, %do.end2.i.if.end45_crit_edge, %if.end42.if.end45_crit_edge
  %pool = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pool, align 4
  %cached_need_wakeup = getelementptr inbounds %struct.xsk_buff_pool, ptr %36, i32 0, i32 23
  %37 = ptrtoint ptr %cached_need_wakeup to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cached_need_wakeup, align 4
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool47.not = icmp eq i8 %39, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %land.lhs.true

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end45
  %zc = getelementptr inbounds %struct.xdp_sock, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %zc to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %zc, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool48.not = icmp eq i8 %41, 0
  br i1 %tobool48.not, label %land.lhs.true.cleanup_crit_edge, label %if.then50

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call51 = tail call fastcc i32 @xsk_wakeup(ptr noundef %1, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %land.lhs.true.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %xsk_no_wakeup.exit.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %if.then50 ], [ -100, %if.end.cleanup_crit_edge ], [ %.mux, %if.end19.cleanup_crit_edge ], [ 0, %xsk_no_wakeup.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_mmap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %sock, ptr noundef %vma) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %0 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_pgoff, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end, align 4
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  %sub = sub i32 %3, %5
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 16
  %state = getelementptr inbounds %struct.xdp_sock, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %1, label %do.end20 [
    i32 0, label %do.end7
    i32 524288, label %do.end14
  ]

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rx = getelementptr inbounds %struct.xdp_sock, ptr %7, i32 0, i32 2
  br label %if.end41

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx = getelementptr inbounds %struct.xdp_sock, ptr %7, i32 0, i32 11
  br label %if.end41

do.end20:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !124
  %11 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %1, label %do.end20.cleanup_crit_edge [
    i32 1048576, label %do.end28
    i32 1572864, label %do.end36
  ]

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end28:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  %fq_tmp = getelementptr inbounds %struct.xdp_sock, ptr %7, i32 0, i32 19
  br label %if.end41

do.end36:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  %cq_tmp = getelementptr inbounds %struct.xdp_sock, ptr %7, i32 0, i32 20
  br label %if.end41

if.end41:                                         ; preds = %do.end36, %do.end28, %do.end14, %do.end7
  %q.0.in = phi ptr [ %rx, %do.end7 ], [ %tx, %do.end14 ], [ %fq_tmp, %do.end28 ], [ %cq_tmp, %do.end36 ]
  %12 = ptrtoint ptr %q.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %q.0 = load volatile ptr, ptr %q.0.in, align 4
  %tobool.not = icmp eq ptr %q.0, null
  br i1 %tobool.not, label %if.end41.cleanup_crit_edge, label %do.end47

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end47:                                         ; preds = %if.end41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !125
  %ring = getelementptr inbounds %struct.xsk_queue, ptr %q.0, i32 0, i32 4
  %13 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ring, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %14 to i32
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %17 = getelementptr %struct.page, ptr %15, i32 %shr.i, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %19, -1
  br label %virt_to_head_page.exit

if.end.i.i:                                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i
  %20 = ptrtoint ptr %add.ptr.i to i32
  br label %virt_to_head_page.exit

virt_to_head_page.exit:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %20, %if.end.i.i ]
  %21 = inttoptr i32 %retval.0.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i.not.i.i.i = icmp eq i32 %23, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !95

if.then.i.i.i:                                    ; preds = %virt_to_head_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.15) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !126
  unreachable

PageHead.exit.i.i:                                ; preds = %virt_to_head_page.exit
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %21, align 4
  %26 = and i32 %25, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i80 = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i80, label %PageHead.exit.i.i.page_size.exit_crit_edge, label %if.end.i.i81

PageHead.exit.i.i.page_size.exit_crit_edge:       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %page_size.exit

if.end.i.i81:                                     ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = getelementptr %struct.page, ptr %21, i32 1, i32 1
  %compound_order.i.i = getelementptr inbounds %struct.anon.6, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %compound_order.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %compound_order.i.i, align 1
  %conv.i.i = zext i8 %29 to i32
  br label %page_size.exit

page_size.exit:                                   ; preds = %if.end.i.i81, %PageHead.exit.i.i.page_size.exit_crit_edge
  %retval.0.i.i82 = phi i32 [ %conv.i.i, %if.end.i.i81 ], [ 0, %PageHead.exit.i.i.page_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i82
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %shl.i)
  %cmp52 = icmp ugt i32 %sub, %shl.i
  br i1 %cmp52, label %page_size.exit.cleanup_crit_edge, label %if.end55

page_size.exit.cleanup_crit_edge:                 ; preds = %page_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end55:                                         ; preds = %page_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %16) #12
  %shr = lshr i32 %call.i, 12
  %30 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vma, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %32 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vm_page_prot, align 4
  %call59 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %31, i32 noundef %shr, i32 noundef %sub, i32 noundef %33) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %page_size.exit.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %do.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call59, %if.end55 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end41.cleanup_crit_edge ], [ -22, %page_size.exit.cleanup_crit_edge ], [ -22, %do.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xskq_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_map_try_sock_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_inc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_del_xsk(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !101
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !102
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !95

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !103
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xsk_lookup_xsk_from_fd(i32 noundef %fd) unnamed_addr #1 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !109
  %call = call ptr @sockfd_lookup(i32 noundef %fd, ptr noundef nonnull %err) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 16
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 44, i16 %4)
  %cmp.not = icmp eq i16 %4, 44
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %file = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %6) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -92 to ptr), %if.then3 ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -88 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xp_create_and_assign_umem(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xp_assign_dev_shared(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_get_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_get_umem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xp_assign_dev(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_add_xsk(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xsk_wakeup(ptr nocapture noundef readonly %xs, i8 noundef zeroext %flags) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev_ops, align 8
  %ndo_xsk_wakeup = getelementptr inbounds %struct.net_device_ops, ptr %7, i32 0, i32 79
  %8 = ptrtoint ptr %ndo_xsk_wakeup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndo_xsk_wakeup, align 4
  %queue_id = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 7
  %10 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %queue_id, align 8
  %conv = zext i16 %11 to i32
  %conv2 = zext i8 %flags to i32
  %call = tail call i32 %9(ptr noundef %1, i32 noundef %conv, i32 noundef %conv2) #12
  %call.i5 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i5, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i8

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i8:                                 ; preds = %rcu_read_lock.exit
  %call1.i6 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, label %if.then.i11

land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i11, %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !90
  %12 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i12 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i12 to ptr
  %preempt_count.i.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i13, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i13, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xsk_sendmsg(ptr noundef %sk) unnamed_addr #1 align 64 {
entry:
  %err.i.i = alloca i32, align 4
  %desc.i = alloca %struct.xdp_desc, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.xdp_sock, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !95

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx = getelementptr inbounds %struct.xdp_sock, ptr %sk, i32 0, i32 11
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx, align 128
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end14, !prof !95

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %zc = getelementptr inbounds %struct.xdp_sock, ptr %sk, i32 0, i32 8
  %6 = ptrtoint ptr %zc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %zc, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  br i1 %tobool15.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call fastcc i32 @xsk_wakeup(ptr noundef %sk, i8 noundef zeroext 2) #12
  br label %cleanup

cond.false:                                       ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #12
  %8 = getelementptr inbounds %struct.xdp_desc, ptr %desc.i, i32 0, i32 1
  %mutex.i = getelementptr inbounds %struct.xdp_sock, ptr %sk, i32 0, i32 18
  %9 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %queue_id.i = getelementptr inbounds %struct.xdp_sock, ptr %sk, i32 0, i32 7
  %10 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %queue_id.i, align 8
  %conv.i = zext i16 %11 to i32
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %real_num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 105
  %14 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %real_num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %15, %conv.i
  br i1 %cmp.not.i, label %while.cond.preheader.i, label %cond.false.xsk_generic_xmit.exit_crit_edge

cond.false.xsk_generic_xmit.exit_crit_edge:       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_generic_xmit.exit

while.cond.preheader.i:                           ; preds = %cond.false
  %pool.i = getelementptr inbounds %struct.xdp_sock, ptr %sk, i32 0, i32 6
  %sk_priority.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 33
  %sk_mark.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end52.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %sent_frame.0.off0.i = phi i1 [ true, %if.end52.i.while.cond.i_crit_edge ], [ false, %while.cond.preheader.i ]
  %err.0.i = phi i32 [ %call29.i, %if.end52.i.while.cond.i_crit_edge ], [ 0, %while.cond.preheader.i ]
  %max_batch.0.i = phi i32 [ %dec.i, %if.end52.i.while.cond.i_crit_edge ], [ 32, %while.cond.preheader.i ]
  %16 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx, align 128
  %18 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pool.i, align 4
  %call2.i = call fastcc zeroext i1 @xskq_cons_peek_desc(ptr noundef %17, ptr noundef nonnull %desc.i, ptr noundef %19) #12
  br i1 %call2.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %max_batch.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_batch.0.i)
  %cmp3.i = icmp eq i32 %max_batch.0.i, 0
  br i1 %cmp3.i, label %while.body.i.out.i_crit_edge, label %if.end6.i

while.body.i.out.i_crit_edge:                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end6.i:                                        ; preds = %while.body.i
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %priv_flags.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %23)
  %tobool.not.i.i = icmp ult i64 %23, 2147483648
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end6.i
  %call.i.i = call fastcc ptr @xsk_build_skb_zerocopy(ptr noundef %sk, ptr noundef nonnull %desc.i) #12
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i.xsk_build_skb.exit.i_crit_edge, label %if.then.i.i.if.end35.i.i_crit_edge

if.then.i.i.if.end35.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i.i

if.then.i.i.xsk_build_skb.exit.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_build_skb.exit.i

if.else.i.i:                                      ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i.i) #12
  %24 = ptrtoint ptr %err.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %err.i.i, align 4, !annotation !109
  %needed_headroom.i.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 21
  %25 = ptrtoint ptr %needed_headroom.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %needed_headroom.i.i, align 8
  %conv.i.i = zext i16 %26 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 127
  %and4.i.i = and i32 %add.i.i, 130944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp.i.i = icmp eq i32 %and4.i.i, 0
  %.and4.i.i = select i1 %cmp.i.i, i32 128, i32 %and4.i.i
  %needed_tailroom.i.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 22
  %27 = ptrtoint ptr %needed_tailroom.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %needed_tailroom.i.i, align 2
  %conv6.i.i = zext i16 %28 to i32
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %8, align 8
  %add8.i.i = add i32 %30, %conv6.i.i
  %add9.i.i = add i32 %add8.i.i, %.and4.i.i
  %call10.i.i = call ptr @sock_alloc_send_skb(ptr noundef %sk, i32 noundef %add9.i.i, i32 noundef 1, ptr noundef nonnull %err.i.i) #12
  %tobool11.not.i.i = icmp eq ptr %call10.i.i, null
  br i1 %tobool11.not.i.i, label %if.else.i.i.cleanup.thread.i.i_crit_edge, label %if.end17.i.i, !prof !95

if.else.i.i.cleanup.thread.i.i_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i

if.end17.i.i:                                     ; preds = %if.else.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call10.i.i, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 %.and4.i.i
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call10.i.i, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %34, i32 %.and4.i.i
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call18.i.i = call ptr @skb_put(ptr noundef nonnull %call10.i.i, i32 noundef %30) #12
  %35 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pool.i, align 4
  %37 = ptrtoint ptr %desc.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %desc.i, align 8
  %call.i.i.i = call ptr @xp_raw_get_data(ptr noundef %36, i64 noundef %38) #12
  %call20.i.i = call i32 @skb_store_bits(ptr noundef nonnull %call10.i.i, i32 noundef 0, ptr noundef %call.i.i.i, i32 noundef %30) #12
  %39 = ptrtoint ptr %err.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call20.i.i, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %cleanup.i.i, label %if.then28.i.i, !prof !97

if.then28.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree_skb_reason(ptr noundef nonnull %call10.i.i, i32 noundef 0) #12
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.then28.i.i, %if.else.i.i.cleanup.thread.i.i_crit_edge
  %40 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %retval.0.ph.in.i.i = load i32, ptr %err.i.i, align 4
  %retval.0.ph.i.i = inttoptr i32 %retval.0.ph.in.i.i to ptr
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i.i) #12
  br label %xsk_build_skb.exit.i

cleanup.i.i:                                      ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i.i) #12
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %cleanup.i.i, %if.then.i.i.if.end35.i.i_crit_edge
  %skb.0.i.i = phi ptr [ %call.i.i, %if.then.i.i.if.end35.i.i_crit_edge ], [ %call10.i.i, %cleanup.i.i ]
  %41 = getelementptr inbounds %struct.anon.51, ptr %skb.0.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %21, ptr %41, align 8
  %43 = ptrtoint ptr %sk_priority.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sk_priority.i.i, align 4
  %priority.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 15, i32 0, i32 6
  %45 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %priority.i.i, align 4
  %46 = ptrtoint ptr %sk_mark.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sk_mark.i.i, align 8
  %48 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 15, i32 0, i32 13
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %47, ptr %48, align 4
  %50 = ptrtoint ptr %desc.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %desc.i, align 8
  %conv39.i.i = trunc i64 %51 to i32
  %52 = inttoptr i32 %conv39.i.i to ptr
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 17
  %53 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %destructor_arg.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 4, i32 0, i32 1
  %56 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @xsk_destruct_skb, ptr %destructor.i.i, align 4
  br label %xsk_build_skb.exit.i

xsk_build_skb.exit.i:                             ; preds = %if.end35.i.i, %cleanup.thread.i.i, %if.then.i.i.xsk_build_skb.exit.i_crit_edge
  %retval.1.i.i = phi ptr [ %skb.0.i.i, %if.end35.i.i ], [ %call.i.i, %if.then.i.i.xsk_build_skb.exit.i_crit_edge ], [ %retval.0.ph.i.i, %cleanup.thread.i.i ]
  %cmp.i99.i = icmp ugt ptr %retval.1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99.i, label %if.then9.i, label %do.body12.i

if.then9.i:                                       ; preds = %xsk_build_skb.exit.i
  %57 = ptrtoint ptr %retval.1.i.i to i32
  br i1 %sent_frame.0.off0.i, label %if.then9.i.if.then60.i_crit_edge, label %if.then9.i.xsk_generic_xmit.exit_crit_edge

if.then9.i.xsk_generic_xmit.exit_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_generic_xmit.exit

if.then9.i.if.then60.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then60.i

do.body12.i:                                      ; preds = %xsk_build_skb.exit.i
  %58 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pool.i, align 4
  %cq_lock.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %59, i32 0, i32 28
  %call17.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock.i) #12
  %60 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pool.i, align 4
  %cq.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cq.i, align 4
  %nentries.i.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %nentries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nentries.i.i.i.i, align 4
  %cached_prod.i.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %63, i32 0, i32 2
  %66 = ptrtoint ptr %cached_prod.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cached_prod.i.i.i.i, align 8
  %cached_cons.i.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %63, i32 0, i32 3
  %68 = ptrtoint ptr %cached_cons.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cached_cons.i.i.i.i, align 4
  %sub.neg.i.i.i.i = sub i32 %65, %67
  %sub1.i.i.i.i = sub i32 0, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.neg.i.i.i.i, i32 %sub1.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %sub.neg.i.i.i.i, %sub1.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %xskq_prod_is_full.exit.i.i, label %do.body12.i.if.end25.i_crit_edge

do.body12.i.if.end25.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

xskq_prod_is_full.exit.i.i:                       ; preds = %do.body12.i
  %ring.i.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %63, i32 0, i32 4
  %70 = ptrtoint ptr %ring.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ring.i.i.i.i, align 8
  %consumer.i.i.i.i = getelementptr inbounds %struct.xdp_ring, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %consumer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %consumer.i.i.i.i, align 128
  %74 = ptrtoint ptr %cached_cons.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %cached_cons.i.i.i.i, align 4
  %sub7.i.i.i.i = sub i32 0, %73
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.neg.i.i.i.i, i32 %sub7.i.i.i.i)
  %.not.i.i.i = icmp eq i32 %sub.neg.i.i.i.i, %sub7.i.i.i.i
  br i1 %.not.i.i.i, label %if.then22.i, label %xskq_prod_is_full.exit.i.i.if.end25.i_crit_edge

xskq_prod_is_full.exit.i.i.if.end25.i_crit_edge:  ; preds = %xskq_prod_is_full.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then22.i:                                      ; preds = %xskq_prod_is_full.exit.i.i
  %75 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pool.i, align 4
  %cq_lock24.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %76, i32 0, i32 28
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_lock24.i, i32 noundef %call17.i) #12
  call void @kfree_skb_reason(ptr noundef %retval.1.i.i, i32 noundef 0) #12
  br i1 %sent_frame.0.off0.i, label %if.then22.i.if.then60.i_crit_edge, label %if.then22.i.xsk_generic_xmit.exit_crit_edge

if.then22.i.xsk_generic_xmit.exit_crit_edge:      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_generic_xmit.exit

if.then22.i.if.then60.i_crit_edge:                ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then60.i

if.end25.i:                                       ; preds = %xskq_prod_is_full.exit.i.i.if.end25.i_crit_edge, %do.body12.i.if.end25.i_crit_edge
  %inc.i.i = add i32 %67, 1
  %77 = ptrtoint ptr %cached_prod.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %inc.i.i, ptr %cached_prod.i.i.i.i, align 8
  %78 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pool.i, align 4
  %cq_lock27.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %79, i32 0, i32 28
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_lock27.i, i32 noundef %call17.i) #12
  %80 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %queue_id.i, align 8
  %call29.i = call i32 @__dev_direct_xmit(ptr noundef %retval.1.i.i, i16 noundef zeroext %81) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call29.i)
  %cmp30.i = icmp eq i32 %call29.i, 16
  br i1 %cmp30.i, label %if.then32.i, label %if.end52.i

if.then32.i:                                      ; preds = %if.end25.i
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %retval.1.i.i, i32 0, i32 4, i32 0, i32 1
  %82 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @sock_wfree, ptr %destructor.i, align 4
  %83 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pool.i, align 4
  %cq_lock41.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %84, i32 0, i32 28
  %call43.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock41.i) #12
  %85 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pool.i, align 4
  %cq49.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %cq49.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cq49.i, align 4
  %cached_prod.i.i = getelementptr inbounds %struct.xsk_queue, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %cached_prod.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cached_prod.i.i, align 8
  %dec.i.i = add i32 %90, -1
  store i32 %dec.i.i, ptr %cached_prod.i.i, align 8
  %91 = load ptr, ptr %pool.i, align 4
  %cq_lock51.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %91, i32 0, i32 28
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_lock51.i, i32 noundef %call43.i) #12
  call void @consume_skb(ptr noundef %retval.1.i.i) #12
  br i1 %sent_frame.0.off0.i, label %if.then32.i.if.then60.i_crit_edge, label %if.then32.i.xsk_generic_xmit.exit_crit_edge

if.then32.i.xsk_generic_xmit.exit_crit_edge:      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_generic_xmit.exit

if.then32.i.if.then60.i_crit_edge:                ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then60.i

if.end52.i:                                       ; preds = %if.end25.i
  %92 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tx, align 128
  %cached_cons.i.i = getelementptr inbounds %struct.xsk_queue, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %cached_cons.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cached_cons.i.i, align 4
  %inc.i100.i = add i32 %95, 1
  store i32 %inc.i100.i, ptr %cached_cons.i.i, align 4
  %cmp54.i = icmp eq i32 %call29.i, 1
  br i1 %cmp54.i, label %if.end52.i.out.i_crit_edge, label %if.end52.i.while.cond.i_crit_edge

if.end52.i.while.cond.i_crit_edge:                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end52.i.out.i_crit_edge:                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

while.end.i:                                      ; preds = %while.cond.i
  %96 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tx, align 128
  %queue_empty_descs.i = getelementptr inbounds %struct.xsk_queue, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %queue_empty_descs.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %queue_empty_descs.i, align 8
  %inc.i = add i64 %99, 1
  store i64 %inc.i, ptr %queue_empty_descs.i, align 8
  br i1 %sent_frame.0.off0.i, label %while.end.i.if.then60.i_crit_edge, label %while.end.i.xsk_generic_xmit.exit_crit_edge

while.end.i.xsk_generic_xmit.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_generic_xmit.exit

while.end.i.if.then60.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then60.i

out.i:                                            ; preds = %if.end52.i.out.i_crit_edge, %while.body.i.out.i_crit_edge
  %err.1.i = phi i32 [ -11, %while.body.i.out.i_crit_edge ], [ -16, %if.end52.i.out.i_crit_edge ]
  br i1 %sent_frame.0.off0.i, label %out.i.if.then60.i_crit_edge, label %out.i.xsk_generic_xmit.exit_crit_edge

out.i.xsk_generic_xmit.exit_crit_edge:            ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_generic_xmit.exit

out.i.if.then60.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then60.i

if.then60.i:                                      ; preds = %out.i.if.then60.i_crit_edge, %while.end.i.if.then60.i_crit_edge, %if.then32.i.if.then60.i_crit_edge, %if.then22.i.if.then60.i_crit_edge, %if.then9.i.if.then60.i_crit_edge
  %err.1107.i = phi i32 [ %57, %if.then9.i.if.then60.i_crit_edge ], [ %err.1.i, %out.i.if.then60.i_crit_edge ], [ %err.0.i, %if.then22.i.if.then60.i_crit_edge ], [ -11, %if.then32.i.if.then60.i_crit_edge ], [ %err.0.i, %while.end.i.if.then60.i_crit_edge ]
  %100 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tx, align 128
  %ring.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ring.i.i.i, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %103, align 128
  %consumer.i.i.i = getelementptr inbounds %struct.xdp_ring, ptr %103, i32 0, i32 4
  %106 = ptrtoint ptr %consumer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %consumer.i.i.i, align 128
  %sub.i.i.i = sub i32 %105, %107
  %nentries.i.i = getelementptr inbounds %struct.xsk_queue, ptr %101, i32 0, i32 1
  %108 = ptrtoint ptr %nentries.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %nentries.i.i, align 4
  %div3.i.i = lshr i32 %109, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %div3.i.i)
  %cmp.i101.not.i = icmp ugt i32 %sub.i.i.i, %div3.i.i
  br i1 %cmp.i101.not.i, label %if.then60.i.xsk_generic_xmit.exit_crit_edge, label %if.then62.i

if.then60.i.xsk_generic_xmit.exit_crit_edge:      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_generic_xmit.exit

if.then62.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #14
  %sk_write_space.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %110 = ptrtoint ptr %sk_write_space.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sk_write_space.i, align 4
  call void %111(ptr noundef %sk) #12
  br label %xsk_generic_xmit.exit

xsk_generic_xmit.exit:                            ; preds = %if.then62.i, %if.then60.i.xsk_generic_xmit.exit_crit_edge, %out.i.xsk_generic_xmit.exit_crit_edge, %while.end.i.xsk_generic_xmit.exit_crit_edge, %if.then32.i.xsk_generic_xmit.exit_crit_edge, %if.then22.i.xsk_generic_xmit.exit_crit_edge, %if.then9.i.xsk_generic_xmit.exit_crit_edge, %cond.false.xsk_generic_xmit.exit_crit_edge
  %err.1106.i = phi i32 [ %err.1107.i, %if.then60.i.xsk_generic_xmit.exit_crit_edge ], [ %err.1107.i, %if.then62.i ], [ %err.1.i, %out.i.xsk_generic_xmit.exit_crit_edge ], [ %57, %if.then9.i.xsk_generic_xmit.exit_crit_edge ], [ %err.0.i, %if.then22.i.xsk_generic_xmit.exit_crit_edge ], [ -11, %if.then32.i.xsk_generic_xmit.exit_crit_edge ], [ %err.0.i, %while.end.i.xsk_generic_xmit.exit_crit_edge ], [ 0, %cond.false.xsk_generic_xmit.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #12
  br label %cleanup

cleanup:                                          ; preds = %xsk_generic_xmit.exit, %cond.true, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -100, %entry.cleanup_crit_edge ], [ -105, %if.end.cleanup_crit_edge ], [ %call.i, %cond.true ], [ %err.1106.i, %xsk_generic_xmit.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dev_direct_xmit(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_wfree(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xsk_build_skb_zerocopy(ptr noundef %xs, ptr nocapture noundef readonly %desc) unnamed_addr #1 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pool1 = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 6
  %0 = ptrtoint ptr %pool1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %err, align 4, !annotation !109
  %dev = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %needed_headroom, align 8
  %conv = zext i16 %6 to i32
  %add = add nuw nsw i32 %conv, 127
  %and = and i32 %add, 130944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %.and = select i1 %cmp, i32 128, i32 %and
  %call = call ptr @sock_alloc_send_skb(ptr noundef %xs, i32 noundef %.and, i32 noundef 1, ptr noundef nonnull %err) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %err, align 4
  %9 = inttoptr i32 %8 to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %.and
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %13, i32 %.and
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %desc, align 8
  %len8 = getelementptr inbounds %struct.xdp_desc, ptr %desc, i32 0, i32 1
  %16 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len8, align 8
  %unaligned = getelementptr inbounds %struct.xsk_buff_pool, ptr %1, i32 0, i32 26
  %18 = ptrtoint ptr %unaligned to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %unaligned, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool9.not = icmp eq i8 %19, 0
  br i1 %tobool9.not, label %cond.false12, label %if.end.cond.end13_crit_edge

if.end.cond.end13_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end13

cond.false12:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %chunk_size = getelementptr inbounds %struct.xsk_buff_pool, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chunk_size, align 16
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %if.end.cond.end13_crit_edge
  %cond14 = phi i32 [ %21, %cond.false12 ], [ %17, %if.end.cond.end13_crit_edge ]
  %call.i = call ptr @xp_raw_get_data(ptr noundef %1, i64 noundef %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1884.not = icmp eq i32 %17, 0
  br i1 %cmp1884.not, label %cond.end13.for.end_crit_edge, label %for.body.lr.ph

cond.end13.for.end_crit_edge:                     ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end13
  %22 = ptrtoint ptr %call.i to i32
  %addrs = getelementptr inbounds %struct.xsk_buff_pool, ptr %1, i32 0, i32 27
  %23 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addrs, align 64
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i32
  %sub.ptr.sub = sub i32 %22, %sub.ptr.rhs.cast
  %conv17 = sext i32 %sub.ptr.sub to i64
  %and16 = and i32 %22, 4095
  %umem = getelementptr inbounds %struct.xsk_buff_pool, ptr %1, i32 0, i32 5
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 17
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 12
  %25 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %umem, align 64
  %pgs.peel = getelementptr inbounds %struct.xdp_umem, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %pgs.peel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pgs.peel, align 4
  %idxprom.peel = ashr i32 %sub.ptr.sub, 12
  %arrayidx.peel = getelementptr ptr, ptr %28, i32 %idxprom.peel
  %29 = ptrtoint ptr %arrayidx.peel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.peel, align 4
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i.peel = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.peel)
  %tobool.not.i.i.peel = icmp eq i32 %and.i.i.peel, 0
  br i1 %tobool.not.i.i.peel, label %if.end.i.i.peel, label %if.then.i.i.peel, !prof !97

if.then.i.i.peel:                                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.peel = add i32 %33, -1
  br label %_compound_head.exit.i.peel

if.end.i.i.peel:                                  ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %30 to i32
  br label %_compound_head.exit.i.peel

_compound_head.exit.i.peel:                       ; preds = %if.end.i.i.peel, %if.then.i.i.peel
  %retval.0.i.i.peel = phi i32 [ %sub.i.i.peel, %if.then.i.i.peel ], [ %34, %if.end.i.i.peel ]
  %35 = inttoptr i32 %retval.0.i.i.peel to ptr
  %_refcount.i.i.i.i.peel = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 3
  %call.i.i.i.i.i.i.peel = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.peel, i32 noundef 4) #12
  %36 = ptrtoint ptr %_refcount.i.i.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %_refcount.i.i.i.i.peel, align 4
  %add.i.i.peel = add i32 %37, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i.peel)
  %cmp.i.i.peel = icmp ult i32 %add.i.i.peel, 128
  br i1 %cmp.i.i.peel, label %_compound_head.exit.i.peel.if.then.i1.i_crit_edge, label %do.end5.i.i.peel, !prof !95

_compound_head.exit.i.peel.if.then.i1.i_crit_edge: ; preds = %_compound_head.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i1.i

do.end5.i.i.peel:                                 ; preds = %_compound_head.exit.i.peel
  %call.i.i.i.i9.i.i.peel = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.peel, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.peel, i32 1, i32 3, i32 1) #12
  %38 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.peel, ptr %_refcount.i.i.i.i.peel, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.peel) #12, !srcloc !127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@xsk_build_skb_zerocopy, %if.then.i.i.i.i.peel)) #12
          to label %get_page.exit.peel [label %if.then.i.i.i.i.peel], !srcloc !128

if.then.i.i.i.i.peel:                             ; preds = %do.end5.i.i.peel
  call void @__sanitizer_cov_trace_pc() #14
  call void @__page_ref_mod(ptr noundef %35, i32 noundef 1) #12
  br label %get_page.exit.peel

get_page.exit.peel:                               ; preds = %if.then.i.i.i.i.peel, %do.end5.i.i.peel
  %sub.peel = sub nuw nsw i32 4096, %and16
  %39 = call i32 @llvm.umin.i32(i32 %sub.peel, i32 %17)
  %40 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %end.i.i.i, align 4
  %arrayidx.i.i.peel = getelementptr %struct.skb_shared_info, ptr %41, i32 0, i32 12, i32 0
  %42 = ptrtoint ptr %arrayidx.i.i.peel to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %30, ptr %arrayidx.i.i.peel, align 4
  %bv_offset.i.i.peel = getelementptr %struct.skb_shared_info, ptr %41, i32 0, i32 12, i32 0, i32 2
  %43 = ptrtoint ptr %bv_offset.i.i.peel to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and16, ptr %bv_offset.i.i.peel, align 4
  %bv_len.i.i.i.peel = getelementptr %struct.skb_shared_info, ptr %41, i32 0, i32 12, i32 0, i32 1
  %44 = ptrtoint ptr %bv_len.i.i.i.peel to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %39, ptr %bv_len.i.i.i.peel, align 4
  %45 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %31, align 4
  %and.i.i.i.peel = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.peel)
  %tobool.not.i.i.i.peel = icmp eq i32 %and.i.i.i.peel, 0
  br i1 %tobool.not.i.i.i.peel, label %if.end.i.i.i.peel, label %if.then.i.i.i.peel, !prof !97

if.then.i.i.i.peel:                               ; preds = %get_page.exit.peel
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i.peel = add i32 %46, -1
  br label %_compound_head.exit.i.i.peel

if.end.i.i.i.peel:                                ; preds = %get_page.exit.peel
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %30 to i32
  br label %_compound_head.exit.i.i.peel

_compound_head.exit.i.i.peel:                     ; preds = %if.end.i.i.i.peel, %if.then.i.i.i.peel
  %retval.0.i.i.i.peel = phi i32 [ %sub.i.i.i.peel, %if.then.i.i.i.peel ], [ %47, %if.end.i.i.i.peel ]
  %48 = inttoptr i32 %retval.0.i.i.i.peel to ptr
  %49 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %51 to i32
  %and.i8.i.i.peel = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i.peel)
  %tobool.i.not.i.i.peel = icmp eq i32 %and.i8.i.i.peel, 0
  br i1 %tobool.i.not.i.i.peel, label %_compound_head.exit.i.i.peel.skb_fill_page_desc.exit.peel_crit_edge, label %if.then.i.i82.peel

_compound_head.exit.i.i.peel.skb_fill_page_desc.exit.peel_crit_edge: ; preds = %_compound_head.exit.i.i.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_fill_page_desc.exit.peel

if.then.i.i82.peel:                               ; preds = %_compound_head.exit.i.i.peel
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i.i.peel = load i8, ptr %pfmemalloc.i.i, align 2
  %bf.set.i.i.peel = or i8 %bf.load.i.i.peel, 2
  store i8 %bf.set.i.i.peel, ptr %pfmemalloc.i.i, align 2
  br label %skb_fill_page_desc.exit.peel

skb_fill_page_desc.exit.peel:                     ; preds = %if.then.i.i82.peel, %_compound_head.exit.i.i.peel.skb_fill_page_desc.exit.peel_crit_edge
  %54 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.peel = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %nr_frags.i.peel to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %nr_frags.i.peel, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %sub.peel)
  %cmp18.peel = icmp ugt i32 %17, %sub.peel
  br i1 %cmp18.peel, label %for.body.peel.next, label %skb_fill_page_desc.exit.peel.for.end_crit_edge

skb_fill_page_desc.exit.peel.for.end_crit_edge:   ; preds = %skb_fill_page_desc.exit.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.peel.next:                               ; preds = %skb_fill_page_desc.exit.peel
  %conv29.peel = zext i32 %39 to i64
  %add30.peel = add nsw i64 %conv17, %conv29.peel
  br label %for.body

for.body:                                         ; preds = %skb_fill_page_desc.exit.for.body_crit_edge, %for.body.peel.next
  %addr.088 = phi i64 [ %add30.peel, %for.body.peel.next ], [ %add30, %skb_fill_page_desc.exit.for.body_crit_edge ]
  %i.087 = phi i32 [ 1, %for.body.peel.next ], [ %inc, %skb_fill_page_desc.exit.for.body_crit_edge ]
  %copied.086 = phi i32 [ %39, %for.body.peel.next ], [ %add28, %skb_fill_page_desc.exit.for.body_crit_edge ]
  %57 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %umem, align 64
  %pgs = getelementptr inbounds %struct.xdp_umem, ptr %58, i32 0, i32 10
  %59 = ptrtoint ptr %pgs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pgs, align 4
  %shr = lshr i64 %addr.088, 12
  %idxprom = trunc i64 %shr to i32
  %arrayidx = getelementptr ptr, ptr %60, i32 %idxprom
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx, align 4
  %63 = getelementptr inbounds %struct.page, ptr %62, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  %and.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %65, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %62 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %66, %if.end.i.i ]
  %67 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %67, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %68 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %69, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i.loopexit, label %do.end5.i.i, !prof !95

if.then.i1.i.loopexit:                            ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = inttoptr i32 %retval.0.i.i to ptr
  br label %if.then.i1.i

if.then.i1.i:                                     ; preds = %if.then.i1.i.loopexit, %_compound_head.exit.i.peel.if.then.i1.i_crit_edge
  %.pre-phi = phi ptr [ %35, %_compound_head.exit.i.peel.if.then.i1.i_crit_edge ], [ %70, %if.then.i1.i.loopexit ]
  call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.11) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %71 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@xsk_build_skb_zerocopy, %if.then.i.i.i.i)) #12
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !128

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__page_ref_mod(ptr noundef %67, i32 noundef 1) #12
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %sub20 = sub i32 %17, %copied.086
  %72 = call i32 @llvm.umin.i32(i32 %sub20, i32 4096)
  %73 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %end.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.skb_shared_info, ptr %74, i32 0, i32 12, i32 %i.087
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %62, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %74, i32 0, i32 12, i32 %i.087, i32 2
  %76 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %bv_offset.i.i, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %74, i32 0, i32 12, i32 %i.087, i32 1
  %77 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %72, ptr %bv_len.i.i.i, align 4
  %78 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %63, align 4
  %and.i.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !97

if.then.i.i.i:                                    ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add i32 %79, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %62 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %80, %if.end.i.i.i ]
  %81 = inttoptr i32 %retval.0.i.i.i to ptr
  %82 = getelementptr inbounds %struct.page, ptr %81, i32 0, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %85 = ptrtoint ptr %84 to i32
  %and.i8.i.i = and i32 %85, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.i.not.i.i, label %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge, label %if.then.i.i82

_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_fill_page_desc.exit

if.then.i.i82:                                    ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, 2
  store i8 %bf.set.i.i, ptr %pfmemalloc.i.i, align 2
  br label %skb_fill_page_desc.exit

skb_fill_page_desc.exit:                          ; preds = %if.then.i.i82, %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge
  %87 = trunc i32 %i.087 to i8
  %conv.i = add i8 %87, 1
  %88 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv.i, ptr %nr_frags.i, align 2
  %add28 = add i32 %72, %copied.086
  %conv29 = zext i32 %72 to i64
  %add30 = add i64 %addr.088, %conv29
  %inc = add i32 %i.087, 1
  %cmp18 = icmp ugt i32 %17, %add28
  br i1 %cmp18, label %skb_fill_page_desc.exit.for.body_crit_edge, label %skb_fill_page_desc.exit.for.end_crit_edge, !llvm.loop !130

skb_fill_page_desc.exit.for.end_crit_edge:        ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

skb_fill_page_desc.exit.for.body_crit_edge:       ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %skb_fill_page_desc.exit.for.end_crit_edge, %skb_fill_page_desc.exit.peel.for.end_crit_edge, %cond.end13.for.end_crit_edge
  %len31 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %91 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len31, align 4
  %add32 = add i32 %92, %17
  store i32 %add32, ptr %len31, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 7
  %93 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data_len, align 8
  %add33 = add i32 %94, %17
  store i32 %add33, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 20
  %95 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %truesize, align 8
  %add34 = add i32 %96, %cond14
  store i32 %add34, ptr %truesize, align 8
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %xs, i32 0, i32 23
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %sk_wmem_alloc, i32 1, i32 3, i32 1) #12
  %97 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc, ptr %sk_wmem_alloc, i32 %cond14, ptr elementtype(i32) %sk_wmem_alloc) #12, !srcloc !98
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %for.end.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !95

for.end.if.end15.sink.split.i.i_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %for.end
  %add.i.i83 = add i32 %asmresult.i.i.i.i, %cond14
  %98 = or i32 %add.i.i83, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %98)
  %.not.i.i = icmp sgt i32 %98, -1
  br i1 %.not.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !97

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %for.end.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %for.end.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc, i32 noundef %.sink.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i, %if.else.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %9, %if.then ], [ %call, %if.else.i.i.cleanup_crit_edge ], [ %call, %if.end15.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_store_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xsk_destruct_skb(ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %destructor_arg = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %destructor_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destructor_arg, align 4
  %4 = ptrtoint ptr %3 to i32
  %conv = sext i32 %4 to i64
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %pool = getelementptr inbounds %struct.xdp_sock, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pool, align 4
  %cq_lock = getelementptr inbounds %struct.xsk_buff_pool, ptr %9, i32 0, i32 28
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock) #12
  %10 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pool, align 4
  %cq = getelementptr inbounds %struct.xsk_buff_pool, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cq, align 4
  %ring1.i = getelementptr inbounds %struct.xsk_queue, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring1.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 128
  %inc.i = add i32 %17, 1
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %13, align 8
  %and.i = and i32 %19, %17
  %arrayidx.i = getelementptr %struct.xdp_umem_ring, ptr %15, i32 0, i32 1, i32 %and.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv, ptr %arrayidx.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !93
  %21 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring1.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %inc.i, ptr %22, align 128
  %24 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pool, align 4
  %cq_lock10 = getelementptr inbounds %struct.xsk_buff_pool, ptr %25, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_lock10, i32 noundef %call5) #12
  tail call void @sock_wfree(ptr noundef %skb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xp_raw_get_data(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_sockptr(ptr noundef %dst, [2 x i32] %src.coerce, i32 noundef %size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %src.coerce.fca.0.extract.i = extractvalue [2 x i32] %src.coerce, 0
  %0 = inttoptr i32 %src.coerce.fca.0.extract.i to ptr
  %sockptr.coerce.fca.1.extract.i.i = extractvalue [2 x i32] %src.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i)
  %bf.cast.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i, 0
  br i1 %bf.cast.i.i, label %if.end.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %entry
  tail call void @__check_object_size(ptr noundef %dst, i32 noundef %size, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #12
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %size, i32 -1226833920) #16, !srcloc !110
  %asmresult.i.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !97

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst, i32 noundef %size) #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #8, !srcloc !111
  %and.i.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dst, ptr noundef %0, i32 noundef %size) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #12, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %size, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %size, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then11.i.i.i, !prof !97

if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_from_sockptr_offset.exit

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = sub i32 %size, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %dst, i32 %sub.i.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %copy_from_sockptr_offset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = call ptr @memcpy(ptr %dst, ptr %0, i32 %size)
  br label %copy_from_sockptr_offset.exit

copy_from_sockptr_offset.exit:                    ; preds = %if.end.i, %if.then11.i.i.i, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 0, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge ], [ %res.0.i.i.i, %if.then11.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xsk_init_queue(i32 noundef %entries, ptr noundef %queue, i1 noundef zeroext %umem_queue) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entries)
  %cmp = icmp eq i32 %entries, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %tobool.not = icmp eq ptr %1, null
  %2 = tail call i32 @llvm.ctpop.i32(i32 %entries) #12, !range !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp1.i = icmp ult i32 %2, 2
  %or.cond = and i1 %cmp1.i, %tobool.not
  br i1 %or.cond, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call ptr @xskq_create(i32 noundef %entries, i1 noundef zeroext %umem_queue) #12
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !116
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call3, ptr %queue, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdp_umem_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xskq_create(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_busy_loop(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xp_put_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_put_umem(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_net_init(ptr noundef %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %xdp = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 51
  tail call void @__mutex_init(ptr noundef %xdp, ptr noundef nonnull @.str.16, ptr noundef nonnull @xsk_net_init.__key) #12
  %list = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 51, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %list, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xsk_net_exit(ptr noundef %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 51, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b39 = load i1, ptr @xsk_net_exit.__already_done, align 1
  br i1 %.b39, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !97

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @xsk_net_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1421, i32 noundef 9, ptr noundef null) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_notifier(ptr nocapture noundef readnone %this, i32 noundef %msg, ptr nocapture noundef readonly %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %msg)
  %cond23 = icmp eq i32 %msg, 6
  br i1 %cond23, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %xdp = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %xdp, i32 noundef 0) #12
  %list = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 51, i32 1
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %tobool.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -84
  %tobool4.not4246 = icmp eq ptr %add.ptr, null
  %tobool4.not42 = or i1 %tobool.not, %tobool4.not4246
  br i1 %tobool4.not42, label %sw.bb.for.end_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.for.end_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %sk.043 = phi ptr [ %add.ptr17, %if.end9.for.body_crit_edge ], [ %add.ptr, %sw.bb.for.body_crit_edge ]
  %mutex = getelementptr inbounds %struct.xdp_sock, ptr %sk.043, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %dev6 = getelementptr inbounds %struct.xdp_sock, ptr %sk.043, i32 0, i32 3
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 4
  %cmp = icmp eq ptr %7, %1
  br i1 %cmp, label %if.then, label %for.body.if.end9_crit_edge

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then:                                          ; preds = %for.body
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk.043, i32 0, i32 51
  %8 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 100, ptr %sk_err, align 4
  %9 = getelementptr inbounds %struct.sock_common, ptr %sk.043, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sk_error_report(ptr noundef nonnull %sk.043) #12
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.xdp_sock, ptr %sk.043, i32 0, i32 9
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 1
  br i1 %cmp.not.i, label %do.body3.i, label %if.end.xsk_unbind_dev.exit_crit_edge

if.end.xsk_unbind_dev.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_unbind_dev.exit

do.body3.i:                                       ; preds = %if.end
  %14 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev6, align 4
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 2, ptr %state.i, align 4
  %pool.i = getelementptr inbounds %struct.xdp_sock, ptr %sk.043, i32 0, i32 6
  %17 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pool.i, align 4
  tail call void @xp_del_xsk(ptr noundef %18, ptr noundef nonnull %sk.043) #12
  %19 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %dev6, align 4
  tail call void @synchronize_net() #12
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %do.body3.i.xsk_unbind_dev.exit_crit_edge, label %do.body1.i.i

do.body3.i.xsk_unbind_dev.exit_crit_edge:         ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xsk_unbind_dev.exit

do.body1.i.i:                                     ; preds = %do.body3.i
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !101
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i.i = add i32 %32, -1
  store i32 %add13.i.i, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !102
  %and.i.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !95

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #12, !srcloc !103
  br label %xsk_unbind_dev.exit

xsk_unbind_dev.exit:                              ; preds = %do.end30.i.i, %do.body3.i.xsk_unbind_dev.exit_crit_edge, %if.end.xsk_unbind_dev.exit_crit_edge
  %pool = getelementptr inbounds %struct.xdp_sock, ptr %sk.043, i32 0, i32 6
  %34 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pool, align 4
  tail call void @xp_clear_dev(ptr noundef %35) #12
  br label %if.end9

if.end9:                                          ; preds = %xsk_unbind_dev.exit, %for.body.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  %36 = getelementptr inbounds %struct.sock_common, ptr %sk.043, i32 0, i32 15
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %tobool13.not = icmp eq ptr %38, null
  %add.ptr17 = getelementptr i8, ptr %38, i32 -84
  %tobool4.not47 = icmp eq ptr %add.ptr17, null
  %tobool4.not = or i1 %tobool13.not, %tobool4.not47
  br i1 %tobool4.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %sw.bb.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %xdp) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_clear_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !38, !39, !41, !42, !44, !46, !48, !49, !51, !52, !54, !55, !57, !59, !61, !63, !64, !66, !68, !70, !72, !74, !75, !77}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__ksymtab_xsk_set_rx_need_wakeup, !1, !"__ksymtab_xsk_set_rx_need_wakeup", i1 false, i1 false}
!1 = !{!"../net/xdp/xsk.c", i32 45, i32 1}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/xdp/xsk.c", i32 55, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_xsk_set_tx_need_wakeup, !7, !"__ksymtab_xsk_set_tx_need_wakeup", i1 false, i1 false}
!7 = !{!"../net/xdp/xsk.c", i32 62, i32 1}
!8 = !{ptr @__ksymtab_xsk_clear_rx_need_wakeup, !9, !"__ksymtab_xsk_clear_rx_need_wakeup", i1 false, i1 false}
!9 = !{!"../net/xdp/xsk.c", i32 72, i32 1}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/xdp/xsk.c", i32 82, i32 2}
!12 = !{ptr @__ksymtab_xsk_clear_tx_need_wakeup, !13, !"__ksymtab_xsk_clear_tx_need_wakeup", i1 false, i1 false}
!13 = !{!"../net/xdp/xsk.c", i32 89, i32 1}
!14 = !{ptr @__ksymtab_xsk_uses_need_wakeup, !15, !"__ksymtab_xsk_uses_need_wakeup", i1 false, i1 false}
!15 = !{!"../net/xdp/xsk.c", i32 95, i32 1}
!16 = !{ptr @__ksymtab_xsk_get_pool_from_qid, !17, !"__ksymtab_xsk_get_pool_from_qid", i1 false, i1 false}
!17 = !{!"../net/xdp/xsk.c", i32 107, i32 1}
!18 = !{ptr @__ksymtab_xsk_tx_completed, !19, !"__ksymtab_xsk_tx_completed", i1 false, i1 false}
!19 = !{!"../net/xdp/xsk.c", i32 300, i32 1}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/xdp/xsk.c", i32 307, i32 2}
!22 = !{ptr @__ksymtab_xsk_tx_release, !23, !"__ksymtab_xsk_tx_release", i1 false, i1 false}
!23 = !{!"../net/xdp/xsk.c", i32 314, i32 1}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/xdp/xsk.c", i32 321, i32 2}
!26 = !{ptr @__ksymtab_xsk_tx_peek_desc, !27, !"__ksymtab_xsk_tx_peek_desc", i1 false, i1 false}
!27 = !{!"../net/xdp/xsk.c", i32 344, i32 1}
!28 = !{ptr @__ksymtab_xsk_tx_peek_release_desc_batch, !29, !"__ksymtab_xsk_tx_peek_release_desc_batch", i1 false, i1 false}
!29 = !{!"../net/xdp/xsk.c", i32 401, i32 1}
!30 = !{ptr @__initcall__kmod_xsk__570_1463_xsk_init5, !31, !"__initcall__kmod_xsk__570_1463_xsk_init5", i1 false, i1 false}
!31 = !{!"../net/xdp/xsk.c", i32 1463, i32 1}
!32 = !{ptr @__pcpu_unique_xskmap_flush_list, !33, !"__pcpu_unique_xskmap_flush_list", i1 false, i1 false}
!33 = !{!"../net/xdp/xsk.c", i32 35, i32 8}
!34 = !{ptr @xskmap_flush_list, !33, !"xskmap_flush_list", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!37 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!41 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @xsk_proto, !43, !"xsk_proto", i1 false, i1 false}
!43 = !{!"../net/xdp/xsk.c", i32 1314, i32 21}
!44 = !{ptr @xsk_family_ops, !45, !"xsk_family_ops", i1 false, i1 false}
!45 = !{!"../net/xdp/xsk.c", i32 1402, i32 38}
!46 = !{ptr @xsk_create.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../net/xdp/xsk.c", i32 1387, i32 2}
!48 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @xsk_create.__key.6, !50, !"__key", i1 false, i1 false}
!50 = !{!"../net/xdp/xsk.c", i32 1388, i32 2}
!51 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @xsk_create.__key.8, !53, !"__key", i1 false, i1 false}
!53 = !{!"../net/xdp/xsk.c", i32 1391, i32 2}
!54 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @xsk_proto_ops, !56, !"xsk_proto_ops", i1 false, i1 false}
!56 = !{!"../net/xdp/xsk.c", i32 1320, i32 31}
!57 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/net/sock.h", i32 729, i32 3}
!59 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!63 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!66 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!70 = !{ptr @xsk_net_ops, !71, !"xsk_net_ops", i1 false, i1 false}
!71 = !{!"../net/xdp/xsk.c", i32 1424, i32 33}
!72 = !{ptr @xsk_net_init.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../net/xdp/xsk.c", i32 1414, i32 2}
!74 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../net/xdp/xsk.c", i32 1421, i32 2}
!77 = !{ptr @xsk_netdev_notifier, !78, !"xsk_netdev_notifier", i1 false, i1 false}
!78 = !{!"../net/xdp/xsk.c", i32 1408, i32 30}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2149293441}
!90 = !{i64 2149293707}
!91 = !{i8 0, i8 2}
!92 = !{i64 2158011517}
!93 = !{i64 2157907213}
!94 = !{i64 2157878695}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 2157887200}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2148270399, i64 2148270431, i64 2148270460, i64 2148270494, i64 2148270525, i64 2148270548}
!99 = !{i64 2149410089}
!100 = !{i64 2149395052}
!101 = !{i64 661350, i64 661411}
!102 = !{i64 664082}
!103 = !{i64 664367}
!104 = !{i64 2148358400}
!105 = !{i64 2148272864, i64 2148272896, i64 2148272925, i64 2148272959, i64 2148272990, i64 2148273013}
!106 = !{i64 2149601428}
!107 = !{i64 2158170403}
!108 = !{i64 2157327792}
!109 = !{!"auto-init"}
!110 = !{i64 2151895386, i64 2151895411}
!111 = !{i64 4390941}
!112 = !{i64 4391138}
!113 = !{i64 2151876371}
!114 = !{i64 2158172708}
!115 = !{i32 0, i32 33}
!116 = !{i64 2158159410}
!117 = !{i64 2158184073, i64 2158184353, i64 2158184687, i64 2158185021}
!118 = !{i64 2151896067, i64 2151896092}
!119 = !{i64 2158193599, i64 2158193879, i64 2158194213, i64 2158194547}
!120 = !{i64 2158202879, i64 2158203159, i64 2158203493, i64 2158203827}
!121 = !{i64 2158211714, i64 2158211994, i64 2158212328, i64 2158212662}
!122 = !{!"branch_weights", i32 2001, i32 2000}
!123 = !{!"branch_weights", i32 4001, i32 4000000}
!124 = !{i64 2158222878}
!125 = !{i64 2158228612}
!126 = !{i64 2151457621, i64 2151458112, i64 2151457658, i64 2151457714, i64 2151457748, i64 2151457772, i64 2151457813, i64 2151457834, i64 2151457862, i64 2151457896}
!127 = !{i64 2148268869, i64 2148268895, i64 2148268924, i64 2148268958, i64 2148268989, i64 2148269012}
!128 = !{i64 2148738200, i64 2148738205, i64 2148738218, i64 2148738262, i64 2148738296, i64 2148738317}
!129 = !{i64 2153378715, i64 2153379199, i64 2153378752, i64 2153378808, i64 2153378842, i64 2153378866, i64 2153378907, i64 2153378928, i64 2153378956, i64 2153378990}
!130 = distinct !{!130, !131}
!131 = !{!"llvm.loop.peeled.count", i32 1}
