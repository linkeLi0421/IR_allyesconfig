; ModuleID = '/llk/IR_all_yes/net/ipv4/inet_timewait_sock.c_pt.bc'
source_filename = "../net/ipv4/inet_timewait_sock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+inet_twsk_put\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_twsk_put\09\09\09\09"
module asm "\09.long\09__crc_inet_twsk_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_twsk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_twsk_put\22\09\09\09\09\09"
module asm "__kstrtabns_inet_twsk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inet_twsk_hashdance\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_twsk_hashdance\09\09\09\09"
module asm "\09.long\09__crc_inet_twsk_hashdance\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_twsk_hashdance:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_twsk_hashdance\22\09\09\09\09\09"
module asm "__kstrtabns_inet_twsk_hashdance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inet_twsk_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_twsk_alloc\09\09\09\09"
module asm "\09.long\09__crc_inet_twsk_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_twsk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_twsk_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_inet_twsk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_twsk_deschedule_put\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_twsk_deschedule_put\09\09\09\09"
module asm "\09.long\09__crc_inet_twsk_deschedule_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_twsk_deschedule_put:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_twsk_deschedule_put\22\09\09\09\09\09"
module asm "__kstrtabns_inet_twsk_deschedule_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__inet_twsk_schedule\22, \22a\22\09"
module asm "\09.weak\09__crc___inet_twsk_schedule\09\09\09\09"
module asm "\09.long\09__crc___inet_twsk_schedule\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inet_twsk_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22__inet_twsk_schedule\22\09\09\09\09\09"
module asm "__kstrtabns___inet_twsk_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inet_twsk_purge\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_twsk_purge\09\09\09\09"
module asm "\09.long\09__crc_inet_twsk_purge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_twsk_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_twsk_purge\22\09\09\09\09\09"
module asm "__kstrtabns_inet_twsk_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inet_timewait_sock = type { %struct.sock_common, i32, i8, i8, i16, i32, i32, i32, %struct.timer_list, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.117, [0 x i32], %union.anon.118, i16, i16, %union.anon.119, %struct.refcount_struct, [0 x i32], %union.anon.120 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { %struct.hlist_node }
%union.anon.119 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.120 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [92 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.37 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%union.anon.37 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.116, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.116 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.timewait_sock_ops = type { ptr, ptr, i32, ptr, ptr }
%struct.inet_ehash_bucket = type { %struct.hlist_nulls_head }
%struct.hlist_nulls_head = type { ptr }
%struct.anon.2 = type { i16, i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
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
%struct.inet_bind_hashbucket = type { %struct.spinlock, %struct.hlist_head }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.150, %struct.anon.151, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.121, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.122, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.123, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.121 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.122 = type { ptr }
%union.anon.123 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
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
%struct.anon.150 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.151 = type { i32, i32, i32, i32 }
%struct.inet_bind_bucket = type { %struct.possible_net_t, i32, i16, i8, i8, %struct.kuid_t, %struct.in6_addr, i32, i16, i8, %struct.hlist_node, %struct.hlist_head }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32 }

@__kstrtab_inet_twsk_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_twsk_put = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_twsk_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_twsk_put to i32), ptr @__kstrtab_inet_twsk_put, ptr @__kstrtabns_inet_twsk_put }, section "___ksymtab_gpl+inet_twsk_put", align 4
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/ipv4/inet_timewait_sock.c\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_inet_twsk_hashdance = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_twsk_hashdance = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_twsk_hashdance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_twsk_hashdance to i32), ptr @__kstrtab_inet_twsk_hashdance, ptr @__kstrtabns_inet_twsk_hashdance }, section "___ksymtab_gpl+inet_twsk_hashdance", align 4
@inet_twsk_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&tw->tw_timer)\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_inet_twsk_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_twsk_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_twsk_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_twsk_alloc to i32), ptr @__kstrtab_inet_twsk_alloc, ptr @__kstrtabns_inet_twsk_alloc }, section "___ksymtab_gpl+inet_twsk_alloc", align 4
@__kstrtab_inet_twsk_deschedule_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_twsk_deschedule_put = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_twsk_deschedule_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_twsk_deschedule_put to i32), ptr @__kstrtab_inet_twsk_deschedule_put, ptr @__kstrtabns_inet_twsk_deschedule_put }, section "___ksymtab+inet_twsk_deschedule_put", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab___inet_twsk_schedule = external dso_local constant [0 x i8], align 1
@__kstrtabns___inet_twsk_schedule = external dso_local constant [0 x i8], align 1
@__ksymtab___inet_twsk_schedule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inet_twsk_schedule to i32), ptr @__kstrtab___inet_twsk_schedule, ptr @__kstrtabns___inet_twsk_schedule }, section "___ksymtab_gpl+__inet_twsk_schedule", align 4
@__kstrtab_inet_twsk_purge = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_twsk_purge = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_twsk_purge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_twsk_purge to i32), ptr @__kstrtab_inet_twsk_purge, ptr @__kstrtabns_inet_twsk_purge }, section "___ksymtab_gpl+inet_twsk_purge", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 117, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private constant [33 x i8] c"../net/ipv4/inet_timewait_sock.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 189, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 751, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 695, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 723, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab___inet_twsk_schedule, ptr @__ksymtab_inet_twsk_alloc, ptr @__ksymtab_inet_twsk_deschedule_put, ptr @__ksymtab_inet_twsk_hashdance, ptr @__ksymtab_inet_twsk_purge, ptr @__ksymtab_inet_twsk_put, ptr @.str, ptr @inet_twsk_alloc.__key, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet_twsk_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inet_twsk_bind_unhash(ptr noundef %tw, ptr nocapture noundef readonly %hashinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tw_tb = getelementptr inbounds %struct.inet_timewait_sock, ptr %tw, i32 0, i32 9
  %0 = ptrtoint ptr %tw_tb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tw_tb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %pprev2.i = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 7, i32 0, i32 1
  %5 = ptrtoint ptr %pprev2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pprev2.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %4, ptr %6, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.__hlist_del.exit_crit_edge, label %do.body13.i

if.end.__hlist_del.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__hlist_del.exit

do.body13.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %pprev14.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %pprev14.i, align 4
  br label %__hlist_del.exit

__hlist_del.exit:                                 ; preds = %do.body13.i, %if.end.__hlist_del.exit_crit_edge
  %9 = ptrtoint ptr %tw_tb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tw_tb, align 4
  %bind_bucket_cachep = getelementptr inbounds %struct.inet_hashinfo, ptr %hashinfo, i32 0, i32 4
  %10 = ptrtoint ptr %bind_bucket_cachep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bind_bucket_cachep, align 16
  tail call void @inet_bind_bucket_destroy(ptr noundef %11, ptr noundef nonnull %1) #6
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #6
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #6, !srcloc !39
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %__hlist_del.exit.cleanup_crit_edge, !prof !40

__hlist_del.exit.cleanup_crit_edge:               ; preds = %__hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i.i.i:                                   ; preds = %__hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i.i.i, %__hlist_del.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_bind_bucket_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inet_twsk_free(ptr noundef %tw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 8
  %0 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_prot, align 8
  %owner1 = getelementptr inbounds %struct.proto, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %owner1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner1, align 4
  %twsk_prot.i = getelementptr inbounds %struct.proto, ptr %1, i32 0, i32 49
  %4 = ptrtoint ptr %twsk_prot.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %twsk_prot.i, align 4
  %twsk_destructor.i = getelementptr inbounds %struct.timewait_sock_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %twsk_destructor.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %twsk_destructor.i, align 4
  %cmp.not.i = icmp eq ptr %7, null
  br i1 %cmp.not.i, label %entry.twsk_destructor.exit_crit_edge, label %if.then.i

entry.twsk_destructor.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %twsk_destructor.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef %tw) #6
  br label %twsk_destructor.exit

twsk_destructor.exit:                             ; preds = %if.then.i, %entry.twsk_destructor.exit_crit_edge
  %8 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_prot, align 8
  %twsk_prot = getelementptr inbounds %struct.proto, ptr %9, i32 0, i32 49
  %10 = ptrtoint ptr %twsk_prot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %twsk_prot, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef %tw) #6
  tail call void @module_put(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inet_twsk_put(ptr noundef %tw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #6, !srcloc !39
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !41

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #6
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !42
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 8
  %1 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skc_prot.i, align 8
  %owner1.i = getelementptr inbounds %struct.proto, ptr %2, i32 0, i32 51
  %3 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner1.i, align 4
  %twsk_prot.i.i = getelementptr inbounds %struct.proto, ptr %2, i32 0, i32 49
  %5 = ptrtoint ptr %twsk_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %twsk_prot.i.i, align 4
  %twsk_destructor.i.i = getelementptr inbounds %struct.timewait_sock_ops, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %twsk_destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %twsk_destructor.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %8, null
  br i1 %cmp.not.i.i, label %if.then.inet_twsk_free.exit_crit_edge, label %if.then.i.i

if.then.inet_twsk_free.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %inet_twsk_free.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %8(ptr noundef %tw) #6
  br label %inet_twsk_free.exit

inet_twsk_free.exit:                              ; preds = %if.then.i.i, %if.then.inet_twsk_free.exit_crit_edge
  %9 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_prot.i, align 8
  %twsk_prot.i = getelementptr inbounds %struct.proto, ptr %10, i32 0, i32 49
  %11 = ptrtoint ptr %twsk_prot.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %twsk_prot.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef %tw) #6
  tail call void @module_put(ptr noundef %4) #6
  br label %if.end

if.end:                                           ; preds = %inet_twsk_free.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inet_twsk_hashdance(ptr noundef %tw, ptr noundef %sk, ptr nocapture noundef readonly %hashinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %3 = ptrtoint ptr %hashinfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hashinfo, align 128
  %ehash_mask.i = getelementptr inbounds %struct.inet_hashinfo, ptr %hashinfo, i32 0, i32 2
  %5 = ptrtoint ptr %ehash_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ehash_mask.i, align 8
  %and.i = and i32 %6, %2
  %arrayidx.i = getelementptr %struct.inet_ehash_bucket, ptr %4, i32 %and.i
  %ehash_locks.i = getelementptr inbounds %struct.inet_hashinfo, ptr %hashinfo, i32 0, i32 1
  %7 = ptrtoint ptr %ehash_locks.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ehash_locks.i, align 4
  %ehash_locks_mask.i = getelementptr inbounds %struct.inet_hashinfo, ptr %hashinfo, i32 0, i32 3
  %9 = ptrtoint ptr %ehash_locks_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ehash_locks_mask.i, align 4
  %and.i56 = and i32 %10, %2
  %arrayidx.i57 = getelementptr %struct.spinlock, ptr %8, i32 %and.i56
  %bhash = getelementptr inbounds %struct.inet_hashinfo, ptr %hashinfo, i32 0, i32 5
  %11 = ptrtoint ptr %bhash to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bhash, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 9
  %13 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_net.i, align 4
  %15 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %skc_num, align 2
  %bhash_size = getelementptr inbounds %struct.inet_hashinfo, ptr %hashinfo, i32 0, i32 6
  %18 = ptrtoint ptr %bhash_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bhash_size, align 8
  %conv.i = zext i16 %17 to i32
  %hash_mix.i.i = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 26
  %20 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hash_mix.i.i, align 8
  %add.i = add i32 %21, %conv.i
  %sub.i = add i32 %19, -1
  %and.i58 = and i32 %add.i, %sub.i
  %arrayidx = getelementptr %struct.inet_bind_hashbucket, ptr %12, i32 %and.i58
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #6
  %icsk_bind_hash = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 2
  %22 = ptrtoint ptr %icsk_bind_hash to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %icsk_bind_hash, align 4
  %tw_tb = getelementptr inbounds %struct.inet_timewait_sock, ptr %tw, i32 0, i32 9
  %24 = ptrtoint ptr %tw_tb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %tw_tb, align 4
  %25 = load ptr, ptr %icsk_bind_hash, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !40

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 117, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %26 = ptrtoint ptr %tw_tb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tw_tb, align 4
  %owners = getelementptr inbounds %struct.inet_bind_bucket, ptr %27, i32 0, i32 11
  %28 = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 7
  %29 = ptrtoint ptr %owners to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %owners, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %30, ptr %28, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.inet_twsk_add_bind_node.exit_crit_edge, label %do.body12.i.i

if.end.inet_twsk_add_bind_node.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %inet_twsk_add_bind_node.exit

do.body12.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %28, ptr %pprev.i.i, align 4
  br label %inet_twsk_add_bind_node.exit

inet_twsk_add_bind_node.exit:                     ; preds = %do.body12.i.i, %if.end.inet_twsk_add_bind_node.exit_crit_edge
  %33 = ptrtoint ptr %owners to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %28, ptr %owners, align 4
  %pprev34.i.i = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 7, i32 0, i32 1
  %34 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %owners, ptr %pprev34.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #6
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i57) #6
  %35 = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 15
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %35, align 4
  %pprev.i.i59 = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 15, i32 0, i32 1
  %39 = ptrtoint ptr %pprev.i.i59 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i59, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !43
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %35, ptr %arrayidx.i, align 4
  %41 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i60 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i60, label %do.body49.i.i, label %inet_twsk_add_bind_node.exit.inet_twsk_add_node_rcu.exit_crit_edge

inet_twsk_add_bind_node.exit.inet_twsk_add_node_rcu.exit_crit_edge: ; preds = %inet_twsk_add_bind_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %inet_twsk_add_node_rcu.exit

do.body49.i.i:                                    ; preds = %inet_twsk_add_bind_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pprev51.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %35, ptr %pprev51.i.i, align 4
  br label %inet_twsk_add_node_rcu.exit

inet_twsk_add_node_rcu.exit:                      ; preds = %do.body49.i.i, %inet_twsk_add_bind_node.exit.inet_twsk_add_node_rcu.exit_crit_edge
  %pprev.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %43 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not = icmp eq ptr %44, null
  br i1 %tobool.not.i.i.i.i.not, label %inet_twsk_add_node_rcu.exit.if.end37_crit_edge, label %if.then.i.i

inet_twsk_add_node_rcu.exit.if.end37_crit_edge:   ; preds = %inet_twsk_add_node_rcu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then.i.i:                                      ; preds = %inet_twsk_add_node_rcu.exit
  %45 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %47, ptr %44, align 4
  %49 = ptrtoint ptr %47 to i32
  %and.i.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i7.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i7.i.i, label %do.body13.i.i.i, label %if.then.i.i.if.then34_crit_edge

if.then.i.i.if.then34_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %44, ptr %pprev14.i.i.i, align 4
  br label %if.then34

if.then34:                                        ; preds = %do.body13.i.i.i, %if.then.i.i.if.then34_crit_edge
  %51 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr null, ptr %pprev.i.i.i.i, align 4
  %skc_net.i61 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %52 = ptrtoint ptr %skc_net.i61 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skc_net.i61, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %54 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %skc_prot, align 8
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !44
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %53, i32 0, i32 29, i32 2
  %57 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prot_inuse.i, align 8
  %inuse_idx.i = getelementptr inbounds %struct.proto, ptr %55, i32 0, i32 26
  %59 = ptrtoint ptr %inuse_idx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %inuse_idx.i, align 4
  %arrayidx.i62 = getelementptr %struct.prot_inuse, ptr %58, i32 0, i32 1, i32 %60
  %61 = ptrtoint ptr %arrayidx.i62 to i32
  %62 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx14.i, align 4
  %add.i63 = add i32 %67, %61
  %68 = inttoptr i32 %add.i63 to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add15.i = add i32 %70, -1
  store i32 %add15.i, ptr %68, align 4
  %71 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !45
  %and.i.i.i64 = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i64)
  %tobool.not.i = icmp eq i32 %and.i.i.i64, 0
  br i1 %tobool.not.i, label %if.then.i65, label %if.then34.sock_prot_inuse_add.exit_crit_edge, !prof !40

if.then34.sock_prot_inuse_add.exit_crit_edge:     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_prot_inuse_add.exit

if.then.i65:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i65, %if.then34.sock_prot_inuse_add.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #6, !srcloc !46
  br label %if.end37

if.end37:                                         ; preds = %sock_prot_inuse_add.exit, %inet_twsk_add_node_rcu.exit.if.end37_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i57) #6
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #6
  %72 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 3, ptr %skc_refcnt, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @inet_twsk_alloc(ptr noundef %sk, ptr noundef %dr, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dr, i32 noundef 4) #6
  %0 = ptrtoint ptr %dr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dr, align 4
  %sysctl_max_tw_buckets = getelementptr inbounds %struct.inet_timewait_death_row, ptr %dr, i32 0, i32 3
  %2 = ptrtoint ptr %sysctl_max_tw_buckets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sysctl_max_tw_buckets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp slt i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk_prot_creator = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 49
  %4 = ptrtoint ptr %sk_prot_creator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_prot_creator, align 4
  %twsk_prot = getelementptr inbounds %struct.proto, ptr %5, i32 0, i32 49
  %6 = ptrtoint ptr %twsk_prot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %twsk_prot, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef 2592) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dr, ptr %10, align 8
  %12 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sk, align 8
  %14 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %call1, align 8
  %skc_rcv_saddr = getelementptr inbounds %struct.anon, ptr %sk, i32 0, i32 1
  %15 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %skc_rcv_saddr, align 4
  %skc_rcv_saddr10 = getelementptr inbounds %struct.anon, ptr %call1, i32 0, i32 1
  %17 = ptrtoint ptr %skc_rcv_saddr10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %skc_rcv_saddr10, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %18 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %skc_bound_dev_if, align 4
  %skc_bound_dev_if13 = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 6
  %20 = ptrtoint ptr %skc_bound_dev_if13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %skc_bound_dev_if13, align 4
  %tos = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 8
  %21 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tos, align 4
  %conv = zext i8 %22 to i32
  %tw_tos = getelementptr inbounds %struct.inet_timewait_sock, ptr %call1, i32 0, i32 5
  %23 = ptrtoint ptr %tw_tos to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load = load i32, ptr %tw_tos, align 8
  %bf.clear = and i32 %bf.load, -1073742080
  %bf.set = or i32 %bf.clear, %conv
  %24 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %skc_num, align 2
  %27 = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 2
  %skc_num17 = getelementptr inbounds %struct.anon.2, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %skc_num17 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %26, ptr %skc_num17, align 2
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 4
  %29 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %29)
  store volatile i8 6, ptr %skc_state, align 2
  %conv19 = trunc i32 %state to i8
  %tw_substate = getelementptr inbounds %struct.inet_timewait_sock, ptr %call1, i32 0, i32 2
  %30 = ptrtoint ptr %tw_substate to i32
  call void @__asan_store1_noabort(i32 %30)
  store volatile i8 %conv19, ptr %tw_substate, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %31 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %inet_sport, align 8
  %tw_sport = getelementptr inbounds %struct.inet_timewait_sock, ptr %call1, i32 0, i32 4
  %33 = ptrtoint ptr %tw_sport to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %tw_sport, align 2
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %24, align 4
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %27, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %37 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %skc_family, align 8
  %skc_family26 = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 3
  %39 = ptrtoint ptr %skc_family26 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %skc_family26, align 8
  %skc_reuse = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %40 = ptrtoint ptr %skc_reuse to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load28 = load i8, ptr %skc_reuse, align 1
  %skc_reuse30 = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 5
  %41 = ptrtoint ptr %skc_reuse30 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load31 = load i8, ptr %skc_reuse30, align 1
  %bf.clear33 = and i8 %bf.load31, 3
  %bf.set34 = and i8 %bf.load28, -8
  %bf.set45 = or i8 %bf.set34, %bf.clear33
  %42 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %45 = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %45, align 8
  store i8 %bf.set45, ptr %skc_reuse30, align 1
  %transparent = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %47 = ptrtoint ptr %transparent to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load52 = load i16, ptr %transparent, align 8
  %bf.lshr53 = lshr i16 %bf.load52, 10
  %48 = and i16 %bf.lshr53, 1
  %bf.value57 = zext i16 %48 to i32
  %bf.shl58 = shl nuw nsw i32 %bf.value57, 30
  %bf.set60 = or i32 %bf.shl58, %bf.set
  store i32 %bf.set60, ptr %tw_tos, align 8
  %49 = ptrtoint ptr %sk_prot_creator to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sk_prot_creator, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 8
  %51 = ptrtoint ptr %skc_prot to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %skc_prot, align 8
  %skc_cookie = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 12
  %skc_cookie65 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 12
  %call.i.i112 = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_cookie65, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %skc_cookie65) #6
  %call.i.i113 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_cookie, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef %skc_cookie, i64 noundef %call.i) #6
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %52 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skc_net.i, align 4
  %skc_net.i114 = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 9
  %54 = ptrtoint ptr %skc_net.i114 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %skc_net.i114, align 4
  %tw_timer = getelementptr inbounds %struct.inet_timewait_sock, ptr %call1, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %tw_timer, ptr noundef nonnull @tw_timer_handler, i32 noundef 1048576, ptr noundef nonnull @.str.1, ptr noundef nonnull @inet_twsk_alloc.__key) #6
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #6
  %55 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 0, ptr %skc_refcnt, align 4
  %56 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skc_prot, align 8
  %owner = getelementptr inbounds %struct.proto, ptr %57, i32 0, i32 51
  %58 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %owner, align 4
  tail call void @__module_get(ptr noundef %59) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call1, %if.then2 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw_timer_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tw_kill = getelementptr i8, ptr %t, i32 -12
  %0 = ptrtoint ptr %tw_kill to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %tw_kill, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  %skc_net.i46 = getelementptr i8, ptr %t, i32 -96
  %1 = ptrtoint ptr %skc_net.i46 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skc_net.i46, align 4
  %net_statistics30 = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 30, i32 3
  %3 = ptrtoint ptr %net_statistics30 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net_statistics30, align 4
  %. = select i1 %tobool.not, i32 11, i32 13
  %arrayidx32 = getelementptr [126 x i32], ptr %4, i32 0, i32 %.
  %5 = ptrtoint ptr %arrayidx32 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i47 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i47 to ptr
  %cpu35 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu35, align 4
  %arrayidx36 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx36, align 4
  %add37 = add i32 %11, %5
  %12 = inttoptr i32 %add37 to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add38 = add i32 %14, 1
  store i32 %add38, ptr %12, align 4
  %add.ptr = getelementptr i8, ptr %t, i32 -132
  tail call fastcc void @inet_twsk_kill(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inet_twsk_deschedule_put(ptr noundef %tw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tw_timer = getelementptr inbounds %struct.inet_timewait_sock, ptr %tw, i32 0, i32 8
  %call = tail call i32 @del_timer_sync(ptr noundef %tw_timer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @inet_twsk_kill(ptr noundef %tw)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @inet_twsk_put(ptr noundef %tw)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inet_twsk_kill(ptr noundef %tw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %hashinfo1 = getelementptr inbounds %struct.inet_timewait_death_row, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %hashinfo1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hashinfo1, align 4
  %5 = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %ehash_locks.i = getelementptr inbounds %struct.inet_hashinfo, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %ehash_locks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ehash_locks.i, align 4
  %ehash_locks_mask.i = getelementptr inbounds %struct.inet_hashinfo, ptr %4, i32 0, i32 3
  %10 = ptrtoint ptr %ehash_locks_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ehash_locks_mask.i, align 4
  %and.i = and i32 %11, %7
  %arrayidx.i = getelementptr %struct.spinlock, ptr %9, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i) #6
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 15, i32 0, i32 1
  %12 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i.i.not.i, label %entry.sk_nulls_del_node_init_rcu.exit_crit_edge, label %if.then.i.i.i

entry.sk_nulls_del_node_init_rcu.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_nulls_del_node_init_rcu.exit

if.then.i.i.i:                                    ; preds = %entry
  %14 = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 15
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %13, align 4
  %18 = ptrtoint ptr %16 to i32
  %and.i.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i7.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i7.i.i.i, label %do.body13.i.i.i.i, label %if.then.i.i.i.if.then.i_crit_edge

if.then.i.i.i.if.then.i_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %13, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.if.then.i_crit_edge
  %20 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  %21 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i = icmp eq i32 %22, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !40

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 751, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #6
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #6, !srcloc !39
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.sk_nulls_del_node_init_rcu.exit_crit_edge, !prof !40

if.end.i.sk_nulls_del_node_init_rcu.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_nulls_del_node_init_rcu.exit

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  br label %sk_nulls_del_node_init_rcu.exit

sk_nulls_del_node_init_rcu.exit:                  ; preds = %if.then3.i.i.i.i, %if.end.i.sk_nulls_del_node_init_rcu.exit_crit_edge, %entry.sk_nulls_del_node_init_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #6
  %bhash = getelementptr inbounds %struct.inet_hashinfo, ptr %4, i32 0, i32 5
  %24 = ptrtoint ptr %bhash to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bhash, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 9
  %26 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skc_net.i, align 4
  %28 = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %skc_num, align 2
  %bhash_size = getelementptr inbounds %struct.inet_hashinfo, ptr %4, i32 0, i32 6
  %31 = ptrtoint ptr %bhash_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bhash_size, align 8
  %conv.i = zext i16 %30 to i32
  %hash_mix.i.i = getelementptr inbounds %struct.net, ptr %27, i32 0, i32 26
  %33 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hash_mix.i.i, align 8
  %add.i = add i32 %34, %conv.i
  %sub.i = add i32 %32, -1
  %and.i22 = and i32 %add.i, %sub.i
  %arrayidx = getelementptr %struct.inet_bind_hashbucket, ptr %25, i32 %and.i22
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #6
  %tw_tb.i = getelementptr inbounds %struct.inet_timewait_sock, ptr %tw, i32 0, i32 9
  %35 = ptrtoint ptr %tw_tb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tw_tb.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %sk_nulls_del_node_init_rcu.exit.inet_twsk_bind_unhash.exit_crit_edge, label %if.end.i23

sk_nulls_del_node_init_rcu.exit.inet_twsk_bind_unhash.exit_crit_edge: ; preds = %sk_nulls_del_node_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %inet_twsk_bind_unhash.exit

if.end.i23:                                       ; preds = %sk_nulls_del_node_init_rcu.exit
  %37 = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 7
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %pprev2.i.i = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 7, i32 0, i32 1
  %40 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pprev2.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %39, ptr %41, align 4
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.end.i23.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.end.i23.__hlist_del.exit.i_crit_edge:          ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %39, i32 0, i32 1
  %43 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.end.i23.__hlist_del.exit.i_crit_edge
  %44 = ptrtoint ptr %tw_tb.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %tw_tb.i, align 4
  %bind_bucket_cachep.i = getelementptr inbounds %struct.inet_hashinfo, ptr %4, i32 0, i32 4
  %45 = ptrtoint ptr %bind_bucket_cachep.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bind_bucket_cachep.i, align 16
  tail call void @inet_bind_bucket_destroy(ptr noundef %46, ptr noundef nonnull %36) #6
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 19
  %call.i.i.i.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #6
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #6, !srcloc !39
  %asmresult.i.i.i.i.i.i.i25 = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i25)
  %cmp.i.i.i.i26 = icmp slt i32 %asmresult.i.i.i.i.i.i.i25, 2
  br i1 %cmp.i.i.i.i26, label %if.then3.i.i.i.i27, label %__hlist_del.exit.i.inet_twsk_bind_unhash.exit_crit_edge, !prof !40

__hlist_del.exit.i.inet_twsk_bind_unhash.exit_crit_edge: ; preds = %__hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inet_twsk_bind_unhash.exit

if.then3.i.i.i.i27:                               ; preds = %__hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #6
  br label %inet_twsk_bind_unhash.exit

inet_twsk_bind_unhash.exit:                       ; preds = %if.then3.i.i.i.i27, %__hlist_del.exit.i.inet_twsk_bind_unhash.exit_crit_edge, %sk_nulls_del_node_init_rcu.exit.inet_twsk_bind_unhash.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #6
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %0, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %49, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %49, i32 1, i32 3, i32 1) #6
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #6, !srcloc !47
  tail call void @inet_twsk_put(ptr noundef %tw)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__inet_twsk_schedule(ptr noundef %tw, i32 noundef %timeo, i1 noundef zeroext %rearm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 401, i32 %timeo)
  %cmp = icmp slt i32 %timeo, 401
  %tw_kill = getelementptr inbounds %struct.inet_timewait_sock, ptr %tw, i32 0, i32 5
  %0 = ptrtoint ptr %tw_kill to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %tw_kill, align 8
  %bf.shl = select i1 %cmp, i32 -2147483648, i32 0
  %bf.clear = and i32 %bf.load, 2147483647
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %tw_kill, align 8
  %tw_timer9 = getelementptr inbounds %struct.inet_timewait_sock, ptr %tw, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add10 = add i32 %1, %timeo
  br i1 %rearm, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  %call = tail call i32 @mod_timer(ptr noundef %tw_timer9, i32 noundef %add10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end8, label %do.body5, !prof !41

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/inet_timewait_sock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 249, 0\0A.popsection", ""() #6, !srcloc !48
  unreachable

do.end8:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = getelementptr inbounds %struct.sock_common, ptr %tw, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #6, !srcloc !49
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 @mod_timer_pending(ptr noundef %tw_timer9, i32 noundef %add10) #6
  br label %if.end12

if.end12:                                         ; preds = %if.else, %do.end8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer_pending(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inet_twsk_purge(ptr nocapture noundef readonly %hashinfo, i32 noundef %family) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ehash_mask = getelementptr inbounds %struct.inet_hashinfo, ptr %hashinfo, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit98.for.body_crit_edge, %entry
  %slot.0109 = phi i32 [ 0, %entry ], [ %inc, %rcu_read_unlock.exit98.for.body_crit_edge ]
  %0 = ptrtoint ptr %hashinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hashinfo, align 128
  %arrayidx = getelementptr %struct.inet_ehash_bucket, ptr %1, i32 %slot.0109
  br label %restart_rcu

restart_rcu:                                      ; preds = %inet_twsk_deschedule_put.exit, %for.body
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 0) #6
  %call.i72 = call i32 @__cond_resched() #6
  %2 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !50
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %restart_rcu.restart.preheader_crit_edge, label %land.lhs.true.i

restart_rcu.restart.preheader_crit_edge:          ; preds = %restart_rcu
  call void @__sanitizer_cov_trace_pc() #8
  br label %restart.preheader

land.lhs.true.i:                                  ; preds = %restart_rcu
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.restart.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.restart.preheader_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %restart.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.restart.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.restart.preheader_crit_edge:     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %restart.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #6
  br label %restart.preheader

restart.preheader:                                ; preds = %if.then.i, %land.lhs.true2.i.restart.preheader_crit_edge, %land.lhs.true.i.restart.preheader_crit_edge, %restart_rcu.restart.preheader_crit_edge
  br label %restart

restart:                                          ; preds = %restart.backedge, %restart.preheader
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !51
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.0105 = load volatile ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %node.0105 to i32
  %and.i106 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool.not107 = icmp eq i32 %and.i106, 0
  br i1 %tobool.not107, label %restart.land.rhs_crit_edge, label %restart.for.end_crit_edge

restart.for.end_crit_edge:                        ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

restart.land.rhs_crit_edge:                       ; preds = %restart
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %restart.land.rhs_crit_edge
  %node.0108 = phi ptr [ %node.0, %for.inc.land.rhs_crit_edge ], [ %node.0105, %restart.land.rhs_crit_edge ]
  %skc_state = getelementptr i8, ptr %node.0108, i32 -66
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp9.not = icmp eq i8 %9, 6
  br i1 %cmp9.not, label %if.end, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %land.rhs
  %skc_family = getelementptr i8, ptr %node.0108, i32 -68
  %10 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %skc_family, align 8
  %conv12 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12, i32 %family)
  %cmp13.not = icmp eq i32 %conv12, %family
  br i1 %cmp13.not, label %lor.lhs.false, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end
  %skc_net.i = getelementptr i8, ptr %node.0108, i32 -48
  %12 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i, align 4
  %count = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 14, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %count, i32 noundef 4) #6
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not = icmp eq i32 %15, 0
  br i1 %tobool17.not, label %if.end19, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end19:                                         ; preds = %lor.lhs.false
  %skc_refcnt = getelementptr i8, ptr %node.0108, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #6
  %16 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end19
  %18 = phi i32 [ %17, %if.end19 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %19 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i73 = add i32 %18, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #6
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #6
  %20 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %21, i32 %add.i.i.i73, ptr elementtype(i32) %skc_refcnt) #6, !srcloc !52
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %21
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !41

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %23 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %24, 1
  %25 = or i32 %add5.i.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !41

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #6
  %26 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %27 = phi i32 [ %24, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.i.i.i.not = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #6
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.inc_crit_edge, label %if.end26, !prof !40

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end26:                                         ; preds = %refcount_inc_not_zero.exit
  %skc_family.le = getelementptr i8, ptr %node.0108, i32 -68
  %add.ptr.le = getelementptr i8, ptr %node.0108, i32 -84
  %28 = ptrtoint ptr %skc_family.le to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %skc_family.le, align 8
  %conv29 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29, i32 %family)
  %cmp30.not = icmp eq i32 %conv29, %family
  br i1 %cmp30.not, label %lor.rhs, label %if.end26.if.then43_crit_edge, !prof !41

if.end26.if.then43_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

lor.rhs:                                          ; preds = %if.end26
  %skc_net.i.le = getelementptr i8, ptr %node.0108, i32 -48
  %30 = ptrtoint ptr %skc_net.i.le to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skc_net.i.le, align 4
  %count34 = getelementptr inbounds %struct.net, ptr %31, i32 0, i32 14, i32 3
  %call.i.i.i75 = call zeroext i1 @__kasan_check_read(ptr noundef %count34, i32 noundef 4) #6
  %32 = ptrtoint ptr %count34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %count34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool36.not = icmp eq i32 %33, 0
  br i1 %tobool36.not, label %if.end44, label %lor.rhs.if.then43_crit_edge, !prof !41

lor.rhs.if.then43_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

if.then43:                                        ; preds = %lor.rhs.if.then43_crit_edge, %if.end26.if.then43_crit_edge
  call void @inet_twsk_put(ptr noundef %add.ptr.le)
  br label %restart.backedge

restart.backedge:                                 ; preds = %for.end.restart.backedge_crit_edge, %if.then43
  br label %restart

if.end44:                                         ; preds = %lor.rhs
  %call.i76 = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i76, label %if.end44.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i79

if.end44.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i79:                                ; preds = %if.end44
  %call1.i77 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool.not.i78 = icmp eq i32 %call1.i77, 0
  br i1 %tobool.not.i78, label %land.lhs.true.i79.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i81

land.lhs.true.i79.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i81:                               ; preds = %land.lhs.true.i79
  %.b4.i80 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i80, label %land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge, label %if.then.i82

land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i82:                                      ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i82, %land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i79.rcu_read_unlock.exit_crit_edge, %if.end44.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !53
  %34 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i83 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i83 to ptr
  %preempt_count.i.i.i.i84 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i84, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i84, align 4
  call void @rcu_read_unlock_strict() #6
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  call fastcc void @local_bh_disable()
  %tw_timer.i = getelementptr i8, ptr %node.0108, i32 48
  %call.i85 = call i32 @del_timer_sync(ptr noundef %tw_timer.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool.not.i86 = icmp eq i32 %call.i85, 0
  br i1 %tobool.not.i86, label %rcu_read_unlock.exit.inet_twsk_deschedule_put.exit_crit_edge, label %if.then.i87

rcu_read_unlock.exit.inet_twsk_deschedule_put.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %inet_twsk_deschedule_put.exit

if.then.i87:                                      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @inet_twsk_kill(ptr noundef %add.ptr.le) #6
  br label %inet_twsk_deschedule_put.exit

inet_twsk_deschedule_put.exit:                    ; preds = %if.then.i87, %rcu_read_unlock.exit.inet_twsk_deschedule_put.exit_crit_edge
  call void @inet_twsk_put(ptr noundef %add.ptr.le) #6
  call fastcc void @local_bh_enable()
  br label %restart_rcu

for.inc:                                          ; preds = %refcount_inc_not_zero.exit.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %38 = ptrtoint ptr %node.0108 to i32
  call void @__asan_load4_noabort(i32 %38)
  %node.0 = load volatile ptr, ptr %node.0108, align 4
  %39 = ptrtoint ptr %node.0 to i32
  %and.i = and i32 %39, 1
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %for.inc.land.rhs_crit_edge, label %for.end.loopexit

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %node.0 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %restart.for.end_crit_edge
  %.pre-phi = phi i32 [ %7, %restart.for.end_crit_edge ], [ %40, %for.end.loopexit ]
  %shr.i = lshr i32 %.pre-phi, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %slot.0109)
  %cmp51.not = icmp eq i32 %shr.i, %slot.0109
  br i1 %cmp51.not, label %if.end54, label %for.end.restart.backedge_crit_edge

for.end.restart.backedge_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %restart.backedge

if.end54:                                         ; preds = %for.end
  %call.i88 = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i88, label %if.end54.rcu_read_unlock.exit98_crit_edge, label %land.lhs.true.i91

if.end54.rcu_read_unlock.exit98_crit_edge:        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit98

land.lhs.true.i91:                                ; preds = %if.end54
  %call1.i89 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i89)
  %tobool.not.i90 = icmp eq i32 %call1.i89, 0
  br i1 %tobool.not.i90, label %land.lhs.true.i91.rcu_read_unlock.exit98_crit_edge, label %land.lhs.true2.i93

land.lhs.true.i91.rcu_read_unlock.exit98_crit_edge: ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit98

land.lhs.true2.i93:                               ; preds = %land.lhs.true.i91
  %.b4.i92 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i92, label %land.lhs.true2.i93.rcu_read_unlock.exit98_crit_edge, label %if.then.i94

land.lhs.true2.i93.rcu_read_unlock.exit98_crit_edge: ; preds = %land.lhs.true2.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit98

if.then.i94:                                      ; preds = %land.lhs.true2.i93
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #6
  br label %rcu_read_unlock.exit98

rcu_read_unlock.exit98:                           ; preds = %if.then.i94, %land.lhs.true2.i93.rcu_read_unlock.exit98_crit_edge, %land.lhs.true.i91.rcu_read_unlock.exit98_crit_edge, %if.end54.rcu_read_unlock.exit98_crit_edge
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !53
  %41 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i95 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i95 to ptr
  %preempt_count.i.i.i.i96 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i96, align 4
  %sub.i.i.i97 = add i32 %44, -1
  store volatile i32 %sub.i.i.i97, ptr %preempt_count.i.i.i.i96, align 4
  call void @rcu_read_unlock_strict() #6
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %inc = add i32 %slot.0109, 1
  %45 = ptrtoint ptr %ehash_mask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ehash_mask, align 8
  %cmp.not = icmp ugt i32 %inc, %46
  br i1 %cmp.not, label %for.end56, label %rcu_read_unlock.exit98.for.body_crit_edge

rcu_read_unlock.exit98.for.body_crit_edge:        ; preds = %rcu_read_unlock.exit98
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end56:                                        ; preds = %rcu_read_unlock.exit98
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__ksymtab_inet_twsk_put, !1, !"__ksymtab_inet_twsk_put", i1 false, i1 false}
!1 = !{!"../net/ipv4/inet_timewait_sock.c", i32 82, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ipv4/inet_timewait_sock.c", i32 117, i32 2}
!4 = !{ptr @__ksymtab_inet_twsk_hashdance, !5, !"__ksymtab_inet_twsk_hashdance", i1 false, i1 false}
!5 = !{!"../net/ipv4/inet_timewait_sock.c", i32 142, i32 1}
!6 = !{ptr @inet_twsk_alloc.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../net/ipv4/inet_timewait_sock.c", i32 189, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ksymtab_inet_twsk_alloc, !10, !"__ksymtab_inet_twsk_alloc", i1 false, i1 false}
!10 = !{!"../net/ipv4/inet_timewait_sock.c", i32 202, i32 1}
!11 = !{ptr @__ksymtab_inet_twsk_deschedule_put, !12, !"__ksymtab_inet_twsk_deschedule_put", i1 false, i1 false}
!12 = !{!"../net/ipv4/inet_timewait_sock.c", i32 218, i32 1}
!13 = !{ptr @__ksymtab___inet_twsk_schedule, !14, !"__ksymtab___inet_twsk_schedule", i1 false, i1 false}
!14 = !{!"../net/ipv4/inet_timewait_sock.c", i32 255, i32 1}
!15 = !{ptr @__ksymtab_inet_twsk_purge, !16, !"__ksymtab_inet_twsk_purge", i1 false, i1 false}
!16 = !{!"../net/ipv4/inet_timewait_sock.c", i32 302, i32 1}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/ipv4/inet_timewait_sock.c", i32 149, i32 3}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/net/sock.h", i32 751, i32 3}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2148306441}
!39 = !{i64 2148220905, i64 2148220937, i64 2148220966, i64 2148221000, i64 2148221031, i64 2148221054}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2149875030}
!43 = !{i64 2156332452}
!44 = !{i64 609391, i64 609452}
!45 = !{i64 612123}
!46 = !{i64 612408}
!47 = !{i64 2148219375, i64 2148219401, i64 2148219430, i64 2148219464, i64 2148219495, i64 2148219518}
!48 = !{i64 2157274674, i64 2157275168, i64 2157274711, i64 2157274767, i64 2157274801, i64 2157274825, i64 2157274866, i64 2157274887, i64 2157274915, i64 2157274949}
!49 = !{i64 2148216910, i64 2148216936, i64 2148216965, i64 2148216999, i64 2148217030, i64 2148217053}
!50 = !{i64 2149924573}
!51 = !{i64 2157278147}
!52 = !{i64 700646, i64 700670, i64 700691, i64 700708, i64 700725}
!53 = !{i64 2149924839}
