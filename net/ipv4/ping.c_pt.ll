; ModuleID = '/llk/IR_all_yes/net/ipv4/ping.c_pt.bc'
source_filename = "../net/ipv4/ping.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pingv6_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_pingv6_ops\09\09\09\09"
module asm "\09.long\09__crc_pingv6_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pingv6_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22pingv6_ops\22\09\09\09\09\09"
module asm "__kstrtabns_pingv6_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ping_hash\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_hash\09\09\09\09"
module asm "\09.long\09__crc_ping_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_hash\22\09\09\09\09\09"
module asm "__kstrtabns_ping_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ping_get_port\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_get_port\09\09\09\09"
module asm "\09.long\09__crc_ping_get_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_get_port\22\09\09\09\09\09"
module asm "__kstrtabns_ping_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ping_unhash\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_unhash\09\09\09\09"
module asm "\09.long\09__crc_ping_unhash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_unhash:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_unhash\22\09\09\09\09\09"
module asm "__kstrtabns_ping_unhash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ping_init_sock\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_init_sock\09\09\09\09"
module asm "\09.long\09__crc_ping_init_sock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_init_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_init_sock\22\09\09\09\09\09"
module asm "__kstrtabns_ping_init_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ping_close\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_close\09\09\09\09"
module asm "\09.long\09__crc_ping_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_close:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_close\22\09\09\09\09\09"
module asm "__kstrtabns_ping_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ping_bind\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_bind\09\09\09\09"
module asm "\09.long\09__crc_ping_bind\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_bind\22\09\09\09\09\09"
module asm "__kstrtabns_ping_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ping_err\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_err\09\09\09\09"
module asm "\09.long\09__crc_ping_err\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_err:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_err\22\09\09\09\09\09"
module asm "__kstrtabns_ping_err:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ping_getfrag\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_getfrag\09\09\09\09"
module asm "\09.long\09__crc_ping_getfrag\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_getfrag:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_getfrag\22\09\09\09\09\09"
module asm "__kstrtabns_ping_getfrag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ping_common_sendmsg\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_common_sendmsg\09\09\09\09"
module asm "\09.long\09__crc_ping_common_sendmsg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_common_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_common_sendmsg\22\09\09\09\09\09"
module asm "__kstrtabns_ping_common_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ping_recvmsg\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_recvmsg\09\09\09\09"
module asm "\09.long\09__crc_ping_recvmsg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_recvmsg\22\09\09\09\09\09"
module asm "__kstrtabns_ping_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ping_queue_rcv_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_queue_rcv_skb\09\09\09\09"
module asm "\09.long\09__crc_ping_queue_rcv_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_queue_rcv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_queue_rcv_skb\22\09\09\09\09\09"
module asm "__kstrtabns_ping_queue_rcv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ping_rcv\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_rcv\09\09\09\09"
module asm "\09.long\09__crc_ping_rcv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_rcv\22\09\09\09\09\09"
module asm "__kstrtabns_ping_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ping_prot\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_prot\09\09\09\09"
module asm "\09.long\09__crc_ping_prot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_prot\22\09\09\09\09\09"
module asm "__kstrtabns_ping_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ping_seq_start\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_seq_start\09\09\09\09"
module asm "\09.long\09__crc_ping_seq_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_seq_start:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_seq_start\22\09\09\09\09\09"
module asm "__kstrtabns_ping_seq_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ping_seq_next\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_seq_next\09\09\09\09"
module asm "\09.long\09__crc_ping_seq_next\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_seq_next:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_seq_next\22\09\09\09\09\09"
module asm "__kstrtabns_ping_seq_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ping_seq_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_ping_seq_stop\09\09\09\09"
module asm "\09.long\09__crc_ping_seq_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_seq_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_seq_stop\22\09\09\09\09\09"
module asm "__kstrtabns_ping_seq_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pingv6_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ping_table = type { [64 x %struct.hlist_nulls_head], %struct.rwlock_t }
%struct.hlist_nulls_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.icmp_err = type { i32, i8 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.115, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.115 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.119 = type { i32 }
%struct.anon.2 = type { i16, i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.69, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.69 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%union.anon.122 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.38 }
%union.anon.38 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.86, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%union.anon.17 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%union.anon.86 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.anon = type { i32, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.140 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.150 }
%union.anon.150 = type { i32 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.153 }
%union.anon.153 = type { [1 x i32] }
%struct.anon.151 = type { i16, i16 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.146, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.155, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.155 = type { %struct.in6_addr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.pingfakehdr = type { %struct.icmphdr, ptr, i16, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.114, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.112 }
%union.anon.4 = type { ptr }
%union.anon.112 = type { i64 }
%union.anon.114 = type { ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.ipcm_cookie = type { %struct.sockcm_cookie, i32, i32, ptr, i8, i16, i8, i16 }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.ip_options_data = type { %struct.ip_options_rcu, [40 x i8] }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.anon.39 = type { i16, i16 }
%struct.anon.40 = type { i8, i8 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ping_iter_state = type { %struct.seq_net_private, i32, i16 }
%struct.seq_net_private = type { ptr, ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@pingv6_ops = dso_local global { %struct.pingv6_ops, [40 x i8] } zeroinitializer, align 32
@__kstrtab_pingv6_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_pingv6_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_pingv6_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pingv6_ops to i32), ptr @__kstrtab_pingv6_ops, ptr @__kstrtabns_pingv6_ops }, section "___ksymtab_gpl+pingv6_ops", align 4
@__kstrtab_ping_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_hash to i32), ptr @__kstrtab_ping_hash, ptr @__kstrtabns_ping_hash }, section "___ksymtab_gpl+ping_hash", align 4
@ping_table = internal global { %struct.ping_table, [84 x i8] } zeroinitializer, align 32
@ping_port_rover = internal global { i16, [30 x i8] } zeroinitializer, align 32
@ping_get_port.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ping\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ping_get_port\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/ipv4/ping.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"found port/ident = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ping_get_port.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"was not hashed\0A\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_ping_get_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_get_port = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_get_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_get_port to i32), ptr @__kstrtab_ping_get_port, ptr @__kstrtabns_ping_get_port }, section "___ksymtab_gpl+ping_get_port", align 4
@ping_hash.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ping_hash\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ping_hash(sk->port=%u)\0A\00", [40 x i8] zeroinitializer }, align 32
@ping_unhash.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ping_unhash\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ping_unhash(isk=%p,isk->num=%u)\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_ping_unhash = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_unhash = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_unhash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_unhash to i32), ptr @__kstrtab_ping_unhash, ptr @__kstrtabns_ping_unhash }, section "___ksymtab_gpl+ping_unhash", align 4
@__kstrtab_ping_init_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_init_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_init_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_init_sock to i32), ptr @__kstrtab_ping_init_sock, ptr @__kstrtabns_ping_init_sock }, section "___ksymtab_gpl+ping_init_sock", align 4
@ping_close.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ping_close\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ping_close(sk=%p,sk->num=%u)\0A\00", [34 x i8] zeroinitializer }, align 32
@ping_close.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isk->refcnt = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_ping_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_close = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_close to i32), ptr @__kstrtab_ping_close, ptr @__kstrtabns_ping_close }, section "___ksymtab_gpl+ping_close", align 4
@ping_bind.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ping_bind\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"after bind(): num = %hu, dif = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ping_bind.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ping_v4_bind -> %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_ping_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_bind to i32), ptr @__kstrtab_ping_bind, ptr @__kstrtabns_ping_bind }, section "___ksymtab_gpl+ping_bind", align 4
@ping_err.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ping_err\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ping_err(proto=0x%x,type=%d,code=%d,id=%04x,seq=%04x)\0A\00", [41 x i8] zeroinitializer }, align 32
@ping_err.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no socket, dropping\0A\00", [43 x i8] zeroinitializer }, align 32
@ping_err.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"err on socket %p\0A\00", [46 x i8] zeroinitializer }, align 32
@icmp_err_convert = external dso_local local_unnamed_addr constant [0 x %struct.icmp_err], align 4
@__kstrtab_ping_err = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_err = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_err = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_err to i32), ptr @__kstrtab_ping_err, ptr @__kstrtabns_ping_err }, section "___ksymtab_gpl+ping_err", align 4
@__kstrtab_ping_getfrag = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_getfrag = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_getfrag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_getfrag to i32), ptr @__kstrtab_ping_getfrag, ptr @__kstrtabns_ping_getfrag }, section "___ksymtab_gpl+ping_getfrag", align 4
@__kstrtab_ping_common_sendmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_common_sendmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_common_sendmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_common_sendmsg to i32), ptr @__kstrtab_ping_common_sendmsg, ptr @__kstrtabns_ping_common_sendmsg }, section "___ksymtab_gpl+ping_common_sendmsg", align 4
@ping_recvmsg.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ping_recvmsg\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ping_recvmsg(sk=%p,sk->num=%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@ping_recvmsg.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 -23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ping_recvmsg -> %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_ping_recvmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_recvmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_recvmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_recvmsg to i32), ptr @__kstrtab_ping_recvmsg, ptr @__kstrtabns_ping_recvmsg }, section "___ksymtab_gpl+ping_recvmsg", align 4
@ping_queue_rcv_skb.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ping_queue_rcv_skb\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ping_queue_rcv_skb(sk=%p,sk->num=%d,skb=%p)\0A\00", [51 x i8] zeroinitializer }, align 32
@ping_queue_rcv_skb.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 -21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ping_queue_rcv_skb -> failed\0A\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_ping_queue_rcv_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_queue_rcv_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_queue_rcv_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_queue_rcv_skb to i32), ptr @__kstrtab_ping_queue_rcv_skb, ptr @__kstrtabns_ping_queue_rcv_skb }, section "___ksymtab_gpl+ping_queue_rcv_skb", align 4
@ping_rcv.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ping_rcv\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ping_rcv(skb=%p,id=%04x,seq=%04x)\0A\00", [61 x i8] zeroinitializer }, align 32
@ping_rcv.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 0, i8 -13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rcv on socket %p\0A\00", [46 x i8] zeroinitializer }, align 32
@ping_rcv.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.18, i8 0, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__kstrtab_ping_rcv = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_rcv = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_rcv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_rcv to i32), ptr @__kstrtab_ping_rcv, ptr @__kstrtabns_ping_rcv }, section "___ksymtab_gpl+ping_rcv", align 4
@ping_prot = dso_local global { %struct.proto, [36 x i8] } { %struct.proto { ptr @ping_close, ptr null, ptr @ip4_datagram_connect, ptr @__udp_disconnect, ptr null, ptr null, ptr @ping_init_sock, ptr null, ptr null, ptr @ip_setsockopt, ptr @ip_getsockopt, ptr null, ptr @ping_v4_sendmsg, ptr @ping_recvmsg, ptr null, ptr @ping_bind, ptr null, ptr @ping_queue_rcv_skb, ptr null, ptr @ip4_datagram_release_cb, ptr @ping_hash, ptr @ping_unhash, ptr null, ptr @ping_get_port, ptr @ping_unhash, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1144, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.115 zeroinitializer, ptr null, [32 x i8] c"PING\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_ping_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_prot to i32), ptr @__kstrtab_ping_prot, ptr @__kstrtabns_ping_prot }, section "___ksymtab+ping_prot", align 4
@__kstrtab_ping_seq_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_seq_start = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_seq_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_seq_start to i32), ptr @__kstrtab_ping_seq_start, ptr @__kstrtabns_ping_seq_start }, section "___ksymtab_gpl+ping_seq_start", align 4
@__kstrtab_ping_seq_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_seq_next = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_seq_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_seq_next to i32), ptr @__kstrtab_ping_seq_next, ptr @__kstrtabns_ping_seq_next }, section "___ksymtab_gpl+ping_seq_next", align 4
@__kstrtab_ping_seq_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_seq_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_seq_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_seq_stop to i32), ptr @__kstrtab_ping_seq_stop, ptr @__kstrtabns_ping_seq_stop }, section "___ksymtab_gpl+ping_seq_stop", align 4
@ping_v4_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ping_v4_proc_init_net, ptr null, ptr @ping_v4_proc_exit_net, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@ping_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ping_table.lock\00", [47 x i8] zeroinitializer }, align 32
@ping_hashfn.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ping_hashfn\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hash(%u) = %u\0A\00", [17 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ping_check_bind_addr.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ping_check_bind_addr\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ping_check_bind_addr(sk=%p,addr=%pI4,port=%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@ping_check_bind_addr.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.34, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ping_check_bind_addr(sk=%p,addr=%pI6c,port=%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ping_lookup.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ping_lookup\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"try to find: num = %d, daddr = %pI4, dif = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@ping_lookup.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.40, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"try to find: num = %d, daddr = %pI6c, dif = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ping_lookup.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.41, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iterate\0A\00", [23 x i8] zeroinitializer }, align 32
@ping_lookup.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.42, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"found: %p: num=%d, daddr=%pI4, dif=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@ping_lookup.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.43, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"found: %p: num=%d, daddr=%pI6c, dif=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@ping_v4_sendmsg.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ping_v4_sendmsg\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ping_v4_sendmsg(sk=%p,sk->num=%u)\0A\00", [61 x i8] zeroinitializer }, align 32
@ping_v4_sendmsg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"icmp\00", [27 x i8] zeroinitializer }, align 32
@ping_v4_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ping_v4_seq_start, ptr @ping_seq_stop, ptr @ping_seq_next, ptr @ping_v4_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"  sl  local_address rem_address   st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode ref pointer drops\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%5d: %08X:%04X %08X:%04X %02X %08X:%08X %02X:%08lX %08X %5u %8d %lu %d %pK %u\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 4, i64 5, i64 12]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"pingv6_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 57, i32 19 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"ping_table\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 56, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"ping_port_rover\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 60, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 126, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 129, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 145, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 155, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 293, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 295, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 421, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 447, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 500, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 506, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 509, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 855, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 932, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 939, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 943, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 964, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 974, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [10 x i8] c"ping_prot\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 987, i32 14 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"ping_v4_net_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1158, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1181, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 66, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 318, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 340, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 695, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 723, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 180, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 186, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 198, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 204, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 215, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1011, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 230, i32 6 }
@___asan_gen_.218 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 214, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 703, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 744, i32 14 }
@___asan_gen_.230 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 271, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1147, i32 7 }
@___asan_gen_.235 = private unnamed_addr constant [16 x i8] c"ping_v4_seq_ops\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1138, i32 36 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1126, i32 17 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [19 x i8] c"../net/ipv4/ping.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1110, i32 16 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__ksymtab_ping_bind, ptr @__ksymtab_ping_close, ptr @__ksymtab_ping_common_sendmsg, ptr @__ksymtab_ping_err, ptr @__ksymtab_ping_get_port, ptr @__ksymtab_ping_getfrag, ptr @__ksymtab_ping_hash, ptr @__ksymtab_ping_init_sock, ptr @__ksymtab_ping_prot, ptr @__ksymtab_ping_queue_rcv_skb, ptr @__ksymtab_ping_rcv, ptr @__ksymtab_ping_recvmsg, ptr @__ksymtab_ping_seq_next, ptr @__ksymtab_ping_seq_start, ptr @__ksymtab_ping_seq_stop, ptr @__ksymtab_ping_unhash, ptr @__ksymtab_pingv6_ops, ptr @pingv6_ops, ptr @ping_table, ptr @ping_port_rover, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @ping_prot, ptr @ping_v4_net_ops, ptr @ping_init.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @ping_v4_seq_ops, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pingv6_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_table to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_port_rover to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_v4_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_v4_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ping_hash(ptr nocapture noundef readonly %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_hash.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_hash, %if.then)) #10
          to label %do.body5 [label %if.then], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %skc_num, align 2
  %conv = zext i16 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_hash.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.6, i32 noundef %conv) #10
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #10, !srcloc !185
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ping_get_port(ptr noundef %sk, i16 noundef zeroext %ident) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ident)
  %cmp = icmp eq i16 %ident, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i16, ptr @ping_port_rover, align 2
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %if.then
  %i.0169 = phi i32 [ 0, %if.then ], [ %inc25, %for.inc24.for.body_crit_edge ]
  %result.0.in168 = phi i16 [ %0, %if.then ], [ %spec.select, %for.inc24.for.body_crit_edge ]
  %result.0 = add i16 %result.0.in168, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %result.0)
  %tobool.not = icmp eq i16 %result.0, 0
  %spec.select = select i1 %tobool.not, i16 1, i16 %result.0
  %1 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skc_net.i, align 4
  %conv8 = zext i16 %spec.select to i32
  %hash_mix.i.i.i = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 26
  %3 = ptrtoint ptr %hash_mix.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hash_mix.i.i.i, align 8
  %add.i.i = add i32 %4, %conv8
  %and.i.i = and i32 %add.i.i, 63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_hashfn.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_get_port, %if.then.i.i)) #10
          to label %ping_hashslot.exit [label %if.then.i.i], !srcloc !184

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_hashfn.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.31, i32 noundef %conv8, i32 noundef %and.i.i) #10
  br label %ping_hashslot.exit

ping_hashslot.exit:                               ; preds = %if.then.i.i, %for.body
  %arrayidx.i = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %and.i.i
  br label %for.cond10

for.cond10:                                       ; preds = %for.body15.for.cond10_crit_edge, %ping_hashslot.exit
  %node.0.in = phi ptr [ %arrayidx.i, %ping_hashslot.exit ], [ %node.0, %for.body15.for.cond10_crit_edge ]
  %5 = ptrtoint ptr %node.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.0 = load ptr, ptr %node.0.in, align 4
  %6 = ptrtoint ptr %node.0 to i32
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not = icmp eq i32 %and.i, 0
  br i1 %tobool12.not, label %for.body15, label %for.end27

for.body15:                                       ; preds = %for.cond10
  %skc_num = getelementptr i8, ptr %node.0, i32 -70
  %7 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %skc_num, align 2
  %cmp20 = icmp eq i16 %8, %spec.select
  br i1 %cmp20, label %for.inc24, label %for.body15.for.cond10_crit_edge

for.body15.for.cond10_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond10

for.inc24:                                        ; preds = %for.body15
  %inc25 = add nuw nsw i32 %i.0169, 1
  %exitcond.not = icmp eq i32 %inc25, 65536
  br i1 %exitcond.not, label %for.inc24.cleanup105_crit_edge, label %for.inc24.for.body_crit_edge

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc24.cleanup105_crit_edge:                   ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

for.end27:                                        ; preds = %for.cond10
  store i16 %spec.select, ptr @ping_port_rover, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %i.0169)
  %cmp28 = icmp ugt i32 %i.0169, 65535
  br i1 %cmp28, label %for.end27.cleanup105_crit_edge, label %for.end27.do.body_crit_edge

for.end27.do.body_crit_edge:                      ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.end27.cleanup105_crit_edge:                   ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

if.else:                                          ; preds = %entry
  %conv = zext i16 %ident to i32
  %skc_net.i144 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %9 = ptrtoint ptr %skc_net.i144 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i144, align 4
  %hash_mix.i.i.i145 = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %hash_mix.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_mix.i.i.i145, align 8
  %add.i.i146 = add i32 %12, %conv
  %and.i.i147 = and i32 %add.i.i146, 63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_hashfn.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_get_port, %if.then.i.i148)) #10
          to label %ping_hashslot.exit150 [label %if.then.i.i148], !srcloc !184

if.then.i.i148:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_hashfn.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.31, i32 noundef %conv, i32 noundef %and.i.i147) #10
  br label %ping_hashslot.exit150

ping_hashslot.exit150:                            ; preds = %if.then.i.i148, %if.else
  %arrayidx.i149 = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %and.i.i147
  %13 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.1164 = load ptr, ptr %arrayidx.i149, align 4
  %14 = ptrtoint ptr %node.1164 to i32
  %and.i151165 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i151165)
  %tobool39.not166 = icmp eq i32 %and.i151165, 0
  br i1 %tobool39.not166, label %land.rhs40.lr.ph, label %ping_hashslot.exit150.do.body_crit_edge

ping_hashslot.exit150.do.body_crit_edge:          ; preds = %ping_hashslot.exit150
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.rhs40.lr.ph:                                 ; preds = %ping_hashslot.exit150
  %skc_reuse62 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  br label %land.rhs40

land.rhs40:                                       ; preds = %for.inc68.land.rhs40_crit_edge, %land.rhs40.lr.ph
  %node.1167 = phi ptr [ %node.1164, %land.rhs40.lr.ph ], [ %node.1, %for.inc68.land.rhs40_crit_edge ]
  %add.ptr43 = getelementptr i8, ptr %node.1167, i32 -84
  %skc_num51 = getelementptr i8, ptr %node.1167, i32 -70
  %15 = ptrtoint ptr %skc_num51 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %skc_num51, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %ident)
  %cmp54 = icmp ne i16 %16, %ident
  %cmp56.not = icmp eq ptr %add.ptr43, %sk
  %or.cond = or i1 %cmp56.not, %cmp54
  br i1 %or.cond, label %land.rhs40.for.inc68_crit_edge, label %land.lhs.true58

land.rhs40.for.inc68_crit_edge:                   ; preds = %land.rhs40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc68

land.lhs.true58:                                  ; preds = %land.rhs40
  %skc_reuse = getelementptr i8, ptr %node.1167, i32 -65
  %17 = ptrtoint ptr %skc_reuse to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %skc_reuse, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load)
  %tobool60.not = icmp ult i8 %bf.load, 16
  br i1 %tobool60.not, label %land.lhs.true58.cleanup105_crit_edge, label %lor.lhs.false

land.lhs.true58.cleanup105_crit_edge:             ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

lor.lhs.false:                                    ; preds = %land.lhs.true58
  %18 = ptrtoint ptr %skc_reuse62 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load63 = load i8, ptr %skc_reuse62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load63)
  %tobool65.not = icmp ult i8 %bf.load63, 16
  br i1 %tobool65.not, label %lor.lhs.false.cleanup105_crit_edge, label %lor.lhs.false.for.inc68_crit_edge

lor.lhs.false.for.inc68_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc68

lor.lhs.false.cleanup105_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

for.inc68:                                        ; preds = %lor.lhs.false.for.inc68_crit_edge, %land.rhs40.for.inc68_crit_edge
  %19 = ptrtoint ptr %node.1167 to i32
  call void @__asan_load4_noabort(i32 %19)
  %node.1 = load ptr, ptr %node.1167, align 4
  %20 = ptrtoint ptr %node.1 to i32
  %and.i151 = and i32 %20, 1
  %tobool39.not = icmp eq i32 %and.i151, 0
  br i1 %tobool39.not, label %for.inc68.land.rhs40_crit_edge, label %for.inc68.do.body_crit_edge

for.inc68.do.body_crit_edge:                      ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.inc68.land.rhs40_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs40

do.body:                                          ; preds = %for.inc68.do.body_crit_edge, %ping_hashslot.exit150.do.body_crit_edge, %for.end27.do.body_crit_edge
  %hlist.2 = phi ptr [ %arrayidx.i, %for.end27.do.body_crit_edge ], [ %arrayidx.i149, %ping_hashslot.exit150.do.body_crit_edge ], [ %arrayidx.i149, %for.inc68.do.body_crit_edge ]
  %ident.addr.1 = phi i16 [ %spec.select, %for.end27.do.body_crit_edge ], [ %ident, %ping_hashslot.exit150.do.body_crit_edge ], [ %ident, %for.inc68.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_get_port.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_get_port, %if.then77)) #10
          to label %do.end [label %if.then77], !srcloc !184

if.then77:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv78 = zext i16 %ident.addr.1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_get_port.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.3, i32 noundef %conv78) #10
  br label %do.end

do.end:                                           ; preds = %if.then77, %do.body
  %21 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num82 = getelementptr inbounds %struct.anon.2, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %skc_num82 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %ident.addr.1, ptr %skc_num82, align 2
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %23 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %do.body85, label %do.end.cleanup105_crit_edge

do.end.cleanup105_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

do.body85:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_get_port.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_get_port, %if.then97)) #10
          to label %do.end100 [label %if.then97], !srcloc !184

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_get_port.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.4) #10
  br label %do.end100

do.end100:                                        ; preds = %if.then97, %do.body85
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !186
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end100.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !187

do.end100.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end100
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !188

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end100.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end100.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %27 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %28 = ptrtoint ptr %hlist.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hlist.2, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %27, align 4
  %31 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %hlist.2, ptr %pprev.i.i, align 4
  store ptr %27, ptr %hlist.2, align 4
  %32 = ptrtoint ptr %29 to i32
  %and.i.i152 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i152)
  %tobool.not.i = icmp eq i32 %and.i.i152, 0
  br i1 %tobool.not.i, label %do.body14.i, label %sock_hold.exit.hlist_nulls_add_head.exit_crit_edge

sock_hold.exit.hlist_nulls_add_head.exit_crit_edge: ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_nulls_add_head.exit

do.body14.i:                                      ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pprev16.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %29, i32 0, i32 1
  %33 = ptrtoint ptr %pprev16.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %27, ptr %pprev16.i, align 4
  br label %hlist_nulls_add_head.exit

hlist_nulls_add_head.exit:                        ; preds = %do.body14.i, %sock_hold.exit.hlist_nulls_add_head.exit_crit_edge
  %skc_net.i153 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %34 = ptrtoint ptr %skc_net.i153 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skc_net.i153, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %36 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skc_prot, align 8
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !189
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %35, i32 0, i32 29, i32 2
  %39 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prot_inuse.i, align 8
  %inuse_idx.i = getelementptr inbounds %struct.proto, ptr %37, i32 0, i32 26
  %41 = ptrtoint ptr %inuse_idx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %inuse_idx.i, align 4
  %arrayidx.i154 = getelementptr %struct.prot_inuse, ptr %40, i32 0, i32 1, i32 %42
  %43 = ptrtoint ptr %arrayidx.i154 to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i.i155 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i155 to ptr
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
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !190
  %and.i.i.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i156 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i156, label %if.then.i, label %hlist_nulls_add_head.exit.sock_prot_inuse_add.exit_crit_edge, !prof !187

hlist_nulls_add_head.exit.sock_prot_inuse_add.exit_crit_edge: ; preds = %hlist_nulls_add_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_prot_inuse_add.exit

if.then.i:                                        ; preds = %hlist_nulls_add_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i, %hlist_nulls_add_head.exit.sock_prot_inuse_add.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #10, !srcloc !191
  br label %cleanup105

cleanup105:                                       ; preds = %sock_prot_inuse_add.exit, %do.end.cleanup105_crit_edge, %lor.lhs.false.cleanup105_crit_edge, %land.lhs.true58.cleanup105_crit_edge, %for.end27.cleanup105_crit_edge, %for.inc24.cleanup105_crit_edge
  %retval.0 = phi i32 [ 0, %sock_prot_inuse_add.exit ], [ 0, %do.end.cleanup105_crit_edge ], [ 1, %for.end27.cleanup105_crit_edge ], [ 1, %for.inc24.cleanup105_crit_edge ], [ 1, %land.lhs.true58.cleanup105_crit_edge ], [ 1, %lor.lhs.false.cleanup105_crit_edge ]
  tail call void @_raw_write_unlock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ping_unhash(ptr noundef %sk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_unhash.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_unhash, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %skc_num, align 2
  %conv = zext i16 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_unhash.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.8, ptr noundef %sk, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #10
  %pprev.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %3 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i.not, label %do.end.if.end14_crit_edge, label %if.then6

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then6:                                         ; preds = %do.end
  %5 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %7, ptr %9, align 4
  %11 = ptrtoint ptr %7 to i32
  %and.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body13.i.i, label %if.then6.hlist_nulls_del.exit_crit_edge

if.then6.hlist_nulls_del.exit_crit_edge:          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_nulls_del.exit

do.body13.i.i:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %9, ptr %pprev14.i.i, align 4
  br label %hlist_nulls_del.exit

hlist_nulls_del.exit:                             ; preds = %do.body13.i.i, %if.then6.hlist_nulls_del.exit_crit_edge
  %13 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i.i.i, align 4
  store ptr null, ptr %pprev.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !193
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %hlist_nulls_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !188

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %sock_put.exit

if.then.i:                                        ; preds = %hlist_nulls_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @sk_free(ptr noundef %sk) #10
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %15 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num11 = getelementptr inbounds %struct.anon.2, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %skc_num11 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %skc_num11, align 2
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %17 = ptrtoint ptr %inet_sport to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %inet_sport, align 8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %18 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skc_net.i, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %20 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skc_prot, align 8
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !189
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 29, i32 2
  %23 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prot_inuse.i, align 8
  %inuse_idx.i = getelementptr inbounds %struct.proto, ptr %21, i32 0, i32 26
  %25 = ptrtoint ptr %inuse_idx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %inuse_idx.i, align 4
  %arrayidx.i = getelementptr %struct.prot_inuse, ptr %24, i32 0, i32 1, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %33, %27
  %34 = inttoptr i32 %add.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add15.i = add i32 %36, -1
  store i32 %add15.i, ptr %34, align 4
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !190
  %and.i.i.i24 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i24)
  %tobool.not.i = icmp eq i32 %and.i.i.i24, 0
  br i1 %tobool.not.i, label %if.then.i25, label %sock_put.exit.sock_prot_inuse_add.exit_crit_edge, !prof !187

sock_put.exit.sock_prot_inuse_add.exit_crit_edge: ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_prot_inuse_add.exit

if.then.i25:                                      ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i25, %sock_put.exit.sock_prot_inuse_add.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #10, !srcloc !191
  br label %if.end14

if.end14:                                         ; preds = %sock_prot_inuse_add.exit, %do.end.if.end14_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ping_init_sock(ptr nocapture noundef %sk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %egid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %8)
  %group.sroa.0.0.copyload = load i32, ptr %egid, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %9 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %10)
  %cmp = icmp eq i16 %10, 10
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %11 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %skc_ipv6only, align 1
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %skc_ipv6only, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ping_group_range.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 123
  %range.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 123, i32 1
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 123, i32 0, i32 0, i32 0, i32 1
  %arrayidx3.i = getelementptr %struct.net, ptr %1, i32 0, i32 35, i32 123, i32 1, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %read_seqbegin.exit.i.do.body.i_crit_edge, %if.end
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !189
  %and.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %13 = tail call ptr @llvm.returnaddress(i32 0) #10
  %14 = ptrtoint ptr %13 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %14) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %14) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = tail call ptr @llvm.returnaddress(i32 0) #10
  %16 = ptrtoint ptr %15 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %16) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %16) #10
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !190
  %and.i.i.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !187

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #10, !srcloc !191
  %18 = ptrtoint ptr %ping_group_range.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %ping_group_range.i, align 4
  %and18.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_seqbegin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !196
  %20 = ptrtoint ptr %ping_group_range.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %ping_group_range.i, align 4
  %and.i.i = and i32 %21, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.read_seqbegin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i.read_seqbegin.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_seqbegin.exit.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i.read_seqbegin.exit.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %19, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge ], [ %21, %do.end.i.i.read_seqbegin.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !197
  %22 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %range.i, align 4
  %24 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !198
  %26 = ptrtoint ptr %ping_group_range.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %ping_group_range.i, align 4
  %cmp.i.i.i.not.i = icmp eq i32 %27, %.lcssa.i.i
  br i1 %cmp.i.i.i.not.i, label %inet_get_ping_group_range_net.exit, label %read_seqbegin.exit.i.do.body.i_crit_edge

read_seqbegin.exit.i.do.body.i_crit_edge:         ; preds = %read_seqbegin.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

inet_get_ping_group_range_net.exit:               ; preds = %read_seqbegin.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %group.sroa.0.0.copyload)
  %cmp.i = icmp ule i32 %23, %group.sroa.0.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %group.sroa.0.0.copyload, i32 %25)
  %cmp.i78 = icmp ule i32 %group.sroa.0.0.copyload, %25
  %or.cond = select i1 %cmp.i, i1 %cmp.i78, i1 false
  br i1 %or.cond, label %inet_get_ping_group_range_net.exit.cleanup43_crit_edge, label %if.end12

inet_get_ping_group_range_net.exit.cleanup43_crit_edge: ; preds = %inet_get_ping_group_range_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end12:                                         ; preds = %inet_get_ping_group_range_net.exit
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %cred19 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 99
  %30 = ptrtoint ptr %cred19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cred19, align 16
  %group_info20 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %group_info20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %group_info20, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %33, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %33, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #10, !srcloc !199
  %ngroups = getelementptr inbounds %struct.group_info, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp2387 = icmp sgt i32 %36, 0
  br i1 %cmp2387, label %if.end12.for.body_crit_edge, label %if.end12.do.body37_crit_edge

if.end12.do.body37_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, %36
  br i1 %exitcond.not, label %for.cond.do.body37_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.do.body37_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.088 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.group_info, ptr %33, i32 0, i32 2, i32 %i.088
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %gid.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %gid.sroa.0.0.copyload)
  %cmp.i79 = icmp ule i32 %23, %gid.sroa.0.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.sroa.0.0.copyload, i32 %25)
  %cmp.i80 = icmp ule i32 %gid.sroa.0.0.copyload, %25
  %or.cond84 = select i1 %cmp.i79, i1 %cmp.i80, i1 false
  br i1 %or.cond84, label %for.body.do.body37_crit_edge, label %for.cond

for.body.do.body37_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37

do.body37:                                        ; preds = %for.body.do.body37_crit_edge, %for.cond.do.body37_crit_edge, %if.end12.do.body37_crit_edge
  %ret.0 = phi i32 [ -13, %if.end12.do.body37_crit_edge ], [ 0, %for.body.do.body37_crit_edge ], [ -13, %for.cond.do.body37_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %33, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !200
  tail call void @llvm.prefetch.p0(ptr %33, i32 1, i32 3, i32 1) #10
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #10, !srcloc !201
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then39, label %do.body37.cleanup43_crit_edge

do.body37.cleanup43_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.then39:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @groups_free(ptr noundef %33) #10
  br label %cleanup43

cleanup43:                                        ; preds = %if.then39, %do.body37.cleanup43_crit_edge, %inet_get_ping_group_range_net.exit.cleanup43_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then39 ], [ %ret.0, %do.body37.cleanup43_crit_edge ], [ 0, %inet_get_ping_group_range_net.exit.cleanup43_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ping_close(ptr noundef %sk, i32 %timeout) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_close.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_close, %if.then)) #10
          to label %do.body6 [label %if.then], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %skc_num, align 2
  %conv = zext i16 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_close.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.11, ptr noundef %sk, i32 noundef %conv) #10
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_close.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_close, %if.then18)) #10
          to label %do.end22 [label %if.then18], !srcloc !184

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #10
  %3 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %skc_refcnt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_close.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.12, i32 noundef %4) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body6
  tail call void @sk_common_release(ptr noundef %sk) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ping_bind(ptr noundef %sk, ptr noundef %uaddr, i32 noundef %addr_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %skc_bound_dev_if, align 4
  %call1 = tail call fastcc i32 @ping_check_bind_addr(ptr noundef %sk, ptr noundef %sk, ptr noundef %uaddr, i32 noundef %addr_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %skc_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.not = icmp eq i16 %4, 0
  br i1 %cmp.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end6:                                          ; preds = %if.end
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 1
  %5 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sin_port, align 2
  %call7 = tail call i32 @ping_get_port(ptr noundef %sk, i16 noundef zeroext %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %1, ptr %skc_bound_dev_if, align 4
  br label %out

if.end13:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %uaddr, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %if.end13.ping_set_saddr.exit_crit_edge [
    i16 2, label %if.then.i
    i16 10, label %if.then7.i
  ]

if.end13.ping_set_saddr.exit_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %ping_set_saddr.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 2
  %11 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sin_addr.i, align 4
  %inet_saddr.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 2
  %13 = ptrtoint ptr %inet_saddr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %inet_saddr.i, align 4
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %sk, i32 0, i32 1
  %14 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %skc_rcv_saddr.i, align 4
  br label %ping_set_saddr.exit

if.then7.i:                                       ; preds = %if.end13
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %15 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %16 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then7.i.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

if.then7.i.inet6_sk.exit.i_crit_edge:             ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %17 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %if.then7.i.inet6_sk.exit.i_crit_edge
  %cond.i.i = phi ptr [ %18, %cond.true.i.i ], [ null, %if.then7.i.inet6_sk.exit.i_crit_edge ]
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3
  %19 = call ptr @memcpy(ptr %cond.i.i, ptr %sin6_addr.i, i32 16)
  %20 = call ptr @memmove(ptr %skc_v6_rcv_saddr.i, ptr %sin6_addr.i, i32 16)
  br label %ping_set_saddr.exit

ping_set_saddr.exit:                              ; preds = %inet6_sk.exit.i, %if.then.i, %if.end13.ping_set_saddr.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_bind.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_bind, %if.then18)) #10
          to label %do.end [label %if.then18], !srcloc !184

if.then18:                                        ; preds = %ping_set_saddr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %skc_num, align 2
  %conv22 = zext i16 %22 to i32
  %23 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %skc_bound_dev_if, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_bind.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.14, i32 noundef %conv22, i32 noundef %24) #10
  br label %do.end

do.end:                                           ; preds = %if.then18, %ping_set_saddr.exit
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %25 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %skc_family, align 8
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %26, label %do.end.if.end58_crit_edge [
    i16 2, label %land.lhs.true
    i16 10, label %land.lhs.true44
  ]

do.end.if.end58_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

land.lhs.true:                                    ; preds = %do.end
  %skc_rcv_saddr = getelementptr inbounds %struct.anon, ptr %sk, i32 0, i32 1
  %28 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %skc_rcv_saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool32.not = icmp eq i32 %29, 0
  br i1 %tobool32.not, label %land.lhs.true.if.end58_crit_edge, label %land.lhs.true.if.end58.sink.split_crit_edge

land.lhs.true.if.end58.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.sink.split

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

land.lhs.true44:                                  ; preds = %do.end
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %30 = ptrtoint ptr %skc_v6_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %skc_v6_rcv_saddr, align 4
  %arrayidx2.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %33, %31
  %arrayidx4.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %35
  %arrayidx7.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %land.lhs.true44.if.end58_crit_edge, label %land.lhs.true44.if.end58.sink.split_crit_edge

land.lhs.true44.if.end58.sink.split_crit_edge:    ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.sink.split

land.lhs.true44.if.end58_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end58.sink.split:                              ; preds = %land.lhs.true44.if.end58.sink.split_crit_edge, %land.lhs.true.if.end58.sink.split_crit_edge
  %cmp42141.ph = phi i1 [ false, %land.lhs.true.if.end58.sink.split_crit_edge ], [ true, %land.lhs.true44.if.end58.sink.split_crit_edge ]
  %sk_userlocks48 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 43
  %38 = ptrtoint ptr %sk_userlocks48 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %sk_userlocks48, align 8
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %sk_userlocks48, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.end58.sink.split, %land.lhs.true44.if.end58_crit_edge, %land.lhs.true.if.end58_crit_edge, %do.end.if.end58_crit_edge
  %cmp42141 = phi i1 [ true, %land.lhs.true44.if.end58_crit_edge ], [ false, %land.lhs.true.if.end58_crit_edge ], [ false, %do.end.if.end58_crit_edge ], [ %cmp42141.ph, %if.end58.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool59.not = icmp eq i16 %6, 0
  br i1 %tobool59.not, label %if.end58.if.end71_crit_edge, label %if.then60

if.end58.if.end71_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %sk_userlocks61 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 43
  %39 = ptrtoint ptr %sk_userlocks61 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load62 = load i8, ptr %sk_userlocks61, align 8
  %bf.set70 = or i8 %bf.load62, 8
  store i8 %bf.set70, ptr %sk_userlocks61, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then60, %if.end58.if.end71_crit_edge
  %40 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %skc_num, align 2
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %42 = ptrtoint ptr %inet_sport to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %inet_sport, align 8
  %43 = ptrtoint ptr %sk to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %sk, align 8
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %2, align 4
  br i1 %cmp42141, label %if.then84, label %if.end71.if.end86_crit_edge

if.end71.if.end86_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then84:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %45 = call ptr @memset(ptr %skc_v6_daddr, i32 0, i32 16)
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end71.if.end86_crit_edge
  %skc_tx_queue_mapping.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 16
  %46 = ptrtoint ptr %skc_tx_queue_mapping.i.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i.i, align 4
  %sk_dst_pending_confirm.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %47 = ptrtoint ptr %sk_dst_pending_confirm.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %sk_dst_pending_confirm.i.i, align 8
  %sk_dst_cache.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_dst_cache.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr %sk_dst_cache.i.i, i32 1, i32 3, i32 1) #10
  %48 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_dst_cache.i.i) #10, !srcloc !204
  %asmresult.i.i.i = extractvalue { i32, i32 } %48, 0
  %49 = inttoptr i32 %asmresult.i.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !205
  tail call void @dst_release(ptr noundef %49) #10
  br label %out

out:                                              ; preds = %if.end86, %if.then10, %if.end.out_crit_edge
  %err.0 = phi i32 [ -22, %if.end.out_crit_edge ], [ -98, %if.then10 ], [ 0, %if.end86 ]
  tail call void @release_sock(ptr noundef %sk) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_bind.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_bind, %if.then99)) #10
          to label %cleanup [label %if.then99], !srcloc !184

if.then99:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_bind.__UNIQUE_ID_ddebug514, ptr noundef nonnull @.str.15, i32 noundef %err.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %err.0, %if.then99 ], [ %err.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ping_check_bind_addr(ptr noundef %sk, ptr nocapture noundef readonly %isk, ptr noundef %uaddr, i32 noundef %addr_len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_family, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %3, label %entry.cleanup116_crit_edge [
    i16 2, label %if.then
    i16 10, label %if.then40
  ]

entry.cleanup116_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addr_len)
  %cmp2 = icmp ult i32 %addr_len, 16
  br i1 %cmp2, label %if.then.cleanup116_crit_edge, label %if.end

if.then.cleanup116_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup116

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %uaddr, align 4
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %6, label %if.end.cleanup116_crit_edge [
    i16 2, label %if.end.do.body_crit_edge
    i16 0, label %land.lhs.true12
  ]

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.cleanup116_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup116

land.lhs.true12:                                  ; preds = %if.end
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 2
  %8 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13 = icmp eq i32 %9, 0
  br i1 %cmp13, label %land.lhs.true12.do.body_crit_edge, label %land.lhs.true12.cleanup116_crit_edge

land.lhs.true12.cleanup116_crit_edge:             ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup116

land.lhs.true12.do.body_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %land.lhs.true12.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_check_bind_addr.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_check_bind_addr, %if.then20)) #10
          to label %do.end [label %if.then20], !srcloc !184

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr21 = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 2
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 1
  %10 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sin_port, align 2
  %conv23 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_check_bind_addr.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.33, ptr noundef %sk, ptr noundef %sin_addr21, i32 noundef %conv23) #10
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  %sin_addr25 = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 2
  %12 = ptrtoint ptr %sin_addr25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sin_addr25, align 4
  %call27 = tail call i32 @inet_addr_type(ptr noundef %1, i32 noundef %13) #10
  %14 = ptrtoint ptr %sin_addr25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sin_addr25, align 4
  %sysctl_ip_nonlocal_bind.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 41
  %16 = ptrtoint ptr %sysctl_ip_nonlocal_bind.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sysctl_ip_nonlocal_bind.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %do.end
  %freebind.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %18 = ptrtoint ptr %freebind.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i.i = load i16, ptr %freebind.i.i, align 8
  %19 = and i16 %bf.load.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool2.not.i.i = icmp eq i16 %19, 0
  br i1 %tobool2.not.i.i, label %lor.rhs.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.rhs.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = and i16 %bf.load.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool8.i.i = icmp ne i16 %20, 0
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs.i.i, %lor.lhs.false.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %21 = phi i1 [ true, %lor.lhs.false.i.i.cleanup_crit_edge ], [ true, %do.end.cleanup_crit_edge ], [ %tobool8.i.i, %lor.rhs.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  %or.cond.i = or i1 %cmp.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call27)
  %cmp2.i = icmp eq i32 %call27, 2
  %or.cond8.i = or i1 %cmp2.i, %or.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call27)
  %cmp4.i = icmp eq i32 %call27, 5
  %or.cond9.i = or i1 %cmp4.i, %or.cond8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call27)
  %cmp5.i = icmp eq i32 %call27, 3
  %spec.select.i = or i1 %cmp5.i, %or.cond9.i
  br i1 %spec.select.i, label %cleanup.if.end115_crit_edge, label %cleanup.cleanup116_crit_edge

cleanup.cleanup116_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup116

cleanup.if.end115_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then40:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %addr_len)
  %cmp42 = icmp ult i32 %addr_len, 28
  br i1 %cmp42, label %if.then40.cleanup116_crit_edge, label %if.end45

if.then40.cleanup116_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup116

if.end45:                                         ; preds = %if.then40
  %22 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %23)
  %cmp47.not = icmp eq i16 %23, 10
  br i1 %cmp47.not, label %do.body51, label %if.end45.cleanup116_crit_edge

if.end45.cleanup116_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup116

do.body51:                                        ; preds = %if.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_check_bind_addr.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_check_bind_addr, %if.then63)) #10
          to label %do.end67 [label %if.then63], !srcloc !184

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 1
  %24 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sin6_port, align 2
  %conv64 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_check_bind_addr.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.34, ptr noundef %sk, ptr noundef %sin6_addr, i32 noundef %conv64) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %do.body51
  %sin6_addr68 = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3
  %call.i158 = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr68) #10
  %and.i = and i32 %call.i158, 65535
  %and.i159 = and i32 %call.i158, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i159)
  %tobool.not.i160 = icmp eq i32 %and.i159, 0
  br i1 %tobool.not.i160, label %lor.rhs.i, label %__ipv6_addr_needs_scope_id.exit.thread190

lor.rhs.i:                                        ; preds = %do.end67
  %and1.i = and i32 %call.i158, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %__ipv6_addr_needs_scope_id.exit.thread, label %__ipv6_addr_needs_scope_id.exit

__ipv6_addr_needs_scope_id.exit:                  ; preds = %lor.rhs.i
  %and = and i32 %call.i158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool75.not = icmp eq i32 %and, 0
  br i1 %tobool75.not, label %__ipv6_addr_needs_scope_id.exit.cleanup116_crit_edge, label %lor.lhs.false

__ipv6_addr_needs_scope_id.exit.cleanup116_crit_edge: ; preds = %__ipv6_addr_needs_scope_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup116

__ipv6_addr_needs_scope_id.exit.thread190:        ; preds = %do.end67
  %and191 = and i32 %call.i158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool75.not192 = icmp eq i32 %and191, 0
  br i1 %tobool75.not192, label %__ipv6_addr_needs_scope_id.exit.thread190.cleanup116_crit_edge, label %__ipv6_addr_needs_scope_id.exit.thread190.land.lhs.true77_crit_edge

__ipv6_addr_needs_scope_id.exit.thread190.land.lhs.true77_crit_edge: ; preds = %__ipv6_addr_needs_scope_id.exit.thread190
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true77

__ipv6_addr_needs_scope_id.exit.thread190.cleanup116_crit_edge: ; preds = %__ipv6_addr_needs_scope_id.exit.thread190
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup116

__ipv6_addr_needs_scope_id.exit.thread:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp72.not178 = icmp ne i32 %and.i, 0
  %and179 = and i32 %call.i158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool75.not180 = icmp eq i32 %and179, 0
  %or.cond181 = and i1 %cmp72.not178, %tobool75.not180
  br i1 %or.cond181, label %__ipv6_addr_needs_scope_id.exit.thread.cleanup116_crit_edge, label %__ipv6_addr_needs_scope_id.exit.thread.if.end80_crit_edge

__ipv6_addr_needs_scope_id.exit.thread.if.end80_crit_edge: ; preds = %__ipv6_addr_needs_scope_id.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

__ipv6_addr_needs_scope_id.exit.thread.cleanup116_crit_edge: ; preds = %__ipv6_addr_needs_scope_id.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup116

lor.lhs.false:                                    ; preds = %__ipv6_addr_needs_scope_id.exit
  %and3.i = and i32 %call.i158, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i.not = icmp eq i32 %and3.i, 0
  br i1 %tobool4.i.not, label %lor.lhs.false.if.end80_crit_edge, label %lor.lhs.false.land.lhs.true77_crit_edge

lor.lhs.false.land.lhs.true77_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true77

lor.lhs.false.if.end80_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

land.lhs.true77:                                  ; preds = %lor.lhs.false.land.lhs.true77_crit_edge, %__ipv6_addr_needs_scope_id.exit.thread190.land.lhs.true77_crit_edge
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 4
  %26 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sin6_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool78.not = icmp eq i32 %27, 0
  br i1 %tobool78.not, label %land.lhs.true77.cleanup116_crit_edge, label %land.lhs.true77.if.end80_crit_edge

land.lhs.true77.if.end80_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

land.lhs.true77.cleanup116_crit_edge:             ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup116

if.end80:                                         ; preds = %land.lhs.true77.if.end80_crit_edge, %lor.lhs.false.if.end80_crit_edge, %__ipv6_addr_needs_scope_id.exit.thread.if.end80_crit_edge
  %28 = phi i1 [ false, %land.lhs.true77.if.end80_crit_edge ], [ true, %lor.lhs.false.if.end80_crit_edge ], [ true, %__ipv6_addr_needs_scope_id.exit.thread.if.end80_crit_edge ]
  %conv71182184.shrunk = phi i32 [ 1, %land.lhs.true77.if.end80_crit_edge ], [ 0, %lor.lhs.false.if.end80_crit_edge ], [ 0, %__ipv6_addr_needs_scope_id.exit.thread.if.end80_crit_edge ]
  %29 = tail call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !206
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end80.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end80.rcu_read_lock.exit_crit_edge:            ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end80
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 696, ptr noundef nonnull @.str.36) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end80.rcu_read_lock.exit_crit_edge
  %sin6_scope_id81 = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 4
  %33 = ptrtoint ptr %sin6_scope_id81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sin6_scope_id81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool82.not = icmp eq i32 %34, 0
  br i1 %tobool82.not, label %rcu_read_lock.exit.if.end89_crit_edge, label %if.then83

rcu_read_lock.exit.if.end89_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then83:                                        ; preds = %rcu_read_lock.exit
  %call85 = tail call ptr @dev_get_by_index_rcu(ptr noundef %1, i32 noundef %34) #10
  %tobool86.not = icmp eq ptr %call85, null
  br i1 %tobool86.not, label %if.then87, label %if.then83.if.end89_crit_edge

if.then83.if.end89_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then87:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup116

if.end89:                                         ; preds = %if.then83.if.end89_crit_edge, %rcu_read_lock.exit.if.end89_crit_edge
  %dev.0 = phi ptr [ %call85, %if.then83.if.end89_crit_edge ], [ null, %rcu_read_lock.exit.if.end89_crit_edge ]
  %35 = load ptr, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 5), align 4
  %call91 = tail call i32 %35(ptr noundef %1, ptr noundef %sin6_addr68, ptr noundef %dev.0, i32 noundef %conv71182184.shrunk) #10
  %call.i161 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i161, label %if.end89.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i164

if.end89.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i164:                               ; preds = %if.end89
  %call1.i162 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i162)
  %tobool.not.i163 = icmp eq i32 %call1.i162, 0
  br i1 %tobool.not.i163, label %land.lhs.true.i164.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i166

land.lhs.true.i164.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i164
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i166:                              ; preds = %land.lhs.true.i164
  %.b4.i165 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i165, label %land.lhs.true2.i166.rcu_read_unlock.exit_crit_edge, label %if.then.i167

land.lhs.true2.i166.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i166
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i167:                                     ; preds = %land.lhs.true2.i166
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.37) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i167, %land.lhs.true2.i166.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i164.rcu_read_unlock.exit_crit_edge, %if.end89.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !207
  %36 = tail call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i.i.i.i.i168 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i168 to ptr
  %preempt_count.i.i.i.i169 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i169, align 4
  %sub.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i169, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %ip_nonlocal_bind.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 1, i32 25
  %40 = ptrtoint ptr %ip_nonlocal_bind.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ip_nonlocal_bind.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i170 = icmp eq i8 %41, 0
  br i1 %tobool.not.i170, label %lor.lhs.false.i, label %rcu_read_unlock.exit.ipv6_can_nonlocal_bind.exit_crit_edge

rcu_read_unlock.exit.ipv6_can_nonlocal_bind.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_can_nonlocal_bind.exit

lor.lhs.false.i:                                  ; preds = %rcu_read_unlock.exit
  %freebind.i = getelementptr inbounds %struct.inet_sock, ptr %isk, i32 0, i32 12
  %42 = ptrtoint ptr %freebind.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i = load i16, ptr %freebind.i, align 8
  %43 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool2.not.i171 = icmp eq i16 %43, 0
  br i1 %tobool2.not.i171, label %lor.rhs.i172, label %lor.lhs.false.i.ipv6_can_nonlocal_bind.exit_crit_edge

lor.lhs.false.i.ipv6_can_nonlocal_bind.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_can_nonlocal_bind.exit

lor.rhs.i172:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool8.i = icmp ne i16 %44, 0
  br label %ipv6_can_nonlocal_bind.exit

ipv6_can_nonlocal_bind.exit:                      ; preds = %lor.rhs.i172, %lor.lhs.false.i.ipv6_can_nonlocal_bind.exit_crit_edge, %rcu_read_unlock.exit.ipv6_can_nonlocal_bind.exit_crit_edge
  %45 = phi i1 [ true, %lor.lhs.false.i.ipv6_can_nonlocal_bind.exit_crit_edge ], [ true, %rcu_read_unlock.exit.ipv6_can_nonlocal_bind.exit_crit_edge ], [ %tobool8.i, %lor.rhs.i172 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool95.not = icmp ne i32 %call91, 0
  %or.cond152 = select i1 %45, i1 true, i1 %tobool95.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp97 = icmp eq i32 %and.i, 0
  %or.cond153 = or i1 %cmp97, %or.cond152
  %or.cond153.not = xor i1 %or.cond153, true
  %brmerge = or i1 %28, %or.cond153.not
  br i1 %brmerge, label %cleanup106, label %cleanup106.thread187

cleanup106.thread187:                             ; preds = %ipv6_can_nonlocal_bind.exit
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %sin6_scope_id81 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sin6_scope_id81, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %48 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %skc_bound_dev_if, align 4
  br label %if.end115

cleanup106:                                       ; preds = %ipv6_can_nonlocal_bind.exit
  br i1 %or.cond153, label %cleanup106.if.end115_crit_edge, label %cleanup106.cleanup116_crit_edge

cleanup106.cleanup116_crit_edge:                  ; preds = %cleanup106
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup116

cleanup106.if.end115_crit_edge:                   ; preds = %cleanup106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.end115:                                        ; preds = %cleanup106.if.end115_crit_edge, %cleanup106.thread187, %cleanup.if.end115_crit_edge
  br label %cleanup116

cleanup116:                                       ; preds = %if.end115, %cleanup106.cleanup116_crit_edge, %if.then87, %land.lhs.true77.cleanup116_crit_edge, %__ipv6_addr_needs_scope_id.exit.thread.cleanup116_crit_edge, %__ipv6_addr_needs_scope_id.exit.thread190.cleanup116_crit_edge, %__ipv6_addr_needs_scope_id.exit.cleanup116_crit_edge, %if.end45.cleanup116_crit_edge, %if.then40.cleanup116_crit_edge, %cleanup.cleanup116_crit_edge, %land.lhs.true12.cleanup116_crit_edge, %if.end.cleanup116_crit_edge, %if.then.cleanup116_crit_edge, %entry.cleanup116_crit_edge
  %retval.2 = phi i32 [ 0, %if.end115 ], [ -99, %cleanup.cleanup116_crit_edge ], [ -99, %cleanup106.cleanup116_crit_edge ], [ -97, %entry.cleanup116_crit_edge ], [ -97, %land.lhs.true12.cleanup116_crit_edge ], [ -97, %if.end.cleanup116_crit_edge ], [ -22, %if.then.cleanup116_crit_edge ], [ -22, %__ipv6_addr_needs_scope_id.exit.thread.cleanup116_crit_edge ], [ -22, %land.lhs.true77.cleanup116_crit_edge ], [ -22, %__ipv6_addr_needs_scope_id.exit.cleanup116_crit_edge ], [ -97, %if.end45.cleanup116_crit_edge ], [ -22, %if.then40.cleanup116_crit_edge ], [ -19, %if.then87 ], [ -22, %__ipv6_addr_needs_scope_id.exit.thread190.cleanup116_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ping_err(ptr noundef %skb, i32 noundef %offset, i32 noundef %info) #1 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %6)
  %cmp = icmp eq i16 %6, 2048
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %9 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %code6 = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 1
  br label %if.end23

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %6)
  %cmp10 = icmp eq i16 %6, -31011
  br i1 %cmp10, label %if.then12, label %do.body

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i217 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i217 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i217, align 8
  %transport_header.i.i218 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %13 = ptrtoint ptr %transport_header.i.i218 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %transport_header.i.i218, align 2
  %conv.i.i219 = zext i16 %14 to i32
  %add.ptr.i.i220 = getelementptr i8, ptr %12, i32 %conv.i.i219
  %icmp6_code = getelementptr inbounds %struct.icmp6hdr, ptr %add.ptr.i.i220, i32 0, i32 1
  br label %if.end23

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 492, 0\0A.popsection", ""() #10, !srcloc !208
  unreachable

if.end23:                                         ; preds = %if.then12, %if.then
  %code.0.in.in = phi ptr [ %code6, %if.then ], [ %icmp6_code, %if.then12 ]
  %type.0.in.in = phi ptr [ %add.ptr.i.i, %if.then ], [ %add.ptr.i.i220, %if.then12 ]
  %15 = xor i1 %cmp, true
  %16 = ptrtoint ptr %type.0.in.in to i32
  call void @__asan_load1_noabort(i32 %16)
  %type.0.in = load i8, ptr %type.0.in.in, align 4
  %.pn.in = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn.in, align 4
  %icmph.0 = getelementptr i8, ptr %.pn, i32 %offset
  %type.0 = zext i8 %type.0.in to i32
  %18 = ptrtoint ptr %code.0.in.in to i32
  call void @__asan_load1_noabort(i32 %18)
  %code.0.in = load i8, ptr %code.0.in.in, align 1
  %code.0 = zext i8 %code.0.in to i32
  %19 = ptrtoint ptr %icmph.0 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %icmph.0, align 4
  %code26 = getelementptr inbounds %struct.icmphdr, ptr %icmph.0, i32 0, i32 1
  %21 = ptrtoint ptr %code26 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %code26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %20)
  %cmp1.i = icmp eq i8 %20, 8
  %or.cond.i = and i1 %cmp, %cmp1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp3.i = icmp eq i8 %22, 0
  %or.cond28.i = and i1 %or.cond.i, %cmp3.i
  br i1 %or.cond28.i, label %if.end23.do.body31_crit_edge, label %lor.lhs.false.i

if.end23.do.body31_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

lor.lhs.false.i:                                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %20)
  %cmp6.i = icmp eq i8 %20, 42
  %or.cond29.i = and i1 %cmp, %cmp6.i
  %or.cond30.i = and i1 %or.cond29.i, %cmp3.i
  br i1 %or.cond30.i, label %lor.lhs.false.i.do.body31_crit_edge, label %lor.lhs.false9.i

lor.lhs.false.i.do.body31_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %20)
  %cmp12.i = icmp eq i8 %20, -128
  %or.cond31.i = and i1 %cmp12.i, %15
  %or.cond32.i = and i1 %or.cond31.i, %cmp3.i
  %brmerge.i = or i1 %cmp, %or.cond32.i
  br i1 %brmerge.i, label %ping_supported.exit, label %land.lhs.true16.i

land.lhs.true16.i:                                ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %20)
  %cmp17.i = icmp eq i8 %20, -96
  %narrow.i = and i1 %cmp17.i, %cmp3.i
  br i1 %narrow.i, label %land.lhs.true16.i.do.body31_crit_edge, label %land.lhs.true16.i.cleanup_crit_edge

land.lhs.true16.i.cleanup_crit_edge:              ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true16.i.do.body31_crit_edge:            ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

ping_supported.exit:                              ; preds = %lor.lhs.false9.i
  br i1 %or.cond32.i, label %ping_supported.exit.do.body31_crit_edge, label %ping_supported.exit.cleanup_crit_edge

ping_supported.exit.cleanup_crit_edge:            ; preds = %ping_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ping_supported.exit.do.body31_crit_edge:          ; preds = %ping_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

do.body31:                                        ; preds = %ping_supported.exit.do.body31_crit_edge, %land.lhs.true16.i.do.body31_crit_edge, %lor.lhs.false.i.do.body31_crit_edge, %if.end23.do.body31_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_err.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_err, %if.then36)) #10
          to label %do.end44 [label %if.then36], !srcloc !184

if.then36:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %protocol, align 8
  %conv38 = zext i16 %24 to i32
  %un = getelementptr inbounds %struct.icmphdr, ptr %icmph.0, i32 0, i32 3
  %25 = ptrtoint ptr %un to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %un, align 4
  %conv39 = zext i16 %26 to i32
  %sequence = getelementptr inbounds %struct.anon.151, ptr %un, i32 0, i32 1
  %27 = ptrtoint ptr %sequence to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sequence, align 2
  %conv41 = zext i16 %28 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_err.__UNIQUE_ID_ddebug515, ptr noundef nonnull @.str.17, i32 noundef %conv38, i32 noundef %type.0, i32 noundef %code.0, i32 noundef %conv39, i32 noundef %conv41) #10
  br label %do.end44

do.end44:                                         ; preds = %if.then36, %do.body31
  %un45 = getelementptr inbounds %struct.icmphdr, ptr %icmph.0, i32 0, i32 3
  %29 = ptrtoint ptr %un45 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %un45, align 4
  %call47 = tail call fastcc ptr @ping_lookup(ptr noundef %4, ptr noundef %skb, i16 noundef zeroext %30)
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %do.body50, label %do.body67

do.body50:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_err.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_err, %if.then62)) #10
          to label %cleanup [label %if.then62], !srcloc !184

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_err.__UNIQUE_ID_ddebug516, ptr noundef nonnull @.str.18) #10
  br label %cleanup

do.body67:                                        ; preds = %do.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_err.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_err, %if.then79)) #10
          to label %do.end82 [label %if.then79], !srcloc !184

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_err.__UNIQUE_ID_ddebug517, ptr noundef nonnull @.str.19, ptr noundef nonnull %call47) #10
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %do.body67
  %31 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %err, align 4
  %32 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %protocol, align 8
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %33, label %do.end82.if.end117_crit_edge [
    i16 2048, label %if.then88
    i16 -31011, label %if.then112
  ]

do.end82.if.end117_crit_edge:                     ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

if.then88:                                        ; preds = %do.end82
  %35 = zext i8 %type.0.in to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %type.0.in, label %sw.bb [
    i8 5, label %sw.bb106
    i8 4, label %sw.bb89
    i8 12, label %sw.bb90
    i8 3, label %sw.bb91
  ]

sw.bb:                                            ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 113, ptr %err, align 4
  br label %if.end117

sw.bb89:                                          ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 121, ptr %err, align 4
  br label %if.end117

sw.bb90:                                          ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 71, ptr %err, align 4
  br label %if.end117

sw.bb91:                                          ; preds = %if.then88
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %code.0.in)
  %cmp92 = icmp eq i8 %code.0.in, 4
  br i1 %cmp92, label %if.then94, label %if.end100

if.then94:                                        ; preds = %sw.bb91
  tail call void @ipv4_sk_update_pmtu(ptr noundef %skb, ptr noundef nonnull %call47, i32 noundef %info) #10
  %pmtudisc = getelementptr inbounds %struct.inet_sock, ptr %call47, i32 0, i32 11
  %39 = ptrtoint ptr %pmtudisc to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pmtudisc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp96.not = icmp eq i8 %40, 0
  br i1 %cmp96.not, label %if.then94.out_crit_edge, label %if.then98

if.then94.out_crit_edge:                          ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then98:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 90, ptr %err, align 4
  br label %if.end117

if.end100:                                        ; preds = %sw.bb91
  %42 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 113, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %code.0.in)
  %cmp101 = icmp ult i8 %code.0.in, 16
  br i1 %cmp101, label %if.then103, label %if.end100.if.end117_crit_edge

if.end100.if.end117_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [0 x %struct.icmp_err], ptr @icmp_err_convert, i32 0, i32 %code.0
  %fatal = getelementptr [0 x %struct.icmp_err], ptr @icmp_err_convert, i32 0, i32 %code.0, i32 1
  %43 = ptrtoint ptr %fatal to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load = load i8, ptr %fatal, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  %46 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %err, align 4
  br label %if.end117

sw.bb106:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ipv4_sk_redirect(ptr noundef %skb, ptr noundef nonnull %call47) #10
  %47 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 121, ptr %err, align 4
  br label %if.end117

if.then112:                                       ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #12
  %48 = load ptr, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 3), align 4
  %call115 = call i32 %48(i8 noundef zeroext %type.0.in, i8 noundef zeroext %code.0.in, ptr noundef nonnull %err) #10
  br label %if.end117

if.end117:                                        ; preds = %if.then112, %sw.bb106, %if.then103, %if.end100.if.end117_crit_edge, %if.then98, %sw.bb90, %sw.bb89, %sw.bb, %do.end82.if.end117_crit_edge
  %harderr.0 = phi i32 [ 0, %sw.bb ], [ 1, %if.then98 ], [ %bf.cast, %if.then103 ], [ 0, %if.end100.if.end117_crit_edge ], [ 1, %sw.bb90 ], [ 0, %sw.bb89 ], [ 0, %sw.bb106 ], [ %call115, %if.then112 ], [ 0, %do.end82.if.end117_crit_edge ]
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true126.critedge

land.lhs.true:                                    ; preds = %if.end117
  %recverr = getelementptr inbounds %struct.inet_sock, ptr %call47, i32 0, i32 12
  %49 = ptrtoint ptr %recverr to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load120 = load i16, ptr %recverr, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load120)
  %tobool123.not = icmp sgt i16 %bf.load120, -1
  br i1 %tobool123.not, label %land.lhs.true.if.then132_crit_edge, label %if.then143.critedge

land.lhs.true.if.then132_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132

land.lhs.true126.critedge:                        ; preds = %if.end117
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %call47, i32 0, i32 4
  %50 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i225 = zext i8 %51 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i225
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true126.critedge.inet6_sk.exit_crit_edge, label %cond.true.i

land.lhs.true126.critedge.inet6_sk.exit_crit_edge: ; preds = %land.lhs.true126.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %land.lhs.true126.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %call47, i32 0, i32 1
  %52 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %land.lhs.true126.critedge.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %53, %cond.true.i ], [ null, %land.lhs.true126.critedge.inet6_sk.exit_crit_edge ]
  %recverr128 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %54 = ptrtoint ptr %recverr128 to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load129 = load i16, ptr %recverr128, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load129)
  %tobool131.not = icmp sgt i16 %bf.load129, -1
  br i1 %tobool131.not, label %inet6_sk.exit.if.then132_crit_edge, label %if.then147.critedge

inet6_sk.exit.if.then132_crit_edge:               ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132

if.then132:                                       ; preds = %inet6_sk.exit.if.then132_crit_edge, %land.lhs.true.if.then132_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %harderr.0)
  %tobool133.not = icmp eq i32 %harderr.0, 0
  br i1 %tobool133.not, label %if.then132.out_crit_edge, label %lor.lhs.false134

if.then132.out_crit_edge:                         ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false134:                                 ; preds = %if.then132
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call47, i32 0, i32 4
  %55 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp136.not = icmp eq i8 %56, 1
  br i1 %cmp136.not, label %lor.lhs.false134.if.end150_crit_edge, label %lor.lhs.false134.out_crit_edge

lor.lhs.false134.out_crit_edge:                   ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false134.if.end150_crit_edge:             ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.then143.critedge:                              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %err, align 4
  call void @ip_icmp_error(ptr noundef nonnull %call47, ptr noundef %skb, i32 noundef %58, i16 noundef zeroext 0, i32 noundef %info, ptr noundef %icmph.0) #10
  br label %if.end150

if.then147.critedge:                              ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  %59 = load ptr, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 4), align 4
  %60 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %err, align 4
  call void %59(ptr noundef nonnull %call47, ptr noundef %skb, i32 noundef %61, i16 noundef zeroext 0, i32 noundef %info, ptr noundef %icmph.0) #10
  br label %if.end150

if.end150:                                        ; preds = %if.then147.critedge, %if.then143.critedge, %lor.lhs.false134.if.end150_crit_edge
  %62 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %err, align 4
  %sk_err = getelementptr inbounds %struct.sock, ptr %call47, i32 0, i32 51
  %64 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %sk_err, align 4
  call void @sk_error_report(ptr noundef nonnull %call47) #10
  br label %out

out:                                              ; preds = %if.end150, %lor.lhs.false134.out_crit_edge, %if.then132.out_crit_edge, %if.then94.out_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call47, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !192
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !193
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !188

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @sk_free(ptr noundef nonnull %call47) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then62, %do.body50, %ping_supported.exit.cleanup_crit_edge, %land.lhs.true16.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ping_lookup(ptr nocapture noundef readonly %net, ptr noundef readonly %skb, i16 noundef zeroext %ident) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %ident to i32
  %hash_mix.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 26
  %0 = ptrtoint ptr %hash_mix.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash_mix.i.i.i, align 8
  %add.i.i = add i32 %1, %conv
  %and.i.i = and i32 %add.i.i, 63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_hashfn.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_lookup, %if.then.i.i)) #10
          to label %ping_hashslot.exit [label %if.then.i.i], !srcloc !184

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_hashfn.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.31, i32 noundef %conv, i32 noundef %and.i.i) #10
  br label %ping_hashslot.exit

ping_hashslot.exit:                               ; preds = %if.then.i.i, %entry
  %arrayidx.i = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %and.i.i
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %3, label %ping_hashslot.exit.cleanup_crit_edge [
    i16 2048, label %if.then
    i16 -31011, label %if.then15
  ]

ping_hashslot.exit.cleanup_crit_edge:             ; preds = %ping_hashslot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %ping_hashslot.exit
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.skb_rtable.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then.skb_rtable.exit.i_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge

land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_rtable.exit.i_crit_edge, !prof !187

land.rhs.i.i.i.skb_rtable.exit.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_rtable.exit.i

skb_rtable.exit.i:                                ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_rtable.exit.i_crit_edge, %land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge, %if.then.skb_rtable.exit.i_crit_edge
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %and25.i.i.i = and i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i, label %skb_rtable.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

skb_rtable.exit.i.if.end.i_crit_edge:             ; preds = %skb_rtable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %skb_rtable.exit.i
  %10 = inttoptr i32 %and25.i.i.i to ptr
  %rt_iif.i = getelementptr inbounds %struct.rtable, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %rt_iif.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rt_iif.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not.i = icmp eq i32 %12, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.inet_iif.exit_crit_edge

land.lhs.true.i.inet_iif.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet_iif.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %skb_rtable.exit.i.if.end.i_crit_edge
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %13 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %skb_iif.i, align 8
  br label %inet_iif.exit

inet_iif.exit:                                    ; preds = %if.end.i, %land.lhs.true.i.inet_iif.exit_crit_edge
  %retval.0.i235 = phi i32 [ %14, %if.end.i ], [ %12, %land.lhs.true.i.inet_iif.exit_crit_edge ]
  %tobool.not.i236 = icmp eq ptr %skb, null
  br i1 %tobool.not.i236, label %inet_iif.exit.inet_sdif.exit_crit_edge, label %land.lhs.true.i237

inet_iif.exit.inet_sdif.exit_crit_edge:           ; preds = %inet_iif.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet_sdif.exit

land.lhs.true.i237:                               ; preds = %inet_iif.exit
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags.i, align 4
  %17 = and i16 %16, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.i.not.i = icmp eq i16 %17, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i237.inet_sdif.exit_crit_edge, label %if.then.i

land.lhs.true.i237.inet_sdif.exit_crit_edge:      ; preds = %land.lhs.true.i237
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet_sdif.exit

if.then.i:                                        ; preds = %land.lhs.true.i237
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %18 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cb.i, align 8
  br label %inet_sdif.exit

inet_sdif.exit:                                   ; preds = %if.then.i, %land.lhs.true.i237.inet_sdif.exit_crit_edge, %inet_iif.exit.inet_sdif.exit_crit_edge
  %retval.0.i238 = phi i32 [ %19, %if.then.i ], [ 0, %land.lhs.true.i237.inet_sdif.exit_crit_edge ], [ 0, %inet_iif.exit.inet_sdif.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_lookup.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_lookup, %if.then8)) #10
          to label %if.end39 [label %if.then8], !srcloc !184

if.then8:                                         ; preds = %inet_sdif.exit
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %23 to i32
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_lookup.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.39, i32 noundef %conv, ptr noundef %daddr, i32 noundef %retval.0.i235) #10
  br label %if.end39

if.then15:                                        ; preds = %ping_hashslot.exit
  %flags.i239 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %24 = ptrtoint ptr %flags.i239 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags.i239, align 8
  %26 = and i16 %25, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.i.not.i240 = icmp eq i16 %26, 0
  %skb_iif.i241 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cb.i242 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cond.in.i = select i1 %tobool.i.not.i240, ptr %cb.i242, ptr %skb_iif.i241
  %27 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %cond.i = load i32, ptr %cond.in.i, align 8
  %tobool.not.i243 = icmp eq ptr %skb, null
  %brmerge = select i1 %tobool.not.i243, i1 true, i1 %tobool.i.not.i240
  br i1 %brmerge, label %if.then15.inet6_sdif.exit_crit_edge, label %if.then.i248

if.then15.inet6_sdif.exit_crit_edge:              ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sdif.exit

if.then.i248:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %cb.i242 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cb.i242, align 8
  br label %inet6_sdif.exit

inet6_sdif.exit:                                  ; preds = %if.then.i248, %if.then15.inet6_sdif.exit_crit_edge
  %retval.0.i249 = phi i32 [ %29, %if.then.i248 ], [ 0, %if.then15.inet6_sdif.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_lookup.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_lookup, %if.then30)) #10
          to label %if.end39 [label %if.then30], !srcloc !184

if.then30:                                        ; preds = %inet6_sdif.exit
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i250 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %30 = ptrtoint ptr %head.i.i250 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i250, align 8
  %network_header.i.i251 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i251 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %network_header.i.i251, align 4
  %conv.i.i252 = zext i16 %33 to i32
  %add.ptr.i.i253 = getelementptr i8, ptr %31, i32 %conv.i.i252
  %daddr33 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i253, i32 0, i32 6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_lookup.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.40, i32 noundef %conv, ptr noundef %daddr33, i32 noundef %cond.i) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then30, %inet6_sdif.exit, %if.then8, %inet_sdif.exit
  %sdif.0 = phi i32 [ %retval.0.i238, %if.then8 ], [ %retval.0.i249, %if.then30 ], [ %retval.0.i238, %inet_sdif.exit ], [ %retval.0.i249, %inet6_sdif.exit ]
  %dif.0 = phi i32 [ %retval.0.i235, %if.then8 ], [ %cond.i, %if.then30 ], [ %retval.0.i235, %inet_sdif.exit ], [ %cond.i, %inet6_sdif.exit ]
  tail call void @_raw_read_lock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #10
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %hnode.0272 = load ptr, ptr %arrayidx.i, align 4
  %35 = ptrtoint ptr %hnode.0272 to i32
  %and.i273 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i273)
  %tobool41.not274 = icmp eq i32 %and.i273, 0
  br i1 %tobool41.not274, label %land.rhs.lr.ph, label %if.end39.exit_crit_edge

if.end39.exit_crit_edge:                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

land.rhs.lr.ph:                                   ; preds = %if.end39
  %head.i.i258 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %network_header.i.i259 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %hnode.0275 = phi ptr [ %hnode.0272, %land.rhs.lr.ph ], [ %hnode.0, %for.inc.land.rhs_crit_edge ]
  %add.ptr = getelementptr i8, ptr %hnode.0275, i32 -84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_lookup.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_lookup, %if.then58)) #10
          to label %do.end61 [label %if.then58], !srcloc !184

if.then58:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_lookup.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.41) #10
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %land.rhs
  %skc_num = getelementptr i8, ptr %hnode.0275, i32 -70
  %36 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %skc_num, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %ident)
  %cmp65.not = icmp eq i16 %37, %ident
  br i1 %cmp65.not, label %if.end68, label %do.end61.for.inc_crit_edge

do.end61.for.inc_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end68:                                         ; preds = %do.end61
  %38 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %protocol, align 8
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %39, label %if.end68.for.inc_crit_edge [
    i16 2048, label %land.lhs.true
    i16 -31011, label %land.lhs.true120
  ]

if.end68.for.inc_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end68
  %skc_family = getelementptr i8, ptr %hnode.0275, i32 -68
  %41 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %42)
  %cmp75 = icmp eq i16 %42, 2
  br i1 %cmp75, label %do.body78, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body78:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_lookup.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_lookup, %if.then90)) #10
          to label %do.end100 [label %if.then90], !srcloc !184

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %skc_num, align 2
  %conv94 = zext i16 %44 to i32
  %skc_rcv_saddr = getelementptr i8, ptr %hnode.0275, i32 -80
  %skc_bound_dev_if = getelementptr i8, ptr %hnode.0275, i32 -64
  %45 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %skc_bound_dev_if, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_lookup.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.42, ptr noundef %add.ptr, i32 noundef %conv94, ptr noundef %skc_rcv_saddr, i32 noundef %46) #10
  br label %do.end100

do.end100:                                        ; preds = %if.then90, %do.body78
  %skc_rcv_saddr103 = getelementptr i8, ptr %hnode.0275, i32 -80
  %47 = ptrtoint ptr %skc_rcv_saddr103 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %skc_rcv_saddr103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool104.not = icmp eq i32 %48, 0
  br i1 %tobool104.not, label %do.end100.if.end163_crit_edge, label %land.lhs.true105

do.end100.if.end163_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

land.lhs.true105:                                 ; preds = %do.end100
  %49 = ptrtoint ptr %head.i.i258 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %head.i.i258, align 8
  %51 = ptrtoint ptr %network_header.i.i259 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %network_header.i.i259, align 4
  %conv.i.i256 = zext i16 %52 to i32
  %add.ptr.i.i257 = getelementptr i8, ptr %50, i32 %conv.i.i256
  %daddr110 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i257, i32 0, i32 9
  %53 = ptrtoint ptr %daddr110 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %daddr110, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %54)
  %cmp111.not = icmp eq i32 %48, %54
  br i1 %cmp111.not, label %land.lhs.true105.if.end163_crit_edge, label %land.lhs.true105.for.inc_crit_edge

land.lhs.true105.for.inc_crit_edge:               ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true105.if.end163_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

land.lhs.true120:                                 ; preds = %if.end68
  %skc_family122 = getelementptr i8, ptr %hnode.0275, i32 -68
  %55 = ptrtoint ptr %skc_family122 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %skc_family122, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %56)
  %cmp124 = icmp eq i16 %56, 10
  br i1 %cmp124, label %do.body127, label %land.lhs.true120.for.inc_crit_edge

land.lhs.true120.for.inc_crit_edge:               ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body127:                                       ; preds = %land.lhs.true120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_lookup.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_lookup, %if.then139)) #10
          to label %do.end149 [label %if.then139], !srcloc !184

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %skc_num, align 2
  %conv143 = zext i16 %58 to i32
  %skc_v6_rcv_saddr = getelementptr i8, ptr %hnode.0275, i32 -28
  %skc_bound_dev_if146 = getelementptr i8, ptr %hnode.0275, i32 -64
  %59 = ptrtoint ptr %skc_bound_dev_if146 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %skc_bound_dev_if146, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_lookup.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.43, ptr noundef %add.ptr, i32 noundef %conv143, ptr noundef %skc_v6_rcv_saddr, i32 noundef %60) #10
  br label %do.end149

do.end149:                                        ; preds = %if.then139, %do.body127
  %skc_v6_rcv_saddr151 = getelementptr i8, ptr %hnode.0275, i32 -28
  %61 = ptrtoint ptr %skc_v6_rcv_saddr151 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %skc_v6_rcv_saddr151, align 4
  %arrayidx2.i = getelementptr i8, ptr %hnode.0275, i32 -24
  %63 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %64, %62
  %arrayidx4.i = getelementptr i8, ptr %hnode.0275, i32 -20
  %65 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %66
  %arrayidx7.i = getelementptr i8, ptr %hnode.0275, i32 -16
  %67 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %do.end149.if.end163_crit_edge, label %land.lhs.true153

do.end149.if.end163_crit_edge:                    ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

land.lhs.true153:                                 ; preds = %do.end149
  %69 = ptrtoint ptr %head.i.i258 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %head.i.i258, align 8
  %71 = ptrtoint ptr %network_header.i.i259 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %network_header.i.i259, align 4
  %conv.i.i260 = zext i16 %72 to i32
  %add.ptr.i.i261 = getelementptr i8, ptr %70, i32 %conv.i.i260
  %daddr157 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i261, i32 0, i32 6
  %73 = ptrtoint ptr %daddr157 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %daddr157, align 4
  %xor.i = xor i32 %74, %62
  %arrayidx6.i = getelementptr [4 x i32], ptr %daddr157, i32 0, i32 1
  %75 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %76, %64
  %or.i263 = or i32 %xor7.i, %xor.i
  %arrayidx11.i = getelementptr [4 x i32], ptr %daddr157, i32 0, i32 2
  %77 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %78, %66
  %or13.i = or i32 %or.i263, %xor12.i
  %arrayidx17.i = getelementptr [4 x i32], ptr %daddr157, i32 0, i32 3
  %79 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %80, %68
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i264 = icmp eq i32 %or19.i, 0
  br i1 %cmp.i264, label %land.lhs.true153.if.end163_crit_edge, label %land.lhs.true153.for.inc_crit_edge

land.lhs.true153.for.inc_crit_edge:               ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true153.if.end163_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.end163:                                        ; preds = %land.lhs.true153.if.end163_crit_edge, %do.end149.if.end163_crit_edge, %land.lhs.true105.if.end163_crit_edge, %do.end100.if.end163_crit_edge
  %skc_bound_dev_if165 = getelementptr i8, ptr %hnode.0275, i32 -64
  %81 = ptrtoint ptr %skc_bound_dev_if165 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %skc_bound_dev_if165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool166.not = icmp eq i32 %82, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %dif.0)
  %cmp170.not = icmp eq i32 %82, %dif.0
  %or.cond = select i1 %tobool166.not, i1 true, i1 %cmp170.not
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %sdif.0)
  %cmp175.not = icmp eq i32 %82, %sdif.0
  %or.cond222 = select i1 %or.cond, i1 true, i1 %cmp175.not
  br i1 %or.cond222, label %if.end178, label %if.end163.for.inc_crit_edge

if.end163.for.inc_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end178:                                        ; preds = %if.end163
  %skc_refcnt.i = getelementptr i8, ptr %hnode.0275, i32 16
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %83 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !186
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end178.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !187

if.end178.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end178
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %84 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %.not.i.i.i.i = icmp sgt i32 %84, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !188

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.exit_crit_edge:                   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end178.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end178.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %exit

for.inc:                                          ; preds = %if.end163.for.inc_crit_edge, %land.lhs.true153.for.inc_crit_edge, %land.lhs.true120.for.inc_crit_edge, %land.lhs.true105.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end68.for.inc_crit_edge, %do.end61.for.inc_crit_edge
  %85 = ptrtoint ptr %hnode.0275 to i32
  call void @__asan_load4_noabort(i32 %85)
  %hnode.0 = load ptr, ptr %hnode.0275, align 4
  %86 = ptrtoint ptr %hnode.0 to i32
  %and.i = and i32 %86, 1
  %tobool41.not = icmp eq i32 %and.i, 0
  br i1 %tobool41.not, label %for.inc.land.rhs_crit_edge, label %for.inc.exit_crit_edge

for.inc.exit_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

exit:                                             ; preds = %for.inc.exit_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.exit_crit_edge, %if.end39.exit_crit_edge
  %sk.0 = phi ptr [ %add.ptr, %if.else.i.i.i.i.exit_crit_edge ], [ %add.ptr, %if.end15.sink.split.i.i.i.i ], [ null, %if.end39.exit_crit_edge ], [ null, %for.inc.exit_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #10
  br label %cleanup

cleanup:                                          ; preds = %exit, %ping_hashslot.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %sk.0, %exit ], [ null, %ping_hashslot.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_sk_update_pmtu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_sk_redirect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_icmp_error(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ping_getfrag(ptr noundef %from, ptr noundef %to, i32 noundef %offset, i32 noundef %fraglen, i32 %odd, ptr nocapture noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp = icmp eq i32 %offset, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = add i32 %fraglen, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1 = icmp slt i32 %sub, 0
  br i1 %cmp1, label %do.body, label %if.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 598, 0\0A.popsection", ""() #10, !srcloc !209
  unreachable

if.end:                                           ; preds = %if.then
  %add.ptr = getelementptr i8, ptr %to, i32 8
  %wcheck = getelementptr inbounds %struct.pingfakehdr, ptr %from, i32 0, i32 3
  %msg = getelementptr inbounds %struct.pingfakehdr, ptr %from, i32 0, i32 1
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @csum_and_copy_from_iter(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %wcheck, ptr noundef %msg_iter) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %sub)
  %cmp.i = icmp eq i32 %call.i, %sub
  br i1 %cmp.i, label %if.end.if.end24_crit_edge, label %csum_and_copy_from_iter_full.exit, !prof !188

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

csum_and_copy_from_iter_full.exit:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %call.i) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset)
  %cmp8 = icmp ult i32 %offset, 8
  br i1 %cmp8, label %do.body10, label %if.else16

do.body10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 604, 0\0A.popsection", ""() #10, !srcloc !210
  unreachable

if.else16:                                        ; preds = %if.else
  %wcheck17 = getelementptr inbounds %struct.pingfakehdr, ptr %from, i32 0, i32 3
  %msg18 = getelementptr inbounds %struct.pingfakehdr, ptr %from, i32 0, i32 1
  %2 = ptrtoint ptr %msg18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg18, align 4
  %msg_iter19 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 2
  %call.i43 = tail call i32 @csum_and_copy_from_iter(ptr noundef %to, i32 noundef %fraglen, ptr noundef %wcheck17, ptr noundef %msg_iter19) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i43, i32 %fraglen)
  %cmp.i44 = icmp eq i32 %call.i43, %fraglen
  br i1 %cmp.i44, label %if.else16.if.end24_crit_edge, label %csum_and_copy_from_iter_full.exit46, !prof !188

if.else16.if.end24_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

csum_and_copy_from_iter_full.exit46:              ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iov_iter_revert(ptr noundef %msg_iter19, i32 noundef %call.i43) #10
  br label %cleanup

if.end24:                                         ; preds = %if.else16.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %family = getelementptr inbounds %struct.pingfakehdr, ptr %from, i32 0, i32 2
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %5)
  %cmp25 = icmp eq i16 %5, 10
  br i1 %cmp25, label %if.then27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %wcheck28 = getelementptr inbounds %struct.pingfakehdr, ptr %from, i32 0, i32 3
  %6 = ptrtoint ptr %wcheck28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wcheck28, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %10 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  store i32 0, ptr %wcheck28, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end24.cleanup_crit_edge, %csum_and_copy_from_iter_full.exit46, %csum_and_copy_from_iter_full.exit
  %retval.0 = phi i32 [ -14, %csum_and_copy_from_iter_full.exit ], [ -14, %csum_and_copy_from_iter_full.exit46 ], [ 0, %if.then27 ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ping_common_sendmsg(i32 noundef %family, ptr noundef %msg, i32 noundef %len, ptr noundef %user_icmph, i32 noundef %icmph_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %len)
  %cmp = icmp ugt i32 %len, 65535
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %len, i32 %icmph_len)
  %cmp1 = icmp ult i32 %len, %icmph_len
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %0 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  tail call void @__check_object_size(ptr noundef %user_icmph, i32 noundef %icmph_len, i1 noundef zeroext false) #10
  %call3.i.i.i = tail call i32 @_copy_from_iter(ptr noundef %user_icmph, i32 noundef %icmph_len, ptr noundef %msg_iter.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i.i, i32 %icmph_len)
  %cmp.i.i = icmp eq i32 %call3.i.i.i, %icmph_len
  br i1 %cmp.i.i, label %if.end8, label %memcpy_from_msg.exit, !prof !188

memcpy_from_msg.exit:                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %call3.i.i.i) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %2 = zext i32 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %family, label %do.body [
    i32 2, label %if.then10
    i32 10, label %if.then14
  ]

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %code12 = getelementptr inbounds %struct.icmphdr, ptr %user_icmph, i32 0, i32 1
  br label %if.end20

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %icmp6_code = getelementptr inbounds %struct.icmp6hdr, ptr %user_icmph, i32 0, i32 1
  br label %if.end20

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !211
  unreachable

if.end20:                                         ; preds = %if.then14, %if.then10
  %code.0.in = phi ptr [ %code12, %if.then10 ], [ %icmp6_code, %if.then14 ]
  %3 = ptrtoint ptr %code.0.in to i32
  call void @__asan_load1_noabort(i32 %3)
  %code.0 = load i8, ptr %code.0.in, align 1
  %4 = ptrtoint ptr %user_icmph to i32
  call void @__asan_load1_noabort(i32 %4)
  %type.0 = load i8, ptr %user_icmph, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %family)
  %cmp.i = icmp eq i32 %family, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %type.0)
  %cmp1.i = icmp eq i8 %type.0, 8
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %code.0)
  %cmp3.i = icmp eq i8 %code.0, 0
  %or.cond28.i = and i1 %cmp3.i, %or.cond.i
  br i1 %or.cond28.i, label %if.end20.ping_supported.exit.thread_crit_edge, label %lor.lhs.false.i

if.end20.ping_supported.exit.thread_crit_edge:    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %ping_supported.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %type.0)
  %cmp6.i = icmp eq i8 %type.0, 42
  %or.cond29.i = and i1 %cmp.i, %cmp6.i
  %or.cond30.i = and i1 %cmp3.i, %or.cond29.i
  br i1 %or.cond30.i, label %lor.lhs.false.i.ping_supported.exit.thread_crit_edge, label %lor.lhs.false9.i

lor.lhs.false.i.ping_supported.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ping_supported.exit.thread

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %family)
  %cmp10.i = icmp eq i32 %family, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %type.0)
  %cmp12.i = icmp eq i8 %type.0, -128
  %or.cond31.i = and i1 %cmp10.i, %cmp12.i
  %or.cond32.i = and i1 %cmp3.i, %or.cond31.i
  %cmp10.not.i = xor i1 %cmp10.i, true
  %brmerge.i = or i1 %or.cond32.i, %cmp10.not.i
  br i1 %brmerge.i, label %ping_supported.exit, label %land.lhs.true16.i

land.lhs.true16.i:                                ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %type.0)
  %cmp17.i = icmp eq i8 %type.0, -96
  %narrow.i = and i1 %cmp3.i, %cmp17.i
  br i1 %narrow.i, label %land.lhs.true16.i.ping_supported.exit.thread_crit_edge, label %land.lhs.true16.i.cleanup_crit_edge

land.lhs.true16.i.cleanup_crit_edge:              ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true16.i.ping_supported.exit.thread_crit_edge: ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ping_supported.exit.thread

ping_supported.exit:                              ; preds = %lor.lhs.false9.i
  br i1 %or.cond32.i, label %ping_supported.exit.ping_supported.exit.thread_crit_edge, label %ping_supported.exit.cleanup_crit_edge

ping_supported.exit.cleanup_crit_edge:            ; preds = %ping_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ping_supported.exit.ping_supported.exit.thread_crit_edge: ; preds = %ping_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ping_supported.exit.thread

ping_supported.exit.thread:                       ; preds = %ping_supported.exit.ping_supported.exit.thread_crit_edge, %land.lhs.true16.i.ping_supported.exit.thread_crit_edge, %lor.lhs.false.i.ping_supported.exit.thread_crit_edge, %if.end20.ping_supported.exit.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %ping_supported.exit.thread, %ping_supported.exit.cleanup_crit_edge, %land.lhs.true16.i.cleanup_crit_edge, %memcpy_from_msg.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -95, %if.end3.cleanup_crit_edge ], [ -14, %memcpy_from_msg.exit ], [ 0, %ping_supported.exit.thread ], [ -22, %ping_supported.exit.cleanup_crit_edge ], [ -22, %land.lhs.true16.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ping_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %noblock, i32 noundef %flags, ptr noundef %addr_len) #1 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %skc_family, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_recvmsg.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_recvmsg, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %skc_num, align 2
  %conv6 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_recvmsg.__UNIQUE_ID_ddebug522, ptr noundef nonnull @.str.21, ptr noundef %sk, i32 noundef %conv6) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -95, ptr %err, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.do.body96_crit_edge

do.end.do.body96_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body96

if.end9:                                          ; preds = %do.end
  %and10 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 @inet_recv_error(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, ptr noundef %addr_len) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = call ptr @skb_recv_datagram(ptr noundef %sk, i32 noundef %flags, i32 noundef %noblock, ptr noundef nonnull %err) #10
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.do.body96_crit_edge, label %if.end18

if.end14.do.body96_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body96

if.end18:                                         ; preds = %if.end14
  %len19 = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 6
  %6 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %len)
  %cmp = icmp ugt i32 %7, %len
  br i1 %cmp, label %if.then21, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %8 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_flags, align 4
  %or = or i32 %9, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %copied.0 = phi i32 [ %len, %if.then21 ], [ %7, %if.end18.if.end22_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call15, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #10
  %10 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.done_crit_edge

if.end22.done_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end26:                                         ; preds = %if.end22
  %11 = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %11, align 8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 7
  %16 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %19 = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %if.end26.if.then.i_crit_edge

if.end26.if.then.i_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end26
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %20 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sk_tsflags.i, align 8
  %conv.i = zext i16 %21 to i32
  %and.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool3.not.i = icmp eq i64 %13, 0
  %and6.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %or.cond.i = select i1 %tobool3.not.i, i1 true, i1 %tobool7.not.i
  br i1 %or.cond.i, label %lor.lhs.false8.i, label %lor.lhs.false2.i.if.then.i_crit_edge

lor.lhs.false2.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false2.i
  %22 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %hwtstamps.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool9.not.i = icmp eq i64 %23, 0
  %24 = and i16 %21, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool14.not.i = icmp eq i16 %24, 0
  %or.cond36.i = select i1 %tobool9.not.i, i1 true, i1 %tobool14.not.i
  br i1 %or.cond36.i, label %if.else.i, label %lor.lhs.false8.i.if.then.i_crit_edge

lor.lhs.false8.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false8.i.if.then.i_crit_edge, %lor.lhs.false2.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end26.if.then.i_crit_edge
  call void @__sock_recv_timestamp(ptr noundef %msg, ptr noundef %sk, ptr noundef nonnull %call15) #10
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #12
  %sk_stamp_seq.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64
  %lock.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #10
  %25 = ptrtoint ptr %sk_stamp_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sk_stamp_seq.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %26, 1
  store i32 %inc.i.i.i.i.i.i, ptr %sk_stamp_seq.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 0, i32 0, i32 1
  %27 = call ptr @llvm.returnaddress(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %28) #10
  %sk_stamp.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 63
  %29 = ptrtoint ptr %sk_stamp.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %13, ptr %sk_stamp.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %28) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !213
  %30 = ptrtoint ptr %sk_stamp_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sk_stamp_seq.i.i, align 4
  %inc.i.i.i.i.i = add i32 %31, 1
  store i32 %inc.i.i.i.i.i, ptr %sk_stamp_seq.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %32 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %16, align 4
  %34 = and i32 %33, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i35.not.i = icmp eq i32 %34, 0
  br i1 %tobool.i35.not.i, label %if.end.i.sock_recv_timestamp.exit_crit_edge, label %land.lhs.true17.i

if.end.i.sock_recv_timestamp.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_recv_timestamp.exit

land.lhs.true17.i:                                ; preds = %if.end.i
  %wifi_acked_valid.i = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 15
  %35 = ptrtoint ptr %wifi_acked_valid.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i = load i16, ptr %wifi_acked_valid.i, align 8
  %36 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool19.not.i = icmp eq i16 %36, 0
  br i1 %tobool19.not.i, label %land.lhs.true17.i.sock_recv_timestamp.exit_crit_edge, label %if.then20.i

land.lhs.true17.i.sock_recv_timestamp.exit_crit_edge: ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_recv_timestamp.exit

if.then20.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sock_recv_wifi_status(ptr noundef %msg, ptr noundef %sk, ptr noundef nonnull %call15) #10
  br label %sock_recv_timestamp.exit

sock_recv_timestamp.exit:                         ; preds = %if.then20.i, %land.lhs.true17.i.sock_recv_timestamp.exit_crit_edge, %if.end.i.sock_recv_timestamp.exit_crit_edge
  %37 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %1, label %do.body88 [
    i16 2, label %if.then29
    i16 10, label %if.then43
  ]

if.then29:                                        ; preds = %sock_recv_timestamp.exit
  %38 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msg, align 8
  %tobool34.not = icmp eq ptr %39, null
  br i1 %tobool34.not, label %if.then29.if.end37_crit_edge, label %if.then35

if.then29.if.end37_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 2, ptr %39, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %39, i32 0, i32 1
  %41 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %sin_port, align 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 18
  %42 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 15, i32 0, i32 20
  %44 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %45 to i32
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %46 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %saddr, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %39, i32 0, i32 2
  %48 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %sin_addr, align 4
  %__pad = getelementptr inbounds %struct.sockaddr_in, ptr %39, i32 0, i32 3
  %49 = ptrtoint ptr %__pad to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 0, ptr %__pad, align 4
  %50 = ptrtoint ptr %addr_len to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 16, ptr %addr_len, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then29.if.end37_crit_edge
  %cmsg_flags = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 4
  %51 = ptrtoint ptr %cmsg_flags to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %cmsg_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool38.not = icmp eq i16 %52, 0
  br i1 %tobool38.not, label %if.end37.if.end95_crit_edge, label %if.then39

if.end37.if.end95_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %53 = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  call void @ip_cmsg_recv_offset(ptr noundef %msg, ptr noundef %55, ptr noundef nonnull %call15, i32 noundef 0, i32 noundef 0) #10
  br label %if.end95

if.then43:                                        ; preds = %sock_recv_timestamp.exit
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %56 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i177 = zext i8 %57 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i177
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i178 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i178, label %if.then43.inet6_sk.exit_crit_edge, label %cond.true.i

if.then43.inet6_sk.exit_crit_edge:                ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %58 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %if.then43.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %59, %cond.true.i ], [ null, %if.then43.inet6_sk.exit_crit_edge ]
  %head.i.i179 = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 18
  %60 = ptrtoint ptr %head.i.i179 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i.i179, align 8
  %network_header.i.i180 = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 15, i32 0, i32 20
  %62 = ptrtoint ptr %network_header.i.i180 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %network_header.i.i180, align 4
  %conv.i.i181 = zext i16 %63 to i32
  %add.ptr.i.i182 = getelementptr i8, ptr %61, i32 %conv.i.i181
  %64 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %msg, align 8
  %tobool51.not = icmp eq ptr %65, null
  br i1 %tobool51.not, label %inet6_sk.exit.if.end62_crit_edge, label %if.then52

inet6_sk.exit.if.end62_crit_edge:                 ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then52:                                        ; preds = %inet6_sk.exit
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 10, ptr %65, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %sin6_port, align 2
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %65, i32 0, i32 3
  %saddr53 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i182, i32 0, i32 5
  %68 = call ptr @memcpy(ptr %sin6_addr, ptr %saddr53, i32 16)
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %65, i32 0, i32 2
  %69 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %sin6_flowinfo, align 4
  %sndflow = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %70 = ptrtoint ptr %sndflow to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load = load i16, ptr %sndflow, align 2
  %71 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool54.not = icmp eq i16 %71, 0
  br i1 %tobool54.not, label %if.then52.if.end58_crit_edge, label %if.then55

if.then52.if.end58_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then55:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %add.ptr.i.i182 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.i182, align 4
  %and.i183 = and i32 %73, 268435455
  %74 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and.i183, ptr %sin6_flowinfo, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.then52.if.end58_crit_edge
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 3, i32 16
  %75 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %flags.i, align 8
  %77 = and i16 %76, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool.i.not.i184 = icmp eq i16 %77, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 3
  %cond.in.i = select i1 %tobool.i.not.i184, ptr %cb.i, ptr %skb_iif.i
  %78 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %cond.i185 = load i32, ptr %cond.in.i, align 8
  %call.i186 = call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #10
  %and.i.i187 = and i32 %call.i186, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i187)
  %tobool.not.i.i = icmp eq i32 %and.i.i187, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %if.end58.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge

if.end58.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ipv6_addr_needs_scope_id.exit.thread.i

lor.rhs.i.i:                                      ; preds = %if.end58
  %and1.i.i = and i32 %call.i186, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp ne i32 %and1.i.i, 0
  %and3.i.i = and i32 %call.i186, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.i.i = icmp ne i32 %and3.i.i, 0
  %or.cond.i188 = and i1 %tobool2.not.i.i, %tobool4.i.i
  br i1 %or.cond.i188, label %lor.rhs.i.i.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge, label %lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge

lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge:   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_iface_scope_id.exit

lor.rhs.i.i.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ipv6_addr_needs_scope_id.exit.thread.i

__ipv6_addr_needs_scope_id.exit.thread.i:         ; preds = %lor.rhs.i.i.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge, %if.end58.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge
  br label %ipv6_iface_scope_id.exit

ipv6_iface_scope_id.exit:                         ; preds = %__ipv6_addr_needs_scope_id.exit.thread.i, %lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge
  %79 = phi i32 [ %cond.i185, %__ipv6_addr_needs_scope_id.exit.thread.i ], [ 0, %lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge ]
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %65, i32 0, i32 4
  %80 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %sin6_scope_id, align 4
  %81 = ptrtoint ptr %addr_len to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 28, ptr %addr_len, align 4
  br label %if.end62

if.end62:                                         ; preds = %ipv6_iface_scope_id.exit, %inet6_sk.exit.if.end62_crit_edge
  %82 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i190 = zext i8 %83 to i32
  %shl.i.i191 = shl nuw i32 1, %conv.i.i190
  %and.i.i192 = and i32 %shl.i.i191, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i192)
  %tobool.i.not.i193 = icmp eq i32 %and.i.i192, 0
  br i1 %tobool.i.not.i193, label %if.end62.inet6_sk.exit197_crit_edge, label %cond.true.i195

if.end62.inet6_sk.exit197_crit_edge:              ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit197

cond.true.i195:                                   ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i194 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %84 = ptrtoint ptr %pinet6.i194 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pinet6.i194, align 8
  br label %inet6_sk.exit197

inet6_sk.exit197:                                 ; preds = %cond.true.i195, %if.end62.inet6_sk.exit197_crit_edge
  %cond.i196 = phi ptr [ %85, %cond.true.i195 ], [ null, %if.end62.inet6_sk.exit197_crit_edge ]
  %rxopt = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i196, i32 0, i32 9
  %86 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %rxopt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool64.not = icmp eq i16 %87, 0
  br i1 %tobool64.not, label %inet6_sk.exit197.if.end66_crit_edge, label %if.then65

inet6_sk.exit197.if.end66_crit_edge:              ; preds = %inet6_sk.exit197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then65:                                        ; preds = %inet6_sk.exit197
  call void @__sanitizer_cov_trace_pc() #12
  %88 = load ptr, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 1), align 4
  call void %88(ptr noundef %sk, ptr noundef %msg, ptr noundef nonnull %call15) #10
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %inet6_sk.exit197.if.end66_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 15, i32 0, i32 18
  %89 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %protocol, align 8
  %91 = zext i16 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %90, label %if.end66.if.end95_crit_edge [
    i16 -31011, label %land.lhs.true
    i16 2048, label %land.lhs.true80
  ]

if.end66.if.end95_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

land.lhs.true:                                    ; preds = %if.end66
  %92 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i199 = zext i8 %93 to i32
  %shl.i.i200 = shl nuw i32 1, %conv.i.i199
  %and.i.i201 = and i32 %shl.i.i200, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i201)
  %tobool.i.not.i202 = icmp eq i32 %and.i.i201, 0
  br i1 %tobool.i.not.i202, label %land.lhs.true.inet6_sk.exit206_crit_edge, label %cond.true.i204

land.lhs.true.inet6_sk.exit206_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit206

cond.true.i204:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i203 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %94 = ptrtoint ptr %pinet6.i203 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pinet6.i203, align 8
  br label %inet6_sk.exit206

inet6_sk.exit206:                                 ; preds = %cond.true.i204, %land.lhs.true.inet6_sk.exit206_crit_edge
  %cond.i205 = phi ptr [ %95, %cond.true.i204 ], [ null, %land.lhs.true.inet6_sk.exit206_crit_edge ]
  %rxopt71 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i205, i32 0, i32 9
  %96 = ptrtoint ptr %rxopt71 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %rxopt71, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool73.not = icmp eq i16 %97, 0
  br i1 %tobool73.not, label %inet6_sk.exit206.if.end95_crit_edge, label %if.then74

inet6_sk.exit206.if.end95_crit_edge:              ; preds = %inet6_sk.exit206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then74:                                        ; preds = %inet6_sk.exit206
  call void @__sanitizer_cov_trace_pc() #12
  %98 = load ptr, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 2), align 4
  call void %98(ptr noundef %sk, ptr noundef %msg, ptr noundef nonnull %call15) #10
  br label %if.end95

land.lhs.true80:                                  ; preds = %if.end66
  %cmsg_flags81 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 4
  %99 = ptrtoint ptr %cmsg_flags81 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %cmsg_flags81, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool83.not = icmp eq i16 %100, 0
  br i1 %tobool83.not, label %land.lhs.true80.if.end95_crit_edge, label %if.then84

land.lhs.true80.if.end95_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then84:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #12
  %101 = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 1
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  call void @ip_cmsg_recv_offset(ptr noundef %msg, ptr noundef %103, ptr noundef nonnull %call15, i32 noundef 0, i32 noundef 0) #10
  br label %if.end95

do.body88:                                        ; preds = %sock_recv_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 924, 0\0A.popsection", ""() #10, !srcloc !214
  unreachable

if.end95:                                         ; preds = %if.then84, %land.lhs.true80.if.end95_crit_edge, %if.then74, %inet6_sk.exit206.if.end95_crit_edge, %if.end66.if.end95_crit_edge, %if.then39, %if.end37.if.end95_crit_edge
  %104 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %copied.0, ptr %err, align 4
  br label %done

done:                                             ; preds = %if.end95, %if.end22.done_crit_edge
  call void @skb_free_datagram(ptr noundef %sk, ptr noundef nonnull %call15) #10
  br label %do.body96

do.body96:                                        ; preds = %done, %if.end14.do.body96_crit_edge, %do.end.do.body96_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_recvmsg.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_recvmsg, %if.then108)) #10
          to label %do.end111 [label %if.then108], !srcloc !184

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %err, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_recvmsg.__UNIQUE_ID_ddebug525, ptr noundef nonnull @.str.22, i32 noundef %106) #10
  br label %do.end111

do.end111:                                        ; preds = %if.then108, %do.body96
  %107 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end111, %if.then12
  %retval.0 = phi i32 [ %108, %do.end111 ], [ %call13, %if.then12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_recv_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ping_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_queue_rcv_skb.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_queue_rcv_skb, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %skc_num, align 2
  %conv = zext i16 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_queue_rcv_skb.__UNIQUE_ID_ddebug526, ptr noundef nonnull @.str.24, ptr noundef %sk, i32 noundef %conv, ptr noundef %skb) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then8, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_queue_rcv_skb.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_queue_rcv_skb, %if.then21)) #10
          to label %return [label %if.then21], !srcloc !184

if.then21:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_queue_rcv_skb.__UNIQUE_ID_ddebug527, ptr noundef nonnull @.str.25) #10
  br label %return

return:                                           ; preds = %if.then21, %if.then8, %do.end.return_crit_edge
  %retval.0 = phi i32 [ -1, %if.then21 ], [ 0, %do.end.return_crit_edge ], [ -1, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ping_rcv(ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %7 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_rcv.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_rcv, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %un = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %un to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %un, align 4
  %conv = zext i16 %10 to i32
  %sequence = getelementptr inbounds %struct.anon.151, ptr %un, i32 0, i32 1
  %11 = ptrtoint ptr %sequence to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sequence, align 2
  %conv6 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_rcv.__UNIQUE_ID_ddebug528, ptr noundef nonnull @.str.27, ptr noundef %skb, i32 noundef %conv, i32 noundef %conv6) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call7 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub) #10
  %un8 = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %un8 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %un8, align 4
  %call10 = tail call fastcc ptr @ping_lookup(ptr noundef %4, ptr noundef %skb, i16 noundef zeroext %16)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end.do.body38_crit_edge, label %if.then12

do.end.do.body38_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38

if.then12:                                        ; preds = %do.end
  %call13 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_rcv.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_rcv, %if.then26)) #10
          to label %do.end29 [label %if.then26], !srcloc !184

if.then26:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_rcv.__UNIQUE_ID_ddebug529, ptr noundef nonnull @.str.28, ptr noundef nonnull %call10) #10
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %if.then12
  %tobool30.not = icmp eq ptr %call13, null
  br i1 %tobool30.not, label %do.end29.if.end34_crit_edge, label %land.lhs.true

do.end29.if.end34_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true:                                    ; preds = %do.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_queue_rcv_skb.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_rcv, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !184

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %17 = getelementptr inbounds %struct.sock_common, ptr %call10, i32 0, i32 2
  %skc_num.i = getelementptr inbounds %struct.anon.2, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %skc_num.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %skc_num.i, align 2
  %conv.i = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_queue_rcv_skb.__UNIQUE_ID_ddebug526, ptr noundef nonnull @.str.24, ptr noundef nonnull %call10, i32 noundef %conv.i, ptr noundef nonnull %call13) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true
  %call6.i = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %call10, ptr noundef nonnull %call13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.then8.i, label %do.end.i.ping_queue_rcv_skb.exit_crit_edge

do.end.i.ping_queue_rcv_skb.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ping_queue_rcv_skb.exit

if.then8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call13, i32 noundef 0) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_queue_rcv_skb.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_rcv, %if.then21.i)) #10
          to label %ping_queue_rcv_skb.exit [label %if.then21.i], !srcloc !184

if.then21.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_queue_rcv_skb.__UNIQUE_ID_ddebug527, ptr noundef nonnull @.str.25) #10
  br label %ping_queue_rcv_skb.exit

ping_queue_rcv_skb.exit:                          ; preds = %if.then21.i, %if.then8.i, %do.end.i.ping_queue_rcv_skb.exit_crit_edge
  %20 = xor i1 %cmp.i, true
  br label %if.end34

if.end34:                                         ; preds = %ping_queue_rcv_skb.exit, %do.end29.if.end34_crit_edge
  %rc.0 = phi i1 [ false, %do.end29.if.end34_crit_edge ], [ %20, %ping_queue_rcv_skb.exit ]
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call10, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !193
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i77, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end35, label %if.then10.i.i.i.i, !prof !188

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br i1 %rc.0, label %if.then10.i.i.i.i.if.end54_crit_edge, label %if.then10.i.i.i.i.do.body38_crit_edge

if.then10.i.i.i.i.do.body38_crit_edge:            ; preds = %if.then10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38

if.then10.i.i.i.i.if.end54_crit_edge:             ; preds = %if.then10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then.i77:                                      ; preds = %if.end34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @sk_free(ptr noundef nonnull %call10) #10
  br i1 %rc.0, label %if.then.i77.if.end54_crit_edge, label %if.then.i77.do.body38_crit_edge

if.then.i77.do.body38_crit_edge:                  ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38

if.then.i77.if.end54_crit_edge:                   ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end35:                                         ; preds = %if.end5.i.i.i.i
  br i1 %rc.0, label %if.end35.if.end54_crit_edge, label %if.end35.do.body38_crit_edge

if.end35.do.body38_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38

if.end35.if.end54_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.body38:                                        ; preds = %if.end35.do.body38_crit_edge, %if.then.i77.do.body38_crit_edge, %if.then10.i.i.i.i.do.body38_crit_edge, %do.end.do.body38_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_rcv.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_rcv, %if.then50)) #10
          to label %if.end54 [label %if.then50], !srcloc !184

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_rcv.__UNIQUE_ID_ddebug530, ptr noundef nonnull @.str.18) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %do.body38, %if.end35.if.end54_crit_edge, %if.then.i77.if.end54_crit_edge, %if.then10.i.i.i.i.if.end54_crit_edge
  %rc.1.off082 = phi i1 [ false, %if.then50 ], [ true, %if.end35.if.end54_crit_edge ], [ true, %if.then10.i.i.i.i.if.end54_crit_edge ], [ true, %if.then.i77.if.end54_crit_edge ], [ false, %do.body38 ]
  ret i1 %rc.1.off082
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip4_datagram_connect(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__udp_disconnect(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ping_v4_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len) #1 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  %ipc = alloca %struct.ipcm_cookie, align 8
  %user_icmph = alloca %struct.icmphdr, align 8
  %pfh = alloca %struct.pingfakehdr, align 4
  %rt = alloca ptr, align 4
  %opt_copy = alloca %struct.ip_options_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #10
  %2 = call ptr @memset(ptr %fl4, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ipc) #10
  %3 = call ptr @memset(ptr %ipc, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %user_icmph) #10
  %4 = getelementptr inbounds %struct.icmphdr, ptr %user_icmph, i32 0, i32 1
  %5 = getelementptr inbounds %struct.icmphdr, ptr %user_icmph, i32 0, i32 3
  %6 = ptrtoint ptr %user_icmph to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %user_icmph, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pfh) #10
  %7 = call ptr @memset(ptr %pfh, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rt) #10
  %8 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rt, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %opt_copy) #10
  %9 = call ptr @memset(ptr %opt_copy, i32 255, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_v4_sendmsg.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_v4_sendmsg, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %skc_num, align 2
  %conv = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ping_v4_sendmsg.__UNIQUE_ID_ddebug518, ptr noundef nonnull @.str.48, ptr noundef %sk, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %len)
  %cmp.i = icmp ugt i32 %len, 65535
  br i1 %cmp.i, label %do.end.cleanup222_crit_edge, label %if.end.i

do.end.cleanup222_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup222

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp1.i = icmp ult i32 %len, 8
  br i1 %cmp1.i, label %if.end.i.cleanup222_crit_edge, label %if.end3.i

if.end.i.cleanup222_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup222

if.end3.i:                                        ; preds = %if.end.i
  %msg_flags.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %13 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_flags.i, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i298 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i298, label %if.end5.i, label %if.end3.i.cleanup222_crit_edge

if.end3.i.cleanup222_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup222

if.end5.i:                                        ; preds = %if.end3.i
  %msg_iter.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call3.i.i.i.i = call i32 @_copy_from_iter(ptr noundef nonnull %user_icmph, i32 noundef 8, ptr noundef %msg_iter.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call3.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call3.i.i.i.i, 8
  br i1 %cmp.i.i.i, label %if.end8.i, label %memcpy_from_msg.exit.i, !prof !188

memcpy_from_msg.exit.i:                           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @iov_iter_revert(ptr noundef %msg_iter.i.i, i32 noundef %call3.i.i.i.i) #10
  br label %cleanup222

if.end8.i:                                        ; preds = %if.end5.i
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %code.0.i = load i8, ptr %4, align 1
  %16 = ptrtoint ptr %user_icmph to i32
  call void @__asan_load1_noabort(i32 %16)
  %type.0.i = load i8, ptr %user_icmph, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %type.0.i)
  %cmp1.i.i = icmp eq i8 %type.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %code.0.i)
  %cmp3.i.i = icmp eq i8 %code.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %type.0.i)
  %cmp6.i.i = icmp eq i8 %type.0.i, 42
  %or.cond30.i.i344 = or i1 %cmp1.i.i, %cmp6.i.i
  %or.cond = and i1 %cmp3.i.i, %or.cond30.i.i344
  br i1 %or.cond, label %if.end9, label %if.end8.i.cleanup222_crit_edge

if.end8.i.cleanup222_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup222

if.end9:                                          ; preds = %if.end8.i
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msg, align 8
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %19 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %20)
  %cmp = icmp ult i32 %20, 16
  br i1 %cmp, label %if.then11.cleanup222_crit_edge, label %if.end19

if.then11.cleanup222_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup222

if.end19:                                         ; preds = %if.then11
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %22)
  %cmp21.not = icmp eq i16 %22, 2
  br i1 %cmp21.not, label %cleanup, label %if.end19.cleanup222_crit_edge

if.end19.cleanup222_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup222

cleanup:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %18, i32 0, i32 2
  br label %if.end33

if.else:                                          ; preds = %if.end9
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %23 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp27.not = icmp eq i8 %24, 1
  br i1 %cmp27.not, label %if.else.if.end33_crit_edge, label %if.else.cleanup222_crit_edge

if.else.cleanup222_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup222

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end33:                                         ; preds = %if.else.if.end33_crit_edge, %cleanup
  %daddr.1.in = phi ptr [ %sin_addr, %cleanup ], [ %sk, %if.else.if.end33_crit_edge ]
  %25 = ptrtoint ptr %daddr.1.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %daddr.1 = load i32, ptr %daddr.1.in, align 4
  %26 = call ptr @memset(ptr %ipc, i32 0, i32 30)
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %ipc, i32 30
  %27 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 2
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %ipc, i32 32
  %28 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 8
  %sk_mark.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %29 = ptrtoint ptr %sk_mark.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sk_mark.i, align 8
  %mark.i = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc, i32 0, i32 1
  %31 = ptrtoint ptr %mark.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %mark.i, align 8
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %32 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %sk_tsflags.i, align 8
  %tsflags.i = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc, i32 0, i32 2
  %34 = ptrtoint ptr %tsflags.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %tsflags.i, align 4
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %35 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %skc_bound_dev_if.i, align 4
  %oif.i = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 2
  %37 = ptrtoint ptr %oif.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %oif.i, align 4
  %inet_saddr.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 2
  %38 = ptrtoint ptr %inet_saddr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %inet_saddr.i, align 4
  %addr.i = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 1
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %addr.i, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %41 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_controllen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool34.not = icmp eq i32 %42, 0
  br i1 %tobool34.not, label %if.end33.if.end50_crit_edge, label %if.then35

if.end33.if.end50_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then35:                                        ; preds = %if.end33
  %call36 = call i32 @ip_cmsg_send(ptr noundef %sk, ptr noundef %msg, ptr noundef nonnull %ipc, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  %opt46 = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 3
  %43 = ptrtoint ptr %opt46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %opt46, align 8
  br i1 %tobool37.not, label %if.end45, label %if.then44, !prof !188

if.then44:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef %44) #10
  br label %cleanup222

if.end45:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %tobool47.not = icmp eq ptr %44, null
  br label %if.end50

if.end50:                                         ; preds = %if.end45, %if.end33.if.end50_crit_edge
  %tobool200.not = phi i1 [ true, %if.end33.if.end50_crit_edge ], [ %tobool47.not, %if.end45 ]
  %opt51 = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 3
  %45 = ptrtoint ptr %opt51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %opt51, align 8
  %tobool52.not = icmp eq ptr %46, null
  br i1 %tobool52.not, label %if.then53, label %if.end78.thread

if.end78.thread:                                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr.i, align 8
  store i32 %daddr.1, ptr %addr.i, align 8
  br label %land.lhs.true82

if.then53:                                        ; preds = %if.end50
  %49 = call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %52, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !206
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.then53.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then53.rcu_read_lock.exit_crit_edge:           ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then53
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 696, ptr noundef nonnull @.str.36) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then53.rcu_read_lock.exit_crit_edge
  %inet_opt58 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 5
  %53 = ptrtoint ptr %inet_opt58 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %inet_opt58, align 4
  %call60 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end69_crit_edge

rcu_read_lock.exit.do.end69_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call62 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true.do.end69_crit_edge, label %land.lhs.true64

land.lhs.true.do.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69

land.lhs.true64:                                  ; preds = %land.lhs.true
  %.b297 = load i1, ptr @ping_v4_sendmsg.__warned, align 1
  br i1 %.b297, label %land.lhs.true64.do.end69_crit_edge, label %if.then66

land.lhs.true64.do.end69_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69

if.then66:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ping_v4_sendmsg.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 744, ptr noundef nonnull @.str.49) #10
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %land.lhs.true64.do.end69_crit_edge, %land.lhs.true.do.end69_crit_edge, %rcu_read_lock.exit.do.end69_crit_edge
  %tobool71.not = icmp eq ptr %54, null
  br i1 %tobool71.not, label %do.end69.if.end77_crit_edge, label %if.then72

do.end69.if.end77_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then72:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  %optlen = getelementptr inbounds %struct.ip_options_rcu, ptr %54, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %optlen, align 4
  %conv74 = zext i8 %56 to i32
  %add = add nuw nsw i32 %conv74, 24
  %57 = call ptr @memcpy(ptr %opt_copy, ptr %54, i32 %add)
  %58 = ptrtoint ptr %opt51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %opt_copy, ptr %opt51, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %do.end69.if.end77_crit_edge
  %call.i300 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i300, label %if.end77.if.end78_crit_edge, label %land.lhs.true.i303

if.end77.if.end78_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true.i303:                               ; preds = %if.end77
  %call1.i301 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i301)
  %tobool.not.i302 = icmp eq i32 %call1.i301, 0
  br i1 %tobool.not.i302, label %land.lhs.true.i303.if.end78_crit_edge, label %land.lhs.true2.i305

land.lhs.true.i303.if.end78_crit_edge:            ; preds = %land.lhs.true.i303
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true2.i305:                              ; preds = %land.lhs.true.i303
  %.b4.i304 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i304, label %land.lhs.true2.i305.if.end78_crit_edge, label %if.then.i306

land.lhs.true2.i305.if.end78_crit_edge:           ; preds = %land.lhs.true2.i305
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then.i306:                                     ; preds = %land.lhs.true2.i305
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.37) #10
  br label %if.end78

if.end78:                                         ; preds = %if.then.i306, %land.lhs.true2.i305.if.end78_crit_edge, %land.lhs.true.i303.if.end78_crit_edge, %if.end77.if.end78_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !207
  %59 = call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i.i.i.i.i307 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i307 to ptr
  %preempt_count.i.i.i.i308 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i308, align 4
  %sub.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i308, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %63 = ptrtoint ptr %opt51 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr = load ptr, ptr %opt51, align 8
  %64 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %addr.i, align 8
  store i32 %daddr.1, ptr %addr.i, align 8
  %tobool81.not = icmp eq ptr %.pr, null
  br i1 %tobool81.not, label %if.end78.if.end94_crit_edge, label %if.end78.land.lhs.true82_crit_edge

if.end78.land.lhs.true82_crit_edge:               ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true82

if.end78.if.end94_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

land.lhs.true82:                                  ; preds = %if.end78.land.lhs.true82_crit_edge, %if.end78.thread
  %66 = phi i32 [ %48, %if.end78.thread ], [ %65, %if.end78.land.lhs.true82_crit_edge ]
  %67 = phi ptr [ %46, %if.end78.thread ], [ %.pr, %if.end78.land.lhs.true82_crit_edge ]
  %opt84 = getelementptr inbounds %struct.ip_options_rcu, ptr %67, i32 0, i32 1
  %srr = getelementptr inbounds %struct.ip_options_rcu, ptr %67, i32 0, i32 1, i32 3
  %68 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %srr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool86.not = icmp eq i8 %69, 0
  br i1 %tobool86.not, label %land.lhs.true82.if.end94_crit_edge, label %if.then87

land.lhs.true82.if.end94_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then87:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %daddr.1)
  %tobool88.not = icmp eq i32 %daddr.1, 0
  br i1 %tobool88.not, label %if.then87.out_free_crit_edge, label %if.end90

if.then87.out_free_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end90:                                         ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %opt84 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %opt84, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.end90, %land.lhs.true82.if.end94_crit_edge, %if.end78.if.end94_crit_edge
  %tobool81.not343 = phi i1 [ false, %if.end90 ], [ false, %land.lhs.true82.if.end94_crit_edge ], [ true, %if.end78.if.end94_crit_edge ]
  %72 = phi i32 [ %66, %if.end90 ], [ %66, %land.lhs.true82.if.end94_crit_edge ], [ %65, %if.end78.if.end94_crit_edge ]
  %73 = phi ptr [ %67, %if.end90 ], [ %67, %land.lhs.true82.if.end94_crit_edge ], [ null, %if.end78.if.end94_crit_edge ]
  %faddr.0 = phi i32 [ %71, %if.end90 ], [ %daddr.1, %land.lhs.true82.if.end94_crit_edge ], [ %daddr.1, %if.end78.if.end94_crit_edge ]
  %74 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %75)
  %cmp.not.i = icmp eq i16 %75, -1
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i16 %75 to i8
  br label %get_rttos.exit

cond.false.i:                                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %tos4.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 8
  %76 = ptrtoint ptr %tos4.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tos4.i, align 4
  br label %get_rttos.exit

get_rttos.exit:                                   ; preds = %cond.false.i, %cond.true.i
  %cond.in.i = phi i8 [ %conv.i, %cond.true.i ], [ %77, %cond.false.i ]
  %cond.i = and i8 %cond.in.i, 30
  %78 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %81 = and i32 %80, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.i.not = icmp eq i32 %81, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %get_rttos.exit.if.then107_crit_edge

get_rttos.exit.if.then107_crit_edge:              ; preds = %get_rttos.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then107

lor.lhs.false:                                    ; preds = %get_rttos.exit
  %82 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %msg_flags.i, align 4
  %and = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool98.not = icmp eq i32 %and, 0
  br i1 %tobool98.not, label %lor.lhs.false99, label %lor.lhs.false.if.then107_crit_edge

lor.lhs.false.if.then107_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then107

lor.lhs.false99:                                  ; preds = %lor.lhs.false
  br i1 %tobool81.not343, label %lor.lhs.false99.if.end110_crit_edge, label %land.lhs.true102

lor.lhs.false99.if.end110_crit_edge:              ; preds = %lor.lhs.false99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

land.lhs.true102:                                 ; preds = %lor.lhs.false99
  %is_strictroute = getelementptr inbounds %struct.ip_options_rcu, ptr %73, i32 0, i32 1, i32 6
  %84 = ptrtoint ptr %is_strictroute to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load = load i8, ptr %is_strictroute, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool106.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool106.not, label %land.lhs.true102.if.end110_crit_edge, label %land.lhs.true102.if.then107_crit_edge

land.lhs.true102.if.then107_crit_edge:            ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then107

land.lhs.true102.if.end110_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then107:                                       ; preds = %land.lhs.true102.if.then107_crit_edge, %lor.lhs.false.if.then107_crit_edge, %get_rttos.exit.if.then107_crit_edge
  %85 = or i8 %cond.i, 1
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %land.lhs.true102.if.end110_crit_edge, %lor.lhs.false99.if.end110_crit_edge
  %tos.0 = phi i8 [ %85, %if.then107 ], [ %cond.i, %land.lhs.true102.if.end110_crit_edge ], [ %cond.i, %lor.lhs.false99.if.end110_crit_edge ]
  %and.i309 = and i32 %daddr.1, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i309)
  %cmp.i310 = icmp eq i32 %and.i309, -536870912
  %86 = ptrtoint ptr %oif.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %oif.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool113.not = icmp eq i32 %87, 0
  br i1 %cmp.i310, label %if.then112, label %if.else125

if.then112:                                       ; preds = %if.end110
  br i1 %tobool113.not, label %if.then112.if.then119_crit_edge, label %if.end.i313

if.then112.if.then119_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then119

if.end.i313:                                      ; preds = %if.then112
  %88 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %skc_net.i, align 4
  %90 = call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i.i.i.i.i.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %93, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !206
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end.i313.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i313.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i313
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 696, ptr noundef nonnull @.str.36) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i313.rcu_read_lock.exit.i_crit_edge
  %call.i314 = call ptr @dev_get_by_index_rcu(ptr noundef %89, i32 noundef %87) #10
  %tobool.not.i315 = icmp eq ptr %call.i314, null
  br i1 %tobool.not.i315, label %rcu_read_lock.exit.i.if.end3.i316_crit_edge, label %if.then1.i

rcu_read_lock.exit.i.if.end3.i316_crit_edge:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i316

if.then1.i:                                       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %call.i314, i32 0, i32 15
  %94 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %95, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i = icmp ne i64 %and.i.i, 0
  br label %if.end3.i316

if.end3.i316:                                     ; preds = %if.then1.i, %rcu_read_lock.exit.i.if.end3.i316_crit_edge
  %rc.0.off0.i = phi i1 [ %tobool.i.i, %if.then1.i ], [ false, %rcu_read_lock.exit.i.if.end3.i316_crit_edge ]
  %call.i8.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i8.i, label %if.end3.i316.netif_index_is_l3_master.exit_crit_edge, label %land.lhs.true.i11.i

if.end3.i316.netif_index_is_l3_master.exit_crit_edge: ; preds = %if.end3.i316
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_index_is_l3_master.exit

land.lhs.true.i11.i:                              ; preds = %if.end3.i316
  %call1.i9.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call1.i9.i, 0
  br i1 %tobool.not.i10.i, label %land.lhs.true.i11.i.netif_index_is_l3_master.exit_crit_edge, label %land.lhs.true2.i13.i

land.lhs.true.i11.i.netif_index_is_l3_master.exit_crit_edge: ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_index_is_l3_master.exit

land.lhs.true2.i13.i:                             ; preds = %land.lhs.true.i11.i
  %.b4.i12.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12.i, label %land.lhs.true2.i13.i.netif_index_is_l3_master.exit_crit_edge, label %if.then.i14.i

land.lhs.true2.i13.i.netif_index_is_l3_master.exit_crit_edge: ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_index_is_l3_master.exit

if.then.i14.i:                                    ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.37) #10
  br label %netif_index_is_l3_master.exit

netif_index_is_l3_master.exit:                    ; preds = %if.then.i14.i, %land.lhs.true2.i13.i.netif_index_is_l3_master.exit_crit_edge, %land.lhs.true.i11.i.netif_index_is_l3_master.exit_crit_edge, %if.end3.i316.netif_index_is_l3_master.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !207
  %96 = call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i.i.i.i.i15.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i.i.i15.i to ptr
  %preempt_count.i.i.i.i16.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i.i.i16.i, align 4
  %sub.i.i.i.i = add i32 %99, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i16.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %rc.0.off0.i, label %netif_index_is_l3_master.exit.if.then119_crit_edge, label %netif_index_is_l3_master.exit.if.end121_crit_edge

netif_index_is_l3_master.exit.if.end121_crit_edge: ; preds = %netif_index_is_l3_master.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

netif_index_is_l3_master.exit.if.then119_crit_edge: ; preds = %netif_index_is_l3_master.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then119

if.then119:                                       ; preds = %netif_index_is_l3_master.exit.if.then119_crit_edge, %if.then112.if.then119_crit_edge
  %mc_index = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 16
  %100 = ptrtoint ptr %mc_index to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mc_index, align 8
  %102 = ptrtoint ptr %oif.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %oif.i, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %netif_index_is_l3_master.exit.if.end121_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool122.not = icmp eq i32 %72, 0
  br i1 %tobool122.not, label %if.then123, label %if.end121.if.end131_crit_edge

if.end121.if.end131_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then123:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %mc_addr = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 17
  %103 = ptrtoint ptr %mc_addr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mc_addr, align 4
  br label %if.end131

if.else125:                                       ; preds = %if.end110
  br i1 %tobool113.not, label %if.then128, label %if.else125.if.end131_crit_edge

if.else125.if.end131_crit_edge:                   ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then128:                                       ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #12
  %uc_index = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 15
  %105 = ptrtoint ptr %uc_index to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %uc_index, align 4
  %107 = ptrtoint ptr %oif.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %oif.i, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %if.else125.if.end131_crit_edge, %if.then123, %if.end121.if.end131_crit_edge
  %saddr.0 = phi i32 [ %72, %if.end121.if.end131_crit_edge ], [ %104, %if.then123 ], [ %72, %if.else125.if.end131_crit_edge ], [ %72, %if.then128 ]
  %108 = ptrtoint ptr %oif.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %oif.i, align 4
  %110 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mark.i, align 8
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %112 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %sk_protocol, align 4
  %conv133 = trunc i16 %113 to i8
  %transparent.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %114 = ptrtoint ptr %transparent.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %bf.load.i = load i16, ptr %transparent.i, align 8
  %115 = and i16 %bf.load.i, 5120
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %116 = icmp ne i16 %115, 0
  %flags.0.i = zext i1 %116 to i8
  %sk_uid = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %117 = ptrtoint ptr %sk_uid to i32
  call void @__asan_load4_noabort(i32 %117)
  %.unpack = load i32, ptr %sk_uid, align 4
  %118 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %109, ptr %fl4, align 8
  %flowic_iif.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %119 = ptrtoint ptr %flowic_iif.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %flowic_iif.i, align 4
  %flowic_mark.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %120 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %111, ptr %flowic_mark.i, align 8
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %121 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %tos.0, ptr %flowic_tos.i, align 4
  %flowic_scope.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %122 = ptrtoint ptr %flowic_scope.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %flowic_scope.i, align 1
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %123 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv133, ptr %flowic_proto.i, align 2
  %flowic_flags.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %124 = ptrtoint ptr %flowic_flags.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %flags.0.i, ptr %flowic_flags.i, align 1
  %flowic_secid.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 7
  %125 = ptrtoint ptr %flowic_secid.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %flowic_secid.i, align 8
  %flowic_tun_key.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 9
  %126 = ptrtoint ptr %flowic_tun_key.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 0, ptr %flowic_tun_key.i, align 8
  %flowic_uid.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %127 = ptrtoint ptr %flowic_uid.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %.unpack, ptr %flowic_uid.i, align 4
  %daddr10.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %128 = ptrtoint ptr %daddr10.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %faddr.0, ptr %daddr10.i, align 4
  %saddr11.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %129 = ptrtoint ptr %saddr11.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %saddr.0, ptr %saddr11.i, align 8
  %uli.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %sport14.i = getelementptr inbounds %struct.anon.39, ptr %uli.i, i32 0, i32 1
  %130 = ptrtoint ptr %sport14.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %sport14.i, align 2
  %flowic_multipath_hash.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %131 = ptrtoint ptr %flowic_multipath_hash.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %flowic_multipath_hash.i, align 8
  %132 = ptrtoint ptr %user_icmph to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %user_icmph, align 8
  %134 = ptrtoint ptr %uli.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %uli.i, align 8
  %135 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %4, align 1
  %code137 = getelementptr inbounds %struct.anon.40, ptr %uli.i, i32 0, i32 1
  %137 = ptrtoint ptr %code137 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %code137, align 1
  call void @security_sk_classify_flow(ptr noundef %sk, ptr noundef nonnull %fl4) #10
  %call139 = call ptr @ip_route_output_flow(ptr noundef %1, ptr noundef nonnull %fl4, ptr noundef %sk) #10
  %138 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call139, ptr %rt, align 4
  %cmp.i318 = icmp ugt ptr %call139, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i318, label %if.then141, label %if.end163

if.then141:                                       ; preds = %if.end131
  %139 = ptrtoint ptr %call139 to i32
  %140 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %rt, align 4
  %cmp143 = icmp eq ptr %call139, inttoptr (i32 -101 to ptr)
  br i1 %cmp143, label %do.body146, label %if.then141.out_crit_edge

if.then141.out_crit_edge:                         ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body146:                                       ; preds = %if.then141
  call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30
  %141 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mib, align 4
  %143 = ptrtoint ptr %142 to i32
  %144 = call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i319 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i319 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %147
  %148 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx, align 4
  %add154 = add i32 %149, %143
  %150 = inttoptr i32 %add154 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %150, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %151 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.not.i.i320 = icmp eq i32 %151, 0
  br i1 %tobool.not.i.i320, label %do.body146.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i325

do.body146.u64_stats_update_begin.exit_crit_edge: ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i325:                             ; preds = %do.body146
  %preempt_count.i.i.i.i322 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 1
  %152 = ptrtoint ptr %preempt_count.i.i.i.i322 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %preempt_count.i.i.i.i322, align 4
  %add.i.i.i323 = add i32 %153, 1
  store volatile i32 %add.i.i.i323, ptr %preempt_count.i.i.i.i322, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !215
  %154 = call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i.i.i = and i32 %154, -16384
  %155 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %157
  %158 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %159, ptrtoint (ptr @lockdep_recursion to i32)
  %160 = inttoptr i32 %add.i.i to ptr
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %160, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !216
  %163 = call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i.i.i7.i.i = and i32 %163, -16384
  %164 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i324 = add i32 %166, -1
  store volatile i32 %sub.i.i.i324, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool20.not.i.i = icmp eq i32 %162, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i325.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i325.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i325
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i325
  %167 = call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i.i.i.i = and i32 %167, -16384
  %168 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp.i.i = icmp eq i32 %170, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %171 = call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i.i.i9.i.i = and i32 %171, -16384
  %172 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %174, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !217
  %175 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %176
  %177 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %178, ptrtoint (ptr @hardirqs_enabled to i32)
  %179 = inttoptr i32 %add47.i.i to ptr
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %179, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !218
  %182 = call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i.i.i12.i.i = and i32 %182, -16384
  %183 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %185, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool54.not.i.i = icmp eq i32 %181, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i326, !prof !188

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

if.then.i.i326:                                   ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i326, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i325.u64_stats_update_begin.exit_crit_edge, %do.body146.u64_stats_update_begin.exit_crit_edge
  %186 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %187, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  %dep_map.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %150, i32 0, i32 1, i32 0, i32 1
  %188 = call ptr @llvm.returnaddress(i32 0) #10
  %189 = ptrtoint ptr %188 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %189) #10
  %arrayidx155 = getelementptr [37 x i64], ptr %150, i32 0, i32 15
  %190 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %arrayidx155, align 8
  %add156 = add i64 %191, 1
  store i64 %add156, ptr %arrayidx155, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %189) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !213
  %192 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %193, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  call fastcc void @local_bh_enable()
  br label %out

if.end163:                                        ; preds = %if.end131
  %rt_flags = getelementptr inbounds %struct.rtable, ptr %call139, i32 0, i32 2
  %194 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %rt_flags, align 4
  %and164 = and i32 %195, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.end163.if.end169_crit_edge, label %land.lhs.true166

if.end163.if.end169_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

land.lhs.true166:                                 ; preds = %if.end163
  %196 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %78, align 4
  %198 = and i32 %197, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool.i327.not = icmp eq i32 %198, 0
  br i1 %tobool.i327.not, label %land.lhs.true166.out_crit_edge, label %land.lhs.true166.if.end169_crit_edge

land.lhs.true166.if.end169_crit_edge:             ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

land.lhs.true166.out_crit_edge:                   ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end169:                                        ; preds = %land.lhs.true166.if.end169_crit_edge, %if.end163.if.end169_crit_edge
  %199 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %msg_flags.i, align 4
  %201 = and i32 %200, 2064
  call void @__sanitizer_cov_trace_const_cmp4(i32 2064, i32 %201)
  %.not = icmp eq i32 %201, 2064
  br i1 %.not, label %if.then212, label %if.end169.back_from_confirm_crit_edge

if.end169.back_from_confirm_crit_edge:            ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %back_from_confirm

back_from_confirm:                                ; preds = %if.then.i330, %if.then212.back_from_confirm_crit_edge, %if.end169.back_from_confirm_crit_edge
  %202 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool176.not = icmp eq i32 %203, 0
  br i1 %tobool176.not, label %if.then177, label %back_from_confirm.if.end180_crit_edge

back_from_confirm.if.end180_crit_edge:            ; preds = %back_from_confirm
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

if.then177:                                       ; preds = %back_from_confirm
  call void @__sanitizer_cov_trace_pc() #12
  %204 = ptrtoint ptr %daddr10.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %daddr10.i, align 4
  %206 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %addr.i, align 8
  br label %if.end180

if.end180:                                        ; preds = %if.then177, %back_from_confirm.if.end180_crit_edge
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %207 = ptrtoint ptr %user_icmph to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %user_icmph, align 8
  %209 = ptrtoint ptr %pfh to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %pfh, align 4
  %210 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %4, align 1
  %code185 = getelementptr inbounds %struct.icmphdr, ptr %pfh, i32 0, i32 1
  %212 = ptrtoint ptr %code185 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %code185, align 1
  %checksum = getelementptr inbounds %struct.icmphdr, ptr %pfh, i32 0, i32 2
  %213 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 0, ptr %checksum, align 2
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %214 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %inet_sport, align 8
  %un = getelementptr inbounds %struct.icmphdr, ptr %pfh, i32 0, i32 3
  %216 = ptrtoint ptr %un to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %215, ptr %un, align 4
  %sequence = getelementptr inbounds %struct.anon.151, ptr %5, i32 0, i32 1
  %217 = ptrtoint ptr %sequence to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %sequence, align 2
  %sequence191 = getelementptr inbounds %struct.anon.151, ptr %un, i32 0, i32 1
  %219 = ptrtoint ptr %sequence191 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %218, ptr %sequence191, align 2
  %msg192 = getelementptr inbounds %struct.pingfakehdr, ptr %pfh, i32 0, i32 1
  %220 = ptrtoint ptr %msg192 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %msg, ptr %msg192, align 4
  %wcheck = getelementptr inbounds %struct.pingfakehdr, ptr %pfh, i32 0, i32 3
  %221 = ptrtoint ptr %wcheck to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 0, ptr %wcheck, align 4
  %family = getelementptr inbounds %struct.pingfakehdr, ptr %pfh, i32 0, i32 2
  %222 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 2, ptr %family, align 4
  %223 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %msg_flags.i, align 4
  %call194 = call i32 @ip_append_data(ptr noundef %sk, ptr noundef nonnull %fl4, ptr noundef nonnull @ping_getfrag, ptr noundef nonnull %pfh, i32 noundef %len, i32 noundef 0, ptr noundef nonnull %ipc, ptr noundef nonnull %rt, i32 noundef %224) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.else197, label %if.then196

if.then196:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  call void @ip_flush_pending_frames(ptr noundef %sk) #10
  br label %if.end199

if.else197:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  %call198 = call fastcc i32 @ping_v4_push_pending_frames(ptr noundef %sk, ptr noundef nonnull %pfh, ptr noundef nonnull %fl4)
  br label %if.end199

if.end199:                                        ; preds = %if.else197, %if.then196
  %err.0 = phi i32 [ %call194, %if.then196 ], [ %call198, %if.else197 ]
  call void @release_sock(ptr noundef %sk) #10
  br label %out

out:                                              ; preds = %if.end199, %land.lhs.true166.out_crit_edge, %u64_stats_update_begin.exit, %if.then141.out_crit_edge
  %err.1 = phi i32 [ -101, %u64_stats_update_begin.exit ], [ %139, %if.then141.out_crit_edge ], [ %err.0, %if.end199 ], [ -13, %land.lhs.true166.out_crit_edge ]
  %225 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %rt, align 4
  call void @dst_release(ptr noundef %226) #10
  br label %out_free

out_free:                                         ; preds = %out, %if.then87.out_free_crit_edge
  %err.2 = phi i32 [ %err.1, %out ], [ -22, %if.then87.out_free_crit_edge ]
  br i1 %tobool200.not, label %out_free.if.end203_crit_edge, label %if.then201

out_free.if.end203_crit_edge:                     ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end203

if.then201:                                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #12
  %227 = ptrtoint ptr %opt51 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %opt51, align 8
  call void @kfree(ptr noundef %228) #10
  br label %if.end203

if.end203:                                        ; preds = %if.then201, %out_free.if.end203_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool204.not = icmp eq i32 %err.2, 0
  br i1 %tobool204.not, label %if.then205, label %if.end203.cleanup222_crit_edge

if.end203.cleanup222_crit_edge:                   ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup222

if.then205:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  %229 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %skc_net.i, align 4
  %231 = ptrtoint ptr %user_icmph to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %user_icmph, align 8
  call void @icmp_out_count(ptr noundef %230, i8 noundef zeroext %232) #10
  br label %cleanup222

if.then212:                                       ; preds = %if.end169
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call139, i32 0, i32 1
  %233 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %ops.i, align 4
  %confirm_neigh.i = getelementptr inbounds %struct.dst_ops, ptr %234, i32 0, i32 15
  %235 = ptrtoint ptr %confirm_neigh.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %confirm_neigh.i, align 4
  %tobool.not.i329 = icmp eq ptr %236, null
  br i1 %tobool.not.i329, label %if.then212.back_from_confirm_crit_edge, label %if.then.i330

if.then212.back_from_confirm_crit_edge:           ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #12
  br label %back_from_confirm

if.then.i330:                                     ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #12
  call void %236(ptr noundef %call139, ptr noundef %daddr10.i) #10
  br label %back_from_confirm

cleanup222:                                       ; preds = %if.then205, %if.end203.cleanup222_crit_edge, %if.then44, %if.else.cleanup222_crit_edge, %if.end19.cleanup222_crit_edge, %if.then11.cleanup222_crit_edge, %if.end8.i.cleanup222_crit_edge, %memcpy_from_msg.exit.i, %if.end3.i.cleanup222_crit_edge, %if.end.i.cleanup222_crit_edge, %do.end.cleanup222_crit_edge
  %retval.1 = phi i32 [ %call36, %if.then44 ], [ %len, %if.then205 ], [ -89, %if.else.cleanup222_crit_edge ], [ %err.2, %if.end203.cleanup222_crit_edge ], [ -14, %memcpy_from_msg.exit.i ], [ -95, %if.end3.i.cleanup222_crit_edge ], [ -22, %if.end.i.cleanup222_crit_edge ], [ -90, %do.end.cleanup222_crit_edge ], [ -97, %if.end19.cleanup222_crit_edge ], [ -22, %if.then11.cleanup222_crit_edge ], [ -22, %if.end8.i.cleanup222_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %opt_copy) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rt) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pfh) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %user_icmph) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ipc) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip4_datagram_release_cb(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ping_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos, i16 noundef zeroext %family) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %bucket = getelementptr inbounds %struct.ping_iter_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bucket, align 4
  %family1 = getelementptr inbounds %struct.ping_iter_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %family1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %family, ptr %family1, align 4
  tail call void @_raw_read_lock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #10
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add i64 %5, -1
  %call = tail call fastcc ptr @ping_get_idx(ptr noundef %seq, i64 noundef %sub)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %call, %cond.true ], [ inttoptr (i32 1 to ptr), %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ping_get_idx(ptr nocapture noundef readonly %seq, i64 noundef %pos) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bucket.i = getelementptr inbounds %struct.ping_iter_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bucket.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bucket.i, align 4
  %family.i = getelementptr inbounds %struct.ping_iter_state, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc19.i.for.body.i_crit_edge, %entry
  %storemerge47.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc19.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %storemerge47.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %for.body.i.land.rhs.i_crit_edge, label %for.body.i.for.inc19.i_crit_edge

for.body.i.for.inc19.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc19.i

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %node.043.i = phi ptr [ %node.0.i, %for.inc.i.land.rhs.i_crit_edge ], [ %6, %for.body.i.land.rhs.i_crit_edge ]
  %skc_net.i.i = getelementptr i8, ptr %node.043.i, i32 -48
  %8 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %3
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %skc_family.i = getelementptr i8, ptr %node.043.i, i32 -68
  %10 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %skc_family.i, align 8
  %12 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp14.i = icmp eq i16 %11, %13
  br i1 %cmp14.i, label %ping_get_first.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge
  %14 = ptrtoint ptr %node.043.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %node.0.i = load ptr, ptr %node.043.i, align 4
  %15 = ptrtoint ptr %node.0.i to i32
  %and.i.i = and i32 %15, 1
  %tobool6.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not.i, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.for.inc19.i_crit_edge

for.inc.i.for.inc19.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc19.i

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

for.inc19.i:                                      ; preds = %for.inc.i.for.inc19.i_crit_edge, %for.body.i.for.inc19.i_crit_edge
  %inc.i = add nuw nsw i32 %storemerge47.i, 1
  %16 = ptrtoint ptr %bucket.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc.i, ptr %bucket.i, align 4
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc19.i.if.end.thread_crit_edge, label %for.inc19.i.for.body.i_crit_edge

for.inc19.i.for.body.i_crit_edge:                 ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc19.i.if.end.thread_crit_edge:              ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

ping_get_first.exit:                              ; preds = %land.lhs.true.i
  %add.ptr.le44.i = getelementptr i8, ptr %node.043.i, i32 -84
  %tobool.not = icmp eq ptr %add.ptr.le44.i, null
  br i1 %tobool.not, label %ping_get_first.exit.if.end.thread_crit_edge, label %while.cond.preheader

ping_get_first.exit.if.end.thread_crit_edge:      ; preds = %ping_get_first.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

while.cond.preheader:                             ; preds = %ping_get_first.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos)
  %tobool1.not38 = icmp eq i64 %pos, 0
  br i1 %tobool1.not38, label %while.cond.preheader.if.end.thread_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.if.end.thread_crit_edge:     ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %sk.040 = phi ptr [ %retval.0.i1624, %while.body.land.rhs_crit_edge ], [ %add.ptr.le44.i, %while.cond.preheader.land.rhs_crit_edge ]
  %pos.addr.039 = phi i64 [ %dec, %while.body.land.rhs_crit_edge ], [ %pos, %while.cond.preheader.land.rhs_crit_edge ]
  %17 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i14.do.body.i_crit_edge, %land.rhs
  %sk.addr.0.i = phi ptr [ %sk.040, %land.rhs ], [ %add.ptr.i.i, %land.rhs.i14.do.body.i_crit_edge ]
  %21 = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i, i32 0, i32 15
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %23 to i32
  %and.i.i.i10 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i10)
  %tobool.not.i.i = icmp ne i32 %and.i.i.i10, 0
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 -84
  %tobool.not17.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i11 = select i1 %tobool.not.i.i, i1 true, i1 %tobool.not17.i
  br i1 %tobool.not.i11, label %if.then.critedge.i, label %land.rhs.i14

land.rhs.i14:                                     ; preds = %do.body.i
  %skc_net.i.i12 = getelementptr i8, ptr %23, i32 -48
  %25 = ptrtoint ptr %skc_net.i.i12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skc_net.i.i12, align 4
  %cmp.i.not.i13 = icmp eq ptr %26, %20
  br i1 %cmp.i.not.i13, label %land.rhs.i14.while.body_crit_edge, label %land.rhs.i14.do.body.i_crit_edge

land.rhs.i14.do.body.i_crit_edge:                 ; preds = %land.rhs.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

land.rhs.i14.while.body_crit_edge:                ; preds = %land.rhs.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.then.critedge.i:                               ; preds = %do.body.i
  %bucket.i15 = getelementptr inbounds %struct.ping_iter_state, ptr %18, i32 0, i32 1
  %27 = ptrtoint ptr %bucket.i15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bucket.i15, align 4
  %add.i = add i32 %28, 1
  store i32 %add.i, ptr %bucket.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add.i)
  %cmp46.i.i = icmp slt i32 %add.i, 64
  br i1 %cmp46.i.i, label %for.body.lr.ph.i.i, label %if.then.critedge.i.if.end.thread_crit_edge

if.then.critedge.i.if.end.thread_crit_edge:       ; preds = %if.then.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

for.body.lr.ph.i.i:                               ; preds = %if.then.critedge.i
  %family.i.i = getelementptr inbounds %struct.ping_iter_state, ptr %18, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc19.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %storemerge47.i.i = phi i32 [ %add.i, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc19.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %storemerge47.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %and.i.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i15.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i15.i, label %for.body.i.i.land.rhs.i.i_crit_edge, label %for.body.i.i.for.inc19.i.i_crit_edge

for.body.i.i.for.inc19.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc19.i.i

for.body.i.i.land.rhs.i.i_crit_edge:              ; preds = %for.body.i.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %for.body.i.i.land.rhs.i.i_crit_edge
  %node.043.i.i = phi ptr [ %node.0.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ %30, %for.body.i.i.land.rhs.i.i_crit_edge ]
  %skc_net.i.i.i = getelementptr i8, ptr %node.043.i.i, i32 -48
  %32 = ptrtoint ptr %skc_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skc_net.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %33, %20
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i, label %land.rhs.i.i.for.inc.i.i_crit_edge

land.rhs.i.i.for.inc.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %land.rhs.i.i
  %skc_family.i.i = getelementptr i8, ptr %node.043.i.i, i32 -68
  %34 = ptrtoint ptr %skc_family.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %skc_family.i.i, align 8
  %36 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp14.i.i = icmp eq i16 %35, %37
  br i1 %cmp14.i.i, label %ping_get_next.exit, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %land.rhs.i.i.for.inc.i.i_crit_edge
  %38 = ptrtoint ptr %node.043.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %node.0.i.i = load ptr, ptr %node.043.i.i, align 4
  %39 = ptrtoint ptr %node.0.i.i to i32
  %and.i.i16.i = and i32 %39, 1
  %tobool6.not.i.i = icmp eq i32 %and.i.i16.i, 0
  br i1 %tobool6.not.i.i, label %for.inc.i.i.land.rhs.i.i_crit_edge, label %for.inc.i.i.for.inc19.i.i_crit_edge

for.inc.i.i.for.inc19.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc19.i.i

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

for.inc19.i.i:                                    ; preds = %for.inc.i.i.for.inc19.i.i_crit_edge, %for.body.i.i.for.inc19.i.i_crit_edge
  %inc.i.i = add nsw i32 %storemerge47.i.i, 1
  %40 = ptrtoint ptr %bucket.i15 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %inc.i.i, ptr %bucket.i15, align 4
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.inc19.i.i.if.end.thread_crit_edge, label %for.inc19.i.i.for.body.i.i_crit_edge

for.inc19.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc19.i.i.if.end.thread_crit_edge:            ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

ping_get_next.exit:                               ; preds = %land.lhs.true.i.i
  %add.ptr.le44.i.i = getelementptr i8, ptr %node.043.i.i, i32 -84
  %cmp.not = icmp eq ptr %add.ptr.le44.i.i, null
  br i1 %cmp.not, label %ping_get_next.exit.if.end.thread_crit_edge, label %ping_get_next.exit.while.body_crit_edge

ping_get_next.exit.while.body_crit_edge:          ; preds = %ping_get_next.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

ping_get_next.exit.if.end.thread_crit_edge:       ; preds = %ping_get_next.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

while.body:                                       ; preds = %ping_get_next.exit.while.body_crit_edge, %land.rhs.i14.while.body_crit_edge
  %retval.0.i1624 = phi ptr [ %add.ptr.le44.i.i, %ping_get_next.exit.while.body_crit_edge ], [ %add.ptr.i.i, %land.rhs.i14.while.body_crit_edge ]
  %dec = add i64 %pos.addr.039, -1
  %tobool1.not = icmp eq i64 %dec, 0
  br i1 %tobool1.not, label %while.body.if.end.thread_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.if.end.thread_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

if.end.thread:                                    ; preds = %while.body.if.end.thread_crit_edge, %ping_get_next.exit.if.end.thread_crit_edge, %for.inc19.i.i.if.end.thread_crit_edge, %if.then.critedge.i.if.end.thread_crit_edge, %while.cond.preheader.if.end.thread_crit_edge, %ping_get_first.exit.if.end.thread_crit_edge, %for.inc19.i.if.end.thread_crit_edge
  %41 = phi ptr [ null, %ping_get_first.exit.if.end.thread_crit_edge ], [ %add.ptr.le44.i, %while.cond.preheader.if.end.thread_crit_edge ], [ null, %for.inc19.i.i.if.end.thread_crit_edge ], [ null, %ping_get_next.exit.if.end.thread_crit_edge ], [ null, %if.then.critedge.i.if.end.thread_crit_edge ], [ %retval.0.i1624, %while.body.if.end.thread_crit_edge ], [ null, %for.inc19.i.if.end.thread_crit_edge ]
  ret ptr %41
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ping_seq_next(ptr nocapture noundef readonly %seq, ptr noundef readonly %v, ptr nocapture noundef %pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br i1 %cmp, label %if.then, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

if.then:                                          ; preds = %entry
  %bucket.i.i = getelementptr inbounds %struct.ping_iter_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bucket.i.i, align 4
  %family.i.i = getelementptr inbounds %struct.ping_iter_state, ptr %1, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc19.i.i.for.body.i.i_crit_edge, %if.then
  %storemerge47.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i, %for.inc19.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %storemerge47.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %and.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.land.rhs.i.i_crit_edge, label %for.body.i.i.for.inc19.i.i_crit_edge

for.body.i.i.for.inc19.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc19.i.i

for.body.i.i.land.rhs.i.i_crit_edge:              ; preds = %for.body.i.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %for.body.i.i.land.rhs.i.i_crit_edge
  %node.043.i.i = phi ptr [ %node.0.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ %6, %for.body.i.i.land.rhs.i.i_crit_edge ]
  %skc_net.i.i.i = getelementptr i8, ptr %node.043.i.i, i32 -48
  %8 = ptrtoint ptr %skc_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %9, %3
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i, label %land.rhs.i.i.for.inc.i.i_crit_edge

land.rhs.i.i.for.inc.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %land.rhs.i.i
  %skc_family.i.i = getelementptr i8, ptr %node.043.i.i, i32 -68
  %10 = ptrtoint ptr %skc_family.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %skc_family.i.i, align 8
  %12 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp14.i.i = icmp eq i16 %11, %13
  br i1 %cmp14.i.i, label %ping_get_first.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %land.rhs.i.i.for.inc.i.i_crit_edge
  %14 = ptrtoint ptr %node.043.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %node.0.i.i = load ptr, ptr %node.043.i.i, align 4
  %15 = ptrtoint ptr %node.0.i.i to i32
  %and.i.i.i = and i32 %15, 1
  %tobool6.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool6.not.i.i, label %for.inc.i.i.land.rhs.i.i_crit_edge, label %for.inc.i.i.for.inc19.i.i_crit_edge

for.inc.i.i.for.inc19.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc19.i.i

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

for.inc19.i.i:                                    ; preds = %for.inc.i.i.for.inc19.i.i_crit_edge, %for.body.i.i.for.inc19.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %storemerge47.i.i, 1
  %16 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc.i.i, ptr %bucket.i.i, align 4
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.inc19.i.i.if.end_crit_edge, label %for.inc19.i.i.for.body.i.i_crit_edge

for.inc19.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc19.i.i.if.end_crit_edge:                   ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

ping_get_first.exit.i:                            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.le44.i.i = getelementptr i8, ptr %node.043.i.i, i32 -84
  br label %if.end

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %sk.addr.0.i = phi ptr [ %add.ptr.i.i, %land.rhs.i.do.body.i_crit_edge ], [ %v, %entry.do.body.i_crit_edge ]
  %17 = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i, i32 0, i32 15
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %19 to i32
  %and.i.i.i4 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4)
  %tobool.not.i.i5 = icmp ne i32 %and.i.i.i4, 0
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 -84
  %tobool.not17.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i6 = select i1 %tobool.not.i.i5, i1 true, i1 %tobool.not17.i
  br i1 %tobool.not.i6, label %if.then.critedge.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body.i
  %skc_net.i.i = getelementptr i8, ptr %19, i32 -48
  %21 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %22, %3
  br i1 %cmp.i.not.i, label %land.rhs.i.if.end_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.critedge.i:                               ; preds = %do.body.i
  %bucket.i = getelementptr inbounds %struct.ping_iter_state, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %bucket.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bucket.i, align 4
  %add.i = add i32 %24, 1
  store i32 %add.i, ptr %bucket.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add.i)
  %cmp46.i.i = icmp slt i32 %add.i, 64
  br i1 %cmp46.i.i, label %for.body.lr.ph.i.i, label %if.then.critedge.i.if.end_crit_edge

if.then.critedge.i.if.end_crit_edge:              ; preds = %if.then.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.lr.ph.i.i:                               ; preds = %if.then.critedge.i
  %family.i.i7 = getelementptr inbounds %struct.ping_iter_state, ptr %1, i32 0, i32 2
  br label %for.body.i.i11

for.body.i.i11:                                   ; preds = %for.inc19.i.i24.for.body.i.i11_crit_edge, %for.body.lr.ph.i.i
  %storemerge47.i.i8 = phi i32 [ %add.i, %for.body.lr.ph.i.i ], [ %inc.i.i22, %for.inc19.i.i24.for.body.i.i11_crit_edge ]
  %arrayidx.i.i9 = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %storemerge47.i.i8
  %25 = ptrtoint ptr %arrayidx.i.i9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx.i.i9, align 4
  %27 = ptrtoint ptr %26 to i32
  %and.i.i.i.i10 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i10)
  %tobool.not.i15.i = icmp eq i32 %and.i.i.i.i10, 0
  br i1 %tobool.not.i15.i, label %for.body.i.i11.land.rhs.i.i15_crit_edge, label %for.body.i.i11.for.inc19.i.i24_crit_edge

for.body.i.i11.for.inc19.i.i24_crit_edge:         ; preds = %for.body.i.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc19.i.i24

for.body.i.i11.land.rhs.i.i15_crit_edge:          ; preds = %for.body.i.i11
  br label %land.rhs.i.i15

land.rhs.i.i15:                                   ; preds = %for.inc.i.i21.land.rhs.i.i15_crit_edge, %for.body.i.i11.land.rhs.i.i15_crit_edge
  %node.043.i.i12 = phi ptr [ %node.0.i.i19, %for.inc.i.i21.land.rhs.i.i15_crit_edge ], [ %26, %for.body.i.i11.land.rhs.i.i15_crit_edge ]
  %skc_net.i.i.i13 = getelementptr i8, ptr %node.043.i.i12, i32 -48
  %28 = ptrtoint ptr %skc_net.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skc_net.i.i.i13, align 4
  %cmp.i.not.i.i14 = icmp eq ptr %29, %3
  br i1 %cmp.i.not.i.i14, label %land.lhs.true.i.i18, label %land.rhs.i.i15.for.inc.i.i21_crit_edge

land.rhs.i.i15.for.inc.i.i21_crit_edge:           ; preds = %land.rhs.i.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i21

land.lhs.true.i.i18:                              ; preds = %land.rhs.i.i15
  %skc_family.i.i16 = getelementptr i8, ptr %node.043.i.i12, i32 -68
  %30 = ptrtoint ptr %skc_family.i.i16 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %skc_family.i.i16, align 8
  %32 = ptrtoint ptr %family.i.i7 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %family.i.i7, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp14.i.i17 = icmp eq i16 %31, %33
  br i1 %cmp14.i.i17, label %cleanup22.loopexit.i.i, label %land.lhs.true.i.i18.for.inc.i.i21_crit_edge

land.lhs.true.i.i18.for.inc.i.i21_crit_edge:      ; preds = %land.lhs.true.i.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i21

for.inc.i.i21:                                    ; preds = %land.lhs.true.i.i18.for.inc.i.i21_crit_edge, %land.rhs.i.i15.for.inc.i.i21_crit_edge
  %34 = ptrtoint ptr %node.043.i.i12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %node.0.i.i19 = load ptr, ptr %node.043.i.i12, align 4
  %35 = ptrtoint ptr %node.0.i.i19 to i32
  %and.i.i16.i = and i32 %35, 1
  %tobool6.not.i.i20 = icmp eq i32 %and.i.i16.i, 0
  br i1 %tobool6.not.i.i20, label %for.inc.i.i21.land.rhs.i.i15_crit_edge, label %for.inc.i.i21.for.inc19.i.i24_crit_edge

for.inc.i.i21.for.inc19.i.i24_crit_edge:          ; preds = %for.inc.i.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc19.i.i24

for.inc.i.i21.land.rhs.i.i15_crit_edge:           ; preds = %for.inc.i.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i15

for.inc19.i.i24:                                  ; preds = %for.inc.i.i21.for.inc19.i.i24_crit_edge, %for.body.i.i11.for.inc19.i.i24_crit_edge
  %inc.i.i22 = add nsw i32 %storemerge47.i.i8, 1
  %36 = ptrtoint ptr %bucket.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %inc.i.i22, ptr %bucket.i, align 4
  %exitcond.not.i.i23 = icmp eq i32 %inc.i.i22, 64
  br i1 %exitcond.not.i.i23, label %for.inc19.i.i24.if.end_crit_edge, label %for.inc19.i.i24.for.body.i.i11_crit_edge

for.inc19.i.i24.for.body.i.i11_crit_edge:         ; preds = %for.inc19.i.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i11

for.inc19.i.i24.if.end_crit_edge:                 ; preds = %for.inc19.i.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup22.loopexit.i.i:                           ; preds = %land.lhs.true.i.i18
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.le44.i.i25 = getelementptr i8, ptr %node.043.i.i12, i32 -84
  br label %if.end

if.end:                                           ; preds = %cleanup22.loopexit.i.i, %for.inc19.i.i24.if.end_crit_edge, %if.then.critedge.i.if.end_crit_edge, %land.rhs.i.if.end_crit_edge, %ping_get_first.exit.i, %for.inc19.i.i.if.end_crit_edge
  %sk.0 = phi ptr [ %add.ptr.le44.i.i25, %cleanup22.loopexit.i.i ], [ null, %if.then.critedge.i.if.end_crit_edge ], [ %add.ptr.le44.i.i, %ping_get_first.exit.i ], [ null, %for.inc19.i.i.if.end_crit_edge ], [ null, %for.inc19.i.i24.if.end_crit_edge ], [ %add.ptr.i.i, %land.rhs.i.if.end_crit_edge ]
  %37 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %pos, align 8
  %inc = add i64 %38, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr %sk.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ping_seq_stop(ptr nocapture readnone %seq, ptr nocapture readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_unlock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ping_proc_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ping_v4_net_ops) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ping_proc_exit() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ping_v4_net_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ping_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %shl = shl nuw i32 %i.04, 1
  %or = or i32 %shl, 1
  %0 = inttoptr i32 %or to ptr
  %arrayidx = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %i.04
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__rwlock_init(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1), ptr noundef nonnull @.str.29, ptr noundef nonnull @ping_init.__key) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.37) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !207
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_and_copy_from_iter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_timestamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_wifi_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_cmsg_recv_offset(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_cmsg_send(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_append_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_flush_pending_frames(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ping_v4_push_pending_frames(ptr noundef %sk, ptr noundef %pfh, ptr noundef %fl4) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %0 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i = icmp eq ptr %1, %sk_write_queue
  %tobool.not17 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not17
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wcheck = getelementptr inbounds %struct.pingfakehdr, ptr %pfh, i32 0, i32 3
  %2 = ptrtoint ptr %wcheck to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcheck, align 4
  %call1 = tail call i32 @csum_partial(ptr noundef %pfh, i32 noundef 8, i32 noundef %3) #10
  %4 = ptrtoint ptr %wcheck to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %wcheck, align 4
  %5 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call1) #13, !srcloc !219
  %neg.i = xor i32 %5, -1
  %shr.i = lshr i32 %neg.i, 16
  %conv.i = trunc i32 %shr.i to i16
  %checksum = getelementptr inbounds %struct.icmphdr, ptr %pfh, i32 0, i32 2
  %6 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %checksum, align 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 19
  %9 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %11 = ptrtoint ptr %pfh to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %pfh, align 4
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %add.ptr.i.i, align 4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %call8 = tail call i32 @ip_push_pending_frames(ptr noundef %sk, ptr noundef %fl4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp_out_count(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_push_pending_frames(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ping_v4_proc_init_net(ptr nocapture noundef readonly %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.51, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @ping_v4_seq_ops, i32 noundef 16, ptr noundef null) #10
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ping_v4_proc_exit_net(ptr nocapture noundef readonly %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.51, ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ping_v4_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %bucket.i = getelementptr inbounds %struct.ping_iter_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bucket.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bucket.i, align 4
  %family1.i = getelementptr inbounds %struct.ping_iter_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %family1.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2, ptr %family1.i, align 4
  tail call void @_raw_read_lock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #10
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not.i = icmp eq i64 %5, 0
  br i1 %tobool.not.i, label %entry.ping_seq_start.exit_crit_edge, label %cond.true.i

entry.ping_seq_start.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ping_seq_start.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i64 %5, -1
  %call.i = tail call fastcc ptr @ping_get_idx(ptr noundef %seq, i64 noundef %sub.i) #10
  br label %ping_seq_start.exit

ping_seq_start.exit:                              ; preds = %cond.true.i, %entry.ping_seq_start.exit_crit_edge
  %cond.i = phi ptr [ %call.i, %cond.true.i ], [ inttoptr (i32 1 to ptr), %entry.ping_seq_start.exit_crit_edge ]
  ret ptr %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ping_v4_seq_show(ptr noundef %seq, ptr noundef %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 3
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  %add.i = add i32 %1, 127
  %pad_until.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 4
  %2 = ptrtoint ptr %pad_until.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add.i, ptr %pad_until.i, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.52) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 8
  %bucket = getelementptr inbounds %struct.ping_iter_state, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bucket, align 4
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v, align 8
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %v, i32 0, i32 1
  %9 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %skc_rcv_saddr.i, align 4
  %11 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 4
  %inet_sport.i = getelementptr inbounds %struct.inet_sock, ptr %v, i32 0, i32 6
  %14 = ptrtoint ptr %inet_sport.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %inet_sport.i, align 8
  %conv.i = zext i16 %15 to i32
  %conv5.i = zext i16 %13 to i32
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 4
  %16 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state.i, align 2
  %conv7.i = zext i8 %17 to i32
  %sk_wmem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 23
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #10
  %18 = ptrtoint ptr %sk_wmem_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %sk_wmem_alloc.i.i, align 4
  %sub.i.i = add i32 %19, -1
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #10
  %20 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %file.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %22 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %file.i.i, align 4
  %f_cred.i.i = getelementptr inbounds %struct.file, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %f_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %f_cred.i.i, align 8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 25
  %26 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %user_ns.i.i, align 4
  %call11.i = tail call i32 @sock_i_uid(ptr noundef %v) #10
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %call11.i, 0
  %call13.i = tail call i32 @from_kuid_munged(ptr noundef %27, [1 x i32] %.fca.0.insert.i) #10
  %call14.i = tail call i32 @sock_i_ino(ptr noundef %v) #10
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 19
  %call.i.i.i30.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  %28 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %skc_refcnt.i, align 4
  %sk_drops.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_drops.i, i32 noundef 4) #10
  %30 = ptrtoint ptr %sk_drops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %sk_drops.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.53, i32 noundef %6, i32 noundef %10, i32 noundef %conv.i, i32 noundef %8, i32 noundef %conv5.i, i32 noundef %conv7.i, i32 noundef %sub.i.i, i32 noundef %21, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %call13.i, i32 noundef 0, i32 noundef %call14.i, i32 noundef %29, ptr noundef %v, i32 noundef %31) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @seq_pad(ptr noundef %seq, i8 noundef zeroext 10) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_pad(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !17, !18, !19, !21, !22, !23, !25, !27, !29, !31, !33, !34, !35, !37, !38, !40, !42, !43, !44, !46, !47, !49, !51, !52, !53, !55, !56, !58, !59, !61, !63, !65, !67, !68, !69, !71, !72, !74, !76, !77, !78, !80, !81, !83, !85, !86, !87, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !109, !111, !113, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !128, !130, !131, !133, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !151, !152, !154, !156, !157, !158, !160, !161, !163, !164, !166, !168, !170, !172}
!llvm.named.register.sp = !{!174}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__ksymtab_pingv6_ops, !1, !"__ksymtab_pingv6_ops", i1 false, i1 false}
!1 = !{!"../net/ipv4/ping.c", i32 58, i32 1}
!2 = !{ptr @__ksymtab_ping_hash, !3, !"__ksymtab_ping_hash", i1 false, i1 false}
!3 = !{!"../net/ipv4/ping.c", i32 69, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ipv4/ping.c", i32 126, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ping_get_port.__UNIQUE_ID_ddebug500, !5, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ipv4/ping.c", i32 129, i32 3}
!12 = !{ptr @ping_get_port.__UNIQUE_ID_ddebug501, !11, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!13 = !{ptr @__ksymtab_ping_get_port, !14, !"__ksymtab_ping_get_port", i1 false, i1 false}
!14 = !{!"../net/ipv4/ping.c", i32 141, i32 1}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv4/ping.c", i32 145, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ping_hash.__UNIQUE_ID_ddebug502, !16, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/ipv4/ping.c", i32 155, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ping_unhash.__UNIQUE_ID_ddebug503, !20, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!23 = !{ptr @__ksymtab_ping_unhash, !24, !"__ksymtab_ping_unhash", i1 false, i1 false}
!24 = !{!"../net/ipv4/ping.c", i32 167, i32 1}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/ipv4/ping.c", i32 262, i32 17}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/ipv4/ping.c", i32 275, i32 15}
!29 = !{ptr @__ksymtab_ping_init_sock, !30, !"__ksymtab_ping_init_sock", i1 false, i1 false}
!30 = !{!"../net/ipv4/ping.c", i32 289, i32 1}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/ipv4/ping.c", i32 293, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ping_close.__UNIQUE_ID_ddebug509, !32, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/ipv4/ping.c", i32 295, i32 2}
!37 = !{ptr @ping_close.__UNIQUE_ID_ddebug510, !36, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!38 = !{ptr @__ksymtab_ping_close, !39, !"__ksymtab_ping_close", i1 false, i1 false}
!39 = !{!"../net/ipv4/ping.c", i32 299, i32 1}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/ipv4/ping.c", i32 421, i32 2}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ping_bind.__UNIQUE_ID_ddebug513, !41, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/ipv4/ping.c", i32 447, i32 2}
!46 = !{ptr @ping_bind.__UNIQUE_ID_ddebug514, !45, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!47 = !{ptr @__ksymtab_ping_bind, !48, !"__ksymtab_ping_bind", i1 false, i1 false}
!48 = !{!"../net/ipv4/ping.c", i32 450, i32 1}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/ipv4/ping.c", i32 500, i32 2}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ping_err.__UNIQUE_ID_ddebug515, !50, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/ipv4/ping.c", i32 506, i32 3}
!55 = !{ptr @ping_err.__UNIQUE_ID_ddebug516, !54, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/ipv4/ping.c", i32 509, i32 2}
!58 = !{ptr @ping_err.__UNIQUE_ID_ddebug517, !57, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!59 = !{ptr @__ksymtab_ping_err, !60, !"__ksymtab_ping_err", i1 false, i1 false}
!60 = !{!"../net/ipv4/ping.c", i32 583, i32 1}
!61 = !{ptr @__ksymtab_ping_getfrag, !62, !"__ksymtab_ping_getfrag", i1 false, i1 false}
!62 = !{!"../net/ipv4/ping.c", i32 625, i32 1}
!63 = !{ptr @__ksymtab_ping_common_sendmsg, !64, !"__ksymtab_ping_common_sendmsg", i1 false, i1 false}
!64 = !{!"../net/ipv4/ping.c", i32 686, i32 1}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/ipv4/ping.c", i32 855, i32 2}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ping_recvmsg.__UNIQUE_ID_ddebug522, !66, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/ipv4/ping.c", i32 932, i32 2}
!71 = !{ptr @ping_recvmsg.__UNIQUE_ID_ddebug525, !70, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!72 = !{ptr @__ksymtab_ping_recvmsg, !73, !"__ksymtab_ping_recvmsg", i1 false, i1 false}
!73 = !{!"../net/ipv4/ping.c", i32 935, i32 1}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/ipv4/ping.c", i32 939, i32 2}
!76 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ping_queue_rcv_skb.__UNIQUE_ID_ddebug526, !75, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/ipv4/ping.c", i32 943, i32 3}
!80 = !{ptr @ping_queue_rcv_skb.__UNIQUE_ID_ddebug527, !79, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!81 = !{ptr @__ksymtab_ping_queue_rcv_skb, !82, !"__ksymtab_ping_queue_rcv_skb", i1 false, i1 false}
!82 = !{!"../net/ipv4/ping.c", i32 948, i32 1}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/ipv4/ping.c", i32 964, i32 2}
!85 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ping_rcv.__UNIQUE_ID_ddebug528, !84, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/ipv4/ping.c", i32 974, i32 3}
!89 = !{ptr @ping_rcv.__UNIQUE_ID_ddebug529, !88, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!90 = !{ptr @ping_rcv.__UNIQUE_ID_ddebug530, !91, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!91 = !{!"../net/ipv4/ping.c", i32 981, i32 3}
!92 = !{ptr @__ksymtab_ping_rcv, !93, !"__ksymtab_ping_rcv", i1 false, i1 false}
!93 = !{!"../net/ipv4/ping.c", i32 985, i32 1}
!94 = !{ptr @ping_prot, !95, !"ping_prot", i1 false, i1 false}
!95 = !{!"../net/ipv4/ping.c", i32 987, i32 14}
!96 = !{ptr @__ksymtab_ping_prot, !97, !"__ksymtab_ping_prot", i1 false, i1 false}
!97 = !{!"../net/ipv4/ping.c", i32 1007, i32 1}
!98 = !{ptr @__ksymtab_ping_seq_start, !99, !"__ksymtab_ping_seq_start", i1 false, i1 false}
!99 = !{!"../net/ipv4/ping.c", i32 1073, i32 1}
!100 = !{ptr @__ksymtab_ping_seq_next, !101, !"__ksymtab_ping_seq_next", i1 false, i1 false}
!101 = !{!"../net/ipv4/ping.c", i32 1092, i32 1}
!102 = !{ptr @__ksymtab_ping_seq_stop, !103, !"__ksymtab_ping_seq_stop", i1 false, i1 false}
!103 = !{!"../net/ipv4/ping.c", i32 1099, i32 1}
!104 = !{ptr @ping_init.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../net/ipv4/ping.c", i32 1181, i32 2}
!106 = !{ptr @.str.29, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ping_table, !108, !"ping_table", i1 false, i1 false}
!108 = !{!"../net/ipv4/ping.c", i32 56, i32 26}
!109 = !{ptr @pingv6_ops, !110, !"pingv6_ops", i1 false, i1 false}
!110 = !{!"../net/ipv4/ping.c", i32 57, i32 19}
!111 = !{ptr @ping_port_rover, !112, !"ping_port_rover", i1 false, i1 false}
!112 = !{!"../net/ipv4/ping.c", i32 60, i32 12}
!113 = !{ptr @.str.30, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/ipv4/ping.c", i32 66, i32 2}
!115 = !{ptr @.str.31, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ping_hashfn.__UNIQUE_ID_ddebug499, !114, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!117 = !{ptr @.str.32, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/ipv4/ping.c", i32 318, i32 3}
!119 = !{ptr @.str.33, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ping_check_bind_addr.__UNIQUE_ID_ddebug511, !118, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!121 = !{ptr @.str.34, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/ipv4/ping.c", i32 340, i32 3}
!123 = !{ptr @ping_check_bind_addr.__UNIQUE_ID_ddebug512, !122, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!126 = !{ptr @.str.35, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.36, !125, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!130 = !{ptr @.str.37, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.38, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/ipv4/ping.c", i32 180, i32 3}
!133 = !{ptr @.str.39, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ping_lookup.__UNIQUE_ID_ddebug504, !132, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!135 = !{ptr @.str.40, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/ipv4/ping.c", i32 186, i32 3}
!137 = !{ptr @ping_lookup.__UNIQUE_ID_ddebug505, !136, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!138 = !{ptr @.str.41, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/ipv4/ping.c", i32 198, i32 3}
!140 = !{ptr @ping_lookup.__UNIQUE_ID_ddebug506, !139, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!141 = !{ptr @.str.42, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../net/ipv4/ping.c", i32 204, i32 4}
!143 = !{ptr @ping_lookup.__UNIQUE_ID_ddebug507, !142, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!144 = !{ptr @.str.43, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/ipv4/ping.c", i32 215, i32 4}
!146 = !{ptr @ping_lookup.__UNIQUE_ID_ddebug508, !145, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!147 = !{ptr @.str.44, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!151 = !{ptr @.str.45, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.46, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!154 = !{ptr @.str.47, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/ipv4/ping.c", i32 703, i32 2}
!156 = !{ptr @.str.48, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @ping_v4_sendmsg.__UNIQUE_ID_ddebug518, !155, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../net/ipv4/ping.c", i32 744, i32 14}
!160 = !{ptr @.str.49, !159, !"<string literal>", i1 false, i1 false}
!161 = distinct !{null, !162, !"__already_done", i1 false, i1 false}
!162 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!163 = !{ptr @.str.50, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @ping_v4_net_ops, !165, !"ping_v4_net_ops", i1 false, i1 false}
!165 = !{!"../net/ipv4/ping.c", i32 1158, i32 33}
!166 = !{ptr @.str.51, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/ipv4/ping.c", i32 1147, i32 7}
!168 = !{ptr @ping_v4_seq_ops, !169, !"ping_v4_seq_ops", i1 false, i1 false}
!169 = !{!"../net/ipv4/ping.c", i32 1138, i32 36}
!170 = !{ptr @.str.52, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/ipv4/ping.c", i32 1126, i32 17}
!172 = !{ptr @.str.53, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../net/ipv4/ping.c", i32 1110, i32 16}
!174 = !{!"sp"}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{i64 2148283166, i64 2148283171, i64 2148283184, i64 2148283228, i64 2148283262, i64 2148283283}
!185 = !{i64 2157391750, i64 2157392230, i64 2157391787, i64 2157391843, i64 2157391877, i64 2157391901, i64 2157391942, i64 2157391963, i64 2157391991, i64 2157392025}
!186 = !{i64 2148471303, i64 2148471335, i64 2148471364, i64 2148471398, i64 2148471429, i64 2148471452}
!187 = !{!"branch_weights", i32 1, i32 2000}
!188 = !{!"branch_weights", i32 2000, i32 1}
!189 = !{i64 864031, i64 864092}
!190 = !{i64 866763}
!191 = !{i64 867048}
!192 = !{i64 2148559304}
!193 = !{i64 2148473768, i64 2148473800, i64 2148473829, i64 2148473863, i64 2148473894, i64 2148473917}
!194 = !{i64 2149595027}
!195 = !{i64 2150229330}
!196 = !{i64 2150229172}
!197 = !{i64 2150229500}
!198 = !{i64 2150214571}
!199 = !{i64 2148469773, i64 2148469799, i64 2148469828, i64 2148469862, i64 2148469893, i64 2148469916}
!200 = !{i64 2148558225}
!201 = !{i64 2148472958, i64 2148472990, i64 2148473019, i64 2148473053, i64 2148473084, i64 2148473107}
!202 = !{i64 2148558454}
!203 = !{i64 2156801730}
!204 = !{i64 976541, i64 976558, i64 976582, i64 976608, i64 976626}
!205 = !{i64 2156802075}
!206 = !{i64 2149287040}
!207 = !{i64 2149287306}
!208 = !{i64 2157442068, i64 2157442548, i64 2157442105, i64 2157442161, i64 2157442195, i64 2157442219, i64 2157442260, i64 2157442281, i64 2157442309, i64 2157442343}
!209 = !{i64 2157453657, i64 2157454137, i64 2157453694, i64 2157453750, i64 2157453784, i64 2157453808, i64 2157453849, i64 2157453870, i64 2157453898, i64 2157453932}
!210 = !{i64 2157455126, i64 2157455606, i64 2157455163, i64 2157455219, i64 2157455253, i64 2157455277, i64 2157455318, i64 2157455339, i64 2157455367, i64 2157455401}
!211 = !{i64 2157459071, i64 2157459551, i64 2157459108, i64 2157459164, i64 2157459198, i64 2157459222, i64 2157459263, i64 2157459284, i64 2157459312, i64 2157459346}
!212 = !{i64 2150214896}
!213 = !{i64 2150215221}
!214 = !{i64 2157483120, i64 2157483600, i64 2157483157, i64 2157483213, i64 2157483247, i64 2157483271, i64 2157483312, i64 2157483333, i64 2157483361, i64 2157483395}
!215 = !{i64 2150106823}
!216 = !{i64 2150111757}
!217 = !{i64 2150133475}
!218 = !{i64 2150138369}
!219 = !{i64 6731463}
