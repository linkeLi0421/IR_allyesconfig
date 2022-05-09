; ModuleID = '/llk/IR_all_yes/net/sctp/proc.c_pt.bc'
source_filename = "../net/sctp/proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.snmp_mib = type { ptr, i32 }
%struct.sctp_globals = type { %struct.list_head, ptr, ptr, %struct.rhltable, i32, i32, i16, i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.151, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.151 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.92, i32, %struct.spinlock }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.sctp_hashbucket = type { %struct.rwlock_t, %struct.hlist_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.138, [0 x i32], %union.anon.139, i16, i16, %union.anon.140, %struct.refcount_struct, [0 x i32], %union.anon.141 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.106 }
%union.anon.106 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.138 = type { i32 }
%union.anon.139 = type { %struct.hlist_node }
%union.anon.140 = type { i32 }
%union.anon.141 = type { i32 }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.142, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.143, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.144, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.142 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.143 = type { ptr }
%union.anon.144 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.149 }
%union.anon.149 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sctp_rtoinfo = type { i32, i32, i32, i32 }
%struct.sctp_paddrparams = type <{ i32, %struct.__kernel_sockaddr_storage, i32, i16, i32, i32, i32, i32, i8, i8 }>
%struct.__kernel_sockaddr_storage = type { %union.anon.166 }
%union.anon.166 = type { ptr, [124 x i8] }
%struct.sctp_assocparams = type { i32, i16, i16, i32, i32, i32 }
%struct.sctp_initmsg = type { i16, i16, i16, i16 }
%struct.file = type { %union.anon.23, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.23 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.sctp_endpoint = type { %struct.sctp_ep_common, %struct.hlist_node, i32, %struct.list_head, [32 x i8], ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, i16, i8, i8, %struct.callback_head }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.170, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.170 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.sctp_stream = type { %struct.anon.171, %struct.anon.176, i16, i16, ptr, %union.anon.178, ptr }
%struct.anon.171 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.172, i32, ptr, i8 }
%union.anon.172 = type { i32 }
%struct.anon.176 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.177, i32, i32, i32, i8, i8 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { %struct.anon.180 }
%struct.anon.180 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sctp_transport = type { %struct.list_head, %struct.rhlist_head, %struct.refcount_struct, i8, i32, %struct.flowi, %union.sctp_addr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.sctp_addr, i32, i32, i32, i32, %struct.atomic_t, i64, i32, i32, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.list_head, %struct.sctp_packet, %struct.list_head, %struct.anon.168, %struct.anon.169, i64, %struct.callback_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.sctp_packet = type { i16, i16, i32, %struct.list_head, i32, i32, i32, ptr, ptr, i8 }
%struct.anon.168 = type { i32, i8, i8, i8 }
%struct.anon.169 = type { i16, i16, i16, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sctp_sockaddr_entry = type { %struct.list_head, %struct.callback_head, %union.sctp_addr, i8, i8 }
%struct.sctp_af = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, ptr, i16, %struct.list_head }
%struct.sctp_ht_iter = type { %struct.seq_net_private, %struct.rhashtable_iter }
%struct.seq_net_private = type { ptr, ptr }
%struct.rhashtable_iter = type { ptr, ptr, ptr, %struct.rhashtable_walker, i32, i32, i8 }
%struct.rhashtable_walker = type { %struct.list_head, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sctp\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"snmp\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eps\00", [28 x i8] zeroinitializer }, align 32
@sctp_eps_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @sctp_eps_seq_start, ptr @sctp_eps_seq_stop, ptr @sctp_eps_seq_next, ptr @sctp_eps_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"assocs\00", [25 x i8] zeroinitializer }, align 32
@sctp_assoc_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @sctp_transport_seq_start, ptr @sctp_transport_seq_stop, ptr @sctp_transport_seq_next, ptr @sctp_assocs_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"remaddr\00", [24 x i8] zeroinitializer }, align 32
@sctp_remaddr_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @sctp_transport_seq_start, ptr @sctp_transport_seq_stop, ptr @sctp_transport_seq_next, ptr @sctp_remaddr_seq_show }, [16 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@sctp_snmp_list = internal constant { [33 x %struct.snmp_mib], [88 x i8] } { [33 x %struct.snmp_mib] [%struct.snmp_mib { ptr @.str.6, i32 1 }, %struct.snmp_mib { ptr @.str.7, i32 2 }, %struct.snmp_mib { ptr @.str.8, i32 3 }, %struct.snmp_mib { ptr @.str.9, i32 4 }, %struct.snmp_mib { ptr @.str.10, i32 5 }, %struct.snmp_mib { ptr @.str.11, i32 6 }, %struct.snmp_mib { ptr @.str.12, i32 7 }, %struct.snmp_mib { ptr @.str.13, i32 8 }, %struct.snmp_mib { ptr @.str.14, i32 9 }, %struct.snmp_mib { ptr @.str.15, i32 10 }, %struct.snmp_mib { ptr @.str.16, i32 11 }, %struct.snmp_mib { ptr @.str.17, i32 12 }, %struct.snmp_mib { ptr @.str.18, i32 13 }, %struct.snmp_mib { ptr @.str.19, i32 14 }, %struct.snmp_mib { ptr @.str.20, i32 15 }, %struct.snmp_mib { ptr @.str.21, i32 16 }, %struct.snmp_mib { ptr @.str.22, i32 17 }, %struct.snmp_mib { ptr @.str.23, i32 18 }, %struct.snmp_mib { ptr @.str.24, i32 19 }, %struct.snmp_mib { ptr @.str.25, i32 20 }, %struct.snmp_mib { ptr @.str.26, i32 21 }, %struct.snmp_mib { ptr @.str.27, i32 22 }, %struct.snmp_mib { ptr @.str.28, i32 23 }, %struct.snmp_mib { ptr @.str.29, i32 24 }, %struct.snmp_mib { ptr @.str.30, i32 25 }, %struct.snmp_mib { ptr @.str.31, i32 27 }, %struct.snmp_mib { ptr @.str.32, i32 28 }, %struct.snmp_mib { ptr @.str.33, i32 29 }, %struct.snmp_mib { ptr @.str.34, i32 30 }, %struct.snmp_mib { ptr @.str.35, i32 31 }, %struct.snmp_mib { ptr @.str.36, i32 32 }, %struct.snmp_mib { ptr @.str.37, i32 33 }, %struct.snmp_mib zeroinitializer], [88 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%-32s\09%ld\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SctpCurrEstab\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SctpActiveEstabs\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SctpPassiveEstabs\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SctpAborteds\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SctpShutdowns\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SctpOutOfBlues\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SctpChecksumErrors\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SctpOutCtrlChunks\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SctpOutOrderChunks\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SctpOutUnorderChunks\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SctpInCtrlChunks\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SctpInOrderChunks\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SctpInUnorderChunks\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SctpFragUsrMsgs\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SctpReasmUsrMsgs\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SctpOutSCTPPacks\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SctpInSCTPPacks\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SctpT1InitExpireds\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SctpT1CookieExpireds\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SctpT2ShutdownExpireds\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SctpT3RtxExpireds\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SctpT4RtoExpireds\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SctpT5ShutdownGuardExpireds\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SctpDelaySackExpireds\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SctpAutocloseExpireds\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SctpT3Retransmits\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SctpPmtudRetransmits\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SctpFastRetransmits\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SctpInPktSoftirq\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SctpInPktBacklog\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SctpInPktDiscards\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SctpInDataChunkDiscards\00", [40 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@sctp_globals = external dso_local local_unnamed_addr global %struct.sctp_globals, align 4
@.str.38 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c" ENDPT     SOCK   STY SST HBKT LPORT   UID INODE LADDRS\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%8pK %8pK %-3d %-3d %-4d %-5d %5u %5lu \00", [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/sctp/proc.c\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Association %p with NULL primary path!\0A\00", [56 x i8] zeroinitializer }, align 32
@sctp_seq_dump_local_addrs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [162 x i8], [62 x i8] } { [162 x i8] c" ASSOC     SOCK   STY SST ST HBKT ASSOC-ID TX_QUEUE RX_QUEUE UID INODE LPORT RPORT LADDRS <-> RADDRS HBINT INS OUTS MAXRT T1X T2X RTXC wmema wmemq sndbuf rcvbuf\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%8pK %8pK %-3d %-3d %-2d %-4d %4d %8d %8d %7u %5lu %-5d %5d \00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"<-> \00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\09%8lu %5d %5d %4d %4d %4d %8d %8d %8d %8d %8d\00", [50 x i8] zeroinitializer }, align 32
@sctp_seq_dump_remote_addrs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"ADDR ASSOC_ID HB_ACT RTO MAX_PATH_RTX REM_ADDR_RTX START STATE\0A\00", [32 x i8] zeroinitializer }, align 32
@sctp_remaddr_seq_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu \00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0 \00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 378, i32 48 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 381, i32 30 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 384, i32 7 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"sctp_eps_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 191, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 387, i32 7 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"sctp_assoc_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 293, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 390, i32 7 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"sctp_remaddr_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 368, i32 36 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"sctp_snmp_list\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 22, i32 30 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 70, i32 19 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 23, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 24, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 25, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 26, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 27, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 28, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 29, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 30, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 31, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 32, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 33, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 34, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 35, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 36, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 37, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 38, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 39, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 40, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 41, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 42, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 43, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 44, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 45, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 46, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 47, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 48, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 49, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 50, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 51, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 52, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 53, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 54, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 141, i32 19 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 177, i32 19 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 184, i32 19 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 90, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 98, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 105, i32 20 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 695, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 723, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 249, i32 19 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 263, i32 6 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 274, i32 18 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 276, i32 18 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 278, i32 18 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 306, i32 19 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 324, i32 19 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 335, i32 19 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 347, i32 17 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [19 x i8] c"../net/sctp/proc.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 360, i32 19 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sctp_eps_ops, ptr @.str.3, ptr @sctp_assoc_ops, ptr @.str.4, ptr @sctp_remaddr_ops, ptr @sctp_snmp_list, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_eps_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_assoc_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_remaddr_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_snmp_list to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 162, i32 224, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_proc_init(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call.i = tail call ptr @_proc_mkdir(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef %1, ptr noundef %net, i1 noundef zeroext true) #8
  %proc_net_sctp = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 1
  %2 = ptrtoint ptr %proc_net_sctp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %proc_net_sctp, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef nonnull @sctp_snmp_seq_show, ptr noundef null) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %3 = ptrtoint ptr %proc_net_sctp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %proc_net_sctp, align 4
  %call11 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %4, ptr noundef nonnull @sctp_eps_ops, i32 noundef 8, ptr noundef null) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %5 = ptrtoint ptr %proc_net_sctp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %proc_net_sctp, align 4
  %call17 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %6, ptr noundef nonnull @sctp_assoc_ops, i32 noundef 44, ptr noundef null) #8
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %7 = ptrtoint ptr %proc_net_sctp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proc_net_sctp, align 4
  %call23 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %8, ptr noundef nonnull @sctp_remaddr_ops, i32 noundef 44, ptr noundef null) #8
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end20.cleanup_crit_edge, label %if.end20.return_crit_edge

if.end20.return_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %9 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %proc_net, align 4
  %call28 = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str, ptr noundef %10) #8
  %11 = ptrtoint ptr %proc_net_sctp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %proc_net_sctp, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.end20.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %cleanup ], [ -12, %entry.return_crit_edge ], [ 0, %if.end20.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_single(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_snmp_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %buff = alloca [34 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %buff) #8
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = call ptr @memset(ptr %buff, i32 0, i32 136)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call31 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call31, i32 %3)
  %cmp32 = icmp ult i32 %call31, %3
  br i1 %cmp32, label %for.cond2.preheader.lr.ph, label %entry.for.body14.preheader_crit_edge

entry.for.body14.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.preheader

for.body14.preheader:                             ; preds = %for.cond.loopexit.for.body14.preheader_crit_edge, %entry.for.body14.preheader_crit_edge
  br label %for.body14

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %sctp = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sctp, align 8
  %6 = ptrtoint ptr %5 to i32
  br label %for.cond2.preheader

for.cond.loopexit:                                ; preds = %for.body3
  %call = tail call i32 @cpumask_next(i32 noundef %call33, ptr noundef nonnull @__cpu_possible_mask) #11
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %for.cond.loopexit.for.cond2.preheader_crit_edge, label %for.cond.loopexit.for.body14.preheader_crit_edge

for.cond.loopexit.for.body14.preheader_crit_edge: ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.preheader

for.cond.loopexit.for.cond2.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond.loopexit.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %call33 = phi i32 [ %call31, %for.cond2.preheader.lr.ph ], [ %call, %for.cond.loopexit.for.cond2.preheader_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call33
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %6
  %9 = inttoptr i32 %add.i to ptr
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond2.preheader
  %i1.030 = phi i32 [ 0, %for.cond2.preheader ], [ %inc, %for.body3.for.body3_crit_edge ]
  %entry5 = getelementptr [33 x %struct.snmp_mib], ptr @sctp_snmp_list, i32 0, i32 %i1.030, i32 1
  %10 = ptrtoint ptr %entry5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entry5, align 4
  %add.ptr.i = getelementptr i32, ptr %9, i32 %11
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %arrayidx7 = getelementptr [34 x i32], ptr %buff, i32 0, i32 %i1.030
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7, align 4
  %conv8 = add i32 %15, %13
  store i32 %conv8, ptr %arrayidx7, align 4
  %inc = add nuw nsw i32 %i1.030, 1
  %exitcond = icmp eq i32 %inc, 32
  br i1 %exitcond, label %for.cond.loopexit, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.preheader
  %16 = phi ptr [ %20, %for.body14.for.body14_crit_edge ], [ @.str.6, %for.body14.preheader ]
  %i.034 = phi i32 [ %inc19, %for.body14.for.body14_crit_edge ], [ 0, %for.body14.preheader ]
  %arrayidx17 = getelementptr [34 x i32], ptr %buff, i32 0, i32 %i.034
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.5, ptr noundef nonnull %16, i32 noundef %18) #8
  %inc19 = add nuw nsw i32 %i.034, 1
  %arrayidx11 = getelementptr [33 x %struct.snmp_mib], ptr @sctp_snmp_list, i32 0, i32 %inc19
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11, align 4
  %exitcond35 = icmp eq i32 %inc19, 32
  br i1 %exitcond35, label %for.end20, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14

for.end20:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %buff) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_proc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_proc_mkdir(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sctp_eps_seq_start(ptr noundef %seq, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 4) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 4), align 4
  %conv = sext i32 %2 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv)
  %cmp.not = icmp slt i64 %1, %conv
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp2 = icmp slt i64 %1, 0
  br i1 %cmp2, label %if.end5.thread, label %if.end5

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %pos, align 8
  br label %if.then8

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %.pr = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr)
  %cmp6 = icmp eq i64 %.pr, 0
  br i1 %cmp6, label %if.end5.if.then8_crit_edge, label %if.end5.return_crit_edge

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %if.end5.if.then8_crit_edge, %if.end5.thread
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.38) #8
  br label %return

return:                                           ; preds = %if.then8, %if.end5.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %pos, %if.then8 ], [ %pos, %if.end5.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_eps_seq_stop(ptr nocapture noundef %seq, ptr nocapture noundef %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sctp_eps_seq_next(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v, ptr noundef %pos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 4) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 4), align 4
  %conv = sext i32 %2 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %conv)
  %cmp.not = icmp slt i64 %inc, %conv
  %pos. = select i1 %cmp.not, ptr %pos, ptr null
  ret ptr %pos.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_eps_seq_show(ptr noundef %seq, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %v, align 8
  %conv = trunc i64 %1 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 4) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp.not = icmp sgt i32 %2, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 1), align 4
  %arrayidx = getelementptr %struct.sctp_hashbucket, ptr %3, i32 %conv
  tail call void @_raw_read_lock_bh(ptr noundef %arrayidx) #8
  %chain = getelementptr %struct.sctp_hashbucket, ptr %3, i32 %conv, i32 1
  %4 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chain, align 4
  %tobool.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -88
  %tobool3.not5861 = icmp eq ptr %add.ptr, null
  %tobool3.not58 = or i1 %tobool.not, %tobool3.not5861
  br i1 %tobool3.not58, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %file.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ep.059 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr26, %for.inc.for.body_crit_edge ]
  %sk4 = getelementptr inbounds %struct.sctp_ep_common, ptr %ep.059, i32 0, i32 3
  %6 = ptrtoint ptr %sk4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk4, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i, align 4
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %cmp.i.not = icmp eq ptr %9, %13
  br i1 %cmp.i.not, label %if.end9, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.sctp_sock, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state, align 2
  %conv11 = zext i8 %17 to i32
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %ep.059, i32 0, i32 6
  %18 = ptrtoint ptr %bind_addr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %bind_addr, align 4
  %conv13 = zext i16 %19 to i32
  %20 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 25
  %24 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %user_ns.i, align 4
  %call15 = tail call i32 @sock_i_uid(ptr noundef %7) #8
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call15, 0
  %call17 = tail call i32 @from_kuid_munged(ptr noundef %25, [1 x i32] %.fca.0.insert) #8
  %call18 = tail call i32 @sock_i_ino(ptr noundef %7) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.39, ptr noundef nonnull %ep.059, ptr noundef %7, i32 noundef %15, i32 noundef %conv11, i32 noundef %conv, i32 noundef %conv13, i32 noundef %call17, i32 noundef %call18) #8
  tail call fastcc void @sctp_seq_dump_local_addrs(ptr noundef %seq, ptr noundef nonnull %ep.059)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.40) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %for.body.for.inc_crit_edge
  %node = getelementptr inbounds %struct.sctp_endpoint, ptr %ep.059, i32 0, i32 1
  %26 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %node, align 4
  %tobool22.not = icmp eq ptr %27, null
  %add.ptr26 = getelementptr i8, ptr %27, i32 -88
  %tobool3.not62 = icmp eq ptr %add.ptr26, null
  %tobool3.not = or i1 %tobool22.not, %tobool3.not62
  br i1 %tobool3.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %arrayidx) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_seq_dump_local_addrs(ptr noundef %seq, ptr noundef %epb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %epb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %epb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then:                                          ; preds = %entry
  %primary_path = getelementptr inbounds %struct.sctp_association, ptr %epb, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %primary_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_path, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %do.end, label %if.end25, !prof !139

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 90, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %epb) #8
  br label %cleanup

if.end25:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %saddr = getelementptr inbounds %struct.sctp_transport, ptr %3, i32 0, i32 19
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %entry.if.end26_crit_edge
  %primary.0 = phi ptr [ %saddr, %if.end25 ], [ null, %entry.if.end26_crit_edge ]
  %4 = tail call i32 @llvm.read_register.i32(metadata !129) #8
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end26.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end26.rcu_read_lock.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end26
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 696, ptr noundef nonnull @.str.46) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end26.rcu_read_lock.exit_crit_edge
  %call28 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end37_crit_edge

rcu_read_lock.exit.do.end37_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true.do.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true
  %.b84 = load i1, ptr @sctp_seq_dump_local_addrs.__warned, align 1
  br i1 %.b84, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @sctp_seq_dump_local_addrs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 98, ptr noundef nonnull @.str.43) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true.do.end37_crit_edge, %rcu_read_lock.exit.do.end37_crit_edge
  %address_list = getelementptr inbounds %struct.sctp_ep_common, ptr %epb, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %address_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %laddr.094 = load volatile ptr, ptr %address_list, align 4
  %cmp45.not95 = icmp eq ptr %laddr.094, %address_list
  br i1 %cmp45.not95, label %do.end37.for.end_crit_edge, label %for.body.lr.ph

do.end37.for.end_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end37
  %tobool50.not = icmp eq ptr %primary.0, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %laddr.096 = phi ptr [ %laddr.094, %for.body.lr.ph ], [ %laddr.0, %for.inc.for.body_crit_edge ]
  %valid = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.096, i32 0, i32 4
  %9 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool46.not = icmp eq i8 %10, 0
  br i1 %tobool46.not, label %for.body.for.inc_crit_edge, label %if.end48

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end48:                                         ; preds = %for.body
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.096, i32 0, i32 2
  %11 = ptrtoint ptr %a to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %a, align 4
  %call49 = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %12) #8
  br i1 %tobool50.not, label %if.end48.if.end55_crit_edge, label %land.lhs.true51

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.lhs.true51:                                  ; preds = %if.end48
  %cmp_addr = getelementptr inbounds %struct.sctp_af, ptr %call49, i32 0, i32 6
  %13 = ptrtoint ptr %cmp_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmp_addr, align 4
  %call52 = tail call i32 %14(ptr noundef %a, ptr noundef nonnull %primary.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true51.if.end55_crit_edge, label %if.then54

land.lhs.true51.if.end55_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then54:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.44) #8
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %land.lhs.true51.if.end55_crit_edge, %if.end48.if.end55_crit_edge
  %seq_dump_addr = getelementptr inbounds %struct.sctp_af, ptr %call49, i32 0, i32 19
  %15 = ptrtoint ptr %seq_dump_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %seq_dump_addr, align 4
  tail call void %16(ptr noundef %seq, ptr noundef %a) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end55, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %laddr.096 to i32
  call void @__asan_load4_noabort(i32 %17)
  %laddr.0 = load volatile ptr, ptr %laddr.096, align 4
  %cmp45.not = icmp eq ptr %laddr.0, %address_list
  br i1 %cmp45.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end37.for.end_crit_edge
  %call.i85 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i85, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i88

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i88:                                ; preds = %for.end
  %call1.i86 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86)
  %tobool.not.i87 = icmp eq i32 %call1.i86, 0
  br i1 %tobool.not.i87, label %land.lhs.true.i88.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i90

land.lhs.true.i88.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i90:                               ; preds = %land.lhs.true.i88
  %.b4.i89 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i89, label %land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge, label %if.then.i91

land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i91:                                      ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 724, ptr noundef nonnull @.str.47) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i91, %land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i88.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %18 = tail call i32 @llvm.read_register.i32(metadata !129) #8
  %and.i.i.i.i.i92 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i92 to ptr
  %preempt_count.i.i.i.i93 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i93, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i93, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_get_af_specific(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sctp_transport_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %hti = getelementptr inbounds %struct.sctp_ht_iter, ptr %1, i32 0, i32 1
  tail call void @sctp_transport_walk_start(ptr noundef %hti) #8
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %conv = trunc i64 %7 to i32
  %call2 = tail call ptr @sctp_transport_get_idx(ptr noundef %5, ptr noundef %hti, i32 noundef %conv) #8
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_transport_seq_stop(ptr nocapture noundef readonly %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %switch = icmp ult ptr %v, inttoptr (i32 2 to ptr)
  br i1 %switch, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sctp_transport_put(ptr noundef nonnull %v) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hti = getelementptr inbounds %struct.sctp_ht_iter, ptr %1, i32 0, i32 1
  tail call void @sctp_transport_walk_stop(ptr noundef %hti) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sctp_transport_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %switch = icmp ult ptr %v, inttoptr (i32 2 to ptr)
  br i1 %switch, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sctp_transport_put(ptr noundef nonnull %v) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %pos, align 8
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %hti = getelementptr inbounds %struct.sctp_ht_iter, ptr %1, i32 0, i32 1
  %call1 = tail call ptr @sctp_transport_get_next(ptr noundef %7, ptr noundef %hti) #8
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_assocs_seq_show(ptr noundef %seq, ptr noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %v, i32 0, i32 8
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 8
  %sk1 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 4
  %type = getelementptr inbounds %struct.sctp_sock, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %7 to i32
  %state = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %assoc_id = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %assoc_id, align 8
  %sndbuf_used = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 47
  %12 = ptrtoint ptr %sndbuf_used to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sndbuf_used, align 4
  %rmem_alloc = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 48
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rmem_alloc, i32 noundef 4) #8
  %14 = ptrtoint ptr %rmem_alloc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %rmem_alloc, align 4
  %file.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %16 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 25
  %20 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user_ns.i, align 4
  %call4 = tail call i32 @sock_i_uid(ptr noundef %3) #8
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call4, 0
  %call6 = tail call i32 @from_kuid_munged(ptr noundef %21, [1 x i32] %.fca.0.insert) #8
  %call7 = tail call i32 @sock_i_ino(ptr noundef %3) #8
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %bind_addr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bind_addr, align 4
  %conv8 = zext i16 %23 to i32
  %port9 = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %port9 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %port9, align 2
  %conv10 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.49, ptr noundef %1, ptr noundef %3, i32 noundef %5, i32 noundef %conv, i32 noundef %9, i32 noundef 0, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %call6, i32 noundef %call7, i32 noundef %conv8, i32 noundef %conv10) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.50) #8
  tail call fastcc void @sctp_seq_dump_local_addrs(ptr noundef %seq, ptr noundef %1)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.51) #8
  %peer.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5
  %primary_addr.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 5
  %call.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b34.i = load i1, ptr @sctp_seq_dump_remote_addrs.__warned, align 1
  br i1 %.b34.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @sctp_seq_dump_remote_addrs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 121, ptr noundef nonnull @.str.43) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %26 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %transport.035.i = load volatile ptr, ptr %peer.i, align 8
  %cmp.not36.i = icmp eq ptr %transport.035.i, %peer.i
  br i1 %cmp.not36.i, label %do.end.i.sctp_seq_dump_remote_addrs.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.sctp_seq_dump_remote_addrs.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_seq_dump_remote_addrs.exit

for.body.i:                                       ; preds = %if.end16.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %transport.037.i = phi ptr [ %transport.0.i, %if.end16.i.for.body.i_crit_edge ], [ %transport.035.i, %do.end.i.for.body.i_crit_edge ]
  %ipaddr.i = getelementptr inbounds %struct.sctp_transport, ptr %transport.037.i, i32 0, i32 6
  %27 = ptrtoint ptr %ipaddr.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ipaddr.i, align 4
  %call12.i = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %28) #8
  %cmp_addr.i = getelementptr inbounds %struct.sctp_af, ptr %call12.i, i32 0, i32 6
  %29 = ptrtoint ptr %cmp_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmp_addr.i, align 4
  %call13.i = tail call i32 %30(ptr noundef %ipaddr.i, ptr noundef %primary_addr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %for.body.i.if.end16.i_crit_edge, label %if.then15.i

for.body.i.if.end16.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then15.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.44) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %for.body.i.if.end16.i_crit_edge
  %seq_dump_addr.i = getelementptr inbounds %struct.sctp_af, ptr %call12.i, i32 0, i32 19
  %31 = ptrtoint ptr %seq_dump_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %seq_dump_addr.i, align 4
  tail call void %32(ptr noundef %seq, ptr noundef %ipaddr.i) #8
  %33 = ptrtoint ptr %transport.037.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %transport.0.i = load volatile ptr, ptr %transport.037.i, align 8
  %cmp.not.i = icmp eq ptr %transport.0.i, %peer.i
  br i1 %cmp.not.i, label %if.end16.i.sctp_seq_dump_remote_addrs.exit_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end16.i.sctp_seq_dump_remote_addrs.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sctp_seq_dump_remote_addrs.exit

sctp_seq_dump_remote_addrs.exit:                  ; preds = %if.end16.i.sctp_seq_dump_remote_addrs.exit_crit_edge, %do.end.i.sctp_seq_dump_remote_addrs.exit_crit_edge
  %hbinterval = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 19
  %34 = ptrtoint ptr %hbinterval to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hbinterval, align 8
  %incnt = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 60, i32 3
  %36 = ptrtoint ptr %incnt to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %incnt, align 2
  %conv11 = zext i16 %37 to i32
  %outcnt = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 60, i32 2
  %38 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %outcnt, align 4
  %conv13 = zext i16 %39 to i32
  %max_retrans = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 13
  %40 = ptrtoint ptr %max_retrans to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_retrans, align 8
  %init_retries = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 17
  %42 = ptrtoint ptr %init_retries to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %init_retries, align 2
  %conv14 = zext i16 %43 to i32
  %shutdown_retries = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 34
  %44 = ptrtoint ptr %shutdown_retries to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %shutdown_retries, align 4
  %rtx_data_chunks = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 42
  %46 = ptrtoint ptr %rtx_data_chunks to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rtx_data_chunks, align 8
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc, i32 noundef 4) #8
  %48 = ptrtoint ptr %sk_wmem_alloc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %sk_wmem_alloc, align 4
  %sk_wmem_queued = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 22
  %50 = ptrtoint ptr %sk_wmem_queued to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sk_wmem_queued, align 8
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 21
  %52 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sk_sndbuf, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 15
  %54 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sk_rcvbuf, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.52, i32 noundef %35, i32 noundef %conv11, i32 noundef %conv13, i32 noundef %41, i32 noundef %conv14, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55) #8
  br label %cleanup

cleanup:                                          ; preds = %sctp_seq_dump_remote_addrs.exit, %entry.cleanup_crit_edge
  %.str.40.sink = phi ptr [ @.str.40, %sctp_seq_dump_remote_addrs.exit ], [ @.str.48, %entry.cleanup_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull %.str.40.sink) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_walk_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_transport_get_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_walk_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_transport_get_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_remaddr_seq_show(ptr noundef %seq, ptr noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.53) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %v, i32 0, i32 8
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 8
  %call = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @sctp_remaddr_seq_show.__warned, align 1
  br i1 %.b47, label %land.lhs.true3.do.end_crit_edge, label %if.then5

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @sctp_remaddr_seq_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 315, ptr noundef nonnull @.str.43) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %peer = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %2)
  %tsp.048 = load volatile ptr, ptr %peer, align 8
  %cmp13.not49 = icmp eq ptr %tsp.048, %peer
  br i1 %cmp13.not49, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %tsp.050 = phi ptr [ %tsp.0, %for.body.for.body_crit_edge ], [ %tsp.048, %do.end.for.body_crit_edge ]
  %af_specific = getelementptr inbounds %struct.sctp_transport, ptr %tsp.050, i32 0, i32 7
  %3 = ptrtoint ptr %af_specific to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %af_specific, align 4
  %seq_dump_addr = getelementptr inbounds %struct.sctp_af, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %seq_dump_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %seq_dump_addr, align 4
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %tsp.050, i32 0, i32 6
  tail call void %6(ptr noundef %seq, ptr noundef %ipaddr) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.50) #8
  %asoc14 = getelementptr inbounds %struct.sctp_transport, ptr %tsp.050, i32 0, i32 8
  %7 = ptrtoint ptr %asoc14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asoc14, align 8
  %assoc_id = getelementptr inbounds %struct.sctp_association, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %assoc_id, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.54, i32 noundef %10) #8
  %pprev.i.i = getelementptr inbounds %struct.sctp_transport, ptr %tsp.050, i32 0, i32 40, i32 0, i32 1
  %11 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp ne ptr %12, null
  %lnot.ext.i = zext i1 %tobool.not.i.i to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.54, i32 noundef %lnot.ext.i) #8
  %rto = getelementptr inbounds %struct.sctp_transport, ptr %tsp.050, i32 0, i32 9
  %13 = ptrtoint ptr %rto to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rto, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.55, i32 noundef %14) #8
  %pathmaxrxt = getelementptr inbounds %struct.sctp_transport, ptr %tsp.050, i32 0, i32 29
  %15 = ptrtoint ptr %pathmaxrxt to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pathmaxrxt, align 2
  %conv = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.54, i32 noundef %conv) #8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.56) #8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.56) #8
  %state = getelementptr inbounds %struct.sctp_transport, ptr %tsp.050, i32 0, i32 37
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.57, i32 noundef %18) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.40) #8
  %19 = ptrtoint ptr %tsp.050 to i32
  call void @__asan_load4_noabort(i32 %19)
  %tsp.0 = load volatile ptr, ptr %tsp.050, align 8
  %cmp13.not = icmp eq ptr %tsp.0, %peer
  br i1 %cmp13.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !92, !94, !96, !97, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127}
!llvm.named.register.sp = !{!129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sctp/proc.c", i32 378, i32 48}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/sctp/proc.c", i32 381, i32 30}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/sctp/proc.c", i32 384, i32 7}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/sctp/proc.c", i32 387, i32 7}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/sctp/proc.c", i32 390, i32 7}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/sctp/proc.c", i32 70, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/sctp/proc.c", i32 23, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/sctp/proc.c", i32 24, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/sctp/proc.c", i32 25, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/sctp/proc.c", i32 26, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/sctp/proc.c", i32 27, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/sctp/proc.c", i32 28, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/sctp/proc.c", i32 29, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/sctp/proc.c", i32 30, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/sctp/proc.c", i32 31, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/sctp/proc.c", i32 32, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/sctp/proc.c", i32 33, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/sctp/proc.c", i32 34, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/sctp/proc.c", i32 35, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/sctp/proc.c", i32 36, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/sctp/proc.c", i32 37, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/sctp/proc.c", i32 38, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/sctp/proc.c", i32 39, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/sctp/proc.c", i32 40, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/sctp/proc.c", i32 41, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/sctp/proc.c", i32 42, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/sctp/proc.c", i32 43, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/sctp/proc.c", i32 44, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/sctp/proc.c", i32 45, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/sctp/proc.c", i32 46, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/sctp/proc.c", i32 47, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/sctp/proc.c", i32 48, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/sctp/proc.c", i32 49, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/sctp/proc.c", i32 50, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/sctp/proc.c", i32 51, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/sctp/proc.c", i32 52, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/sctp/proc.c", i32 53, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/sctp/proc.c", i32 54, i32 2}
!76 = !{ptr @sctp_snmp_list, !77, !"sctp_snmp_list", i1 false, i1 false}
!77 = !{!"../net/sctp/proc.c", i32 22, i32 30}
!78 = !{ptr @sctp_eps_ops, !79, !"sctp_eps_ops", i1 false, i1 false}
!79 = !{!"../net/sctp/proc.c", i32 191, i32 36}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/sctp/proc.c", i32 141, i32 19}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/sctp/proc.c", i32 177, i32 19}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/sctp/proc.c", i32 184, i32 19}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/sctp/proc.c", i32 90, i32 4}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../net/sctp/proc.c", i32 98, i32 2}
!91 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/sctp/proc.c", i32 105, i32 20}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!96 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!100 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @sctp_assoc_ops, !102, !"sctp_assoc_ops", i1 false, i1 false}
!102 = !{!"../net/sctp/proc.c", i32 293, i32 36}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/sctp/proc.c", i32 249, i32 19}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/sctp/proc.c", i32 263, i32 6}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/sctp/proc.c", i32 274, i32 18}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/sctp/proc.c", i32 276, i32 18}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/sctp/proc.c", i32 278, i32 18}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../net/sctp/proc.c", i32 120, i32 2}
!115 = !{ptr @sctp_remaddr_ops, !116, !"sctp_remaddr_ops", i1 false, i1 false}
!116 = !{!"../net/sctp/proc.c", i32 368, i32 36}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/sctp/proc.c", i32 306, i32 19}
!119 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!120 = !{!"../net/sctp/proc.c", i32 314, i32 2}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/sctp/proc.c", i32 324, i32 19}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/sctp/proc.c", i32 335, i32 19}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/sctp/proc.c", i32 347, i32 17}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/sctp/proc.c", i32 360, i32 19}
!129 = !{!"sp"}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"branch_weights", i32 1, i32 2000}
!140 = !{i64 2149533067}
!141 = !{i64 2149533333}
