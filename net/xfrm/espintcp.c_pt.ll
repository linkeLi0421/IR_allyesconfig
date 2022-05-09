; ModuleID = '/llk/IR_all_yes/net/xfrm/espintcp.c_pt.bc'
source_filename = "../net/xfrm/espintcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+espintcp_queue_out\22, \22a\22\09"
module asm "\09.weak\09__crc_espintcp_queue_out\09\09\09\09"
module asm "\09.long\09__crc_espintcp_queue_out\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_espintcp_queue_out:\09\09\09\09\09"
module asm "\09.asciz \09\22espintcp_queue_out\22\09\09\09\09\09"
module asm "__kstrtabns_espintcp_queue_out:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+espintcp_push_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_espintcp_push_skb\09\09\09\09"
module asm "\09.long\09__crc_espintcp_push_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_espintcp_push_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22espintcp_push_skb\22\09\09\09\09\09"
module asm "__kstrtabns_espintcp_push_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tcp_is_ulp_esp\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_is_ulp_esp\09\09\09\09"
module asm "\09.long\09__crc_tcp_is_ulp_esp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_is_ulp_esp:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_is_ulp_esp\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_is_ulp_esp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.159, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.159 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_ulp_ops = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.140 }
%struct.atomic_t = type { i32 }
%union.anon.140 = type { i32 }
%struct.strp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.197, %struct.anon.198, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.164, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.165, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.166, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.160, [0 x i32], %union.anon.161, i16, i16, %union.anon.162, %struct.refcount_struct, [0 x i32], %union.anon.163 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.160 = type { i32 }
%union.anon.161 = type { %struct.hlist_node }
%union.anon.162 = type { i32 }
%union.anon.163 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.164 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.165 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.166 = type { ptr }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
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
%struct.anon.197 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.198 = type { i32, i32, i32, i32 }
%struct.espintcp_ctx = type { %struct.strparser, %struct.sk_buff_head, %struct.sk_buff_head, %struct.espintcp_msg, ptr, ptr, ptr, %struct.work_struct, i8 }
%struct.strparser = type { ptr, i8, ptr, ptr, i32, %struct.delayed_work, %struct.work_struct, %struct.strp_stats, %struct.strp_callbacks }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.strp_stats = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.espintcp_msg = type { ptr, %struct.sk_msg, i32, i32 }
%struct.sk_msg = type { %struct.sk_msg_sg, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head }
%struct.sk_msg_sg = type { i32, i32, i32, i32, i32, i32, [19 x %struct.scatterlist] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
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
%struct.page = type { i32, %union.anon.5, %union.anon.155, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.155 = type { %struct.atomic_t }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.156 }
%union.anon.4 = type { ptr }
%union.anon.156 = type { i64 }
%struct.kvec = type { ptr, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.158, i8, i32, i32, ptr }
%union.anon.158 = type { ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
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
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.75, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.75 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@netdev_max_backlog = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_espintcp_queue_out = external dso_local constant [0 x i8], align 1
@__kstrtabns_espintcp_queue_out = external dso_local constant [0 x i8], align 1
@__ksymtab_espintcp_queue_out = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @espintcp_queue_out to i32), ptr @__kstrtab_espintcp_queue_out, ptr @__kstrtabns_espintcp_queue_out }, section "___ksymtab_gpl+espintcp_queue_out", align 4
@__kstrtab_espintcp_push_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_espintcp_push_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_espintcp_push_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @espintcp_push_skb to i32), ptr @__kstrtab_espintcp_push_skb, ptr @__kstrtabns_espintcp_push_skb }, section "___ksymtab_gpl+espintcp_push_skb", align 4
@espintcp_prot = internal global %struct.proto zeroinitializer, section ".data..ro_after_init", align 4
@espintcp6_prot = internal global { %struct.proto, [36 x i8] } zeroinitializer, align 32
@__kstrtab_tcp_is_ulp_esp = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_is_ulp_esp = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_is_ulp_esp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_is_ulp_esp to i32), ptr @__kstrtab_tcp_is_ulp_esp, ptr @__kstrtabns_tcp_is_ulp_esp }, section "___ksymtab_gpl+tcp_is_ulp_esp", align 4
@espintcp_ops = internal global %struct.proto_ops zeroinitializer, section ".data..ro_after_init", align 4
@tcp_prot = external dso_local global %struct.proto, align 4
@inet_stream_ops = external dso_local local_unnamed_addr constant %struct.proto_ops, align 4
@espintcp_ulp = internal global %struct.tcp_ulp_ops { %struct.list_head zeroinitializer, ptr @espintcp_init_sk, ptr null, ptr null, ptr null, ptr null, ptr null, [16 x i8] c"espintcp\00\00\00\00\00\00\00\00", ptr null }, section ".data..read_mostly", align 4
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__const.espintcp_init_sk.cb = private unnamed_addr constant %struct.strp_callbacks { ptr @espintcp_parse, ptr @espintcp_rcv, ptr null, ptr null, ptr null, ptr null }, align 4
@tcpv6_prot_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tcpv6_prot_mutex, i64 52), ptr getelementptr (i8, ptr @tcpv6_prot_mutex, i64 52) }, ptr @tcpv6_prot_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@espintcp6_ops = internal global { %struct.proto_ops, [52 x i8] } zeroinitializer, align 32
@espintcp_init_sk.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&ctx->work)\00", [34 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sk_dst_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tcpv6_prot_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcpv6_prot_mutex\00", [47 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"espintcp6_prot\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 394, i32 21 }
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 717, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"tcpv6_prot_mutex\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"espintcp6_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 395, i32 25 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 490, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 695, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 723, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 2112, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1984, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [23 x i8] c"../net/xfrm/espintcp.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 396, i32 8 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_espintcp_push_skb, ptr @__ksymtab_espintcp_queue_out, ptr @__ksymtab_tcp_is_ulp_esp, ptr @espintcp6_prot, ptr @.str, ptr @tcpv6_prot_mutex, ptr @espintcp6_ops, ptr @espintcp_init_sk.__key, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @skb_queue_head_init.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @espintcp6_prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpv6_prot_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @espintcp6_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @espintcp_init_sk.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @espintcp_queue_out(ptr nocapture noundef readonly %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %qlen.i = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @netdev_max_backlog to i32))
  %4 = load i32, ptr @netdev_max_backlog, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp.not = icmp ult i32 %3, %4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %out_queue = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %out_queue, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 1
  %8 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %skb, ptr %6, align 4
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -105, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @espintcp_push_skb(ptr noundef %sk, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %partial = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 3
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_header.i.i, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len3, align 4
  %call4 = tail call fastcc i32 @espintcp_push_msgs(ptr noundef %sk, i32 noundef 0)
  %len5 = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub = sub i32 %11, %sub.ptr.sub.i
  tail call void @skb_set_owner_w(ptr noundef %skb, ptr noundef %sk) #11
  %offset8 = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %offset8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.ptr.sub.i, ptr %offset8, align 4
  %15 = ptrtoint ptr %len5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %len5, align 4
  %16 = ptrtoint ptr %partial to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %skb, ptr %partial, align 4
  %call11 = tail call fastcc i32 @espintcp_push_msgs(ptr noundef %sk, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  %retval.0 = phi i32 [ -104, %if.then ], [ -105, %if.then6 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @espintcp_push_msgs(ptr noundef %sk, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %partial = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 3
  %len = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_running = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %tx_running to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_running, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %tx_running to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %tx_running, align 8
  %7 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %partial, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  %offset.i = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 3, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then6
  %9 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %partial, align 4
  %11 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset.i, align 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %call.i = tail call i32 @skb_send_sock_locked(ptr noundef %sk, ptr noundef %10, i32 noundef %12, i32 noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i.if.end9_crit_edge, label %do.cond.i

do.body.i.if.end9_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

do.cond.i:                                        ; preds = %do.body.i
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %sub.i = sub i32 %16, %call.i
  store i32 %sub.i, ptr %len, align 4
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %18, %call.i
  store i32 %add.i, ptr %offset.i, align 4
  %cmp4.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp4.i, label %do.cond.i.do.body.i_crit_edge, label %if.end9.thread

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end9.thread:                                   ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %partial, align 4
  tail call void @kfree_skb_reason(ptr noundef %20, i32 noundef 0) #11
  br label %if.then15

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call fastcc i32 @espintcp_sendskmsg_locked(ptr noundef %sk, ptr noundef %partial, i32 noundef %flags)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %do.body.i.if.end9_crit_edge
  %err.0 = phi i32 [ %call8, %if.else ], [ %call.i, %do.body.i.if.end9_crit_edge ]
  %21 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %err.0, label %if.end9.if.end16_crit_edge [
    i32 -11, label %if.then10
    i32 0, label %if.end9.if.then15_crit_edge
  ]

if.end9.if.then15_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %tx_running to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %tx_running, align 8
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool12.not, i32 0, i32 -11
  br label %cleanup

if.then15:                                        ; preds = %if.end9.if.then15_crit_edge, %if.end9.thread
  %23 = call ptr @memset(ptr %partial, i32 0, i32 456)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end9.if.end16_crit_edge
  %err.036 = phi i32 [ %err.0, %if.end9.if.end16_crit_edge ], [ 0, %if.then15 ]
  %24 = ptrtoint ptr %tx_running to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %tx_running, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.then10 ], [ %err.036, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tcp_is_ulp_esp(ptr nocapture noundef readonly %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %0 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_prot, align 8
  %cmp = icmp eq ptr %1, @espintcp_prot
  %cmp3 = icmp eq ptr %1, @espintcp6_prot
  %spec.select = or i1 %cmp, %cmp3
  ret i1 %spec.select
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @espintcp_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr @espintcp_prot, ptr @tcp_prot, i32 252)
  %1 = call ptr @memcpy(ptr @espintcp_ops, ptr @inet_stream_ops, i32 108)
  store ptr @espintcp_sendmsg, ptr getelementptr inbounds (%struct.proto, ptr @espintcp_prot, i32 0, i32 12), align 4
  store ptr @espintcp_recvmsg, ptr getelementptr inbounds (%struct.proto, ptr @espintcp_prot, i32 0, i32 13), align 4
  store ptr @espintcp_close, ptr @espintcp_prot, align 4
  store ptr @espintcp_release, ptr getelementptr inbounds (%struct.proto, ptr @espintcp_prot, i32 0, i32 19), align 4
  store ptr @espintcp_poll, ptr getelementptr inbounds (%struct.proto_ops, ptr @espintcp_ops, i32 0, i32 8), align 4
  %call = tail call i32 @tcp_register_ulp(ptr noundef nonnull @espintcp_ulp) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_ulp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @espintcp_sendskmsg_locked(ptr noundef %sk, ptr noundef %emsg, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skmsg1 = getelementptr inbounds %struct.espintcp_msg, ptr %emsg, i32 0, i32 1
  %or = or i32 %flags, 131072
  %0 = ptrtoint ptr %skmsg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %skmsg1, align 4
  %arrayidx = getelementptr %struct.espintcp_msg, ptr %emsg, i32 0, i32 1, i32 0, i32 6, i32 %1
  %offset = getelementptr inbounds %struct.espintcp_msg, ptr %emsg, i32 0, i32 2
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %sk_reserved_mem.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 12
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %flags.addr.0 = phi i32 [ %or, %entry ], [ %spec.select, %do.cond.do.body_crit_edge ]
  %sg.0 = phi ptr [ %arrayidx, %entry ], [ %call24, %do.cond.do.body_crit_edge ]
  %done.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond.do.body_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %offset5 = getelementptr inbounds %struct.scatterlist, ptr %sg.0, i32 0, i32 1
  %6 = ptrtoint ptr %offset5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset5, align 4
  store i32 0, ptr %offset, align 4
  %8 = ptrtoint ptr %sg.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg.0, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %and = and i32 %flags.addr.0, -131073
  %spec.select = select i1 %tobool.i.not, i32 %flags.addr.0, i32 %and
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !52

do.body2.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !53
  unreachable

sg_page.exit:                                     ; preds = %do.body
  %add = add i32 %7, %5
  %sub = sub i32 %3, %5
  %and.i58 = and i32 %9, -4
  %10 = inttoptr i32 %and.i58 to ptr
  %call981 = tail call i32 @do_tcp_sendpages(ptr noundef %sk, ptr noundef %10, i32 noundef %add, i32 noundef %sub, i32 noundef %spec.select) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call981)
  %cmp82 = icmp slt i32 %call981, 0
  br i1 %cmp82, label %sg_page.exit.cleanup.thread_crit_edge, label %sg_page.exit.if.end17_crit_edge

sg_page.exit.if.end17_crit_edge:                  ; preds = %sg_page.exit
  br label %if.end17

sg_page.exit.cleanup.thread_crit_edge:            ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then19.cleanup.thread_crit_edge, %sg_page.exit.cleanup.thread_crit_edge
  %offset4.0.lcssa = phi i32 [ %add20, %if.then19.cleanup.thread_crit_edge ], [ %add, %sg_page.exit.cleanup.thread_crit_edge ]
  %call9.lcssa = phi i32 [ %call9, %if.then19.cleanup.thread_crit_edge ], [ %call981, %sg_page.exit.cleanup.thread_crit_edge ]
  %offset5.le135 = getelementptr inbounds %struct.scatterlist, ptr %sg.0, i32 0, i32 1
  %11 = ptrtoint ptr %offset5.le135 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset5.le135, align 4
  %sub12 = sub i32 %offset4.0.lcssa, %12
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub12, ptr %offset, align 4
  %14 = ptrtoint ptr %skmsg1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %skmsg1, align 4
  %add16 = add i32 %15, %done.0
  store i32 %add16, ptr %skmsg1, align 4
  br label %cleanup27

if.end17:                                         ; preds = %if.then19.if.end17_crit_edge, %sg_page.exit.if.end17_crit_edge
  %call985 = phi i32 [ %call9, %if.then19.if.end17_crit_edge ], [ %call981, %sg_page.exit.if.end17_crit_edge ]
  %offset4.084 = phi i32 [ %add20, %if.then19.if.end17_crit_edge ], [ %add, %sg_page.exit.if.end17_crit_edge ]
  %size.083 = phi i32 [ %sub21, %if.then19.if.end17_crit_edge ], [ %sub, %sg_page.exit.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %size.083, i32 %call985)
  %cmp18.not = icmp eq i32 %size.083, %call985
  br i1 %cmp18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end17
  %add20 = add i32 %call985, %offset4.084
  %sub21 = sub i32 %size.083, %call985
  %call9 = tail call i32 @do_tcp_sendpages(ptr noundef %sk, ptr noundef %10, i32 noundef %add20, i32 noundef %sub21, i32 noundef %spec.select) #11
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then19.cleanup.thread_crit_edge, label %if.then19.if.end17_crit_edge

if.then19.if.end17_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then19.cleanup.thread_crit_edge:               ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end22:                                         ; preds = %if.end17
  %inc = add i32 %done.0, 1
  %16 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i59 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i59)
  %tobool.not.i.i = icmp eq i32 %and.i.i59, 0
  br i1 %tobool.not.i.i, label %if.end22._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !52

if.end22._compound_head.exit.i_crit_edge:         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %18, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.end22._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %10, %if.end22._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %19 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !54

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !55
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !57
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@espintcp_sendskmsg_locked, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !59

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %.pre-phi) #11
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %22 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %23, i32 0, i32 32
  %24 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i60 = icmp eq ptr %25, null
  br i1 %tobool.i.not.i60, label %put_page.exit.do.cond_crit_edge, label %if.end.i

put_page.exit.do.cond_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

if.end.i:                                         ; preds = %put_page.exit
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length, align 4
  %28 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sk_forward_alloc.i, align 8
  %add.i = add i32 %29, %27
  store i32 %add.i, ptr %sk_forward_alloc.i, align 8
  %30 = ptrtoint ptr %sk_reserved_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sk_reserved_mem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i61 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i61, label %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge, label %if.end.i.i62, !prof !52

if.end.i.sk_unused_reserved_mem.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_unused_reserved_mem.exit.i

if.end.i.i62:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sk_wmem_queued.i.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #11
  %34 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %36 = add i32 %33, %35
  %sub5.i.i = sub i32 %31, %36
  %37 = tail call i32 @llvm.smax.i32(i32 %sub5.i.i, i32 0) #11
  br label %sk_unused_reserved_mem.exit.i

sk_unused_reserved_mem.exit.i:                    ; preds = %if.end.i.i62, %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge
  %retval.0.i.i63 = phi i32 [ %37, %if.end.i.i62 ], [ 0, %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge ]
  %sub.i = sub i32 %add.i, %retval.0.i.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 2097151
  br i1 %cmp.i, label %if.then4.i, label %sk_unused_reserved_mem.exit.i.do.cond_crit_edge, !prof !54

sk_unused_reserved_mem.exit.i.do.cond_crit_edge:  ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

if.then4.i:                                       ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__sk_mem_reclaim(ptr noundef %sk, i32 noundef 1048576) #11
  br label %do.cond

do.cond:                                          ; preds = %if.then4.i, %sk_unused_reserved_mem.exit.i.do.cond_crit_edge, %put_page.exit.do.cond_crit_edge
  %call24 = tail call ptr @sg_next(ptr noundef %sg.0) #11
  %tobool.not = icmp eq ptr %call24, null
  br i1 %tobool.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  %38 = call ptr @memset(ptr %emsg, i32 0, i32 456)
  br label %cleanup27

cleanup27:                                        ; preds = %do.end, %cleanup.thread
  %retval.2 = phi i32 [ 0, %do.end ], [ %call9.lcssa, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_send_sock_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_tcp_sendpages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @espintcp_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %size) #2 align 64 {
entry:
  %timeo = alloca i32, align 4
  %pfx_iter = alloca %struct.iov_iter, align 8
  %pfx_iov = alloca %struct.kvec, align 8
  %buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #11
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %0 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_flags, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_sndtimeo.exit_crit_edge

entry.sock_sndtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 31
  %2 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %3, %cond.false.i ], [ 0, %entry.sock_sndtimeo.exit_crit_edge ]
  %4 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i, ptr %timeo, align 4
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %5 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %icsk_ulp_data.i, align 8
  %partial = getelementptr inbounds %struct.espintcp_ctx, ptr %6, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pfx_iter) #11
  %7 = call ptr @memset(ptr %pfx_iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pfx_iov) #11
  %8 = ptrtoint ptr %pfx_iov to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %pfx_iov, align 8
  %add = add i32 %size, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #11
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %buf, align 2
  %and3 = and i32 %1, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end, label %sock_sndtimeo.exit.cleanup_crit_edge

sock_sndtimeo.exit.cleanup_crit_edge:             ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 65533, i32 %size)
  %cmp = icmp ugt i32 %size, 65533
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %10 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_controllen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #11
  %12 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_flags, align 4
  %and11 = and i32 %13, 64
  %call12 = tail call fastcc i32 @espintcp_push_msgs(ptr noundef %sk, i32 noundef %and11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call12)
  %cmp15.not = icmp eq i32 %call12, -11
  br i1 %cmp15.not, label %lor.lhs.false, label %if.then14.if.then19_crit_edge

if.then14.if.then19_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.then14
  %14 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_flags, align 4
  %and17 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %lor.lhs.false.if.then19_crit_edge, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.then14.if.then19_crit_edge
  br label %cleanup.sink.split

if.end21:                                         ; preds = %if.end9
  %skmsg = getelementptr inbounds %struct.espintcp_ctx, ptr %6, i32 0, i32 3, i32 1
  %16 = call ptr @memset(ptr %skmsg, i32 0, i32 444)
  %arrayidx.i.i = getelementptr %struct.espintcp_ctx, ptr %6, i32 0, i32 3, i32 1, i32 0, i32 6, i32 17
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %arrayidx.i.i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end26.while.cond_crit_edge, %if.end21
  %call23 = call i32 @sk_msg_alloc(ptr noundef %sk, ptr noundef %skmsg, i32 noundef %add, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %while.end, label %if.end26

if.end26:                                         ; preds = %while.cond
  %call27 = call i32 @sk_stream_wait_memory(ptr noundef %sk, ptr noundef nonnull %timeo) #11
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.while.cond_crit_edge, label %if.end26.fail_crit_edge

if.end26.fail_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end26.while.cond_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %conv = trunc i32 %add to i16
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %buf, align 2
  %19 = ptrtoint ptr %pfx_iov to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf, ptr %pfx_iov, align 8
  %iov_len = getelementptr inbounds %struct.kvec, ptr %pfx_iov, i32 0, i32 1
  %20 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %iov_len, align 4
  call void @iov_iter_kvec(ptr noundef nonnull %pfx_iter, i32 noundef 1, ptr noundef nonnull %pfx_iov, i32 noundef 1, i32 noundef 2) #11
  %21 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iov_len, align 4
  %call35 = call i32 @sk_msg_memcopy_from_iter(ptr noundef %sk, ptr noundef nonnull %pfx_iter, ptr noundef %skmsg, i32 noundef %22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %while.end.fail_crit_edge, label %if.end39

while.end.fail_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end39:                                         ; preds = %while.end
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call41 = call i32 @sk_msg_memcopy_from_iter(ptr noundef %sk, ptr noundef %msg_iter, ptr noundef %skmsg, i32 noundef %size) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end39.fail_crit_edge, label %if.end45

if.end39.fail_crit_edge:                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %end47 = getelementptr inbounds %struct.espintcp_ctx, ptr %6, i32 0, i32 3, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %end47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %end47, align 4
  %len = getelementptr inbounds %struct.espintcp_ctx, ptr %6, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %size, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp48 = icmp eq i32 %24, 0
  %dec = add i32 %24, -1
  %end.0 = select i1 %cmp48, i32 17, i32 %dec
  %arrayidx.i = getelementptr %struct.sk_msg_sg, ptr %skmsg, i32 0, i32 6, i32 %end.0
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %or.i = and i32 %27, -4
  %and.i = or i32 %or.i, 2
  store i32 %and.i, ptr %arrayidx.i, align 4
  call void @tcp_rate_check_app_limited(ptr noundef %sk) #11
  %28 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_flags, align 4
  %and55 = and i32 %29, 64
  %call56 = call fastcc i32 @espintcp_push_msgs(ptr noundef %sk, i32 noundef %and55)
  br label %cleanup.sink.split

fail:                                             ; preds = %if.end39.fail_crit_edge, %while.end.fail_crit_edge, %if.end26.fail_crit_edge
  %err.0 = phi i32 [ %call35, %while.end.fail_crit_edge ], [ %call41, %if.end39.fail_crit_edge ], [ %call27, %if.end26.fail_crit_edge ]
  %call58 = call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %skmsg) #11
  %30 = call ptr @memset(ptr %partial, i32 0, i32 456)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %fail, %if.end45, %if.then19, %lor.lhs.false.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %size, %if.end45 ], [ -105, %if.then19 ], [ -11, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ %err.0, %fail ]
  call void @release_sock(ptr noundef %sk) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sock_sndtimeo.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sock_sndtimeo.exit.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -95, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pfx_iov) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pfx_iter) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @espintcp_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags, ptr nocapture noundef readnone %addr_len) #2 align 64 {
entry:
  %err = alloca i32, align 4
  %off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #11
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #11
  %3 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool.not = icmp eq i32 %nonblock, 0
  %cond = select i1 %tobool.not, i32 0, i32 64
  %or = or i32 %cond, %flags
  %ike_queue = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 1
  %call1 = call ptr @__skb_recv_datagram(ptr noundef %sk, ptr noundef %ike_queue, i32 noundef %or, ptr noundef nonnull %off, ptr noundef nonnull %err) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %5)
  %cmp = icmp eq i32 %5, -11
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %6 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sk_shutdown, align 2
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  br label %cleanup

if.end5:                                          ; preds = %entry
  %len6 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 6
  %9 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %len)
  %cmp7 = icmp ult i32 %10, %len
  br i1 %cmp7, label %if.end5.if.end17_crit_edge, label %if.else

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %len)
  %cmp12 = icmp ugt i32 %10, %len
  br i1 %cmp12, label %if.then14, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %11 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_flags, align 4
  %or15 = or i32 %12, 32
  store i32 %or15, ptr %msg_flags, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else.if.end17_crit_edge, %if.end5.if.end17_crit_edge
  %copied.0 = phi i32 [ %len, %if.then14 ], [ %len, %if.else.if.end17_crit_edge ], [ %10, %if.end5.if.end17_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call1, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #11
  %13 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end23, label %if.then22, !prof !52

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #11
  %14 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %err, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %and24 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end28_crit_edge, label %if.then26

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len6, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  %copied.1 = phi i32 [ %17, %if.then26 ], [ %copied.0, %if.end23.if.end28_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then22, %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then22 ], [ %copied.1, %if.end28 ], [ %5, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @espintcp_close(ptr noundef %sk, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  tail call void @strp_stop(ptr noundef %1) #11
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %2 = ptrtoint ptr %skc_prot to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tcp_prot, ptr %skc_prot, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !60
  %work = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 7
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #11
  tail call void @strp_done(ptr noundef %1) #11
  %out_queue = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %out_queue) #11
  %ike_queue = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %ike_queue) #11
  %len = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %partial = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %partial, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #11
  br label %if.end7

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %skmsg = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 3, i32 1
  %call6 = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %skmsg) #11
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4, %entry.if.end7_crit_edge
  tail call void @tcp_close(ptr noundef %sk, i32 noundef %timeout) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @espintcp_release(ptr noundef %sk) #2 align 64 {
entry:
  %queue = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %queue) #11
  %2 = getelementptr inbounds i8, ptr %queue, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 44)
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.anon.71, ptr %queue, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %queue, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i, align 4
  %out_queue = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %out_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %out_queue, align 4
  %cmp.i.not.i = icmp eq ptr %8, %out_queue
  br i1 %cmp.i.not.i, label %entry.skb_queue_splice_init.exit_crit_edge, label %if.then.i

entry.skb_queue_splice_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_queue_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev2.i.i = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.46, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %queue, ptr %prev5.i.i, align 4
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %queue, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %queue, ptr %10, align 8
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %prev.i, align 4
  %qlen.i5 = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %qlen.i5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i5, align 4
  %17 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %18, %16
  store i32 %add.i, ptr %qlen.i, align 4
  %19 = ptrtoint ptr %out_queue to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %out_queue, ptr %out_queue, align 4
  store ptr %out_queue, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i5, align 4
  br label %skb_queue_splice_init.exit

skb_queue_splice_init.exit:                       ; preds = %if.then.i, %entry.skb_queue_splice_init.exit_crit_edge
  %20 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue, align 4
  %cmp.i.i8 = icmp eq ptr %21, %queue
  %tobool.not.i79 = icmp eq ptr %21, null
  %tobool.not.i10 = or i1 %cmp.i.i8, %tobool.not.i79
  br i1 %tobool.not.i10, label %skb_queue_splice_init.exit.while.end_crit_edge, label %skb_queue_splice_init.exit.while.body_crit_edge

skb_queue_splice_init.exit.while.body_crit_edge:  ; preds = %skb_queue_splice_init.exit
  br label %while.body

skb_queue_splice_init.exit.while.end_crit_edge:   ; preds = %skb_queue_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %skb_queue_splice_init.exit.while.body_crit_edge
  %22 = phi ptr [ %32, %while.body.while.body_crit_edge ], [ %21, %skb_queue_splice_init.exit.while.body_crit_edge ]
  %23 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.46, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %22, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.46, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %prev17.i.i, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %26, ptr %28, align 8
  %call2 = call i32 @espintcp_push_skb(ptr noundef %sk, ptr noundef nonnull %22)
  %31 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %queue, align 4
  %cmp.i.i = icmp eq ptr %32, %queue
  %tobool.not.i7 = icmp eq ptr %32, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i7
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %skb_queue_splice_init.exit.while.end_crit_edge
  call void @tcp_release_cb(ptr noundef %sk) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %queue) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @espintcp_poll(ptr noundef %file, ptr noundef %sock, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @datagram_poll(ptr noundef %file, ptr noundef %sock, ptr noundef %wait) #11
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icsk_ulp_data.i, align 8
  %ike_queue = getelementptr inbounds %struct.espintcp_ctx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ike_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ike_queue, align 4
  %cmp.i.not = icmp eq ptr %5, %ike_queue
  %or = or i32 %call, 65
  %spec.select = select i1 %cmp.i.not, i32 %call, i32 %or
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_wait_memory(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_memcopy_from_iter(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rate_check_app_limited(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_recv_datagram(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @strp_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @strp_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_close(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_release_cb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @espintcp_init_sk(ptr noundef %sk) #2 align 64 {
entry:
  %cb = alloca %struct.strp_callbacks, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cb) #11
  %0 = call ptr @memcpy(ptr %cb, ptr @__const.espintcp_init_sk.cb, i32 24)
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %1 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 864) #14
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @strp_init(ptr noundef nonnull %call7.i.i, ptr noundef %sk, ptr noundef nonnull %cb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %free

if.end8:                                          ; preds = %if.end4
  %skc_tx_queue_mapping.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 16
  %4 = ptrtoint ptr %skc_tx_queue_mapping.i.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i.i, align 4
  %sk_dst_pending_confirm.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %5 = ptrtoint ptr %sk_dst_pending_confirm.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sk_dst_pending_confirm.i.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %if.end8.__sk_dst_reset.exit_crit_edge

if.end8.__sk_dst_reset.exit_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %__sk_dst_reset.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %if.end8
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.lhs.true.i.i, label %lockdep_sock_is_held.exit.i.i.__sk_dst_reset.exit_crit_edge

lockdep_sock_is_held.exit.i.i.__sk_dst_reset.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__sk_dst_reset.exit

land.lhs.true.i.i:                                ; preds = %lockdep_sock_is_held.exit.i.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.__sk_dst_reset.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.__sk_dst_reset.exit_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__sk_dst_reset.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @__sk_dst_set.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true2.i.i.__sk_dst_reset.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.__sk_dst_reset.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__sk_dst_reset.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__sk_dst_set.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 2113, ptr noundef nonnull @.str.7) #11
  br label %__sk_dst_reset.exit

__sk_dst_reset.exit:                              ; preds = %if.then.i.i, %land.lhs.true2.i.i.__sk_dst_reset.exit_crit_edge, %land.lhs.true.i.i.__sk_dst_reset.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.__sk_dst_reset.exit_crit_edge, %if.end8.__sk_dst_reset.exit_crit_edge
  %sk_dst_cache.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %6 = ptrtoint ptr %sk_dst_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk_dst_cache.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !61
  %8 = ptrtoint ptr %sk_dst_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %sk_dst_cache.i.i, align 4
  call void @dst_release(ptr noundef %7) #11
  call void @strp_check_rcv(ptr noundef nonnull %call7.i.i) #11
  %ike_queue = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 1, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %9 = ptrtoint ptr %ike_queue to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ike_queue, ptr %ike_queue, align 8
  %prev.i.i = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ike_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qlen.i.i, align 8
  %out_queue = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 2
  %lock.i107 = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 2, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i107, ptr noundef nonnull @.str.8, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %12 = ptrtoint ptr %out_queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %out_queue, ptr %out_queue, align 8
  %prev.i.i108 = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i108 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %out_queue, ptr %prev.i.i108, align 4
  %qlen.i.i109 = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %qlen.i.i109 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %qlen.i.i109, align 8
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %15 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %16)
  %cmp = icmp eq i16 %16, 2
  br i1 %cmp, label %__sk_dst_reset.exit.if.end24_crit_edge, label %if.else

__sk_dst_reset.exit.if.end24_crit_edge:           ; preds = %__sk_dst_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.else:                                          ; preds = %__sk_dst_reset.exit
  call void @mutex_lock_nested(ptr noundef nonnull @tcpv6_prot_mutex, i32 noundef 0) #11
  %17 = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @espintcp6_prot, i32 0, i32 13), align 4
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %if.then14, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %skc_prot16 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %18 = ptrtoint ptr %skc_prot16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skc_prot16, align 8
  %sk_socket17 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %20 = ptrtoint ptr %sk_socket17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk_socket17, align 8
  %ops18 = getelementptr inbounds %struct.socket, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops18, align 4
  %24 = call ptr @memcpy(ptr @espintcp6_prot, ptr %19, i32 252)
  %25 = call ptr @memcpy(ptr @espintcp6_ops, ptr %23, i32 108)
  store ptr @espintcp_sendmsg, ptr getelementptr inbounds (%struct.proto, ptr @espintcp6_prot, i32 0, i32 12), align 4
  store ptr @espintcp_recvmsg, ptr getelementptr inbounds (%struct.proto, ptr @espintcp6_prot, i32 0, i32 13), align 4
  store ptr @espintcp_close, ptr @espintcp6_prot, align 4
  store ptr @espintcp_release, ptr getelementptr inbounds (%struct.proto, ptr @espintcp6_prot, i32 0, i32 19), align 4
  store ptr @espintcp_poll, ptr getelementptr inbounds (%struct.proto_ops, ptr @espintcp6_ops, i32 0, i32 8), align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.else.if.end19_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @tcpv6_prot_mutex) #11
  br label %if.end24

if.end24:                                         ; preds = %if.end19, %__sk_dst_reset.exit.if.end24_crit_edge
  %espintcp6_prot.sink = phi ptr [ @espintcp6_prot, %if.end19 ], [ @espintcp_prot, %__sk_dst_reset.exit.if.end24_crit_edge ]
  %espintcp6_ops.sink = phi ptr [ @espintcp6_ops, %if.end19 ], [ @espintcp_ops, %__sk_dst_reset.exit.if.end24_crit_edge ]
  %skc_prot21 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %26 = ptrtoint ptr %skc_prot21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %espintcp6_prot.sink, ptr %skc_prot21, align 8
  %sk_socket22 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %27 = ptrtoint ptr %sk_socket22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk_socket22, align 8
  %ops23 = getelementptr inbounds %struct.socket, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %ops23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %espintcp6_ops.sink, ptr %ops23, align 4
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %30 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk_data_ready, align 8
  %saved_data_ready = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %saved_data_ready to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %saved_data_ready, align 8
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %33 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sk_write_space, align 4
  %saved_write_space = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %saved_write_space to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %saved_write_space, align 4
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 82
  %36 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sk_destruct, align 4
  %saved_destruct = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %saved_destruct to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %saved_destruct, align 8
  store ptr @espintcp_data_ready, ptr %sk_data_ready, align 8
  store ptr @espintcp_write_space, ptr %sk_write_space, align 4
  store ptr @espintcp_destruct, ptr %sk_destruct, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !62
  %icsk_ulp_data52 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %39 = ptrtoint ptr %icsk_ulp_data52 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call7.i.i, ptr %icsk_ulp_data52, align 8
  %work = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 7
  call void @__init_work(ptr noundef %work, i32 noundef 0) #11
  %40 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 7, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @espintcp_init_sk.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry68 = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 7, i32 1
  %41 = ptrtoint ptr %entry68 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %entry68, ptr %entry68, align 8
  %prev.i = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %entry68, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.espintcp_ctx, ptr %call7.i.i, i32 0, i32 7, i32 2
  %43 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @espintcp_tx_work, ptr %func, align 8
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %44 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2592, ptr %sk_allocation, align 8
  br label %cleanup

free:                                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %free ], [ 0, %if.end24 ], [ -16, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @espintcp_parse(ptr nocapture noundef readnone %strp, ptr noundef %skb) #2 align 64 {
entry:
  %blen = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %blen) #11
  %0 = ptrtoint ptr %blen to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %blen, align 2, !annotation !63
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len1, align 4
  %offset = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %add = add i32 %4, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %add)
  %cmp = icmp ult i32 %2, %add
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %4, ptr noundef nonnull %blen, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %blen to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %blen, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp7 = icmp ult i16 %6, 2
  %conv = zext i16 %6 to i32
  %spec.select = select i1 %cmp7, i32 -22, i32 %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %blen) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @espintcp_rcv(ptr noundef %strp, ptr noundef %skb) #2 align 64 {
entry:
  %nonesp_marker = alloca i32, align 4
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %sub = add i32 %1, -2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nonesp_marker) #11
  %2 = ptrtoint ptr %nonesp_marker to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %nonesp_marker, align 4, !annotation !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp eq i32 %sub, 1
  br i1 %cmp, label %if.then, label %if.end59, !prof !54

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #11
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %data, align 1, !annotation !63
  %offset = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add = add i32 %5, 2
  %call2 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %add, ptr noundef nonnull %data, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.body5, label %if.end53

do.body5:                                         ; preds = %if.then
  %6 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !64
  %7 = ptrtoint ptr %strp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %strp, align 8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i, align 4
  %xfrm_statistics = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 30, i32 6
  %11 = ptrtoint ptr %xfrm_statistics to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xfrm_statistics, align 4
  %arrayidx = getelementptr [29 x i32], ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx to i32
  %14 = call i32 @llvm.read_register.i32(metadata !41) #11
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx22 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx22, align 4
  %add23 = add i32 %19, %13
  %20 = inttoptr i32 %add23 to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add24 = add i32 %22, 1
  store i32 %add24, ptr %20, align 4
  %23 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !65
  %and.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool35.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool35.not, label %if.then44, label %do.body5.do.end46_crit_edge, !prof !54

do.body5.do.end46_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end46

if.then44:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end46

do.end46:                                         ; preds = %if.then44, %do.body5.do.end46_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #11, !srcloc !66
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #11
  br label %cleanup352

if.end53:                                         ; preds = %if.then
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp55 = icmp eq i8 %25, -1
  br i1 %cmp55, label %if.then57, label %if.end59.thread

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #11
  br label %cleanup352

if.end59.thread:                                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #11
  br label %do.body70

if.end59:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp60 = icmp ult i32 %sub, 5
  br i1 %cmp60, label %if.end59.do.body70_crit_edge, label %if.end133, !prof !54

if.end59.do.body70_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body70

do.body70:                                        ; preds = %if.end59.do.body70_crit_edge, %if.end59.thread
  %26 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !64
  %27 = ptrtoint ptr %strp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %strp, align 8
  %skc_net.i385 = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %skc_net.i385 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skc_net.i385, align 4
  %xfrm_statistics95 = getelementptr inbounds %struct.net, ptr %30, i32 0, i32 30, i32 6
  %31 = ptrtoint ptr %xfrm_statistics95 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xfrm_statistics95, align 4
  %arrayidx97 = getelementptr [29 x i32], ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx97 to i32
  %34 = call i32 @llvm.read_register.i32(metadata !41) #11
  %and.i386 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i386 to ptr
  %cpu100 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu100 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu100, align 4
  %arrayidx101 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx101, align 4
  %add102 = add i32 %39, %33
  %40 = inttoptr i32 %add102 to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %add103 = add i32 %42, 1
  store i32 %add103, ptr %40, align 4
  %43 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !65
  %and.i.i387 = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i387)
  %tobool114.not = icmp eq i32 %and.i.i387, 0
  br i1 %tobool114.not, label %if.then123, label %do.body70.do.end126_crit_edge, !prof !54

do.body70.do.end126_crit_edge:                    ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end126

if.then123:                                       ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end126

do.end126:                                        ; preds = %if.then123, %do.body70.do.end126_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #11, !srcloc !66
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup352

if.end133:                                        ; preds = %if.end59
  %offset134 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %44 = ptrtoint ptr %offset134 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset134, align 4
  %add135 = add i32 %45, 2
  %call136 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %add135, ptr noundef nonnull %nonesp_marker, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %do.body141, label %if.end204

do.body141:                                       ; preds = %if.end133
  %46 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !64
  %47 = ptrtoint ptr %strp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %strp, align 8
  %skc_net.i388 = getelementptr inbounds %struct.sock_common, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %skc_net.i388 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %skc_net.i388, align 4
  %xfrm_statistics166 = getelementptr inbounds %struct.net, ptr %50, i32 0, i32 30, i32 6
  %51 = ptrtoint ptr %xfrm_statistics166 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xfrm_statistics166, align 4
  %arrayidx168 = getelementptr [29 x i32], ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %arrayidx168 to i32
  %54 = call i32 @llvm.read_register.i32(metadata !41) #11
  %and.i389 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i389 to ptr
  %cpu171 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpu171 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu171, align 4
  %arrayidx172 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx172, align 4
  %add173 = add i32 %59, %53
  %60 = inttoptr i32 %add173 to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %add174 = add i32 %62, 1
  store i32 %add174, ptr %60, align 4
  %63 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !65
  %and.i.i390 = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i390)
  %tobool185.not = icmp eq i32 %and.i.i390, 0
  br i1 %tobool185.not, label %if.then194, label %do.body141.do.end197_crit_edge, !prof !54

do.body141.do.end197_crit_edge:                   ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end197

if.then194:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end197

do.end197:                                        ; preds = %if.then194, %do.body141.do.end197_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #11, !srcloc !66
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup352

if.end204:                                        ; preds = %if.end133
  %64 = ptrtoint ptr %offset134 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offset134, align 4
  %add206 = add i32 %65, 2
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %66 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %68 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %67, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %add206, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %add206, %sub.i.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end204.__pskb_pull.exit_crit_edge

if.end204.__pskb_pull.exit_crit_edge:             ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #13
  br label %__pskb_pull.exit

land.lhs.true.i:                                  ; preds = %if.end204
  %sub.i = sub i32 %add206, %sub.i.i
  %call2.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #11
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body211_crit_edge, label %land.lhs.true.i.__pskb_pull.exit_crit_edge

land.lhs.true.i.__pskb_pull.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__pskb_pull.exit

land.lhs.true.i.do.body211_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body211

__pskb_pull.exit:                                 ; preds = %land.lhs.true.i.__pskb_pull.exit_crit_edge, %if.end204.__pskb_pull.exit_crit_edge
  %70 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len.i.i, align 4
  %sub4.i = sub i32 %71, %add206
  store i32 %sub4.i, ptr %len.i.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i, align 4
  %add.ptr.i391 = getelementptr i8, ptr %73, i32 %add206
  store ptr %add.ptr.i391, ptr %data.i, align 4
  %tobool208.not = icmp eq ptr %add.ptr.i391, null
  br i1 %tobool208.not, label %__pskb_pull.exit.do.body211_crit_edge, label %if.end274

__pskb_pull.exit.do.body211_crit_edge:            ; preds = %__pskb_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body211

do.body211:                                       ; preds = %__pskb_pull.exit.do.body211_crit_edge, %land.lhs.true.i.do.body211_crit_edge
  %74 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !64
  %75 = ptrtoint ptr %strp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %strp, align 8
  %skc_net.i392 = getelementptr inbounds %struct.sock_common, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %skc_net.i392 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %skc_net.i392, align 4
  %xfrm_statistics236 = getelementptr inbounds %struct.net, ptr %78, i32 0, i32 30, i32 6
  %79 = ptrtoint ptr %xfrm_statistics236 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %xfrm_statistics236, align 4
  %arrayidx238 = getelementptr [29 x i32], ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx238 to i32
  %82 = call i32 @llvm.read_register.i32(metadata !41) #11
  %and.i393 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i393 to ptr
  %cpu241 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %cpu241 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cpu241, align 4
  %arrayidx242 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx242, align 4
  %add243 = add i32 %87, %81
  %88 = inttoptr i32 %add243 to ptr
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %add244 = add i32 %90, 1
  store i32 %add244, ptr %88, align 4
  %91 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !65
  %and.i.i394 = and i32 %91, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i394)
  %tobool255.not = icmp eq i32 %and.i.i394, 0
  br i1 %tobool255.not, label %if.then264, label %do.body211.do.end267_crit_edge, !prof !54

do.body211.do.end267_crit_edge:                   ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end267

if.then264:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end267

do.end267:                                        ; preds = %if.then264, %do.body211.do.end267_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %74) #11, !srcloc !66
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup352

if.end274:                                        ; preds = %__pskb_pull.exit
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i, align 4
  %sub276 = add i32 %93, -2
  %94 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %sub276)
  %cmp.i395 = icmp ugt i32 %95, %sub276
  br i1 %cmp.i395, label %cond.true.i, label %if.end274.if.end345_crit_edge

if.end274.if.end345_crit_edge:                    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end345

cond.true.i:                                      ; preds = %if.end274
  %96 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i.i = icmp eq i32 %97, 0
  br i1 %tobool.not.i.i, label %__skb_trim.exit.i.i, label %pskb_trim.exit

__skb_trim.exit.i.i:                              ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %sub276, ptr %len.i.i, align 4
  %99 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %100, i32 %sub276
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %101 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  br label %if.end345

pskb_trim.exit:                                   ; preds = %cond.true.i
  %call.i.i = call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %sub276) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp278.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp278.not, label %pskb_trim.exit.if.end345_crit_edge, label %do.body282

pskb_trim.exit.if.end345_crit_edge:               ; preds = %pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end345

do.body282:                                       ; preds = %pskb_trim.exit
  %102 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !64
  %103 = ptrtoint ptr %strp to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %strp, align 8
  %skc_net.i397 = getelementptr inbounds %struct.sock_common, ptr %104, i32 0, i32 9
  %105 = ptrtoint ptr %skc_net.i397 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %skc_net.i397, align 4
  %xfrm_statistics307 = getelementptr inbounds %struct.net, ptr %106, i32 0, i32 30, i32 6
  %107 = ptrtoint ptr %xfrm_statistics307 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %xfrm_statistics307, align 4
  %arrayidx309 = getelementptr [29 x i32], ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %arrayidx309 to i32
  %110 = call i32 @llvm.read_register.i32(metadata !41) #11
  %and.i398 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i398 to ptr
  %cpu312 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %cpu312 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cpu312, align 4
  %arrayidx313 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %113
  %114 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx313, align 4
  %add314 = add i32 %115, %109
  %116 = inttoptr i32 %add314 to ptr
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  %add315 = add i32 %118, 1
  store i32 %add315, ptr %116, align 4
  %119 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !65
  %and.i.i399 = and i32 %119, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i399)
  %tobool326.not = icmp eq i32 %and.i.i399, 0
  br i1 %tobool326.not, label %if.then335, label %do.body282.do.end338_crit_edge, !prof !54

do.body282.do.end338_crit_edge:                   ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end338

if.then335:                                       ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end338

do.end338:                                        ; preds = %if.then335, %do.body282.do.end338_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %102) #11, !srcloc !66
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup352

if.end345:                                        ; preds = %pskb_trim.exit.if.end345_crit_edge, %__skb_trim.exit.i.i, %if.end274.if.end345_crit_edge
  %120 = ptrtoint ptr %nonesp_marker to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %nonesp_marker, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp346 = icmp eq i32 %121, 0
  %122 = ptrtoint ptr %strp to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %strp, align 8
  br i1 %cmp346, label %if.then348, label %if.else

if.then348:                                       ; preds = %if.end345
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %123, i32 0, i32 9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #11
  %124 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %sk_backlog.i, align 4
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %123, i32 0, i32 15
  %126 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sk_rcvbuf.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %127)
  %cmp.not.i = icmp slt i32 %125, %127
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then348.do.body2.i_crit_edge

if.then348.do.body2.i_crit_edge:                  ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

lor.lhs.false.i:                                  ; preds = %if.then348
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %128 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %truesize.i, align 8
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %123, i32 0, i32 8
  %130 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %skc_prot.i.i.i, align 8
  %memory_allocated.i.i.i = getelementptr inbounds %struct.proto, ptr %131, i32 0, i32 32
  %132 = ptrtoint ptr %memory_allocated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %memory_allocated.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %133, null
  br i1 %tobool.i.not.i.i, label %lor.lhs.false.i.if.end41.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.if.end41.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i
  %sk_forward_alloc.i.i = getelementptr inbounds %struct.sock, ptr %123, i32 0, i32 11
  %134 = ptrtoint ptr %sk_forward_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sk_forward_alloc.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %129)
  %cmp.not.i.i = icmp slt i32 %135, %129
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.if.end41.i_crit_edge

if.end.i.i.if.end41.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call1.i.i = call i32 @__sk_mem_schedule(ptr noundef %123, i32 noundef %129, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i400 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i400, label %sk_rmem_schedule.exit.i, label %lor.lhs.false.i.i.if.end41.i_crit_edge

lor.lhs.false.i.i.if.end41.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

sk_rmem_schedule.exit.i:                          ; preds = %lor.lhs.false.i.i
  %pfmemalloc.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %136 = ptrtoint ptr %pfmemalloc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load.i.i.i = load i8, ptr %pfmemalloc.i.i.i, align 2
  %137 = and i8 %bf.load.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.i6.i.not.i = icmp eq i8 %137, 0
  br i1 %tobool.i6.i.not.i, label %sk_rmem_schedule.exit.i.do.body2.i_crit_edge, label %sk_rmem_schedule.exit.i.if.end41.i_crit_edge

sk_rmem_schedule.exit.i.if.end41.i_crit_edge:     ; preds = %sk_rmem_schedule.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

sk_rmem_schedule.exit.i.do.body2.i_crit_edge:     ; preds = %sk_rmem_schedule.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

do.body2.i:                                       ; preds = %sk_rmem_schedule.exit.i.do.body2.i_crit_edge, %if.then348.do.body2.i_crit_edge
  %138 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !64
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %123, i32 0, i32 9
  %139 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %skc_net.i.i, align 4
  %xfrm_statistics.i = getelementptr inbounds %struct.net, ptr %140, i32 0, i32 30, i32 6
  %141 = ptrtoint ptr %xfrm_statistics.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %xfrm_statistics.i, align 4
  %arrayidx.i = getelementptr [29 x i32], ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %arrayidx.i to i32
  %144 = call i32 @llvm.read_register.i32(metadata !41) #11
  %and.i.i401 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i401 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cpu.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %147
  %148 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx17.i, align 4
  %add.i = add i32 %149, %143
  %150 = inttoptr i32 %add.i to ptr
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %150, align 4
  %add18.i = add i32 %152, 1
  store i32 %add18.i, ptr %150, align 4
  %153 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !65
  %and.i.i.i = and i32 %153, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i402 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i402, label %if.then32.i, label %do.body2.i.do.end34.i_crit_edge, !prof !54

do.body2.i.do.end34.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34.i

if.then32.i:                                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end34.i

do.end34.i:                                       ; preds = %if.then32.i, %do.body2.i.do.end34.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %138) #11, !srcloc !66
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup352

if.end41.i:                                       ; preds = %sk_rmem_schedule.exit.i.if.end41.i_crit_edge, %lor.lhs.false.i.i.if.end41.i_crit_edge, %if.end.i.i.if.end41.i_crit_edge, %lor.lhs.false.i.if.end41.i_crit_edge
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %154 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %155, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %155(ptr noundef %skb) #11
  br label %skb_orphan.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end41.i
  %156 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %tobool3.not.i.i.i = icmp eq ptr %158, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, label %do.body7.i.i.i, !prof !52

do.body.i.i.i.skb_orphan.exit.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_orphan.exit.i.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #11, !srcloc !67
  unreachable

skb_orphan.exit.i.i:                              ; preds = %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, %if.then.i.i.i
  %159 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %123, ptr %159, align 4
  %161 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @sock_rfree, ptr %destructor.i.i.i, align 4
  %162 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %truesize.i, align 8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #11
  %164 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %163, ptr elementtype(i32) %sk_backlog.i) #11, !srcloc !68
  %165 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %skc_prot.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %166, i32 0, i32 32
  %167 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %168, null
  br i1 %tobool.i.not.i.i.i, label %skb_orphan.exit.i.i.skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

skb_orphan.exit.i.i.skb_set_owner_r.exit.i_crit_edge: ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %169 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %truesize.i, align 8
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %123, i32 0, i32 11
  %171 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %172, %170
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %skb_set_owner_r.exit.i

skb_set_owner_r.exit.i:                           ; preds = %if.end.i.i.i, %skb_orphan.exit.i.i.skb_set_owner_r.exit.i_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %173 = call ptr @memset(ptr %cb.i, i32 0, i32 48)
  %ike_queue.i = getelementptr inbounds %struct.espintcp_ctx, ptr %strp, i32 0, i32 1
  call void @skb_queue_tail(ptr noundef %ike_queue.i, ptr noundef %skb) #11
  %saved_data_ready.i = getelementptr inbounds %struct.espintcp_ctx, ptr %strp, i32 0, i32 4
  %174 = ptrtoint ptr %saved_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %saved_data_ready.i, align 8
  call void %175(ptr noundef %123) #11
  br label %cleanup352

if.else:                                          ; preds = %if.end345
  %cb.i403 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %176 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %178 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %177 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %179 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %180 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %181 = call ptr @memcpy(ptr %cb.i403, ptr %offset134, i32 24)
  %182 = call i32 @llvm.read_register.i32(metadata !41) #11
  %and.i.i.i.i.i.i = and i32 %182, -16384
  %183 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %185, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !69
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i404 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i404, label %if.else.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.else.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.else
  %call1.i.i405 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i405)
  %tobool.not.i.i406 = icmp eq i32 %call1.i.i405, 0
  br i1 %tobool.not.i.i406, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i407

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i407:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i407, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.else.rcu_read_lock.exit.i_crit_edge
  %skc_net.i.i408 = getelementptr inbounds %struct.sock_common, ptr %123, i32 0, i32 9
  %186 = ptrtoint ptr %skc_net.i.i408 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %skc_net.i.i408, align 4
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %188 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %skb_iif.i, align 8
  %call3.i = call ptr @dev_get_by_index_rcu(ptr noundef %187, i32 noundef %189) #11
  %190 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call3.i, ptr %190, align 8
  call fastcc void @local_bh_disable() #11
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %123, i32 0, i32 3
  %192 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %193)
  %cmp.i409 = icmp eq i16 %193, 10
  br i1 %cmp.i409, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %194 = load ptr, ptr @ipv6_stub, align 4
  %xfrm6_rcv_encap.i = getelementptr inbounds %struct.ipv6_stub, ptr %194, i32 0, i32 19
  %195 = ptrtoint ptr %xfrm6_rcv_encap.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %xfrm6_rcv_encap.i, align 4
  %call5.i = call i32 %196(ptr noundef %skb, i32 noundef 50, i32 noundef 0, i32 noundef 7) #11
  br label %if.end.i410

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = call i32 @xfrm4_rcv_encap(ptr noundef %skb, i32 noundef 50, i32 noundef 0, i32 noundef 7) #11
  br label %if.end.i410

if.end.i410:                                      ; preds = %if.else.i, %if.then.i
  call fastcc void @local_bh_enable() #11
  %call.i14.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i14.i, label %if.end.i410.handle_esp.exit_crit_edge, label %land.lhs.true.i17.i

if.end.i410.handle_esp.exit_crit_edge:            ; preds = %if.end.i410
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_esp.exit

land.lhs.true.i17.i:                              ; preds = %if.end.i410
  %call1.i15.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15.i)
  %tobool.not.i16.i = icmp eq i32 %call1.i15.i, 0
  br i1 %tobool.not.i16.i, label %land.lhs.true.i17.i.handle_esp.exit_crit_edge, label %land.lhs.true2.i19.i

land.lhs.true.i17.i.handle_esp.exit_crit_edge:    ; preds = %land.lhs.true.i17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_esp.exit

land.lhs.true2.i19.i:                             ; preds = %land.lhs.true.i17.i
  %.b4.i18.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18.i, label %land.lhs.true2.i19.i.handle_esp.exit_crit_edge, label %if.then.i20.i

land.lhs.true2.i19.i.handle_esp.exit_crit_edge:   ; preds = %land.lhs.true2.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_esp.exit

if.then.i20.i:                                    ; preds = %land.lhs.true2.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %handle_esp.exit

handle_esp.exit:                                  ; preds = %if.then.i20.i, %land.lhs.true2.i19.i.handle_esp.exit_crit_edge, %land.lhs.true.i17.i.handle_esp.exit_crit_edge, %if.end.i410.handle_esp.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !70
  %197 = call i32 @llvm.read_register.i32(metadata !41) #11
  %and.i.i.i.i.i21.i = and i32 %197, -16384
  %198 = inttoptr i32 %and.i.i.i.i.i21.i to ptr
  %preempt_count.i.i.i.i22.i = getelementptr inbounds %struct.thread_info, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %preempt_count.i.i.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %preempt_count.i.i.i.i22.i, align 4
  %sub.i.i.i.i = add i32 %200, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i22.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup352

cleanup352:                                       ; preds = %handle_esp.exit, %skb_set_owner_r.exit.i, %do.end34.i, %do.end338, %do.end267, %do.end197, %do.end126, %if.then57, %do.end46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nonesp_marker) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strp_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @strp_check_rcv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @espintcp_data_ready(ptr nocapture noundef readonly %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  tail call void @strp_data_ready(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @espintcp_write_space(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %work = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work) #11
  %saved_write_space = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %saved_write_space to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %saved_write_space, align 4
  tail call void %4(ptr noundef %sk) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @espintcp_destruct(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %saved_destruct = getelementptr inbounds %struct.espintcp_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %saved_destruct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %saved_destruct, align 8
  tail call void %3(ptr noundef %sk) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @espintcp_tx_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -812
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %tx_running = getelementptr i8, ptr %work, i32 44
  %2 = ptrtoint ptr %tx_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_running, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @espintcp_push_msgs(ptr noundef %1, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @release_sock(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_mem_schedule(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_rcv_encap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @strp_data_ready(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__ksymtab_espintcp_queue_out, !1, !"__ksymtab_espintcp_queue_out", i1 false, i1 false}
!1 = !{!"../net/xfrm/espintcp.c", i32 180, i32 1}
!2 = !{ptr @__ksymtab_espintcp_push_skb, !3, !"__ksymtab_espintcp_push_skb", i1 false, i1 false}
!3 = !{!"../net/xfrm/espintcp.c", i32 313, i32 1}
!4 = !{ptr @__ksymtab_tcp_is_ulp_esp, !5, !"__ksymtab_tcp_is_ulp_esp", i1 false, i1 false}
!5 = !{!"../net/xfrm/espintcp.c", i32 437, i32 1}
!6 = !{ptr @espintcp_prot, !7, !"espintcp_prot", i1 false, i1 false}
!7 = !{!"../net/xfrm/espintcp.c", i32 392, i32 21}
!8 = !{ptr @espintcp_ops, !9, !"espintcp_ops", i1 false, i1 false}
!9 = !{!"../net/xfrm/espintcp.c", i32 393, i32 25}
!10 = !{ptr @espintcp6_prot, !11, !"espintcp6_prot", i1 false, i1 false}
!11 = !{!"../net/xfrm/espintcp.c", i32 394, i32 21}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/mm.h", i32 717, i32 2}
!14 = !{ptr @espintcp_ulp, !15, !"espintcp_ulp", i1 false, i1 false}
!15 = !{!"../net/xfrm/espintcp.c", i32 570, i32 27}
!16 = !{ptr @espintcp_init_sk.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../net/xfrm/espintcp.c", i32 490, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/net/sock.h", i32 2112, i32 12}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @skb_queue_head_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/xfrm/espintcp.c", i32 396, i32 8}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @tcpv6_prot_mutex, !36, !"tcpv6_prot_mutex", i1 false, i1 false}
!39 = !{ptr @espintcp6_ops, !40, !"espintcp6_ops", i1 false, i1 false}
!40 = !{!"../net/xfrm/espintcp.c", i32 395, i32 25}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i8 0, i8 2}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2154434759, i64 2154435251, i64 2154434796, i64 2154434852, i64 2154434886, i64 2154434910, i64 2154434951, i64 2154434972, i64 2154435000, i64 2154435034}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 2153387848, i64 2153388331, i64 2153387885, i64 2153387941, i64 2153387975, i64 2153387999, i64 2153388040, i64 2153388061, i64 2153388089, i64 2153388123}
!56 = !{i64 2148634271}
!57 = !{i64 2148548980, i64 2148549012, i64 2148549041, i64 2148549075, i64 2148549106, i64 2148549129}
!58 = !{i64 2148634500}
!59 = !{i64 2149027670, i64 2149027675, i64 2149027688, i64 2149027732, i64 2149027766, i64 2149027787}
!60 = !{i64 2159026055}
!61 = !{i64 2156826728}
!62 = !{i64 2159022546}
!63 = !{!"auto-init"}
!64 = !{i64 948698, i64 948759}
!65 = !{i64 951430}
!66 = !{i64 951715}
!67 = !{i64 2154682871, i64 2154683359, i64 2154682908, i64 2154682964, i64 2154682998, i64 2154683022, i64 2154683063, i64 2154683084, i64 2154683112, i64 2154683146}
!68 = !{i64 2148545795, i64 2148545821, i64 2148545850, i64 2148545884, i64 2148545915, i64 2148545938}
!69 = !{i64 2149748659}
!70 = !{i64 2149748925}
