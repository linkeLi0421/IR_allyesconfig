; ModuleID = '/llk/IR_all_yes/net/ipv6/inet6_hashtables.c_pt.bc'
source_filename = "../net/ipv6/inet6_hashtables.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__inet6_lookup_established\22, \22a\22\09"
module asm "\09.weak\09__crc___inet6_lookup_established\09\09\09\09"
module asm "\09.long\09__crc___inet6_lookup_established\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inet6_lookup_established:\09\09\09\09\09"
module asm "\09.asciz \09\22__inet6_lookup_established\22\09\09\09\09\09"
module asm "__kstrtabns___inet6_lookup_established:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inet6_lookup_listener\22, \22a\22\09"
module asm "\09.weak\09__crc_inet6_lookup_listener\09\09\09\09"
module asm "\09.long\09__crc_inet6_lookup_listener\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_lookup_listener:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_lookup_listener\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_lookup_listener:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inet6_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_inet6_lookup\09\09\09\09"
module asm "\09.long\09__crc_inet6_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inet6_hash_connect\22, \22a\22\09"
module asm "\09.weak\09__crc_inet6_hash_connect\09\09\09\09"
module asm "\09.long\09__crc_inet6_hash_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_hash_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_hash_connect\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_hash_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inet6_hash\22, \22a\22\09"
module asm "\09.weak\09__crc_inet6_hash\09\09\09\09"
module asm "\09.long\09__crc_inet6_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_hash\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%union.anon.63 = type { i32 }
%struct.in6_addr = type { %union.anon.141 }
%union.anon.141 = type { [4 x i32] }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [92 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.169 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.169 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.182, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.182 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
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
%struct.inet_ehash_bucket = type { %struct.hlist_nulls_head }
%struct.hlist_nulls_head = type { ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.170, [0 x i32], %union.anon.171, i16, i16, %union.anon.172, %struct.refcount_struct, [0 x i32], %union.anon.173 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.170 = type { i32 }
%union.anon.171 = type { %struct.hlist_node }
%union.anon.172 = type { i32 }
%union.anon.173 = type { i32 }
%struct.anon.18 = type { i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.193, %struct.anon.194, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.174, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.175, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.176, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.174 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.175 = type { ptr }
%union.anon.176 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.180 }
%union.anon.180 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.193 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.194 = type { i32, i32, i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.168, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.168 = type { ptr }
%struct.timewait_sock_ops = type { ptr, ptr, i32, ptr, ptr }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.bpf_sk_lookup_kern = type { i16, i16, i16, i16, %struct.anon.191, %struct.anon.192, ptr, i32, i8 }
%struct.anon.191 = type { i32, i32 }
%struct.anon.192 = type { ptr, ptr }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { ptr, %union.anon.178 }
%union.anon.178 = type { i64 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.129 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { %struct.anon.131, [0 x %struct.sock_filter] }
%struct.anon.131 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }

@inet6_ehashfn.inet6_ehash_secret = internal global i32 0, section ".data..read_mostly", align 4
@inet6_ehashfn.ipv6_hash_secret = internal global i32 0, section ".data..read_mostly", align 4
@inet6_ehashfn.___done = internal global i8 0, section ".data.once", align 1
@inet6_ehashfn.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@inet6_ehashfn.___done.1 = internal global i8 0, section ".data.once", align 1
@inet6_ehashfn.___once_key.2 = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@__kstrtab___inet6_lookup_established = external dso_local constant [0 x i8], align 1
@__kstrtabns___inet6_lookup_established = external dso_local constant [0 x i8], align 1
@__ksymtab___inet6_lookup_established = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inet6_lookup_established to i32), ptr @__kstrtab___inet6_lookup_established, ptr @__kstrtabns___inet6_lookup_established }, section "___ksymtab+__inet6_lookup_established", align 4
@bpf_sk_lookup_enabled = external dso_local global %struct.static_key_false, align 4
@in6addr_any = external dso_local constant %struct.in6_addr, align 4
@__kstrtab_inet6_lookup_listener = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_lookup_listener = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_lookup_listener = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_lookup_listener to i32), ptr @__kstrtab_inet6_lookup_listener, ptr @__kstrtabns_inet6_lookup_listener }, section "___ksymtab_gpl+inet6_lookup_listener", align 4
@__kstrtab_inet6_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_lookup to i32), ptr @__kstrtab_inet6_lookup, ptr @__kstrtabns_inet6_lookup }, section "___ksymtab_gpl+inet6_lookup", align 4
@__kstrtab_inet6_hash_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_hash_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_hash_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_hash_connect to i32), ptr @__kstrtab_inet6_hash_connect, ptr @__kstrtabns_inet6_hash_connect }, section "___ksymtab_gpl+inet6_hash_connect", align 4
@__kstrtab_inet6_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_hash to i32), ptr @__kstrtab_inet6_hash, ptr @__kstrtabns_inet6_hash }, section "___ksymtab_gpl+inet6_hash", align 4
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 128
@bpf_sk_lookup_run_v6.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@inet6_lhash2_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/ipv6/inet6_hashtables.c\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 35, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 36, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 1487, i32 14 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 695, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 271, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 723, i32 2 }
@___asan_gen_.40 = private constant [31 x i8] c"../net/ipv6/inet6_hashtables.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 145, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 751, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab___inet6_lookup_established, ptr @__ksymtab_inet6_hash, ptr @__ksymtab_inet6_hash_connect, ptr @__ksymtab_inet6_lookup, ptr @__ksymtab_inet6_lookup_listener, ptr @inet6_ehashfn.___once_key, ptr @inet6_ehashfn.___once_key.2, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet6_ehashfn.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet6_ehashfn.___once_key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inet6_ehashfn(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %laddr, i16 noundef zeroext %lport, ptr nocapture noundef readonly %faddr, i16 noundef zeroext %fport) local_unnamed_addr #0 align 64 {
entry:
  %___flags = alloca i32, align 4
  %___flags31 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @inet6_ehashfn.___once_key, ptr blockaddress(@inet6_ehashfn, %if.then)) #9
          to label %if.end13 [label %if.then], !srcloc !52

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags) #9
  %0 = ptrtoint ptr %___flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %___flags, align 4, !annotation !53
  %call3 = call zeroext i1 @__do_once_start(ptr noundef nonnull @inet6_ehashfn.___done, ptr noundef nonnull %___flags) #9
  br i1 %call3, label %if.then12, label %if.then.if.end_crit_edge, !prof !54

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @get_random_bytes(ptr noundef nonnull @inet6_ehashfn.inet6_ehash_secret, i32 noundef 4) #9
  call void @__do_once_done(ptr noundef nonnull @inet6_ehashfn.___done, ptr noundef nonnull @inet6_ehashfn.___once_key, ptr noundef nonnull %___flags, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags) #9
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @inet6_ehashfn.___once_key.2, ptr blockaddress(@inet6_ehashfn, %if.then30)) #9
          to label %if.end43 [label %if.then30], !srcloc !52

if.then30:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags31) #9
  %1 = ptrtoint ptr %___flags31 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %___flags31, align 4, !annotation !53
  %call32 = call zeroext i1 @__do_once_start(ptr noundef nonnull @inet6_ehashfn.___done.1, ptr noundef nonnull %___flags31) #9
  br i1 %call32, label %if.then41, label %if.then30.if.end42_crit_edge, !prof !54

if.then30.if.end42_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then41:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  call void @get_random_bytes(ptr noundef nonnull @inet6_ehashfn.ipv6_hash_secret, i32 noundef 4) #9
  call void @__do_once_done(ptr noundef nonnull @inet6_ehashfn.___done.1, ptr noundef nonnull @inet6_ehashfn.___once_key.2, ptr noundef nonnull %___flags31, ptr noundef null) #9
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.then30.if.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags31) #9
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end13
  %arrayidx = getelementptr [4 x i32], ptr %laddr, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load i32, ptr @inet6_ehashfn.ipv6_hash_secret, align 4
  %5 = ptrtoint ptr %faddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %faddr, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %faddr, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2.i, align 4
  %xor.i = xor i32 %8, %6
  %arrayidx4.i = getelementptr [4 x i32], ptr %faddr, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %faddr, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6.i, align 4
  %add1.i.i = add i32 %4, -559038725
  %add.i.i.i = add i32 %xor.i, %add1.i.i
  %add1.i.i.i = add i32 %10, %add1.i.i
  %add2.i.i.i = add i32 %12, %add1.i.i
  %xor.i.i.i = xor i32 %add2.i.i.i, %add1.i.i.i
  %or.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #9
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i
  %or.i52.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #9
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i52.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i53.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #9
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i53.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i54.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #9
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i54.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i55.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #9
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i55.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i56.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #9
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i56.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i57.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #9
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i57.i.i.i
  %13 = load i32, ptr @inet6_ehashfn.inet6_ehash_secret, align 4
  %hash_mix.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 26
  %14 = ptrtoint ptr %hash_mix.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hash_mix.i, align 8
  %conv.i = zext i16 %lport to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv1.i = zext i16 %fport to i32
  %or.i = or i32 %shl.i, %conv1.i
  %add = add i32 %13, -559038725
  %add1.i.i56 = add i32 %add, %15
  %add.i.i.i57 = add i32 %add1.i.i56, %3
  %add1.i.i.i58 = add i32 %sub20.i.i.i, %add1.i.i56
  %add2.i.i.i59 = add i32 %or.i, %add1.i.i56
  %xor.i.i.i60 = xor i32 %add1.i.i.i58, %add2.i.i.i59
  %or.i.i.i.i61 = call i32 @llvm.fshl.i32(i32 %add1.i.i.i58, i32 %add1.i.i.i58, i32 14) #9
  %sub.i.i.i62 = sub i32 %xor.i.i.i60, %or.i.i.i.i61
  %xor3.i.i.i63 = xor i32 %sub.i.i.i62, %add.i.i.i57
  %or.i52.i.i.i64 = call i32 @llvm.fshl.i32(i32 %sub.i.i.i62, i32 %sub.i.i.i62, i32 11) #9
  %sub5.i.i.i65 = sub i32 %xor3.i.i.i63, %or.i52.i.i.i64
  %xor6.i.i.i66 = xor i32 %sub5.i.i.i65, %add1.i.i.i58
  %or.i53.i.i.i67 = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i65, i32 %sub5.i.i.i65, i32 25) #9
  %sub8.i.i.i68 = sub i32 %xor6.i.i.i66, %or.i53.i.i.i67
  %xor9.i.i.i69 = xor i32 %sub8.i.i.i68, %sub.i.i.i62
  %or.i54.i.i.i70 = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i68, i32 %sub8.i.i.i68, i32 16) #9
  %sub11.i.i.i71 = sub i32 %xor9.i.i.i69, %or.i54.i.i.i70
  %xor12.i.i.i72 = xor i32 %sub11.i.i.i71, %sub5.i.i.i65
  %or.i55.i.i.i73 = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i71, i32 %sub11.i.i.i71, i32 4) #9
  %sub14.i.i.i74 = sub i32 %xor12.i.i.i72, %or.i55.i.i.i73
  %xor15.i.i.i75 = xor i32 %sub14.i.i.i74, %sub8.i.i.i68
  %or.i56.i.i.i76 = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i74, i32 %sub14.i.i.i74, i32 14) #9
  %sub17.i.i.i77 = sub i32 %xor15.i.i.i75, %or.i56.i.i.i76
  %xor18.i.i.i78 = xor i32 %sub17.i.i.i77, %sub11.i.i.i71
  %or.i57.i.i.i79 = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i77, i32 %sub17.i.i.i77, i32 24) #9
  %sub20.i.i.i80 = sub i32 %xor18.i.i.i78, %or.i57.i.i.i79
  ret i32 %sub20.i.i.i80
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__inet6_lookup_established(ptr noundef readonly %net, ptr nocapture noundef readonly %hashinfo, ptr nocapture noundef readonly %saddr, i16 noundef zeroext %sport, ptr nocapture noundef readonly %daddr, i16 noundef zeroext %hnum, i32 noundef %dif, i32 noundef %sdif) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %sport to i32
  %shl = shl nuw i32 %conv, 16
  %conv1 = zext i16 %hnum to i32
  %or = or i32 %shl, %conv1
  %call = tail call i32 @inet6_ehashfn(ptr noundef %net, ptr noundef %daddr, i16 noundef zeroext %hnum, ptr noundef %saddr, i16 noundef zeroext %sport)
  %ehash_mask = getelementptr inbounds %struct.inet_hashinfo, ptr %hashinfo, i32 0, i32 2
  %0 = ptrtoint ptr %ehash_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ehash_mask, align 8
  %and = and i32 %1, %call
  %2 = ptrtoint ptr %hashinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hashinfo, align 128
  %arrayidx = getelementptr %struct.inet_ehash_bucket, ptr %3, i32 %and
  %arrayidx6.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %arrayidx11.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %arrayidx17.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %arrayidx6.i140 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 1
  %arrayidx11.i144 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 2
  %arrayidx17.i148 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 3
  br label %begin

begin:                                            ; preds = %begin.backedge, %entry
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.0201 = load volatile ptr, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %node.0201 to i32
  %and.i202 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i202)
  %tobool.not203 = icmp eq i32 %and.i202, 0
  br i1 %tobool.not203, label %begin.land.rhs_crit_edge, label %begin.for.end_crit_edge

begin.for.end_crit_edge:                          ; preds = %begin
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

begin.land.rhs_crit_edge:                         ; preds = %begin
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %begin.land.rhs_crit_edge
  %node.0204 = phi ptr [ %node.0, %for.inc.land.rhs_crit_edge ], [ %node.0201, %begin.land.rhs_crit_edge ]
  %6 = getelementptr i8, ptr %node.0204, i32 -76
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call)
  %cmp.not = icmp eq i32 %8, %call
  br i1 %cmp.not, label %if.end, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %land.rhs
  %9 = getelementptr i8, ptr %node.0204, i32 -72
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %or)
  %cmp9 = icmp eq i32 %11, %or
  br i1 %cmp9, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %skc_family = getelementptr i8, ptr %node.0204, i32 -68
  %12 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %13)
  %cmp13 = icmp eq i16 %13, 10
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true
  %skc_v6_daddr = getelementptr i8, ptr %node.0204, i32 -44
  %14 = ptrtoint ptr %skc_v6_daddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %skc_v6_daddr, align 4
  %16 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saddr, align 4
  %xor.i = xor i32 %17, %15
  %arrayidx4.i = getelementptr i8, ptr %node.0204, i32 -40
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i, align 4
  %20 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %21, %19
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr i8, ptr %node.0204, i32 -36
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx9.i, align 4
  %24 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %25, %23
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr i8, ptr %node.0204, i32 -32
  %26 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx15.i, align 4
  %28 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %29, %27
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %land.lhs.true19, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true19:                                  ; preds = %land.lhs.true15
  %skc_v6_rcv_saddr = getelementptr i8, ptr %node.0204, i32 -28
  %30 = ptrtoint ptr %skc_v6_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %skc_v6_rcv_saddr, align 4
  %32 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %daddr, align 4
  %xor.i138 = xor i32 %33, %31
  %arrayidx4.i139 = getelementptr i8, ptr %node.0204, i32 -24
  %34 = ptrtoint ptr %arrayidx4.i139 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx4.i139, align 4
  %36 = ptrtoint ptr %arrayidx6.i140 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx6.i140, align 4
  %xor7.i141 = xor i32 %37, %35
  %or.i142 = or i32 %xor7.i141, %xor.i138
  %arrayidx9.i143 = getelementptr i8, ptr %node.0204, i32 -20
  %38 = ptrtoint ptr %arrayidx9.i143 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx9.i143, align 4
  %40 = ptrtoint ptr %arrayidx11.i144 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx11.i144, align 4
  %xor12.i145 = xor i32 %41, %39
  %or13.i146 = or i32 %or.i142, %xor12.i145
  %arrayidx15.i147 = getelementptr i8, ptr %node.0204, i32 -16
  %42 = ptrtoint ptr %arrayidx15.i147 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx15.i147, align 4
  %44 = ptrtoint ptr %arrayidx17.i148 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx17.i148, align 4
  %xor18.i149 = xor i32 %45, %43
  %or19.i150 = or i32 %or13.i146, %xor18.i149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i150)
  %cmp.i151 = icmp eq i32 %or19.i150, 0
  br i1 %cmp.i151, label %land.lhs.true23, label %land.lhs.true19.for.inc_crit_edge

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true23:                                  ; preds = %land.lhs.true19
  %skc_bound_dev_if = getelementptr i8, ptr %node.0204, i32 -64
  %46 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %dif)
  %cmp25 = icmp eq i32 %47, %dif
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %sdif)
  %cmp29 = icmp eq i32 %47, %sdif
  %or.cond = or i1 %cmp25, %cmp29
  br i1 %or.cond, label %land.lhs.true31, label %land.lhs.true23.for.inc_crit_edge

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true31:                                  ; preds = %land.lhs.true23
  %skc_net.i = getelementptr i8, ptr %node.0204, i32 -48
  %48 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skc_net.i, align 4
  %cmp.i152.not = icmp eq ptr %49, %net
  br i1 %cmp.i152.not, label %if.end36, label %land.lhs.true31.for.inc_crit_edge

land.lhs.true31.for.inc_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end36:                                         ; preds = %land.lhs.true31
  %50 = getelementptr i8, ptr %node.0204, i32 -72
  %skc_family.le = getelementptr i8, ptr %node.0204, i32 -68
  %skc_v6_daddr.le = getelementptr i8, ptr %node.0204, i32 -44
  %arrayidx4.i.le = getelementptr i8, ptr %node.0204, i32 -40
  %arrayidx9.i.le = getelementptr i8, ptr %node.0204, i32 -36
  %arrayidx15.i.le = getelementptr i8, ptr %node.0204, i32 -32
  %skc_v6_rcv_saddr.le = getelementptr i8, ptr %node.0204, i32 -28
  %arrayidx4.i139.le = getelementptr i8, ptr %node.0204, i32 -24
  %arrayidx9.i143.le = getelementptr i8, ptr %node.0204, i32 -20
  %arrayidx15.i147.le = getelementptr i8, ptr %node.0204, i32 -16
  %skc_bound_dev_if.le = getelementptr i8, ptr %node.0204, i32 -64
  %skc_net.i.le = getelementptr i8, ptr %node.0204, i32 -48
  %add.ptr.le = getelementptr i8, ptr %node.0204, i32 -84
  %skc_refcnt = getelementptr i8, ptr %node.0204, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #9
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #9
  %51 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end36
  %53 = phi i32 [ %52, %if.end36 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %54 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %53, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #9
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #9
  %55 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %57 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %56, i32 %add.i.i.i, ptr elementtype(i32) %skc_refcnt) #9, !srcloc !56
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %57, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %57, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %56
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !57

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %58 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %59, 1
  %60 = or i32 %add5.i.i.i, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %.not.i.i.i = icmp sgt i32 %60, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !57

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #9
  %61 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %62 = phi i32 [ %59, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool12.i.i.i.not = icmp eq i32 %62, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #9
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.found_crit_edge, label %if.end43, !prof !54

refcount_inc_not_zero.exit.found_crit_edge:       ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

if.end43:                                         ; preds = %refcount_inc_not_zero.exit
  %63 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %or)
  %cmp45 = icmp eq i32 %64, %or
  br i1 %cmp45, label %land.lhs.true47, label %if.end43.if.then86_crit_edge, !prof !57

if.end43.if.then86_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

land.lhs.true47:                                  ; preds = %if.end43
  %65 = ptrtoint ptr %skc_family.le to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %skc_family.le, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %66)
  %cmp51 = icmp eq i16 %66, 10
  br i1 %cmp51, label %land.lhs.true53, label %land.lhs.true47.if.then86_crit_edge, !prof !57

land.lhs.true47.if.then86_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

land.lhs.true53:                                  ; preds = %land.lhs.true47
  %67 = ptrtoint ptr %skc_v6_daddr.le to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %skc_v6_daddr.le, align 4
  %69 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %saddr, align 4
  %xor.i153 = xor i32 %70, %68
  %71 = ptrtoint ptr %arrayidx4.i.le to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx4.i.le, align 4
  %73 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i156 = xor i32 %74, %72
  %or.i157 = or i32 %xor7.i156, %xor.i153
  %75 = ptrtoint ptr %arrayidx9.i.le to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx9.i.le, align 4
  %77 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i160 = xor i32 %78, %76
  %or13.i161 = or i32 %or.i157, %xor12.i160
  %79 = ptrtoint ptr %arrayidx15.i.le to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx15.i.le, align 4
  %81 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i164 = xor i32 %82, %80
  %or19.i165 = or i32 %or13.i161, %xor18.i164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i165)
  %cmp.i166 = icmp eq i32 %or19.i165, 0
  br i1 %cmp.i166, label %land.lhs.true58, label %land.lhs.true53.if.then86_crit_edge, !prof !57

land.lhs.true53.if.then86_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

land.lhs.true58:                                  ; preds = %land.lhs.true53
  %83 = ptrtoint ptr %skc_v6_rcv_saddr.le to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %skc_v6_rcv_saddr.le, align 4
  %85 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %daddr, align 4
  %xor.i167 = xor i32 %86, %84
  %87 = ptrtoint ptr %arrayidx4.i139.le to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx4.i139.le, align 4
  %89 = ptrtoint ptr %arrayidx6.i140 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx6.i140, align 4
  %xor7.i170 = xor i32 %90, %88
  %or.i171 = or i32 %xor7.i170, %xor.i167
  %91 = ptrtoint ptr %arrayidx9.i143.le to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx9.i143.le, align 4
  %93 = ptrtoint ptr %arrayidx11.i144 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx11.i144, align 4
  %xor12.i174 = xor i32 %94, %92
  %or13.i175 = or i32 %or.i171, %xor12.i174
  %95 = ptrtoint ptr %arrayidx15.i147.le to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx15.i147.le, align 4
  %97 = ptrtoint ptr %arrayidx17.i148 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx17.i148, align 4
  %xor18.i178 = xor i32 %98, %96
  %or19.i179 = or i32 %or13.i175, %xor18.i178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i179)
  %cmp.i180 = icmp eq i32 %or19.i179, 0
  br i1 %cmp.i180, label %land.lhs.true63, label %land.lhs.true58.if.then86_crit_edge, !prof !57

land.lhs.true58.if.then86_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

land.lhs.true63:                                  ; preds = %land.lhs.true58
  %99 = ptrtoint ptr %skc_bound_dev_if.le to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %skc_bound_dev_if.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %dif)
  %cmp66 = icmp eq i32 %100, %dif
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %sdif)
  %cmp71 = icmp eq i32 %100, %sdif
  %or.cond133 = or i1 %cmp66, %cmp71
  br i1 %or.cond133, label %land.rhs73, label %land.lhs.true63.if.then86_crit_edge, !prof !58

land.lhs.true63.if.then86_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

land.rhs73:                                       ; preds = %land.lhs.true63
  %101 = ptrtoint ptr %skc_net.i.le to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %skc_net.i.le, align 4
  %cmp.i182 = icmp eq ptr %102, %net
  br i1 %cmp.i182, label %land.rhs73.found_crit_edge, label %land.rhs73.if.then86_crit_edge, !prof !57

land.rhs73.if.then86_crit_edge:                   ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

land.rhs73.found_crit_edge:                       ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

if.then86:                                        ; preds = %land.rhs73.if.then86_crit_edge, %land.lhs.true63.if.then86_crit_edge, %land.lhs.true58.if.then86_crit_edge, %land.lhs.true53.if.then86_crit_edge, %land.lhs.true47.if.then86_crit_edge, %if.end43.if.then86_crit_edge
  call void @sock_gen_put(ptr noundef %add.ptr.le) #9
  br label %begin.backedge

begin.backedge:                                   ; preds = %for.end.begin.backedge_crit_edge, %if.then86
  br label %begin

for.inc:                                          ; preds = %land.lhs.true31.for.inc_crit_edge, %land.lhs.true23.for.inc_crit_edge, %land.lhs.true19.for.inc_crit_edge, %land.lhs.true15.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %103 = ptrtoint ptr %node.0204 to i32
  call void @__asan_load4_noabort(i32 %103)
  %node.0 = load volatile ptr, ptr %node.0204, align 4
  %104 = ptrtoint ptr %node.0 to i32
  %and.i = and i32 %104, 1
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %for.inc.land.rhs_crit_edge, label %for.end.loopexit

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %node.0 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %begin.for.end_crit_edge
  %.pre-phi = phi i32 [ %5, %begin.for.end_crit_edge ], [ %105, %for.end.loopexit ]
  %shr.i = lshr i32 %.pre-phi, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %and)
  %cmp94.not = icmp eq i32 %shr.i, %and
  br i1 %cmp94.not, label %for.end.found_crit_edge, label %for.end.begin.backedge_crit_edge

for.end.begin.backedge_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %begin.backedge

for.end.found_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

found:                                            ; preds = %for.end.found_crit_edge, %land.rhs73.found_crit_edge, %refcount_inc_not_zero.exit.found_crit_edge
  %sk.0 = phi ptr [ %add.ptr.le, %land.rhs73.found_crit_edge ], [ null, %for.end.found_crit_edge ], [ null, %refcount_inc_not_zero.exit.found_crit_edge ]
  ret ptr %sk.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_gen_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @inet6_lookup_listener(ptr noundef %net, ptr noundef readonly %hashinfo, ptr noundef %skb, i32 noundef %doff, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %hnum, i32 noundef %dif, i32 noundef %sdif) #0 align 64 {
entry:
  %sk.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_sk_lookup_enabled, ptr blockaddress(@inet6_lookup_listener, %if.then)) #9
          to label %if.end6 [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sk.i) #9
  %0 = ptrtoint ptr %sk.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sk.i, align 4, !annotation !53
  %cmp.not.i = icmp eq ptr %hashinfo, @tcp_hashinfo
  br i1 %cmp.not.i, label %if.end.i, label %inet6_lookup_run_bpf.exit.thread

inet6_lookup_run_bpf.exit.thread:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sk.i) #9
  br label %if.end6

if.end.i:                                         ; preds = %if.then
  %call.i = call fastcc zeroext i1 @bpf_sk_lookup_run_v6(ptr noundef %net, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %hnum, i32 noundef %dif, ptr noundef nonnull %sk.i) #9
  br i1 %call.i, label %if.end.i.inet6_lookup_run_bpf.exitthread-pre-split_crit_edge, label %lor.lhs.false.i

if.end.i.inet6_lookup_run_bpf.exitthread-pre-split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inet6_lookup_run_bpf.exitthread-pre-split

lor.lhs.false.i:                                  ; preds = %if.end.i
  %1 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  %cmp.i.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %lor.lhs.false.i.inet6_lookup_run_bpf.exit_crit_edge, label %if.end3.i

lor.lhs.false.i.inet6_lookup_run_bpf.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inet6_lookup_run_bpf.exit

if.end3.i:                                        ; preds = %lor.lhs.false.i
  %skc_reuseport.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %skc_reuseport.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i.i = load i8, ptr %skc_reuseport.i.i, align 1
  %4 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i16.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i16.i, label %if.end3.i.inet6_lookup_run_bpf.exitthread-pre-split_crit_edge, label %lookup_reuseport.exit.i

if.end3.i.inet6_lookup_run_bpf.exitthread-pre-split_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inet6_lookup_run_bpf.exitthread-pre-split

lookup_reuseport.exit.i:                          ; preds = %if.end3.i
  %call.i.i = tail call i32 @inet6_ehashfn(ptr noundef %net, ptr noundef %daddr, i16 noundef zeroext %hnum, ptr noundef %saddr, i16 noundef zeroext %sport) #9
  %call1.i.i = tail call ptr @reuseport_select_sock(ptr noundef nonnull %2, i32 noundef %call.i.i, ptr noundef %skb, i32 noundef %doff) #9
  %tobool5.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool5.not.i, label %lookup_reuseport.exit.i.inet6_lookup_run_bpf.exitthread-pre-split_crit_edge, label %inet6_lookup_run_bpf.exit.thread58

lookup_reuseport.exit.i.inet6_lookup_run_bpf.exitthread-pre-split_crit_edge: ; preds = %lookup_reuseport.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inet6_lookup_run_bpf.exitthread-pre-split

inet6_lookup_run_bpf.exit.thread58:               ; preds = %lookup_reuseport.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sk.i) #9
  br label %done

inet6_lookup_run_bpf.exitthread-pre-split:        ; preds = %lookup_reuseport.exit.i.inet6_lookup_run_bpf.exitthread-pre-split_crit_edge, %if.end3.i.inet6_lookup_run_bpf.exitthread-pre-split_crit_edge, %if.end.i.inet6_lookup_run_bpf.exitthread-pre-split_crit_edge
  %5 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %retval.0.i50.pr = load ptr, ptr %sk.i, align 4
  br label %inet6_lookup_run_bpf.exit

inet6_lookup_run_bpf.exit:                        ; preds = %inet6_lookup_run_bpf.exitthread-pre-split, %lor.lhs.false.i.inet6_lookup_run_bpf.exit_crit_edge
  %retval.0.i50 = phi ptr [ %retval.0.i50.pr, %inet6_lookup_run_bpf.exitthread-pre-split ], [ %2, %lor.lhs.false.i.inet6_lookup_run_bpf.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sk.i) #9
  %tobool4.not = icmp eq ptr %retval.0.i50, null
  br i1 %tobool4.not, label %inet6_lookup_run_bpf.exit.if.end6_crit_edge, label %inet6_lookup_run_bpf.exit.done_crit_edge

inet6_lookup_run_bpf.exit.done_crit_edge:         ; preds = %inet6_lookup_run_bpf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

inet6_lookup_run_bpf.exit.if.end6_crit_edge:      ; preds = %inet6_lookup_run_bpf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %inet6_lookup_run_bpf.exit.if.end6_crit_edge, %inet6_lookup_run_bpf.exit.thread, %entry
  %conv = zext i16 %hnum to i32
  %call7 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef %net, ptr noundef %daddr, i32 noundef %conv)
  %lhash2.i = getelementptr inbounds %struct.inet_hashinfo, ptr %hashinfo, i32 0, i32 8
  %6 = ptrtoint ptr %lhash2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lhash2.i, align 32
  %lhash2_mask.i = getelementptr inbounds %struct.inet_hashinfo, ptr %hashinfo, i32 0, i32 7
  %8 = ptrtoint ptr %lhash2_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lhash2_mask.i, align 4
  %and.i = and i32 %9, %call7
  %arrayidx.i = getelementptr %struct.inet_listen_hashbucket, ptr %7, i32 %and.i
  %call9 = tail call fastcc ptr @inet6_lhash2_lookup(ptr noundef %net, ptr noundef %arrayidx.i, ptr noundef %skb, i32 noundef %doff, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %hnum, i32 noundef %dif, i32 noundef %sdif)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end12, label %if.end6.done_crit_edge

if.end6.done_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef %net, ptr noundef nonnull @in6addr_any, i32 noundef %conv)
  %10 = ptrtoint ptr %lhash2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lhash2.i, align 32
  %12 = ptrtoint ptr %lhash2_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lhash2_mask.i, align 4
  %and.i53 = and i32 %13, %call14
  %arrayidx.i54 = getelementptr %struct.inet_listen_hashbucket, ptr %11, i32 %and.i53
  %call16 = tail call fastcc ptr @inet6_lhash2_lookup(ptr noundef %net, ptr noundef %arrayidx.i54, ptr noundef %skb, i32 noundef %doff, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef nonnull @in6addr_any, i16 noundef zeroext %hnum, i32 noundef %dif, i32 noundef %sdif)
  br label %done

done:                                             ; preds = %if.end12, %if.end6.done_crit_edge, %inet6_lookup_run_bpf.exit.done_crit_edge, %inet6_lookup_run_bpf.exit.thread58
  %result.0 = phi ptr [ %retval.0.i50, %inet6_lookup_run_bpf.exit.done_crit_edge ], [ %call9, %if.end6.done_crit_edge ], [ %call16, %if.end12 ], [ %call1.i.i, %inet6_lookup_run_bpf.exit.thread58 ]
  %cmp.i = icmp ugt ptr %result.0, inttoptr (i32 -4096 to ptr)
  %.result.0 = select i1 %cmp.i, ptr null, ptr %result.0
  ret ptr %.result.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ipv6_portaddr_hash(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %addr6, i32 noundef %port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %hash_mix.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 26
  %0 = ptrtoint ptr %hash_mix.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash_mix.i, align 8
  %2 = ptrtoint ptr %addr6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr6, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %addr6, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %5, %3
  %arrayidx4.i = getelementptr [4 x i32], ptr %addr6, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %7
  %arrayidx7.i = getelementptr [4 x i32], ptr %addr6, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add1.i = add i32 %1, -559038733
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i, i32 %add1.i, i32 14) #9
  %sub.i.i = sub i32 0, %or.i.i.i
  %xor3.i.i = xor i32 %add1.i, %sub.i.i
  %or.i52.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i, i32 %sub.i.i, i32 11) #9
  %sub5.i.i = sub i32 %xor3.i.i, %or.i52.i.i
  %xor6.i.i = xor i32 %sub5.i.i, %add1.i
  %or.i53.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i, i32 %sub5.i.i, i32 25) #9
  %sub8.i.i = sub i32 %xor6.i.i, %or.i53.i.i
  %xor9.i.i = xor i32 %sub8.i.i, %sub.i.i
  %or.i54.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i, i32 %sub8.i.i, i32 16) #9
  %sub11.i.i = sub i32 %xor9.i.i, %or.i54.i.i
  %xor12.i.i = xor i32 %sub11.i.i, %sub5.i.i
  %or.i55.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i, i32 %sub11.i.i, i32 4) #9
  %sub14.i.i = sub i32 %xor12.i.i, %or.i55.i.i
  %xor15.i.i = xor i32 %sub14.i.i, %sub8.i.i
  %or.i56.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i, i32 %sub14.i.i, i32 14) #9
  %sub17.i.i = sub i32 %xor15.i.i, %or.i56.i.i
  %xor18.i.i = xor i32 %sub17.i.i, %sub11.i.i
  %or.i57.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i, i32 %sub17.i.i, i32 24) #9
  %sub20.i.i = sub i32 %xor18.i.i, %or.i57.i.i
  br label %if.end9

if.else:                                          ; preds = %entry
  %xor.i = xor i32 %7, 65535
  %or5.i18 = or i32 %xor.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i18)
  %cmp.i19 = icmp eq i32 %or5.i18, 0
  br i1 %cmp.i19, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add1.i20 = add i32 %1, -559038733
  %add.i.i = add i32 %9, %add1.i20
  %or.i.i.i21 = tail call i32 @llvm.fshl.i32(i32 %add1.i20, i32 %add1.i20, i32 14) #9
  %sub.i.i22 = sub i32 0, %or.i.i.i21
  %xor3.i.i23 = xor i32 %add.i.i, %sub.i.i22
  %or.i52.i.i24 = tail call i32 @llvm.fshl.i32(i32 %sub.i.i22, i32 %sub.i.i22, i32 11) #9
  %sub5.i.i25 = sub i32 %xor3.i.i23, %or.i52.i.i24
  %xor6.i.i26 = xor i32 %sub5.i.i25, %add1.i20
  %or.i53.i.i27 = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i25, i32 %sub5.i.i25, i32 25) #9
  %sub8.i.i28 = sub i32 %xor6.i.i26, %or.i53.i.i27
  %xor9.i.i29 = xor i32 %sub8.i.i28, %sub.i.i22
  %or.i54.i.i30 = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i28, i32 %sub8.i.i28, i32 16) #9
  %sub11.i.i31 = sub i32 %xor9.i.i29, %or.i54.i.i30
  %xor12.i.i32 = xor i32 %sub11.i.i31, %sub5.i.i25
  %or.i55.i.i33 = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i31, i32 %sub11.i.i31, i32 4) #9
  %sub14.i.i34 = sub i32 %xor12.i.i32, %or.i55.i.i33
  %xor15.i.i35 = xor i32 %sub14.i.i34, %sub8.i.i28
  %or.i56.i.i36 = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i34, i32 %sub14.i.i34, i32 14) #9
  %sub17.i.i37 = sub i32 %xor15.i.i35, %or.i56.i.i36
  %xor18.i.i38 = xor i32 %sub17.i.i37, %sub11.i.i31
  %or.i57.i.i39 = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i37, i32 %sub17.i.i37, i32 24) #9
  %sub20.i.i40 = sub i32 %xor18.i.i38, %or.i57.i.i39
  br label %if.end9

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add1.i41 = add i32 %1, -559038721
  %add2.i = add i32 %3, %add1.i41
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i, align 4
  %add4.i = add i32 %11, %add1.i41
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %add6.i = add i32 %13, %add1.i41
  %sub.i = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #9
  %xor.i42 = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i42
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i42, i32 %xor.i42, i32 6) #9
  %xor10.i = xor i32 %sub8.i, %or.i1.i
  %add11.i = add i32 %xor.i42, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #9
  %xor14.i = xor i32 %sub12.i, %or.i2.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #9
  %xor18.i = xor i32 %sub16.i, %or.i3.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #9
  %xor22.i = xor i32 %sub20.i, %or.i4.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #9
  %xor26.i = xor i32 %sub24.i, %or.i5.i
  %add27.i = add i32 %xor22.i, %add23.i
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i, align 4
  %add36.i = add i32 %add23.i, %15
  %xor37.i = xor i32 %xor26.i, %add27.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %add27.i, i32 %add27.i, i32 14) #9
  %sub39.i = sub i32 %xor37.i, %or.i6.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #9
  %sub42.i = sub i32 %xor40.i, %or.i7.i
  %xor43.i = xor i32 %sub42.i, %add27.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #9
  %sub45.i = sub i32 %xor43.i, %or.i8.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #9
  %sub48.i = sub i32 %xor46.i, %or.i9.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #9
  %sub51.i = sub i32 %xor49.i, %or.i10.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #9
  %sub54.i = sub i32 %xor52.i, %or.i11.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #9
  %sub57.i = sub i32 %xor55.i, %or.i12.i
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.then4, %if.then
  %hash.0 = phi i32 [ %sub20.i.i, %if.then ], [ %sub20.i.i40, %if.then4 ], [ %sub57.i, %if.else6 ]
  %xor = xor i32 %hash.0, %port
  ret i32 %xor
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @inet6_lhash2_lookup(ptr noundef readonly %net, ptr noundef %ilb2, ptr noundef %skb, i32 noundef %doff, ptr nocapture noundef readonly %saddr, i16 noundef zeroext %sport, ptr nocapture noundef readonly %daddr, i16 noundef zeroext %hnum, i32 noundef %dif, i32 noundef %sdif) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b52 = load i1, ptr @inet6_lhash2_lookup.__warned, align 1
  br i1 %.b52, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @inet6_lhash2_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 145, ptr noundef nonnull @.str.9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = getelementptr inbounds %struct.inet_listen_hashbucket, ptr %ilb2, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %0, align 4
  %tobool10.not = icmp eq ptr %2, null
  %add.ptr = getelementptr i8, ptr %2, i32 -1416
  %tobool12.not6066 = icmp eq ptr %add.ptr, null
  %tobool12.not60 = or i1 %tobool10.not, %tobool12.not6066
  br i1 %tobool12.not60, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 1
  %arrayidx11.i.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 2
  %arrayidx17.i.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 3
  %sysctl_tcp_l3mdev_accept.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sdif)
  %tobool1.not.i.i.i = icmp eq i32 %sdif, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %icsk.063 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr31, %for.inc.for.body_crit_edge ]
  %result.062 = phi ptr [ null, %for.body.lr.ph ], [ %result.1, %for.inc.for.body_crit_edge ]
  %hiscore.061 = phi i32 [ 0, %for.body.lr.ph ], [ %hiscore.1, %for.inc.for.body_crit_edge ]
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %icsk.063, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %net
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %for.body.compute_score.exit_crit_edge

for.body.compute_score.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %compute_score.exit

land.lhs.true.i:                                  ; preds = %for.body
  %5 = getelementptr inbounds %struct.sock_common, ptr %icsk.063, i32 0, i32 2
  %skc_num.i = getelementptr inbounds %struct.anon.18, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %skc_num.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %skc_num.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %hnum)
  %cmp.i = icmp eq i16 %7, %hnum
  br i1 %cmp.i, label %land.lhs.true6.i, label %land.lhs.true.i.compute_score.exit_crit_edge

land.lhs.true.i.compute_score.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compute_score.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %icsk.063, i32 0, i32 3
  %8 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %9)
  %cmp9.i = icmp eq i16 %9, 10
  br i1 %cmp9.i, label %if.then.i, label %land.lhs.true6.i.compute_score.exit_crit_edge

land.lhs.true6.i.compute_score.exit_crit_edge:    ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compute_score.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %icsk.063, i32 0, i32 11
  %10 = ptrtoint ptr %skc_v6_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %skc_v6_rcv_saddr.i, align 4
  %12 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %daddr, align 4
  %xor.i.i = xor i32 %13, %11
  %arrayidx4.i.i = getelementptr %struct.sock_common, ptr %icsk.063, i32 0, i32 11, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i.i, align 4
  %16 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %17, %15
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr %struct.sock_common, ptr %icsk.063, i32 0, i32 11, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9.i.i, align 4
  %20 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %21, %19
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr %struct.sock_common, ptr %icsk.063, i32 0, i32 11, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15.i.i, align 4
  %24 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %25, %23
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i36.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i36.i, label %if.end.i, label %if.then.i.compute_score.exit_crit_edge

if.then.i.compute_score.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compute_score.exit

if.end.i:                                         ; preds = %if.then.i
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %icsk.063, i32 0, i32 6
  %26 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %skc_bound_dev_if.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %inet_sk_bound_dev_eq.exit.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %dif)
  %cmp.i.i.i = icmp eq i32 %27, %dif
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sdif)
  %cmp4.i.i.i = icmp eq i32 %27, %sdif
  %spec.select9.i.i.i = or i1 %cmp.i.i.i, %cmp4.i.i.i
  br i1 %spec.select9.i.i.i, label %if.end.i.i.i.if.end17.i_crit_edge, label %if.end.i.i.i.compute_score.exit_crit_edge

if.end.i.i.i.compute_score.exit_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compute_score.exit

if.end.i.i.i.if.end17.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

inet_sk_bound_dev_eq.exit.i:                      ; preds = %if.end.i
  %28 = ptrtoint ptr %sysctl_tcp_l3mdev_accept.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sysctl_tcp_l3mdev_accept.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.i.i = icmp ne i8 %29, 0
  %spec.select.i.i.i = or i1 %tobool1.not.i.i.i, %tobool.i.i
  br i1 %spec.select.i.i.i, label %inet_sk_bound_dev_eq.exit.i.if.end17.i_crit_edge, label %inet_sk_bound_dev_eq.exit.i.compute_score.exit_crit_edge

inet_sk_bound_dev_eq.exit.i.compute_score.exit_crit_edge: ; preds = %inet_sk_bound_dev_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compute_score.exit

inet_sk_bound_dev_eq.exit.i.if.end17.i_crit_edge: ; preds = %inet_sk_bound_dev_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %inet_sk_bound_dev_eq.exit.i.if.end17.i_crit_edge, %if.end.i.i.i.if.end17.i_crit_edge
  %cond.i = phi i32 [ 2, %if.end.i.i.i.if.end17.i_crit_edge ], [ 1, %inet_sk_bound_dev_eq.exit.i.if.end17.i_crit_edge ]
  %30 = getelementptr inbounds %struct.sock_common, ptr %icsk.063, i32 0, i32 18
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 8
  %33 = tail call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %36)
  %cmp23.i = icmp eq i32 %32, %36
  %inc.i = zext i1 %cmp23.i to i32
  %spec.select.i = add nuw nsw i32 %cond.i, %inc.i
  br label %compute_score.exit

compute_score.exit:                               ; preds = %if.end17.i, %inet_sk_bound_dev_eq.exit.i.compute_score.exit_crit_edge, %if.end.i.i.i.compute_score.exit_crit_edge, %if.then.i.compute_score.exit_crit_edge, %land.lhs.true6.i.compute_score.exit_crit_edge, %land.lhs.true.i.compute_score.exit_crit_edge, %for.body.compute_score.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %if.then.i.compute_score.exit_crit_edge ], [ -1, %inet_sk_bound_dev_eq.exit.i.compute_score.exit_crit_edge ], [ -1, %land.lhs.true6.i.compute_score.exit_crit_edge ], [ -1, %land.lhs.true.i.compute_score.exit_crit_edge ], [ -1, %for.body.compute_score.exit_crit_edge ], [ %spec.select.i, %if.end17.i ], [ -1, %if.end.i.i.i.compute_score.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %hiscore.061)
  %cmp = icmp sgt i32 %retval.0.i, %hiscore.061
  br i1 %cmp, label %if.then14, label %compute_score.exit.for.inc_crit_edge

compute_score.exit.for.inc_crit_edge:             ; preds = %compute_score.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then14:                                        ; preds = %compute_score.exit
  %skc_reuseport.i = getelementptr inbounds %struct.sock_common, ptr %icsk.063, i32 0, i32 5
  %37 = ptrtoint ptr %skc_reuseport.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i = load i8, ptr %skc_reuseport.i, align 1
  %38 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %if.then14.for.inc_crit_edge, label %lookup_reuseport.exit

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lookup_reuseport.exit:                            ; preds = %if.then14
  %call.i = tail call i32 @inet6_ehashfn(ptr noundef %net, ptr noundef %daddr, i16 noundef zeroext %hnum, ptr noundef %saddr, i16 noundef zeroext %sport) #9
  %call1.i = tail call ptr @reuseport_select_sock(ptr noundef nonnull %icsk.063, i32 noundef %call.i, ptr noundef %skb, i32 noundef %doff) #9
  %tobool16.not = icmp eq ptr %call1.i, null
  br i1 %tobool16.not, label %lookup_reuseport.exit.for.inc_crit_edge, label %lookup_reuseport.exit.cleanup_crit_edge

lookup_reuseport.exit.cleanup_crit_edge:          ; preds = %lookup_reuseport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lookup_reuseport.exit.for.inc_crit_edge:          ; preds = %lookup_reuseport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %lookup_reuseport.exit.for.inc_crit_edge, %if.then14.for.inc_crit_edge, %compute_score.exit.for.inc_crit_edge
  %hiscore.1 = phi i32 [ %hiscore.061, %compute_score.exit.for.inc_crit_edge ], [ %retval.0.i, %lookup_reuseport.exit.for.inc_crit_edge ], [ %retval.0.i, %if.then14.for.inc_crit_edge ]
  %result.1 = phi ptr [ %result.062, %compute_score.exit.for.inc_crit_edge ], [ %icsk.063, %lookup_reuseport.exit.for.inc_crit_edge ], [ %icsk.063, %if.then14.for.inc_crit_edge ]
  %icsk_listen_portaddr_node = getelementptr inbounds %struct.inet_connection_sock, ptr %icsk.063, i32 0, i32 15
  %39 = ptrtoint ptr %icsk_listen_portaddr_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %icsk_listen_portaddr_node, align 8
  %tobool27.not = icmp eq ptr %40, null
  %add.ptr31 = getelementptr i8, ptr %40, i32 -1416
  %tobool12.not67 = icmp eq ptr %add.ptr31, null
  %tobool12.not = or i1 %tobool27.not, %tobool12.not67
  br i1 %tobool12.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %lookup_reuseport.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %result.1, %for.inc.cleanup_crit_edge ], [ %call1.i, %lookup_reuseport.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @inet6_lookup(ptr noundef %net, ptr noundef %hashinfo, ptr noundef %skb, i32 noundef %doff, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %dif) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__inet6_lookup_established(ptr noundef %net, ptr noundef %hashinfo, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %dif, i32 noundef 0) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %__inet6_lookup.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

__inet6_lookup.exit:                              ; preds = %entry
  %call1.i = tail call ptr @inet6_lookup_listener(ptr noundef %net, ptr noundef %hashinfo, ptr noundef %skb, i32 noundef %doff, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %dif, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %__inet6_lookup.exit.if.end_crit_edge, label %land.lhs.true2

__inet6_lookup.exit.if.end_crit_edge:             ; preds = %__inet6_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true2:                                   ; preds = %__inet6_lookup.exit
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #9
  %0 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true2
  %2 = phi i32 [ %1, %land.lhs.true2 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #9
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %skc_refcnt) #9, !srcloc !56
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !57

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !57

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #9
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.not = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #9
  %spec.select = select i1 %tobool12.i.i.i.not, ptr null, ptr %call1.i
  br label %if.end

if.end:                                           ; preds = %refcount_inc_not_zero.exit, %__inet6_lookup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %sk.0 = phi ptr [ null, %__inet6_lookup.exit.if.end_crit_edge ], [ %spec.select, %refcount_inc_not_zero.exit ], [ %call.i, %entry.if.end_crit_edge ]
  ret ptr %sk.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inet6_hash_connect(ptr noundef %death_row, ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.18, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %skc_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %0, align 4
  %call6.i = tail call i32 @secure_ipv6_port_ephemeral(ptr noundef %skc_v6_rcv_saddr.i, ptr noundef %skc_v6_daddr.i, i16 noundef zeroext %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %port_offset.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %call6.i, %if.then ]
  %call3 = tail call i32 @__inet_hash_connect(ptr noundef %death_row, ptr noundef %sk, i32 noundef %port_offset.0, ptr noundef nonnull @__inet6_check_established) #9
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__inet_hash_connect(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__inet6_check_established(ptr nocapture noundef readonly %death_row, ptr noundef %sk, i16 noundef zeroext %lport, ptr noundef %twp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hashinfo = getelementptr inbounds %struct.inet_timewait_death_row, ptr %death_row, i32 0, i32 2
  %0 = ptrtoint ptr %hashinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hashinfo, align 4
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %2 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %skc_bound_dev_if, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.l3mdev_master_ifindex_by_index.exit_crit_edge, label %if.then.i, !prof !54

entry.l3mdev_master_ifindex_by_index.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %l3mdev_master_ifindex_by_index.exit

if.then.i:                                        ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.then.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.i.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call ptr @dev_get_by_index_rcu(ptr noundef %5, i32 noundef %3) #9
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %rcu_read_lock.exit.i.if.end.i_crit_edge, label %if.then4.i

rcu_read_lock.exit.i.if.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then4.i:                                       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = tail call i32 @l3mdev_master_ifindex_rcu(ptr noundef nonnull %call.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %rcu_read_lock.exit.i.if.end.i_crit_edge
  %rc.0.i = phi i32 [ %call5.i, %if.then4.i ], [ 0, %rcu_read_lock.exit.i.if.end.i_crit_edge ]
  %call.i9.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i9.i, label %if.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i12.i

if.end.i.rcu_read_unlock.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i12.i:                              ; preds = %if.end.i
  %call1.i10.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call1.i10.i, 0
  br i1 %tobool.not.i11.i, label %land.lhs.true.i12.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i14.i

land.lhs.true.i12.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i14.i:                             ; preds = %land.lhs.true.i12.i
  %.b4.i13.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13.i, label %land.lhs.true2.i14.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i15.i

land.lhs.true2.i14.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i15.i:                                    ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i15.i, %land.lhs.true2.i14.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i12.i.rcu_read_unlock.exit.i_crit_edge, %if.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  %10 = tail call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i.i.i16.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i16.i to ptr
  %preempt_count.i.i.i.i17.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i17.i, align 4
  %sub.i.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i17.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %l3mdev_master_ifindex_by_index.exit

l3mdev_master_ifindex_by_index.exit:              ; preds = %rcu_read_unlock.exit.i, %entry.l3mdev_master_ifindex_by_index.exit_crit_edge
  %rc.1.i = phi i32 [ %rc.0.i, %rcu_read_unlock.exit.i ], [ 0, %entry.l3mdev_master_ifindex_by_index.exit_crit_edge ]
  %14 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 4
  %conv = zext i16 %16 to i32
  %shl = shl nuw i32 %conv, 16
  %conv7 = zext i16 %lport to i32
  %or = or i32 %shl, %conv7
  %call11 = tail call i32 @inet6_ehashfn(ptr noundef %5, ptr noundef %skc_v6_rcv_saddr, i16 noundef zeroext %lport, ptr noundef %skc_v6_daddr, i16 noundef zeroext %16)
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 128
  %ehash_mask.i = getelementptr inbounds %struct.inet_hashinfo, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %ehash_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ehash_mask.i, align 8
  %and.i = and i32 %20, %call11
  %arrayidx.i = getelementptr %struct.inet_ehash_bucket, ptr %18, i32 %and.i
  %ehash_locks.i = getelementptr inbounds %struct.inet_hashinfo, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %ehash_locks.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ehash_locks.i, align 4
  %ehash_locks_mask.i = getelementptr inbounds %struct.inet_hashinfo, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %ehash_locks_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ehash_locks_mask.i, align 4
  %and.i193 = and i32 %24, %call11
  %arrayidx.i194 = getelementptr %struct.spinlock, ptr %22, i32 %and.i193
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i194) #9
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %node.0229 = load ptr, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %node.0229 to i32
  %and.i195230 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i195230)
  %tobool.not231 = icmp eq i32 %and.i195230, 0
  br i1 %tobool.not231, label %land.rhs.lr.ph, label %l3mdev_master_ifindex_by_index.exit.for.end_crit_edge

l3mdev_master_ifindex_by_index.exit.for.end_crit_edge: ; preds = %l3mdev_master_ifindex_by_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %l3mdev_master_ifindex_by_index.exit
  %arrayidx6.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 1
  %arrayidx11.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 2
  %arrayidx17.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 3
  %arrayidx6.i198 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 1
  %arrayidx11.i202 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 2
  %arrayidx17.i206 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %node.0232 = phi ptr [ %node.0229, %land.rhs.lr.ph ], [ %node.0, %for.inc.land.rhs_crit_edge ]
  %27 = getelementptr i8, ptr %node.0232, i32 -76
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %call11)
  %cmp.not = icmp eq i32 %29, %call11
  br i1 %cmp.not, label %if.end, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %land.rhs
  %30 = getelementptr i8, ptr %node.0232, i32 -72
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %or)
  %cmp20 = icmp eq i32 %32, %or
  br i1 %cmp20, label %land.lhs.true, label %if.end.for.inc_crit_edge, !prof !57

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %skc_family = getelementptr i8, ptr %node.0232, i32 -68
  %33 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %34)
  %cmp24 = icmp eq i16 %34, 10
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true.for.inc_crit_edge, !prof !57

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true26:                                  ; preds = %land.lhs.true
  %skc_v6_daddr28 = getelementptr i8, ptr %node.0232, i32 -44
  %35 = ptrtoint ptr %skc_v6_daddr28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %skc_v6_daddr28, align 4
  %37 = ptrtoint ptr %skc_v6_daddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %skc_v6_daddr, align 4
  %xor.i = xor i32 %38, %36
  %arrayidx4.i = getelementptr i8, ptr %node.0232, i32 -40
  %39 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx4.i, align 4
  %41 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %42, %40
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr i8, ptr %node.0232, i32 -36
  %43 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx9.i, align 4
  %45 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %46, %44
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr i8, ptr %node.0232, i32 -32
  %47 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx15.i, align 4
  %49 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %50, %48
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %land.lhs.true31, label %land.lhs.true26.for.inc_crit_edge, !prof !57

land.lhs.true26.for.inc_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %skc_v6_rcv_saddr33 = getelementptr i8, ptr %node.0232, i32 -28
  %51 = ptrtoint ptr %skc_v6_rcv_saddr33 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %skc_v6_rcv_saddr33, align 4
  %53 = ptrtoint ptr %skc_v6_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %skc_v6_rcv_saddr, align 4
  %xor.i196 = xor i32 %54, %52
  %arrayidx4.i197 = getelementptr i8, ptr %node.0232, i32 -24
  %55 = ptrtoint ptr %arrayidx4.i197 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx4.i197, align 4
  %57 = ptrtoint ptr %arrayidx6.i198 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx6.i198, align 4
  %xor7.i199 = xor i32 %58, %56
  %or.i200 = or i32 %xor7.i199, %xor.i196
  %arrayidx9.i201 = getelementptr i8, ptr %node.0232, i32 -20
  %59 = ptrtoint ptr %arrayidx9.i201 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx9.i201, align 4
  %61 = ptrtoint ptr %arrayidx11.i202 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx11.i202, align 4
  %xor12.i203 = xor i32 %62, %60
  %or13.i204 = or i32 %or.i200, %xor12.i203
  %arrayidx15.i205 = getelementptr i8, ptr %node.0232, i32 -16
  %63 = ptrtoint ptr %arrayidx15.i205 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx15.i205, align 4
  %65 = ptrtoint ptr %arrayidx17.i206 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx17.i206, align 4
  %xor18.i207 = xor i32 %66, %64
  %or19.i208 = or i32 %or13.i204, %xor18.i207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i208)
  %cmp.i209 = icmp eq i32 %or19.i208, 0
  br i1 %cmp.i209, label %land.lhs.true36, label %land.lhs.true31.for.inc_crit_edge, !prof !57

land.lhs.true31.for.inc_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true36:                                  ; preds = %land.lhs.true31
  %skc_bound_dev_if38 = getelementptr i8, ptr %node.0232, i32 -64
  %67 = ptrtoint ptr %skc_bound_dev_if38 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %skc_bound_dev_if38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %3)
  %cmp39 = icmp eq i32 %68, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %rc.1.i)
  %cmp43 = icmp eq i32 %68, %rc.1.i
  %or.cond = select i1 %cmp39, i1 true, i1 %cmp43
  br i1 %or.cond, label %land.rhs45, label %land.lhs.true36.for.inc_crit_edge, !prof !58

land.lhs.true36.for.inc_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.rhs45:                                       ; preds = %land.lhs.true36
  %skc_net.i210 = getelementptr i8, ptr %node.0232, i32 -48
  %69 = ptrtoint ptr %skc_net.i210 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %skc_net.i210, align 4
  %cmp.i211 = icmp eq ptr %70, %5
  br i1 %cmp.i211, label %if.then52, label %land.rhs45.for.inc_crit_edge, !prof !57

land.rhs45.for.inc_crit_edge:                     ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then52:                                        ; preds = %land.rhs45
  %add.ptr.le = getelementptr i8, ptr %node.0232, i32 -84
  %skc_state = getelementptr i8, ptr %node.0232, i32 -66
  %71 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %72)
  %cmp55 = icmp eq i8 %72, 6
  br i1 %cmp55, label %if.then57, label %if.then52.not_unique_crit_edge

if.then52.not_unique_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_unique

if.then57:                                        ; preds = %if.then52
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %73 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %skc_prot.i, align 8
  %twsk_prot.i = getelementptr inbounds %struct.proto, ptr %74, i32 0, i32 49
  %75 = ptrtoint ptr %twsk_prot.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %twsk_prot.i, align 4
  %twsk_unique.i = getelementptr inbounds %struct.timewait_sock_ops, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %twsk_unique.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %twsk_unique.i, align 4
  %cmp.not.i = icmp eq ptr %78, null
  br i1 %cmp.not.i, label %if.then57.not_unique_crit_edge, label %twsk_unique.exit

if.then57.not_unique_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_unique

twsk_unique.exit:                                 ; preds = %if.then57
  %call.i212 = tail call i32 %78(ptr noundef %sk, ptr noundef %add.ptr.le, ptr noundef %twp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %tobool60.not = icmp eq i32 %call.i212, 0
  br i1 %tobool60.not, label %twsk_unique.exit.not_unique_crit_edge, label %twsk_unique.exit.for.end_crit_edge

twsk_unique.exit.for.end_crit_edge:               ; preds = %twsk_unique.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

twsk_unique.exit.not_unique_crit_edge:            ; preds = %twsk_unique.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_unique

for.inc:                                          ; preds = %land.rhs45.for.inc_crit_edge, %land.lhs.true36.for.inc_crit_edge, %land.lhs.true31.for.inc_crit_edge, %land.lhs.true26.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %79 = ptrtoint ptr %node.0232 to i32
  call void @__asan_load4_noabort(i32 %79)
  %node.0 = load ptr, ptr %node.0232, align 4
  %80 = ptrtoint ptr %node.0 to i32
  %and.i195 = and i32 %80, 1
  %tobool.not = icmp eq i32 %and.i195, 0
  br i1 %tobool.not, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %twsk_unique.exit.for.end_crit_edge, %l3mdev_master_ifindex_by_index.exit.for.end_crit_edge
  %tw.0 = phi ptr [ %add.ptr.le, %twsk_unique.exit.for.end_crit_edge ], [ null, %l3mdev_master_ifindex_by_index.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %skc_num = getelementptr inbounds %struct.anon.18, ptr %14, i32 0, i32 1
  %81 = ptrtoint ptr %skc_num to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %lport, ptr %skc_num, align 2
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %82 = ptrtoint ptr %inet_sport to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %lport, ptr %inet_sport, align 8
  %83 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call11, ptr %83, align 8
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %85 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i214 = icmp eq ptr %86, null
  br i1 %tobool.not.i.i214, label %for.end.if.end89_crit_edge, label %do.end, !prof !57

for.end.if.end89_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 289, i32 noundef 9, ptr noundef null) #9
  br label %if.end89

if.end89:                                         ; preds = %do.end, %for.end.if.end89_crit_edge
  %87 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i, align 4
  %90 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %87, align 4
  %91 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %87, ptr %arrayidx.i, align 4
  %93 = ptrtoint ptr %89 to i32
  %and.i.i.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i216 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i216, label %do.body49.i.i, label %if.end89.__sk_nulls_add_node_rcu.exit_crit_edge

if.end89.__sk_nulls_add_node_rcu.exit_crit_edge:  ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_nulls_add_node_rcu.exit

do.body49.i.i:                                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %89, i32 0, i32 1
  %94 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %87, ptr %pprev51.i.i, align 4
  br label %__sk_nulls_add_node_rcu.exit

__sk_nulls_add_node_rcu.exit:                     ; preds = %do.body49.i.i, %if.end89.__sk_nulls_add_node_rcu.exit_crit_edge
  %tobool98.not = icmp eq ptr %tw.0, null
  br i1 %tobool98.not, label %__sk_nulls_add_node_rcu.exit.if.end119_crit_edge, label %if.then99

__sk_nulls_add_node_rcu.exit.if.end119_crit_edge: ; preds = %__sk_nulls_add_node_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.then99:                                        ; preds = %__sk_nulls_add_node_rcu.exit
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %tw.0, i32 0, i32 15, i32 0, i32 1
  %95 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %96, null
  br i1 %tobool.not.i.i.i.i.not.i, label %if.then99.sk_nulls_del_node_init_rcu.exit_crit_edge, label %if.then.i.i.i

if.then99.sk_nulls_del_node_init_rcu.exit_crit_edge: ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_nulls_del_node_init_rcu.exit

if.then.i.i.i:                                    ; preds = %if.then99
  %97 = getelementptr inbounds %struct.sock_common, ptr %tw.0, i32 0, i32 15
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %99, ptr %96, align 4
  %101 = ptrtoint ptr %99 to i32
  %and.i.i.i.i.i = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i7.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i7.i.i.i, label %do.body13.i.i.i.i, label %if.then.i.i.i.if.then.i218_crit_edge

if.then.i.i.i.if.then.i218_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i218

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %99, i32 0, i32 1
  %102 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %96, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i218

if.then.i218:                                     ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.if.then.i218_crit_edge
  %103 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %tw.0, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  %104 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp.i217 = icmp eq i32 %105, 1
  br i1 %cmp.i217, label %do.end.i, label %if.then.i218.if.end.i219_crit_edge, !prof !54

if.then.i218.if.end.i219_crit_edge:               ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i219

do.end.i:                                         ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 751, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i219

if.end.i219:                                      ; preds = %do.end.i, %if.then.i218.if.end.i219_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %106 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !64
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i219.sk_nulls_del_node_init_rcu.exit_crit_edge, !prof !54

if.end.i219.sk_nulls_del_node_init_rcu.exit_crit_edge: ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_nulls_del_node_init_rcu.exit

if.then3.i.i.i.i:                                 ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  br label %sk_nulls_del_node_init_rcu.exit

sk_nulls_del_node_init_rcu.exit:                  ; preds = %if.then3.i.i.i.i, %if.end.i219.sk_nulls_del_node_init_rcu.exit_crit_edge, %if.then99.sk_nulls_del_node_init_rcu.exit_crit_edge
  %net_statistics = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 30, i32 3
  %107 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %108, i32 0, i32 12
  %109 = ptrtoint ptr %arrayidx to i32
  %110 = tail call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i220 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i220 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cpu, align 4
  %arrayidx113 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %113
  %114 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx113, align 4
  %add = add i32 %115, %109
  %116 = inttoptr i32 %add to ptr
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  %add114 = add i32 %118, 1
  store i32 %add114, ptr %116, align 4
  br label %if.end119

if.end119:                                        ; preds = %sk_nulls_del_node_init_rcu.exit, %__sk_nulls_add_node_rcu.exit.if.end119_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i194) #9
  %119 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %skc_net.i, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %121 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %skc_prot, align 8
  %123 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !65
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %120, i32 0, i32 29, i32 2
  %124 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prot_inuse.i, align 8
  %inuse_idx.i = getelementptr inbounds %struct.proto, ptr %122, i32 0, i32 26
  %126 = ptrtoint ptr %inuse_idx.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %inuse_idx.i, align 4
  %arrayidx.i222 = getelementptr %struct.prot_inuse, ptr %125, i32 0, i32 1, i32 %127
  %128 = ptrtoint ptr %arrayidx.i222 to i32
  %129 = tail call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i = and i32 %129, -16384
  %130 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %132
  %133 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %134, %128
  %135 = inttoptr i32 %add.i to ptr
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 4
  %add15.i = add i32 %137, 1
  store i32 %add15.i, ptr %135, align 4
  %138 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !66
  %and.i.i.i223 = and i32 %138, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i223)
  %tobool.not.i224 = icmp eq i32 %and.i.i.i223, 0
  br i1 %tobool.not.i224, label %if.then.i225, label %if.end119.sock_prot_inuse_add.exit_crit_edge, !prof !54

if.end119.sock_prot_inuse_add.exit_crit_edge:     ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_prot_inuse_add.exit

if.then.i225:                                     ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i225, %if.end119.sock_prot_inuse_add.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %123) #9, !srcloc !67
  %tobool122.not = icmp eq ptr %twp, null
  br i1 %tobool122.not, label %if.else, label %if.then123

if.then123:                                       ; preds = %sock_prot_inuse_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %twp to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %tw.0, ptr %twp, align 4
  br label %cleanup

if.else:                                          ; preds = %sock_prot_inuse_add.exit
  br i1 %tobool98.not, label %if.else.cleanup_crit_edge, label %if.then125

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then125:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @inet_twsk_deschedule_put(ptr noundef nonnull %tw.0) #9
  br label %cleanup

not_unique:                                       ; preds = %twsk_unique.exit.not_unique_crit_edge, %if.then57.not_unique_crit_edge, %if.then52.not_unique_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i194) #9
  br label %cleanup

cleanup:                                          ; preds = %not_unique, %if.then125, %if.else.cleanup_crit_edge, %if.then123
  %retval.0 = phi i32 [ -99, %not_unique ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then125 ], [ 0, %if.then123 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inet6_hash(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp.not = icmp eq i8 %1, 7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @local_bh_disable()
  %call = tail call i32 @__inet_hash(ptr noundef %sk, ptr noundef null) #9
  tail call fastcc void @local_bh_enable()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__inet_hash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @bpf_sk_lookup_run_v6(ptr noundef %net, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %ifindex, ptr nocapture noundef writeonly %psk) unnamed_addr #4 align 64 {
entry:
  %ctx = alloca %struct.bpf_sk_lookup_kern, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr %struct.net, ptr %net, i32 0, i32 44, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @bpf_sk_lookup_run_v6.__warned, align 1
  br i1 %.b4, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bpf_sk_lookup_run_v6.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1487, ptr noundef nonnull @.str.3) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end64_crit_edge, label %if.then11

do.end8.if.end64_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then11:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ctx) #9
  %6 = getelementptr inbounds i8, ptr %ctx, i32 24
  %7 = call ptr @memset(ptr %6, i32 255, i32 12)
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 10, ptr %ctx, align 4
  %protocol12 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %protocol12 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 6, ptr %protocol12, align 2
  %sport13 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 2
  %10 = ptrtoint ptr %sport13 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %sport, ptr %sport13, align 4
  %dport14 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 3
  %11 = ptrtoint ptr %dport14 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %dport, ptr %dport14, align 2
  %v4 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 4
  %12 = ptrtoint ptr %v4 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 0, ptr %v4, align 4
  %v6 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 5
  %13 = ptrtoint ptr %v6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %saddr, ptr %v6, align 4
  %daddr16 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %daddr16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %daddr, ptr %daddr16, align 4
  %selected_sk17 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 6
  %ingress_ifindex = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 7
  %15 = ptrtoint ptr %ingress_ifindex to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ifindex, ptr %ingress_ifindex, align 4
  %no_reuseport18 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 8
  tail call void @migrate_disable() #9
  %items = getelementptr inbounds %struct.bpf_prog_array, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %items, align 8
  %tobool24.not16 = icmp eq ptr %17, null
  br i1 %tobool24.not16, label %if.then11.while.end_crit_edge, label %if.then11.while.body_crit_edge

if.then11.while.body_crit_edge:                   ; preds = %if.then11
  br label %while.body

if.then11.while.end_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end45.while.body_crit_edge, %if.then11.while.body_crit_edge
  %18 = phi ptr [ %91, %if.end45.while.body_crit_edge ], [ %17, %if.then11.while.body_crit_edge ]
  %_all_pass.020 = phi i8 [ %_all_pass.1, %if.end45.while.body_crit_edge ], [ 1, %if.then11.while.body_crit_edge ]
  %_no_reuseport.0.off019 = phi i1 [ %_no_reuseport.1.off0, %if.end45.while.body_crit_edge ], [ false, %if.then11.while.body_crit_edge ]
  %_selected_sk.018 = phi ptr [ %_selected_sk.1, %if.end45.while.body_crit_edge ], [ null, %if.then11.while.body_crit_edge ]
  %_item.017 = phi ptr [ %incdec.ptr, %if.end45.while.body_crit_edge ], [ %items, %if.then11.while.body_crit_edge ]
  %19 = ptrtoint ptr %selected_sk17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %_selected_sk.018, ptr %selected_sk17, align 4
  %frombool = zext i1 %_no_reuseport.0.off019 to i8
  %20 = ptrtoint ptr %no_reuseport18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %no_reuseport18, align 4
  call void @__cant_migrate(ptr noundef nonnull @.str, i32 noundef 613) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@bpf_sk_lookup_run_v6, %if.then.i.i)) #9
          to label %if.else.i.i [label %if.then.i.i], !srcloc !59

if.then.i.i:                                      ; preds = %while.body
  %call3.i.i = call i64 @sched_clock() #9
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %18, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %18, i32 0, i32 9
  %21 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = call i32 %22(ptr noundef nonnull %ctx, ptr noundef %insnsi.i.i) #9
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %18, i32 0, i32 7
  %23 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stats9.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %31, %25
  %32 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %32, i32 0, i32 3
  %33 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !65
  %and.i.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_off() #9
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %34 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %35 = call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !68
  %39 = call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i.i.i5 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i5 to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %44, ptrtoint (ptr @lockdep_recursion to i32)
  %45 = inttoptr i32 %add.i.i.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !69
  %48 = call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i7.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool20.not.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %52 = call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i.i.i = icmp eq i32 %55, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %56 = call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i9.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %59, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !70
  %60 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %63, ptrtoint (ptr @hardirqs_enabled to i32)
  %64 = inttoptr i32 %add47.i.i.i.i to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  %67 = call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i12.i.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool54.not.i.i.i.i = icmp eq i32 %66, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !57

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %71 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %72, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %32, i32 0, i32 3, i32 0, i32 1
  %73 = call ptr @llvm.returnaddress(i32 0) #9
  %74 = ptrtoint ptr %73 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %74) #9
  %75 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %32, align 8
  %inc.i.i.i = add i64 %76, 1
  store i64 %inc.i.i.i, ptr %32, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %32, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #9
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %77 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i6 = add i64 %conv.i.i.i, %78
  store i64 %add.i.i.i6, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %74) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  %79 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %80, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_on() #9
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %81 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !66
  %and.i.i.i4.i.i = and i32 %81, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !54

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #9, !srcloc !67
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %18, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %18, i32 0, i32 9
  %82 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = call i32 %83(ptr noundef nonnull %ctx, ptr noundef %insnsi15.i.i) #9
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %84 = zext i32 %ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.0.i.i, label %bpf_prog_run.exit.if.end45_crit_edge [
    i32 1, label %land.lhs.true30
    i32 0, label %land.lhs.true40
  ]

bpf_prog_run.exit.if.end45_crit_edge:             ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true30:                                  ; preds = %bpf_prog_run.exit
  %85 = ptrtoint ptr %selected_sk17 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %selected_sk17, align 4
  %tobool32.not = icmp eq ptr %86, null
  br i1 %tobool32.not, label %land.lhs.true30.if.end45_crit_edge, label %if.then33

land.lhs.true30.if.end45_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %no_reuseport18 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %no_reuseport18, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool36 = icmp ne i8 %88, 0
  br label %if.end45

land.lhs.true40:                                  ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #11
  %89 = and i8 %_all_pass.020, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool41.not = icmp eq i8 %89, 0
  %spec.store.select = select i1 %tobool41.not, i8 %_all_pass.020, i8 0
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true40, %if.then33, %land.lhs.true30.if.end45_crit_edge, %bpf_prog_run.exit.if.end45_crit_edge
  %_selected_sk.1 = phi ptr [ %86, %if.then33 ], [ %_selected_sk.018, %land.lhs.true40 ], [ %_selected_sk.018, %bpf_prog_run.exit.if.end45_crit_edge ], [ %_selected_sk.018, %land.lhs.true30.if.end45_crit_edge ]
  %_no_reuseport.1.off0 = phi i1 [ %tobool36, %if.then33 ], [ %_no_reuseport.0.off019, %land.lhs.true40 ], [ %_no_reuseport.0.off019, %bpf_prog_run.exit.if.end45_crit_edge ], [ %_no_reuseport.0.off019, %land.lhs.true30.if.end45_crit_edge ]
  %_all_pass.1 = phi i8 [ %_all_pass.020, %if.then33 ], [ %spec.store.select, %land.lhs.true40 ], [ %_all_pass.020, %bpf_prog_run.exit.if.end45_crit_edge ], [ %_all_pass.020, %land.lhs.true30.if.end45_crit_edge ]
  %incdec.ptr = getelementptr %struct.bpf_prog_array_item, ptr %_item.017, i32 1
  %90 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %incdec.ptr, align 8
  %tobool24.not = icmp eq ptr %91, null
  br i1 %tobool24.not, label %if.end45.while.end_crit_edge, label %if.end45.while.body_crit_edge

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end45.while.end_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end45.while.end_crit_edge, %if.then11.while.end_crit_edge
  %_selected_sk.0.lcssa = phi ptr [ null, %if.then11.while.end_crit_edge ], [ %_selected_sk.1, %if.end45.while.end_crit_edge ]
  %_no_reuseport.0.off0.lcssa = phi i1 [ false, %if.then11.while.end_crit_edge ], [ %_no_reuseport.1.off0, %if.end45.while.end_crit_edge ]
  %_all_pass.0.lcssa = phi i8 [ 1, %if.then11.while.end_crit_edge ], [ %_all_pass.1, %if.end45.while.end_crit_edge ]
  %92 = ptrtoint ptr %selected_sk17 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %_selected_sk.0.lcssa, ptr %selected_sk17, align 4
  %frombool49 = zext i1 %_no_reuseport.0.off0.lcssa to i8
  %93 = ptrtoint ptr %no_reuseport18 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %frombool49, ptr %no_reuseport18, align 4
  call void @migrate_enable() #9
  %94 = and i8 %_all_pass.0.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool51.not = icmp ne i8 %94, 0
  %tobool53 = icmp ne ptr %_selected_sk.0.lcssa, null
  %spec.select = select i1 %tobool51.not, i1 true, i1 %tobool53
  br i1 %spec.select, label %if.then56, label %while.end.if.end63_crit_edge

while.end.if.end63_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then56:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %selected_sk17 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %selected_sk17, align 4
  %97 = ptrtoint ptr %no_reuseport18 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %no_reuseport18, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool59 = icmp ne i8 %98, 0
  br label %if.end63

if.end63:                                         ; preds = %if.then56, %while.end.if.end63_crit_edge
  %no_reuseport.0 = phi i1 [ %tobool59, %if.then56 ], [ false, %while.end.if.end63_crit_edge ]
  %selected_sk.0 = phi ptr [ %96, %if.then56 ], [ inttoptr (i32 -111 to ptr), %while.end.if.end63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ctx) #9
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %do.end8.if.end64_crit_edge
  %no_reuseport.1.off0 = phi i1 [ %no_reuseport.0, %if.end63 ], [ false, %do.end8.if.end64_crit_edge ]
  %selected_sk.1 = phi ptr [ %selected_sk.0, %if.end63 ], [ null, %do.end8.if.end64_crit_edge ]
  %call.i7 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i7, label %if.end64.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

if.end64.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %if.end64
  %call1.i8 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %if.end64.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  %99 = call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i.i.i14 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %102, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %103 = ptrtoint ptr %psk to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %selected_sk.1, ptr %psk, align 4
  ret i1 %no_reuseport.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reuseport_select_sock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @secure_ipv6_port_ephemeral(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_deschedule_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_master_ifindex_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @inet6_ehashfn.inet6_ehash_secret, !1, !"inet6_ehash_secret", i1 false, i1 false}
!1 = !{!"../net/ipv6/inet6_hashtables.c", i32 30, i32 13}
!2 = !{ptr @inet6_ehashfn.ipv6_hash_secret, !3, !"ipv6_hash_secret", i1 false, i1 false}
!3 = !{!"../net/ipv6/inet6_hashtables.c", i32 31, i32 13}
!4 = !{ptr @inet6_ehashfn.___done, !5, !"___done", i1 false, i1 false}
!5 = !{!"../net/ipv6/inet6_hashtables.c", i32 35, i32 2}
!6 = !{ptr @inet6_ehashfn.___once_key, !5, !"___once_key", i1 false, i1 false}
!7 = !{ptr @inet6_ehashfn.___done.1, !8, !"___done", i1 false, i1 false}
!8 = !{!"../net/ipv6/inet6_hashtables.c", i32 36, i32 2}
!9 = !{ptr @inet6_ehashfn.___once_key.2, !8, !"___once_key", i1 false, i1 false}
!10 = !{ptr @__ksymtab___inet6_lookup_established, !11, !"__ksymtab___inet6_lookup_established", i1 false, i1 false}
!11 = !{!"../net/ipv6/inet6_hashtables.c", i32 92, i32 1}
!12 = !{ptr @__ksymtab_inet6_lookup_listener, !13, !"__ksymtab_inet6_lookup_listener", i1 false, i1 false}
!13 = !{!"../net/ipv6/inet6_hashtables.c", i32 227, i32 1}
!14 = !{ptr @__ksymtab_inet6_lookup, !15, !"__ksymtab_inet6_lookup", i1 false, i1 false}
!15 = !{!"../net/ipv6/inet6_hashtables.c", i32 244, i32 1}
!16 = !{ptr @__ksymtab_inet6_hash_connect, !17, !"__ksymtab_inet6_hash_connect", i1 false, i1 false}
!17 = !{!"../net/ipv6/inet6_hashtables.c", i32 330, i32 1}
!18 = !{ptr @__ksymtab_inet6_hash, !19, !"__ksymtab_inet6_hash", i1 false, i1 false}
!19 = !{!"../net/ipv6/inet6_hashtables.c", i32 344, i32 1}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/filter.h", i32 1487, i32 14}
!22 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/ipv6/inet6_hashtables.c", i32 145, i32 2}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ipv6/inet6_hashtables.c", i32 293, i32 3}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/net/sock.h", i32 751, i32 3}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148961338, i64 2148961343, i64 2148961364, i64 2148961408, i64 2148961442, i64 2148961463}
!53 = !{!"auto-init"}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 2158289544}
!56 = !{i64 832091, i64 832115, i64 832136, i64 832153, i64 832170}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{!"branch_weights", i32 4001, i32 1}
!59 = !{i64 2148960935, i64 2148960940, i64 2148960953, i64 2148960997, i64 2148961031, i64 2148961052}
!60 = !{i64 2149363717}
!61 = !{i64 2149363983}
!62 = !{i64 2156326138}
!63 = !{i64 2148437113}
!64 = !{i64 2148351553, i64 2148351585, i64 2148351614, i64 2148351648, i64 2148351679, i64 2148351702}
!65 = !{i64 751258, i64 751319}
!66 = !{i64 753990}
!67 = !{i64 754275}
!68 = !{i64 2149871716}
!69 = !{i64 2149876648}
!70 = !{i64 2149898360}
!71 = !{i64 2149903252}
!72 = !{i64 2149979709}
!73 = !{i64 2149980034}
!74 = !{i8 0, i8 2}
