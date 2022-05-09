; ModuleID = '/llk/IR_all_yes/net/sctp/input.c_pt.bc'
source_filename = "../net/sctp/input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sctp_globals = type { %struct.list_head, ptr, ptr, %struct.rhltable, i32, i32, i16, i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.skb_checksum_ops = type { ptr, ptr }
%struct.icmp_err = type { i32, i8 }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.178, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.178 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.sk_buff = type { %union.anon, %union.anon.179, %union.anon.180, [48 x i8], %union.anon.181, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.183, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.179 = type { ptr }
%union.anon.180 = type { i64 }
%union.anon.181 = type { %struct.anon.182 }
%struct.anon.182 = type { i32, ptr }
%union.anon.183 = type { %struct.anon.184 }
%struct.anon.184 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.185, i32, i32, i32, i16, i16, %union.anon.187, i32, %union.anon.188, %union.anon.189, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.185 = type { i32 }
%union.anon.187 = type { i32 }
%union.anon.188 = type { i32 }
%union.anon.189 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.108, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.108 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.98, i32, %struct.spinlock }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { ptr, ptr }
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
%struct.sctp_af = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, ptr, i16, %struct.list_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sock_common = type { %union.anon.146, %union.anon.148, %union.anon.149, i16, i8, i8, i32, %union.anon.151, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.154, [0 x i32], %union.anon.155, i16, i16, %union.anon.156, %struct.refcount_struct, [0 x i32], %union.anon.157 }
%union.anon.146 = type { i64 }
%union.anon.148 = type { i32 }
%union.anon.149 = type { i32 }
%union.anon.151 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.154 = type { i32 }
%union.anon.155 = type { %struct.hlist_node }
%union.anon.156 = type { i32 }
%union.anon.157 = type { i32 }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.158, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.159, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.160, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.158 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.159 = type { ptr }
%union.anon.160 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.22 }
%union.anon.22 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sctp_rtoinfo = type { i32, i32, i32, i32 }
%struct.sctp_paddrparams = type <{ i32, %struct.__kernel_sockaddr_storage, i32, i16, i32, i32, i32, i32, i8, i8 }>
%struct.__kernel_sockaddr_storage = type { %union.anon.209 }
%union.anon.209 = type { ptr, [124 x i8] }
%struct.sctp_assocparams = type { i32, i16, i16, i32, i32, i32 }
%struct.sctp_initmsg = type { i16, i16, i16, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.sctp_chunk = type { %struct.list_head, %struct.refcount_struct, i32, %union.anon.200, %struct.list_head, ptr, %union.anon.201, %union.sctp_params, %union.anon.202, ptr, ptr, ptr, %struct.sctp_sndrcvinfo, ptr, ptr, i32, %union.sctp_addr, %union.sctp_addr, ptr, ptr, ptr, i16 }
%union.anon.200 = type { %struct.list_head }
%union.anon.201 = type { ptr }
%union.sctp_params = type { ptr }
%union.anon.202 = type { ptr }
%struct.sctp_sndrcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.sctp_hash_cmp_arg = type { ptr, ptr, i16 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.sctp_paramhdr = type { i16, i16 }
%struct.sctp_addip_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_addiphdr }
%struct.sctp_addiphdr = type { i32, [0 x i8] }
%struct.sctp_hashbucket = type { %struct.rwlock_t, %struct.hlist_head }
%struct.sctp_endpoint = type { %struct.sctp_ep_common, %struct.hlist_node, i32, %struct.list_head, [32 x i8], ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, i16, i8, i8, %struct.callback_head }
%struct.sctp_transport = type { %struct.list_head, %struct.rhlist_head, %struct.refcount_struct, i8, i32, %struct.flowi, %union.sctp_addr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.sctp_addr, i32, i32, i32, i32, %struct.atomic_t, i64, i32, i32, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.list_head, %struct.sctp_packet, %struct.list_head, %struct.anon.211, %struct.anon.212, i64, %struct.callback_head }
%struct.sctp_packet = type { i16, i16, i32, %struct.list_head, i32, i32, i32, ptr, ptr, i8 }
%struct.anon.211 = type { i32, i8, i8, i8 }
%struct.anon.212 = type { i16, i16, i16, i8, i8 }
%struct.sctp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.213, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%struct.anon.213 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.sctp_stream = type { %struct.anon.214, %struct.anon.219, i16, i16, ptr, %union.anon.221, ptr }
%struct.anon.214 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.215, i32, ptr, i8 }
%union.anon.215 = type { i32 }
%struct.anon.219 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.220, i32, i32, i32, i8, i8 }
%union.anon.220 = type { i32 }
%union.anon.221 = type { %struct.anon.223 }
%struct.anon.223 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.226 }
%union.anon.226 = type { i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.rhashtable_compare_arg = type { ptr, ptr }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@sctp_globals = external dso_local global %struct.sctp_globals, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sctp_icmp_proto_unreachable.__UNIQUE_ID_ddebug671 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sctp\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sctp_icmp_proto_unreachable\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/sctp/input.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: unrecognized next header type encountered!\0A\00", [48 x i8] zeroinitializer }, align 32
@sctp_hash_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 0, i16 0, i16 8, i32 0, i16 0, i8 1, ptr @sctp_hash_key, ptr @sctp_hash_obj, ptr @sctp_hash_cmp }, [36 x i8] zeroinitializer }, align 32
@sctp_hash_transport.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sctp_hash_transport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013insert transport fail, errno %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sctp_hash_transport\00", [44 x i8] zeroinitializer }, align 32
@sctp_hash_transport._entry_ptr = internal global ptr @sctp_hash_transport._entry, section ".printk_index", align 4
@sctp_csum_ops = internal constant { %struct.skb_checksum_ops, [24 x i8] } { %struct.skb_checksum_ops { ptr @sctp_csum_update, ptr @sctp_csum_combine }, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@icmp_err_convert = external dso_local local_unnamed_addr constant [0 x %struct.icmp_err], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sctp_rcv_lookup.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 1, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__sctp_rcv_lookup\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"sctp: asoc not found for src:%pI4:%d dst:%pI4:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__sctp_rcv_lookup.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 1, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"sctp: asoc not found for src:%pI6:%d dst:%pI6:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 8, i64 10, i64 15, i64 193]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 6, i64 14]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 11, i64 12]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.35 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 459, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"sctp_hash_params\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 931, i32 39 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 977, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"sctp_csum_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [31 x i8] c"../include/net/sctp/checksum.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 46, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 1011, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1750, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 316, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 695, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 594, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 723, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 755, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1337, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [20 x i8] c"../net/sctp/input.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1341, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @sctp_hash_transport._entry, ptr @sctp_hash_transport._entry_ptr, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sctp_hash_params, ptr @.str.5, ptr @.str.6, ptr @sctp_csum_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_hash_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_hash_transport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_csum_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_rcv(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %transport = alloca ptr, align 4
  %src = alloca %union.sctp_addr, align 4
  %dest = alloca %union.sctp_addr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %transport) #12
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %transport, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %src) #12
  %1 = call ptr @memset(ptr %src, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dest) #12
  %2 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %3 = call ptr @memset(ptr %dest, i32 255, i32 28)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 127
  %6 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nd_net.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.i.not = icmp eq i16 %11, 0
  br i1 %tobool.i.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gso_type.i, align 8
  %and.i = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i361 = icmp ne i32 %and.i, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %14 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool.i361, %land.rhs ]
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp.not, label %if.end, label %land.end.discard_it_crit_edge

land.end.discard_it_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %discard_it

if.end:                                           ; preds = %land.end
  %sctp = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38
  %16 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sctp, align 8
  %arrayidx = getelementptr [34 x i32], ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %arrayidx to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i362 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i362 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu, align 4
  %arrayidx12 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %24, %18
  %25 = inttoptr i32 %add to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add13 = add i32 %27, 1
  store i32 %add13, ptr %25, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %30 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %32 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %33 to i32
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i = sub i32 16, %sub.ptr.rhs.cast.i
  %add19 = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add19)
  %cmp20 = icmp ult i32 %29, %add19
  br i1 %cmp20, label %if.end.discard_it_crit_edge, label %if.end23

if.end.discard_it_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %discard_it

if.end23:                                         ; preds = %if.end
  br i1 %14, label %if.end23.lor.lhs.false_crit_edge, label %land.lhs.true

if.end23.lor.lhs.false_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end23
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %36 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not.i = icmp eq i32 %37, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.lor.lhs.false_crit_edge, label %cond.true.i

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

cond.true.i:                                      ; preds = %land.lhs.true
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %37) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.discard_it_crit_edge, label %cond.true.i.lor.lhs.false_crit_edge

cond.true.i.lor.lhs.false_crit_edge:              ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

cond.true.i.discard_it_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %discard_it

lor.lhs.false:                                    ; preds = %cond.true.i.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge, %if.end23.lor.lhs.false_crit_edge
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  %data_len.i.i363 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %40 = ptrtoint ptr %data_len.i.i363 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len.i.i363, align 8
  %sub.i.i = sub i32 %39, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 11
  br i1 %cmp.i, label %lor.lhs.false.if.end28_crit_edge, label %if.end.i, !prof !83

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end.i:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %39)
  %cmp3.i = icmp ult i32 %39, 12
  br i1 %cmp3.i, label %if.end.i.discard_it_crit_edge, label %pskb_may_pull.exit, !prof !84

if.end.i.discard_it_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %discard_it

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 12, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.discard_it_crit_edge, label %pskb_may_pull.exit.if.end28_crit_edge

pskb_may_pull.exit.if.end28_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

pskb_may_pull.exit.discard_it_crit_edge:          ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %discard_it

if.end28:                                         ; preds = %pskb_may_pull.exit.if.end28_crit_edge, %lor.lhs.false.if.end28_crit_edge
  %42 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i.i, align 8
  %44 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i366 = zext i16 %45 to i32
  %add.ptr.i.i367 = getelementptr i8, ptr %43, i32 %conv.i.i366
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i369 = ptrtoint ptr %add.ptr.i.i367 to i32
  %sub.ptr.rhs.cast.i370 = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i371 = sub i32 %sub.ptr.lhs.cast.i369, %sub.ptr.rhs.cast.i370
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  %sub.i372 = sub i32 %49, %sub.ptr.sub.i371
  store i32 %sub.i372, ptr %len, align 4
  %50 = ptrtoint ptr %data_len.i.i363 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data_len.i.i363, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i372, i32 %51)
  %cmp.i373 = icmp ult i32 %sub.i372, %51
  br i1 %cmp.i373, label %do.body4.i, label %__skb_pull.exit, !prof !84

do.body4.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !85
  unreachable

__skb_pull.exit:                                  ; preds = %if.end28
  %add.ptr.i = getelementptr i8, ptr %47, i32 %sub.ptr.sub.i371
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr.i, ptr %data.i, align 4
  %53 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load31 = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load31, -2
  store i16 %bf.clear, ptr %pkt_type, align 8
  %bf.lshr.i = lshr i16 %bf.load31, 9
  %trunc = trunc i16 %bf.lshr.i to i2
  %54 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %__skb_pull.exit.if.else_crit_edge [
    i2 1, label %__skb_pull.exit.if.then34_crit_edge
    i2 -1, label %skb_csum_unnecessary.exit
  ]

__skb_pull.exit.if.then34_crit_edge:              ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

__skb_pull.exit.if.else_crit_edge:                ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

skb_csum_unnecessary.exit:                        ; preds = %__skb_pull.exit
  %55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %55, align 8
  %conv.i.i376 = zext i16 %57 to i32
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %sub.ptr.rhs.cast.i.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i377 = add i32 %sub.ptr.sub.i.neg.i.i, %conv.i.i376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i377)
  %tobool33.not = icmp slt i32 %sub.i.i377, 0
  br i1 %tobool33.not, label %skb_csum_unnecessary.exit.if.else_crit_edge, label %skb_csum_unnecessary.exit.if.then34_crit_edge

skb_csum_unnecessary.exit.if.then34_crit_edge:    ; preds = %skb_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

skb_csum_unnecessary.exit.if.else_crit_edge:      ; preds = %skb_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then34:                                        ; preds = %skb_csum_unnecessary.exit.if.then34_crit_edge, %__skb_pull.exit.if.then34_crit_edge
  %58 = and i16 %bf.load31, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %58)
  %cmp.i380 = icmp eq i16 %58, 512
  br i1 %cmp.i380, label %if.then.i, label %if.then34.if.end44_crit_edge

if.then34.if.end44_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then.i:                                        ; preds = %if.then34
  %csum_level.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %59 = ptrtoint ptr %csum_level.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %bf.load2.i = load i32, ptr %csum_level.i, align 2
  %60 = and i32 %bf.load2.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp7.i = icmp eq i32 %60, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear12.i = and i16 %bf.load31, -1538
  %61 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %bf.clear12.i, ptr %pkt_type, align 8
  br label %if.end44

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = add i32 %bf.load2.i, 805306368
  %bf.shl.i = and i32 %62, 805306368
  %bf.clear19.i = and i32 %bf.load2.i, -805306369
  %bf.set20.i = or i32 %bf.shl.i, %bf.clear19.i
  %63 = ptrtoint ptr %csum_level.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %bf.set20.i, ptr %csum_level.i, align 2
  br label %if.end44

if.else:                                          ; preds = %skb_csum_unnecessary.exit.if.else_crit_edge, %__skb_pull.exit.if.else_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 8) to i32))
  %64 = load i8, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 8), align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool35.not = icmp ne i8 %64, 0
  %brmerge = select i1 %tobool35.not, i1 true, i1 %14
  br i1 %brmerge, label %if.else.if.end44_crit_edge, label %land.lhs.true38

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true38:                                  ; preds = %if.else
  %call39 = tail call fastcc i32 @sctp_rcv_checksum(ptr noundef %7, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %land.lhs.true38.discard_it_crit_edge, label %land.lhs.true38.if.end44_crit_edge

land.lhs.true38.if.end44_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true38.discard_it_crit_edge:             ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %discard_it

if.end44:                                         ; preds = %land.lhs.true38.if.end44_crit_edge, %if.else.if.end44_crit_edge, %if.else.i, %if.then9.i, %if.then34.if.end44_crit_edge
  %65 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load46 = load i16, ptr %pkt_type, align 8
  %bf.set48 = or i16 %bf.load46, 1
  store i16 %bf.set48, ptr %pkt_type, align 8
  %66 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len, align 4
  %sub.i382 = add i32 %67, -12
  store i32 %sub.i382, ptr %len, align 4
  %68 = ptrtoint ptr %data_len.i.i363 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data_len.i.i363, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i382, i32 %69)
  %cmp.i384 = icmp ult i32 %sub.i382, %69
  br i1 %cmp.i384, label %do.body4.i385, label %__skb_pull.exit388, !prof !84

do.body4.i385:                                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !85
  unreachable

__skb_pull.exit388:                               ; preds = %if.end44
  %70 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i, align 4
  %add.ptr.i387 = getelementptr i8, ptr %71, i32 12
  store ptr %add.ptr.i387, ptr %data.i, align 4
  %72 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %74 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i390 = zext i16 %75 to i32
  %add.ptr.i.i391 = getelementptr i8, ptr %73, i32 %conv.i.i390
  %76 = ptrtoint ptr %add.ptr.i.i391 to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load51 = load i8, ptr %add.ptr.i.i391, align 4
  %bf.lshr52 = lshr i8 %bf.load51, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.lshr52)
  %switch.selectcmp.i = icmp eq i8 %bf.lshr52, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.lshr52)
  %switch.selectcmp2.i = icmp eq i8 %bf.lshr52, 4
  %77 = select i1 %switch.selectcmp.i, i16 10, i16 0
  %conv54 = select i1 %switch.selectcmp2.i, i16 2, i16 %77
  %call55 = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %conv54) #12
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %__skb_pull.exit388.discard_it_crit_edge, label %if.end61, !prof !84

__skb_pull.exit388.discard_it_crit_edge:          ; preds = %__skb_pull.exit388
  call void @__sanitizer_cov_trace_pc() #14
  br label %discard_it

if.end61:                                         ; preds = %__skb_pull.exit388
  %af63 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %78 = ptrtoint ptr %af63 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call55, ptr %af63, align 4
  %from_skb = getelementptr inbounds %struct.sctp_af, ptr %call55, i32 0, i32 8
  %79 = ptrtoint ptr %from_skb to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %from_skb, align 4
  call void %80(ptr noundef nonnull %src, ptr noundef %skb, i32 noundef 1) #12
  %81 = ptrtoint ptr %from_skb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %from_skb, align 4
  call void %82(ptr noundef nonnull %dest, ptr noundef %skb, i32 noundef 0) #12
  %addr_valid = getelementptr inbounds %struct.sctp_af, ptr %call55, i32 0, i32 12
  %83 = ptrtoint ptr %addr_valid to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %addr_valid, align 4
  %call65 = call i32 %84(ptr noundef nonnull %src, ptr noundef null, ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end61.discard_it_crit_edge, label %lor.lhs.false67

if.end61.discard_it_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %discard_it

lor.lhs.false67:                                  ; preds = %if.end61
  %85 = ptrtoint ptr %addr_valid to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %addr_valid, align 4
  %call69 = call i32 %86(ptr noundef nonnull %dest, ptr noundef null, ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %lor.lhs.false67.discard_it_crit_edge, label %if.end72

lor.lhs.false67.discard_it_crit_edge:             ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #14
  br label %discard_it

if.end72:                                         ; preds = %lor.lhs.false67
  %call73 = call fastcc ptr @__sctp_rcv_lookup(ptr noundef %7, ptr noundef %skb, ptr noundef nonnull %src, ptr noundef nonnull %dest, ptr noundef nonnull %transport)
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.then75, label %if.end72.if.end77_crit_edge

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %call76 = call fastcc ptr @__sctp_rcv_lookup_endpoint(ptr noundef %7, ptr noundef %skb, ptr noundef nonnull %dest, ptr noundef nonnull %src)
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end72.if.end77_crit_edge
  %ep.0.call73 = phi ptr [ %call76, %if.then75 ], [ %call73, %if.end72.if.end77_crit_edge ]
  %ep.0 = phi ptr [ %call76, %if.then75 ], [ null, %if.end72.if.end77_crit_edge ]
  %sk80 = getelementptr inbounds %struct.sctp_ep_common, ptr %ep.0.call73, i32 0, i32 3
  %87 = ptrtoint ptr %sk80 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sk80, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %88, i32 0, i32 6
  %89 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool81.not = icmp eq i32 %90, 0
  br i1 %tobool81.not, label %if.end77.if.end98_crit_edge, label %land.lhs.true82

if.end77.if.end98_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

land.lhs.true82:                                  ; preds = %if.end77
  %skb_iif = getelementptr inbounds %struct.sctp_af, ptr %call55, i32 0, i32 17
  %91 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %skb_iif, align 4
  %call85 = call i32 %92(ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %call85)
  %cmp86.not = icmp eq i32 %90, %call85
  br i1 %cmp86.not, label %land.lhs.true82.if.end98_crit_edge, label %if.then88

land.lhs.true82.if.end98_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

if.then88:                                        ; preds = %land.lhs.true82
  %93 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %transport, align 4
  %tobool89.not = icmp eq ptr %94, null
  br i1 %tobool89.not, label %if.else91, label %if.then90

if.then90:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #14
  call void @sctp_transport_put(ptr noundef nonnull %94) #12
  %95 = ptrtoint ptr %transport to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %transport, align 4
  br label %if.end92

if.else91:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #14
  call void @sctp_endpoint_put(ptr noundef %ep.0) #12
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %if.then90
  %asoc.0 = phi ptr [ null, %if.then90 ], [ %call73, %if.else91 ]
  %ctl_sock = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 3
  %96 = ptrtoint ptr %ctl_sock to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ctl_sock, align 4
  %ep95 = getelementptr inbounds %struct.sctp_sock, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %ep95 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ep95, align 8
  %call96 = call i32 @sctp_endpoint_hold(ptr noundef %99) #12
  br label %if.end98

if.end98:                                         ; preds = %if.end92, %land.lhs.true82.if.end98_crit_edge, %if.end77.if.end98_crit_edge
  %rcvr.0 = phi ptr [ %99, %if.end92 ], [ %ep.0.call73, %land.lhs.true82.if.end98_crit_edge ], [ %ep.0.call73, %if.end77.if.end98_crit_edge ]
  %ep.1 = phi ptr [ %99, %if.end92 ], [ %ep.0, %land.lhs.true82.if.end98_crit_edge ], [ %ep.0, %if.end77.if.end98_crit_edge ]
  %asoc.1 = phi ptr [ %asoc.0, %if.end92 ], [ %call73, %land.lhs.true82.if.end98_crit_edge ], [ %call73, %if.end77.if.end98_crit_edge ]
  %sk.0 = phi ptr [ %97, %if.end92 ], [ %88, %land.lhs.true82.if.end98_crit_edge ], [ %88, %if.end77.if.end98_crit_edge ]
  %tobool99.not = icmp eq ptr %asoc.1, null
  br i1 %tobool99.not, label %if.then100, label %if.end98.if.end131_crit_edge

if.end98.if.end131_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

if.then100:                                       ; preds = %if.end98
  %call101 = call fastcc i32 @sctp_rcv_ootb(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then100.if.end131_crit_edge, label %if.then103

if.then100.if.end131_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

if.then103:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sctp, align 8
  %arrayidx119 = getelementptr [34 x i32], ptr %101, i32 0, i32 6
  %102 = ptrtoint ptr %arrayidx119 to i32
  %103 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cpu, align 4
  %arrayidx123 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %104
  %105 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx123, align 4
  %add124 = add i32 %106, %102
  %107 = inttoptr i32 %add124 to ptr
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %add125 = add i32 %109, 1
  store i32 %add125, ptr %107, align 4
  br label %discard_release

if.end131:                                        ; preds = %if.then100.if.end131_crit_edge, %if.end98.if.end131_crit_edge
  %110 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %2, align 8
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %111, i32 0, i32 127
  %112 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %nd_net.i.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %sk.0, null
  br i1 %tobool1.not.i.i, label %if.end131.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end131.if.end.i.i_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end131
  %sk_policy.i.i = getelementptr inbounds %struct.sock, ptr %sk.0, i32 0, i32 18
  %114 = ptrtoint ptr %sk_policy.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sk_policy.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %115, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i = call i32 @__xfrm_policy_check(ptr noundef nonnull %sk.0, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext %conv54) #12
  br label %xfrm_policy_check.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end131.if.end.i.i_crit_edge
  %policy_default.i.i.i = getelementptr inbounds %struct.net, ptr %113, i32 0, i32 46, i32 23
  %116 = ptrtoint ptr %policy_default.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %policy_default.i.i.i, align 16
  %118 = and i8 %117, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool1.i.i.i = icmp eq i8 %118, 0
  br i1 %tobool1.i.i.i, label %if.then5.i.i, label %if.else.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %policy_count.i.i = getelementptr inbounds %struct.net, ptr %113, i32 0, i32 46, i32 13
  %119 = ptrtoint ptr %policy_count.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %policy_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool7.not.i.i = icmp eq i32 %120, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true8.i.i, label %if.then5.i.i.lor.lhs.false.i.i_crit_edge

if.then5.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i

land.lhs.true8.i.i:                               ; preds = %if.then5.i.i
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %121 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %123 = and i8 %122, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool10.not.i.i = icmp eq i8 %123, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true8.i.i.if.end136_crit_edge, label %land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge:   ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i

land.lhs.true8.i.i.if.end136_crit_edge:           ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

lor.lhs.false.i.i:                                ; preds = %land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge, %if.then5.i.i.lor.lhs.false.i.i_crit_edge
  %124 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 8
  %and.i.i.i = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i
  %call.i.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exitthread-pre-split.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, !prof !84

land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exitthread-pre-split.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exitthread-pre-split.i.i

skb_dst.exitthread-pre-split.i.i:                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge
  %127 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %127)
  %.pr.i.i = load i32, ptr %124, align 8
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %skb_dst.exitthread-pre-split.i.i, %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge
  %128 = phi i32 [ %.pr.i.i, %skb_dst.exitthread-pre-split.i.i ], [ %126, %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %128)
  %tobool12.not.i.i = icmp ult i32 %128, 2
  br i1 %tobool12.not.i.i, label %skb_dst.exit.i.i.lor.rhs.i.i_crit_edge, label %land.lhs.true13.i.i

skb_dst.exit.i.i.lor.rhs.i.i_crit_edge:           ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i

land.lhs.true13.i.i:                              ; preds = %skb_dst.exit.i.i
  %and.i2.i.i = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge, label %land.lhs.true.i6.i.i

land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit12.i.i

land.lhs.true.i6.i.i:                             ; preds = %land.lhs.true13.i.i
  %call.i4.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %tobool1.not.i5.i.i = icmp eq i32 %call.i4.i.i, 0
  br i1 %tobool1.not.i5.i.i, label %land.rhs.i9.i.i, label %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge

land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit12.i.i

land.rhs.i9.i.i:                                  ; preds = %land.lhs.true.i6.i.i
  %call2.i7.i.i = call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i)
  %tobool3.not.i8.i.i = icmp eq i32 %call2.i7.i.i, 0
  br i1 %tobool3.not.i8.i.i, label %do.end.i10.i.i, label %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, !prof !84

land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge:     ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit12.i.i

do.end.i10.i.i:                                   ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit12.i.i

skb_dst.exit12.i.i:                               ; preds = %do.end.i10.i.i, %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge, %land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge
  %129 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %124, align 8
  %and25.i11.i.i = and i32 %130, -2
  %131 = inttoptr i32 %and25.i11.i.i to ptr
  %flags.i.i = getelementptr inbounds %struct.dst_entry, ptr %131, i32 0, i32 7
  %132 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %flags.i.i, align 4
  %134 = and i16 %133, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %tobool16.not.i.i = icmp eq i16 %134, 0
  br i1 %tobool16.not.i.i, label %skb_dst.exit12.i.i.lor.rhs.i.i_crit_edge, label %skb_dst.exit12.i.i.if.end136_crit_edge

skb_dst.exit12.i.i.if.end136_crit_edge:           ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

skb_dst.exit12.i.i.lor.rhs.i.i_crit_edge:         ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %skb_dst.exit12.i.i.lor.rhs.i.i_crit_edge, %skb_dst.exit.i.i.lor.rhs.i.i_crit_edge
  %call18.i.i = call i32 @__xfrm_policy_check(ptr noundef %sk.0, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext %conv54) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.i.i = icmp ne i32 %call18.i.i, 0
  %phi.cast1.i.i = zext i1 %tobool19.i.i to i32
  br label %xfrm_policy_check.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  %135 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 8
  %and.i13.i.i = and i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool.not.i14.i.i = icmp eq i32 %and.i13.i.i, 0
  br i1 %tobool.not.i14.i.i, label %if.else.i.i.skb_dst.exit23.i.i_crit_edge, label %land.lhs.true.i17.i.i

if.else.i.i.skb_dst.exit23.i.i_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit23.i.i

land.lhs.true.i17.i.i:                            ; preds = %if.else.i.i
  %call.i15.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i)
  %tobool1.not.i16.i.i = icmp eq i32 %call.i15.i.i, 0
  br i1 %tobool1.not.i16.i.i, label %land.rhs.i20.i.i, label %land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge

land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit23thread-pre-split.i.i

land.rhs.i20.i.i:                                 ; preds = %land.lhs.true.i17.i.i
  %call2.i18.i.i = call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i.i)
  %tobool3.not.i19.i.i = icmp eq i32 %call2.i18.i.i, 0
  br i1 %tobool3.not.i19.i.i, label %do.end.i21.i.i, label %land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge, !prof !84

land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit23thread-pre-split.i.i

do.end.i21.i.i:                                   ; preds = %land.rhs.i20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit23thread-pre-split.i.i

skb_dst.exit23thread-pre-split.i.i:               ; preds = %do.end.i21.i.i, %land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge, %land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge
  %138 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pr35.i.i = load i32, ptr %135, align 8
  br label %skb_dst.exit23.i.i

skb_dst.exit23.i.i:                               ; preds = %skb_dst.exit23thread-pre-split.i.i, %if.else.i.i.skb_dst.exit23.i.i_crit_edge
  %139 = phi i32 [ %.pr35.i.i, %skb_dst.exit23thread-pre-split.i.i ], [ %137, %if.else.i.i.skb_dst.exit23.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %139)
  %tobool21.not.i.i = icmp ult i32 %139, 2
  br i1 %tobool21.not.i.i, label %skb_dst.exit23.i.i.lor.rhs28.i.i_crit_edge, label %land.lhs.true22.i.i

skb_dst.exit23.i.i.lor.rhs28.i.i_crit_edge:       ; preds = %skb_dst.exit23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs28.i.i

land.lhs.true22.i.i:                              ; preds = %skb_dst.exit23.i.i
  %and.i24.i.i = and i32 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i)
  %tobool.not.i25.i.i = icmp eq i32 %and.i24.i.i, 0
  br i1 %tobool.not.i25.i.i, label %land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge, label %land.lhs.true.i28.i.i

land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit34.i.i

land.lhs.true.i28.i.i:                            ; preds = %land.lhs.true22.i.i
  %call.i26.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i)
  %tobool1.not.i27.i.i = icmp eq i32 %call.i26.i.i, 0
  br i1 %tobool1.not.i27.i.i, label %land.rhs.i31.i.i, label %land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge

land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge: ; preds = %land.lhs.true.i28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit34.i.i

land.rhs.i31.i.i:                                 ; preds = %land.lhs.true.i28.i.i
  %call2.i29.i.i = call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i.i)
  %tobool3.not.i30.i.i = icmp eq i32 %call2.i29.i.i, 0
  br i1 %tobool3.not.i30.i.i, label %do.end.i32.i.i, label %land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge, !prof !84

land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge:    ; preds = %land.rhs.i31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit34.i.i

do.end.i32.i.i:                                   ; preds = %land.rhs.i31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit34.i.i

skb_dst.exit34.i.i:                               ; preds = %do.end.i32.i.i, %land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge, %land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge, %land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge
  %140 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %135, align 8
  %and25.i33.i.i = and i32 %141, -2
  %142 = inttoptr i32 %and25.i33.i.i to ptr
  %flags24.i.i = getelementptr inbounds %struct.dst_entry, ptr %142, i32 0, i32 7
  %143 = ptrtoint ptr %flags24.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %flags24.i.i, align 4
  %145 = and i16 %144, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %145)
  %tobool27.not.i.i = icmp eq i16 %145, 0
  br i1 %tobool27.not.i.i, label %skb_dst.exit34.i.i.lor.rhs28.i.i_crit_edge, label %skb_dst.exit34.i.i.if.end136_crit_edge

skb_dst.exit34.i.i.if.end136_crit_edge:           ; preds = %skb_dst.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

skb_dst.exit34.i.i.lor.rhs28.i.i_crit_edge:       ; preds = %skb_dst.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs28.i.i

lor.rhs28.i.i:                                    ; preds = %skb_dst.exit34.i.i.lor.rhs28.i.i_crit_edge, %skb_dst.exit23.i.i.lor.rhs28.i.i_crit_edge
  %call30.i.i = call i32 @__xfrm_policy_check(ptr noundef %sk.0, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext %conv54) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.i.i = icmp ne i32 %call30.i.i, 0
  %phi.cast.i.i = zext i1 %tobool31.i.i to i32
  br label %xfrm_policy_check.exit

xfrm_policy_check.exit:                           ; preds = %lor.rhs28.i.i, %lor.rhs.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i ], [ %phi.cast1.i.i, %lor.rhs.i.i ], [ %phi.cast.i.i, %lor.rhs28.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool134.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool134.not, label %xfrm_policy_check.exit.discard_release_crit_edge, label %xfrm_policy_check.exit.if.end136_crit_edge

xfrm_policy_check.exit.if.end136_crit_edge:       ; preds = %xfrm_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

xfrm_policy_check.exit.discard_release_crit_edge: ; preds = %xfrm_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %discard_release

if.end136:                                        ; preds = %xfrm_policy_check.exit.if.end136_crit_edge, %skb_dst.exit34.i.i.if.end136_crit_edge, %skb_dst.exit12.i.i.if.end136_crit_edge, %land.lhs.true8.i.i.if.end136_crit_edge
  call fastcc void @nf_reset_ct(ptr noundef %skb)
  %call.i = call i32 @sk_filter_trim_cap(ptr noundef %sk.0, ptr noundef %skb, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool138.not = icmp eq i32 %call.i, 0
  br i1 %tobool138.not, label %if.end140, label %if.end136.discard_release_crit_edge

if.end136.discard_release_crit_edge:              ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  br label %discard_release

if.end140:                                        ; preds = %if.end136
  %call141 = call ptr @sctp_chunkify(ptr noundef %skb, ptr noundef %asoc.1, ptr noundef %sk.0, i32 noundef 2592) #12
  %tobool142.not = icmp eq ptr %call141, null
  br i1 %tobool142.not, label %if.end140.discard_release_crit_edge, label %if.end144

if.end140.discard_release_crit_edge:              ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  br label %discard_release

if.end144:                                        ; preds = %if.end140
  %chunk147 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %146 = ptrtoint ptr %chunk147 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call141, ptr %chunk147, align 8
  %rcvr148 = getelementptr inbounds %struct.sctp_chunk, ptr %call141, i32 0, i32 14
  %147 = ptrtoint ptr %rcvr148 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %rcvr.0, ptr %rcvr148, align 4
  %148 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %head.i.i, align 8
  %150 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i394 = zext i16 %151 to i32
  %add.ptr.i.i395 = getelementptr i8, ptr %149, i32 %conv.i.i394
  %sctp_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %call141, i32 0, i32 11
  %152 = ptrtoint ptr %sctp_hdr to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %add.ptr.i.i395, ptr %sctp_hdr, align 4
  call void @sctp_init_addrs(ptr noundef nonnull %call141, ptr noundef nonnull %src, ptr noundef nonnull %dest) #12
  %153 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %transport, align 4
  %transport150 = getelementptr inbounds %struct.sctp_chunk, ptr %call141, i32 0, i32 19
  %155 = ptrtoint ptr %transport150 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %154, ptr %transport150, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %sk.0, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %sk_lock) #12
  %sk151 = getelementptr inbounds %struct.sctp_ep_common, ptr %rcvr.0, i32 0, i32 3
  %156 = ptrtoint ptr %sk151 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sk151, align 4
  %cmp152.not = icmp eq ptr %sk.0, %157
  br i1 %cmp152.not, label %if.end144.if.end160_crit_edge, label %if.then154

if.end144.if.end160_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

if.then154:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %sk_lock) #12
  %158 = ptrtoint ptr %sk151 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %sk151, align 4
  %sk_lock158 = getelementptr inbounds %struct.sock, ptr %159, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %sk_lock158) #12
  br label %if.end160

if.end160:                                        ; preds = %if.then154, %if.end144.if.end160_crit_edge
  %sk.1 = phi ptr [ %159, %if.then154 ], [ %sk.0, %if.end144.if.end160_crit_edge ]
  %call161 = call fastcc zeroext i1 @sock_owned_by_user(ptr noundef %sk.1)
  br i1 %call161, label %if.end160.if.then165_crit_edge, label %lor.lhs.false163

if.end160.if.then165_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then165

lor.lhs.false163:                                 ; preds = %if.end160
  %160 = getelementptr inbounds %struct.sock_common, ptr %sk.1, i32 0, i32 13
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %160, align 4
  %163 = and i32 %162, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool.i.not.i396 = icmp eq i32 %163, 0
  br i1 %tobool.i.not.i396, label %sctp_newsk_ready.exit, label %lor.lhs.false163.if.else198_crit_edge

lor.lhs.false163.if.else198_crit_edge:            ; preds = %lor.lhs.false163
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else198

sctp_newsk_ready.exit:                            ; preds = %lor.lhs.false163
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %sk.1, i32 0, i32 71
  %164 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %sk_socket.i, align 8
  %tobool.i397.not = icmp eq ptr %165, null
  br i1 %tobool.i397.not, label %sctp_newsk_ready.exit.if.then165_crit_edge, label %sctp_newsk_ready.exit.if.else198_crit_edge

sctp_newsk_ready.exit.if.else198_crit_edge:       ; preds = %sctp_newsk_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else198

sctp_newsk_ready.exit.if.then165_crit_edge:       ; preds = %sctp_newsk_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then165

if.then165:                                       ; preds = %sctp_newsk_ready.exit.if.then165_crit_edge, %if.end160.if.then165_crit_edge
  %call166 = call fastcc i32 @sctp_add_backlog(ptr noundef %sk.1, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.end171, label %if.then168

if.then168:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #14
  %sk_lock169 = getelementptr inbounds %struct.sock, ptr %sk.1, i32 0, i32 4
  call void @_raw_spin_unlock(ptr noundef %sk_lock169) #12
  call void @sctp_chunk_free(ptr noundef nonnull %call141) #12
  br label %discard_release

if.end171:                                        ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #14
  %166 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %sctp, align 8
  %arrayidx187 = getelementptr [34 x i32], ptr %167, i32 0, i32 31
  %168 = ptrtoint ptr %arrayidx187 to i32
  %169 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %cpu, align 4
  %arrayidx191 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %170
  %171 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx191, align 4
  %add192 = add i32 %172, %168
  %173 = inttoptr i32 %add192 to ptr
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %173, align 4
  %add193 = add i32 %175, 1
  store i32 %add193, ptr %173, align 4
  br label %if.end226

if.else198:                                       ; preds = %sctp_newsk_ready.exit.if.else198_crit_edge, %lor.lhs.false163.if.else198_crit_edge
  %176 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %sctp, align 8
  %arrayidx214 = getelementptr [34 x i32], ptr %177, i32 0, i32 30
  %178 = ptrtoint ptr %arrayidx214 to i32
  %179 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %cpu, align 4
  %arrayidx218 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %180
  %181 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx218, align 4
  %add219 = add i32 %182, %178
  %183 = inttoptr i32 %add219 to ptr
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 4
  %add220 = add i32 %185, 1
  store i32 %add220, ptr %183, align 4
  %186 = ptrtoint ptr %rcvr148 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rcvr148, align 4
  %inqueue = getelementptr inbounds %struct.sctp_ep_common, ptr %187, i32 0, i32 5
  call void @sctp_inq_push(ptr noundef %inqueue, ptr noundef nonnull %call141) #12
  br label %if.end226

if.end226:                                        ; preds = %if.else198, %if.end171
  %sk_lock227 = getelementptr inbounds %struct.sock, ptr %sk.1, i32 0, i32 4
  call void @_raw_spin_unlock(ptr noundef %sk_lock227) #12
  %tobool229.not = icmp eq ptr %154, null
  br i1 %tobool229.not, label %if.else231, label %if.then230

if.then230:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #14
  call void @sctp_transport_put(ptr noundef nonnull %154) #12
  br label %cleanup

if.else231:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #14
  call void @sctp_endpoint_put(ptr noundef %ep.1) #12
  br label %cleanup

discard_it:                                       ; preds = %if.else261, %if.then260, %lor.lhs.false67.discard_it_crit_edge, %if.end61.discard_it_crit_edge, %__skb_pull.exit388.discard_it_crit_edge, %land.lhs.true38.discard_it_crit_edge, %pskb_may_pull.exit.discard_it_crit_edge, %if.end.i.discard_it_crit_edge, %cond.true.i.discard_it_crit_edge, %if.end.discard_it_crit_edge, %land.end.discard_it_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %land.end.discard_it_crit_edge ], [ %skb, %if.end.discard_it_crit_edge ], [ %skb, %__skb_pull.exit388.discard_it_crit_edge ], [ %skb.addr.1, %if.then260 ], [ %skb.addr.1, %if.else261 ], [ %skb, %lor.lhs.false67.discard_it_crit_edge ], [ %skb, %if.end61.discard_it_crit_edge ], [ %skb, %land.lhs.true38.discard_it_crit_edge ], [ %skb, %pskb_may_pull.exit.discard_it_crit_edge ], [ %skb, %cond.true.i.discard_it_crit_edge ], [ %skb, %if.end.i.discard_it_crit_edge ]
  %sctp245 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38
  %188 = ptrtoint ptr %sctp245 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %sctp245, align 8
  %arrayidx248 = getelementptr [34 x i32], ptr %189, i32 0, i32 32
  %190 = ptrtoint ptr %arrayidx248 to i32
  %191 = call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i399 = and i32 %191, -16384
  %192 = inttoptr i32 %and.i399 to ptr
  %cpu251 = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 3
  %193 = ptrtoint ptr %cpu251 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %cpu251, align 4
  %arrayidx252 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %194
  %195 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx252, align 4
  %add253 = add i32 %196, %190
  %197 = inttoptr i32 %add253 to ptr
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %197, align 4
  %add254 = add i32 %199, 1
  store i32 %add254, ptr %197, align 4
  call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #12
  br label %cleanup

discard_release:                                  ; preds = %if.then168, %if.end140.discard_release_crit_edge, %if.end136.discard_release_crit_edge, %xfrm_policy_check.exit.discard_release_crit_edge, %if.then103
  %skb.addr.1 = phi ptr [ %skb, %if.end136.discard_release_crit_edge ], [ null, %if.then168 ], [ %skb, %if.end140.discard_release_crit_edge ], [ %skb, %xfrm_policy_check.exit.discard_release_crit_edge ], [ %skb, %if.then103 ]
  %200 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %transport, align 4
  %tobool259.not = icmp eq ptr %201, null
  br i1 %tobool259.not, label %if.else261, label %if.then260

if.then260:                                       ; preds = %discard_release
  call void @__sanitizer_cov_trace_pc() #14
  call void @sctp_transport_put(ptr noundef nonnull %201) #12
  br label %discard_it

if.else261:                                       ; preds = %discard_release
  call void @__sanitizer_cov_trace_pc() #14
  call void @sctp_endpoint_put(ptr noundef %ep.1) #12
  br label %discard_it

cleanup:                                          ; preds = %discard_it, %if.else231, %if.then230
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dest) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %src) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %transport) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_rcv_checksum(ptr nocapture noundef readonly %net, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %checksum = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %checksum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %checksum, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %checksum.i = getelementptr inbounds %struct.sctphdr, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %checksum.i, align 4
  store i32 0, ptr %checksum.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  %call.i = tail call i32 @__skb_checksum(ptr noundef %skb, i32 noundef 0, i32 noundef %11, i32 noundef -1, ptr noundef nonnull @sctp_csum_ops) #12
  %neg.i = xor i32 %call.i, -1
  %12 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %checksum.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp2.not = icmp eq i32 %13, %5
  br i1 %cmp2.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sctp = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38
  %14 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sctp, align 8
  %arrayidx = getelementptr [34 x i32], ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx11 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx11, align 4
  %add = add i32 %22, %16
  %23 = inttoptr i32 %add to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add12 = add i32 %25, 1
  store i32 %add12, ptr %23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_get_af_specific(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__sctp_rcv_lookup(ptr noundef %net, ptr nocapture noundef readonly %skb, ptr noundef %paddr, ptr noundef %laddr, ptr nocapture noundef writeonly %transportp) unnamed_addr #0 align 64 {
entry:
  %arg.i.i.i.i.i = alloca %struct.sctp_hash_cmp_arg, align 4
  %paddr.i.i.i = alloca %union.sctp_addr, align 4
  %arg.i.i.i.i = alloca %struct.sctp_hash_cmp_arg, align 4
  %addr.i.i = alloca %union.sctp_addr, align 4
  %arg.i.i = alloca %struct.sctp_hash_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg.i.i) #12
  %0 = getelementptr inbounds i8, ptr %arg.i.i, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %paddr, ptr %arg.i.i, align 4
  %net2.i.i = getelementptr inbounds %struct.sctp_hash_cmp_arg, ptr %arg.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %net2.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %net, ptr %net2.i.i, align 4
  %sin_port.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %laddr, i32 0, i32 1
  %4 = ptrtoint ptr %sin_port.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sin_port.i.i, align 2
  store i16 %5, ptr %0, align 4
  %call.i.i = call fastcc ptr @rhltable_lookup(ptr noundef nonnull %arg.i.i, [7 x i32] [i32 0, i32 8, i32 0, i32 256, i32 ptrtoint (ptr @sctp_hash_key to i32), i32 ptrtoint (ptr @sctp_hash_obj to i32), i32 ptrtoint (ptr @sctp_hash_cmp to i32)]) #12
  %tobool.not33.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not33.i.i, label %entry.sctp_addrs_lookup_transport.exit.thread.i_crit_edge, label %entry.land.rhs.i.i_crit_edge

entry.land.rhs.i.i_crit_edge:                     ; preds = %entry
  br label %land.rhs.i.i

entry.sctp_addrs_lookup_transport.exit.thread.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_addrs_lookup_transport.exit.thread.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %entry.land.rhs.i.i_crit_edge
  %tmp.034.i.i = phi ptr [ %11, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ %call.i.i, %entry.land.rhs.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %tmp.034.i.i, i32 -8
  %call6.i.i = call i32 @sctp_transport_hold(ptr noundef %add.ptr.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.rhs.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

land.rhs.i.i.for.inc.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %land.rhs.i.i
  %asoc.i.i = getelementptr i8, ptr %tmp.034.i.i, i32 144
  %6 = ptrtoint ptr %asoc.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asoc.i.i, align 8
  %bind_addr.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %7, i32 0, i32 6
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk.i.i, align 4
  %call11.i.i = call i32 @sctp_bind_addr_match(ptr noundef %bind_addr.i.i, ptr noundef %laddr, ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %sctp_addrs_lookup_transport.exit.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @sctp_transport_put(ptr noundef %add.ptr.i.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end14.i.i, %land.rhs.i.i.for.inc.i.i_crit_edge
  %next.i.i = getelementptr inbounds %struct.rhlist_head, ptr %tmp.034.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.sctp_addrs_lookup_transport.exit.thread.i_crit_edge, label %for.inc.i.i.land.rhs.i.i_crit_edge

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

for.inc.i.i.sctp_addrs_lookup_transport.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_addrs_lookup_transport.exit.thread.i

sctp_addrs_lookup_transport.exit.thread.i:        ; preds = %for.inc.i.i.sctp_addrs_lookup_transport.exit.thread.i_crit_edge, %entry.sctp_addrs_lookup_transport.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg.i.i) #12
  br label %if.end

sctp_addrs_lookup_transport.exit.i:               ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg.i.i) #12
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %sctp_addrs_lookup_transport.exit.i.if.end_crit_edge, label %__sctp_lookup_association.exit

sctp_addrs_lookup_transport.exit.i.if.end_crit_edge: ; preds = %sctp_addrs_lookup_transport.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

__sctp_lookup_association.exit:                   ; preds = %sctp_addrs_lookup_transport.exit.i
  %asoc.i.i.le = getelementptr i8, ptr %tmp.034.i.i, i32 144
  %12 = ptrtoint ptr %asoc.i.i.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asoc.i.i.le, align 8
  %14 = ptrtoint ptr %transportp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i.i, ptr %transportp, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %__sctp_lookup_association.exit.if.end_crit_edge, label %__sctp_lookup_association.exit.out_crit_edge

__sctp_lookup_association.exit.out_crit_edge:     ; preds = %__sctp_lookup_association.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

__sctp_lookup_association.exit.if.end_crit_edge:  ; preds = %__sctp_lookup_association.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %__sctp_lookup_association.exit.if.end_crit_edge, %sctp_addrs_lookup_transport.exit.i.if.end_crit_edge, %sctp_addrs_lookup_transport.exit.thread.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %15 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.i.not.i = icmp eq i16 %18, 0
  br i1 %tobool.i.not.i, label %if.end.if.end.i55_crit_edge, label %land.lhs.true.i

if.end.if.end.i55_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i55

land.lhs.true.i:                                  ; preds = %if.end
  %gso_type.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 8
  %19 = ptrtoint ptr %gso_type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gso_type.i.i, align 8
  %and.i.i = and i32 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i27.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i27.not.i, label %land.lhs.true.i.if.end.i55_crit_edge, label %land.lhs.true.i.if.end4_crit_edge

land.lhs.true.i.if.end4_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true.i.if.end.i55_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i55

if.end.i55:                                       ; preds = %land.lhs.true.i.if.end.i55_crit_edge, %if.end.if.end.i55_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %24 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %26)
  %cmp.i = icmp ugt i32 %and.i, %26
  br i1 %cmp.i, label %if.end.i55.if.end4_crit_edge, label %if.end4.i

if.end.i55.if.end4_crit_edge:                     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end4.i:                                        ; preds = %if.end.i55
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %22, align 2
  %.off.i = add i8 %28, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %addr.i.i) #12
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %29 = call ptr @memset(ptr %addr.i.i, i32 255, i32 28)
  %30 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i.i.i, align 8
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %32 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %33 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %31, i32 %conv.i.i.i.i
  %add.ptr257.i.i = getelementptr %struct.sctp_init_chunk, ptr %22, i32 1, i32 1
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %length.i, align 2
  %conv58.i.i = zext i16 %35 to i32
  %add.ptr359.i.i = getelementptr i8, ptr %22, i32 %conv58.i.i
  %cmp.not60.i.i = icmp ugt ptr %add.ptr257.i.i, %add.ptr359.i.i
  br i1 %cmp.not60.i.i, label %if.then12.i.__sctp_rcv_lookup_harder.exit.thread69_crit_edge, label %land.lhs.true.lr.ph.i.i

if.then12.i.__sctp_rcv_lookup_harder.exit.thread69_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sctp_rcv_lookup_harder.exit.thread69

land.lhs.true.lr.ph.i.i:                          ; preds = %if.then12.i
  %params1.i.i = getelementptr inbounds %struct.sctp_init_chunk, ptr %22, i32 1
  %36 = getelementptr inbounds i8, ptr %arg.i.i.i.i, i32 8
  %net2.i.i.i.i = getelementptr inbounds %struct.sctp_hash_cmp_arg, ptr %arg.i.i.i.i, i32 0, i32 1
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.inc.i.i58.land.lhs.true.i.i_crit_edge, %land.lhs.true.lr.ph.i.i
  %37 = phi i32 [ %conv58.i.i, %land.lhs.true.lr.ph.i.i ], [ %conv.i.i, %for.inc.i.i58.land.lhs.true.i.i_crit_edge ]
  %params.sroa.0.061.i.i = phi ptr [ %params1.i.i, %land.lhs.true.lr.ph.i.i ], [ %add.ptr30.i.i, %for.inc.i.i58.land.lhs.true.i.i_crit_edge ]
  %38 = getelementptr i8, ptr %22, i32 %37
  %length9.i.i = getelementptr inbounds %struct.sctp_paramhdr, ptr %params.sroa.0.061.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %length9.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %length9.i.i, align 2
  %conv10.i.i = zext i16 %40 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv10.i.i
  %add.ptr11.i.i = getelementptr i8, ptr %38, i32 %idx.neg.i.i
  %cmp12.not.i.i = icmp ule ptr %params.sroa.0.061.i.i, %add.ptr11.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %40)
  %cmp16.i.i = icmp ugt i16 %40, 3
  %or.cond.i.i = select i1 %cmp12.not.i.i, i1 %cmp16.i.i, i1 false
  br i1 %or.cond.i.i, label %for.body.i.i, label %land.lhs.true.i.i.__sctp_rcv_lookup_harder.exit.thread69_crit_edge

land.lhs.true.i.i.__sctp_rcv_lookup_harder.exit.thread69_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sctp_rcv_lookup_harder.exit.thread69

for.body.i.i:                                     ; preds = %land.lhs.true.i.i
  %41 = ptrtoint ptr %params.sroa.0.061.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %params.sroa.0.061.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %42)
  %switch.selectcmp.i.i.i = icmp eq i16 %42, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %42)
  %switch.selectcmp2.i.i.i = icmp eq i16 %42, 5
  %43 = select i1 %switch.selectcmp.i.i.i, i16 10, i16 0
  %conv19.i.i = select i1 %switch.selectcmp2.i.i.i, i16 2, i16 %43
  %call20.i.i = call ptr @sctp_get_af_specific(i16 noundef zeroext %conv19.i.i) #12
  %tobool.not.i.i56 = icmp eq ptr %call20.i.i, null
  br i1 %tobool.not.i.i56, label %for.body.i.i.for.inc.i.i58_crit_edge, label %if.end.i.i57

for.body.i.i.for.inc.i.i58_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i58

if.end.i.i57:                                     ; preds = %for.body.i.i
  %from_addr_param.i.i = getelementptr inbounds %struct.sctp_af, ptr %call20.i.i, i32 0, i32 10
  %44 = ptrtoint ptr %from_addr_param.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %from_addr_param.i.i, align 4
  %46 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i.i.i.i, align 4
  %call21.i.i = call zeroext i1 %45(ptr noundef nonnull %addr.i.i, ptr noundef %params.sroa.0.061.i.i, i16 noundef zeroext %47, i32 noundef 0) #12
  br i1 %call21.i.i, label %if.end23.i.i, label %if.end.i.i57.for.inc.i.i58_crit_edge

if.end.i.i57.for.inc.i.i58_crit_edge:             ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i58

if.end23.i.i:                                     ; preds = %if.end.i.i57
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg.i.i.i.i) #12
  %48 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %36, align 4
  %49 = ptrtoint ptr %arg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %addr.i.i, ptr %arg.i.i.i.i, align 4
  %50 = ptrtoint ptr %net2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %net, ptr %net2.i.i.i.i, align 4
  %51 = ptrtoint ptr %sin_port.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sin_port.i.i, align 2
  store i16 %52, ptr %36, align 4
  %call.i.i.i.i = call fastcc ptr @rhltable_lookup(ptr noundef nonnull %arg.i.i.i.i, [7 x i32] [i32 0, i32 8, i32 0, i32 256, i32 ptrtoint (ptr @sctp_hash_key to i32), i32 ptrtoint (ptr @sctp_hash_obj to i32), i32 ptrtoint (ptr @sctp_hash_cmp to i32)]) #12
  %tobool.not33.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not33.i.i.i.i, label %if.end23.i.i.sctp_addrs_lookup_transport.exit.thread.i.i.i_crit_edge, label %if.end23.i.i.land.rhs.i.i.i.i_crit_edge

if.end23.i.i.land.rhs.i.i.i.i_crit_edge:          ; preds = %if.end23.i.i
  br label %land.rhs.i.i.i.i

if.end23.i.i.sctp_addrs_lookup_transport.exit.thread.i.i.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_addrs_lookup_transport.exit.thread.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.land.rhs.i.i.i.i_crit_edge, %if.end23.i.i.land.rhs.i.i.i.i_crit_edge
  %tmp.034.i.i.i.i = phi ptr [ %58, %for.inc.i.i.i.i.land.rhs.i.i.i.i_crit_edge ], [ %call.i.i.i.i, %if.end23.i.i.land.rhs.i.i.i.i_crit_edge ]
  %add.ptr.i.i53.i.i = getelementptr i8, ptr %tmp.034.i.i.i.i, i32 -8
  %call6.i.i.i.i = call i32 @sctp_transport_hold(ptr noundef %add.ptr.i.i53.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %call6.i.i.i.i, 0
  br i1 %tobool7.not.i.i.i.i, label %land.rhs.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.end.i.i.i.i

land.rhs.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  %asoc.i.i.i.i = getelementptr i8, ptr %tmp.034.i.i.i.i, i32 144
  %53 = ptrtoint ptr %asoc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %asoc.i.i.i.i, align 8
  %bind_addr.i.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %54, i32 0, i32 6
  %sk.i.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %sk.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sk.i.i.i.i, align 4
  %call11.i.i.i.i = call i32 @sctp_bind_addr_match(ptr noundef %bind_addr.i.i.i.i, ptr noundef %laddr, ptr noundef %56) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i.i)
  %tobool12.not.i.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %tobool12.not.i.i.i.i, label %if.end14.i.i.i.i, label %sctp_addrs_lookup_transport.exit.i.i.i

if.end14.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @sctp_transport_put(ptr noundef %add.ptr.i.i53.i.i) #12
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.end14.i.i.i.i, %land.rhs.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %next.i.i.i.i = getelementptr inbounds %struct.rhlist_head, ptr %tmp.034.i.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %next.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i.sctp_addrs_lookup_transport.exit.thread.i.i.i_crit_edge, label %for.inc.i.i.i.i.land.rhs.i.i.i.i_crit_edge

for.inc.i.i.i.i.land.rhs.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i.i.i

for.inc.i.i.i.i.sctp_addrs_lookup_transport.exit.thread.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_addrs_lookup_transport.exit.thread.i.i.i

sctp_addrs_lookup_transport.exit.thread.i.i.i:    ; preds = %for.inc.i.i.i.i.sctp_addrs_lookup_transport.exit.thread.i.i.i_crit_edge, %if.end23.i.i.sctp_addrs_lookup_transport.exit.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg.i.i.i.i) #12
  br label %for.inc.i.i58

sctp_addrs_lookup_transport.exit.i.i.i:           ; preds = %if.end.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg.i.i.i.i) #12
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i53.i.i, null
  br i1 %tobool.not.i.i.i, label %sctp_addrs_lookup_transport.exit.i.i.i.for.inc.i.i58_crit_edge, label %__sctp_lookup_association.exit.i.i

sctp_addrs_lookup_transport.exit.i.i.i.for.inc.i.i58_crit_edge: ; preds = %sctp_addrs_lookup_transport.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i58

__sctp_lookup_association.exit.i.i:               ; preds = %sctp_addrs_lookup_transport.exit.i.i.i
  %asoc.i.i.i.i.le = getelementptr i8, ptr %tmp.034.i.i.i.i, i32 144
  %59 = ptrtoint ptr %asoc.i.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %asoc.i.i.i.i.le, align 8
  %61 = ptrtoint ptr %transportp to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.i.i53.i.i, ptr %transportp, align 4
  %tobool25.not.i.i = icmp eq ptr %60, null
  br i1 %tobool25.not.i.i, label %__sctp_lookup_association.exit.i.i.for.inc.i.i58_crit_edge, label %__sctp_rcv_lookup_harder.exit

__sctp_lookup_association.exit.i.i.for.inc.i.i58_crit_edge: ; preds = %__sctp_lookup_association.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i58

for.inc.i.i58:                                    ; preds = %__sctp_lookup_association.exit.i.i.for.inc.i.i58_crit_edge, %sctp_addrs_lookup_transport.exit.i.i.i.for.inc.i.i58_crit_edge, %sctp_addrs_lookup_transport.exit.thread.i.i.i, %if.end.i.i57.for.inc.i.i58_crit_edge, %for.body.i.i.for.inc.i.i58_crit_edge
  %62 = ptrtoint ptr %length9.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %length9.i.i, align 2
  %conv29.i.i = zext i16 %63 to i32
  %add.i.i = add nuw nsw i32 %conv29.i.i, 3
  %and.i28.i = and i32 %add.i.i, 131068
  %add.ptr30.i.i = getelementptr i8, ptr %params.sroa.0.061.i.i, i32 %and.i28.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr30.i.i, i32 4
  %64 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %length.i, align 2
  %conv.i.i = zext i16 %65 to i32
  %add.ptr3.i.i = getelementptr i8, ptr %22, i32 %conv.i.i
  %cmp.not.i.i = icmp ugt ptr %add.ptr2.i.i, %add.ptr3.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i58.__sctp_rcv_lookup_harder.exit.thread69_crit_edge, label %for.inc.i.i58.land.lhs.true.i.i_crit_edge

for.inc.i.i58.land.lhs.true.i.i_crit_edge:        ; preds = %for.inc.i.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

for.inc.i.i58.__sctp_rcv_lookup_harder.exit.thread69_crit_edge: ; preds = %for.inc.i.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sctp_rcv_lookup_harder.exit.thread69

if.end14.i:                                       ; preds = %if.end4.i
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %addip_noauth.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 37
  %head.i.i.i30.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %transport_header.i.i.i31.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %66 = getelementptr inbounds i8, ptr %arg.i.i.i.i.i, i32 8
  %net2.i.i.i.i.i = getelementptr inbounds %struct.sctp_hash_cmp_arg, ptr %arg.i.i.i.i.i, i32 0, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end24.i.i.do.body.i.i_crit_edge, %if.end14.i
  %ch.0.i.i = phi ptr [ %22, %if.end14.i ], [ %add.ptr.i.i59, %if.end24.i.i.do.body.i.i_crit_edge ]
  %have_auth.0.i.i = phi i32 [ 0, %if.end14.i ], [ %have_auth.151.i.i, %if.end24.i.i.do.body.i.i_crit_edge ]
  %chunk_num.0.i.i = phi i32 [ 1, %if.end14.i ], [ %inc.i.i, %if.end24.i.i.do.body.i.i_crit_edge ]
  %length.i32.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %ch.0.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %length.i32.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %length.i32.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %68)
  %cmp.i.i = icmp ult i16 %68, 4
  br i1 %cmp.i.i, label %do.body.i.i.if.end4_crit_edge, label %if.end.i36.i

do.body.i.i.if.end4_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end.i36.i:                                     ; preds = %do.body.i.i
  %conv.i33.i = zext i16 %68 to i32
  %add.i34.i = add nuw nsw i32 %conv.i33.i, 3
  %and.i35.i = and i32 %add.i34.i, 131068
  %add.ptr.i.i59 = getelementptr i8, ptr %ch.0.i.i, i32 %and.i35.i
  %69 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i.i.i, align 8
  %cmp4.i.i = icmp ugt ptr %add.ptr.i.i59, %70
  br i1 %cmp4.i.i, label %if.end.i36.i.if.end4_crit_edge, label %if.end7.i.i

if.end.i36.i.if.end4_crit_edge:                   ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end7.i.i:                                      ; preds = %if.end.i36.i
  %71 = ptrtoint ptr %ch.0.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ch.0.i.i, align 2
  %73 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %72, label %if.end7.i.i.if.end24.i.i_crit_edge [
    i8 15, label %sw.bb.i.i
    i8 10, label %sw.bb9.i.i
    i8 -63, label %sw.bb16.i.i
  ]

if.end7.i.i.if.end24.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i

sw.bb.i.i:                                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i

sw.bb9.i.i:                                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %have_auth.0.i.i)
  %cmp10.i.i = icmp eq i32 %have_auth.0.i.i, 1
  br i1 %cmp10.i.i, label %land.lhs.true.i37.i, label %sw.bb9.i.i.if.end24.i.i_crit_edge

sw.bb9.i.i.if.end24.i.i_crit_edge:                ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i

land.lhs.true.i37.i:                              ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %chunk_num.0.i.i)
  %cmp12.i.i = icmp eq i32 %chunk_num.0.i.i, 2
  br i1 %cmp12.i.i, label %land.lhs.true.i37.i.if.end4_crit_edge, label %land.lhs.true.i37.i.if.end24.i.i_crit_edge

land.lhs.true.i37.i.if.end24.i.i_crit_edge:       ; preds = %land.lhs.true.i37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i

land.lhs.true.i37.i.if.end4_crit_edge:            ; preds = %land.lhs.true.i37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

sw.bb16.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have_auth.0.i.i)
  %tobool.not.i38.i = icmp eq i32 %have_auth.0.i.i, 0
  br i1 %tobool.not.i38.i, label %lor.lhs.false.i.i, label %sw.bb16.i.i.if.then18.i.i_crit_edge

sw.bb16.i.i.if.then18.i.i_crit_edge:              ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.i.i

lor.lhs.false.i.i:                                ; preds = %sw.bb16.i.i
  %74 = ptrtoint ptr %addip_noauth.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %addip_noauth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool17.not.i.i = icmp eq i32 %75, 0
  br i1 %tobool17.not.i.i, label %lor.lhs.false.i.i.if.end24.i.i_crit_edge, label %lor.lhs.false.i.i.if.then18.i.i_crit_edge

lor.lhs.false.i.i.if.then18.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.i.i

lor.lhs.false.i.i.if.end24.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i

if.then18.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then18.i.i_crit_edge, %sw.bb16.i.i.if.then18.i.i_crit_edge
  %76 = ptrtoint ptr %head.i.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %head.i.i.i30.i, align 8
  %78 = ptrtoint ptr %transport_header.i.i.i31.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %transport_header.i.i.i31.i, align 2
  %conv.i.i.i39.i = zext i16 %79 to i32
  %add.ptr.i.i.i40.i = getelementptr i8, ptr %77, i32 %conv.i.i.i39.i
  %80 = ptrtoint ptr %add.ptr.i.i.i40.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr.i.i.i40.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %paddr.i.i.i) #12
  %82 = call ptr @memset(ptr %paddr.i.i.i, i32 255, i32 28)
  %83 = ptrtoint ptr %length.i32.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %length.i32.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %84)
  %cmp.i.i.i = icmp ult i16 %84, 12
  br i1 %cmp.i.i.i, label %if.then18.i.i.sw.epilog.thread53.i.i_crit_edge, label %if.end.i.i.i

if.then18.i.i.sw.epilog.thread53.i.i_crit_edge:   ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread53.i.i

if.end.i.i.i:                                     ; preds = %if.then18.i.i
  %add.ptr.i.i.i = getelementptr %struct.sctp_addip_chunk, ptr %ch.0.i.i, i32 1
  %85 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %86)
  %switch.selectcmp.i.i.i.i = icmp eq i16 %86, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %86)
  %switch.selectcmp2.i.i.i.i = icmp eq i16 %86, 5
  %87 = select i1 %switch.selectcmp.i.i.i.i, i16 10, i16 0
  %conv2.i.i.i = select i1 %switch.selectcmp2.i.i.i.i, i16 2, i16 %87
  %call3.i.i.i = call ptr @sctp_get_af_specific(i16 noundef zeroext %conv2.i.i.i) #12
  %tobool.not.i.i41.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool.not.i.i41.i, label %if.end.i.i.i.sw.epilog.thread53.i.i_crit_edge, label %if.end8.i.i.i, !prof !84

if.end.i.i.i.sw.epilog.thread53.i.i_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread53.i.i

if.end8.i.i.i:                                    ; preds = %if.end.i.i.i
  %from_addr_param.i.i.i = getelementptr inbounds %struct.sctp_af, ptr %call3.i.i.i, i32 0, i32 10
  %88 = ptrtoint ptr %from_addr_param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %from_addr_param.i.i.i, align 4
  %call9.i.i.i = call zeroext i1 %89(ptr noundef nonnull %paddr.i.i.i, ptr noundef %add.ptr.i.i.i, i16 noundef zeroext %81, i32 noundef 0) #12
  br i1 %call9.i.i.i, label %if.end11.i.i.i, label %if.end8.i.i.i.sw.epilog.thread53.i.i_crit_edge

if.end8.i.i.i.sw.epilog.thread53.i.i_crit_edge:   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread53.i.i

if.end11.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg.i.i.i.i.i) #12
  %90 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %66, align 4
  %91 = ptrtoint ptr %arg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %paddr.i.i.i, ptr %arg.i.i.i.i.i, align 4
  %92 = ptrtoint ptr %net2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %net, ptr %net2.i.i.i.i.i, align 4
  %93 = ptrtoint ptr %sin_port.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %sin_port.i.i, align 2
  store i16 %94, ptr %66, align 4
  %call.i.i.i.i.i = call fastcc ptr @rhltable_lookup(ptr noundef nonnull %arg.i.i.i.i.i, [7 x i32] [i32 0, i32 8, i32 0, i32 256, i32 ptrtoint (ptr @sctp_hash_key to i32), i32 ptrtoint (ptr @sctp_hash_obj to i32), i32 ptrtoint (ptr @sctp_hash_cmp to i32)]) #12
  %tobool.not33.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not33.i.i.i.i.i, label %if.end11.i.i.i.sctp_addrs_lookup_transport.exit.thread.i.i.i.i_crit_edge, label %if.end11.i.i.i.land.rhs.i.i.i.i.i_crit_edge

if.end11.i.i.i.land.rhs.i.i.i.i.i_crit_edge:      ; preds = %if.end11.i.i.i
  br label %land.rhs.i.i.i.i.i

if.end11.i.i.i.sctp_addrs_lookup_transport.exit.thread.i.i.i.i_crit_edge: ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_addrs_lookup_transport.exit.thread.i.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.land.rhs.i.i.i.i.i_crit_edge, %if.end11.i.i.i.land.rhs.i.i.i.i.i_crit_edge
  %tmp.034.i.i.i.i.i = phi ptr [ %100, %for.inc.i.i.i.i.i.land.rhs.i.i.i.i.i_crit_edge ], [ %call.i.i.i.i.i, %if.end11.i.i.i.land.rhs.i.i.i.i.i_crit_edge ]
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %tmp.034.i.i.i.i.i, i32 -8
  %call6.i.i.i.i.i = call i32 @sctp_transport_hold(ptr noundef %add.ptr.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i.i.i)
  %tobool7.not.i.i.i.i.i = icmp eq i32 %call6.i.i.i.i.i, 0
  br i1 %tobool7.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i

land.rhs.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge:   ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.rhs.i.i.i.i.i
  %asoc.i.i.i.i.i = getelementptr i8, ptr %tmp.034.i.i.i.i.i, i32 144
  %95 = ptrtoint ptr %asoc.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %asoc.i.i.i.i.i, align 8
  %bind_addr.i.i.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %96, i32 0, i32 6
  %sk.i.i.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %sk.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sk.i.i.i.i.i, align 4
  %call11.i.i.i.i.i = call i32 @sctp_bind_addr_match(ptr noundef %bind_addr.i.i.i.i.i, ptr noundef %laddr, ptr noundef %98) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i.i.i)
  %tobool12.not.i.i.i.i.i = icmp eq i32 %call11.i.i.i.i.i, 0
  br i1 %tobool12.not.i.i.i.i.i, label %if.end14.i.i.i.i.i, label %sctp_addrs_lookup_transport.exit.i.i.i.i

if.end14.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @sctp_transport_put(ptr noundef %add.ptr.i.i.i.i.i) #12
  br label %for.inc.i.i.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %if.end14.i.i.i.i.i, %land.rhs.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge
  %next.i.i.i.i.i = getelementptr inbounds %struct.rhlist_head, ptr %tmp.034.i.i.i.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %next.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %next.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %100, null
  br i1 %tobool.not.i.i.i.i.i, label %for.inc.i.i.i.i.i.sctp_addrs_lookup_transport.exit.thread.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.i.land.rhs.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.land.rhs.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i.i.i.i

for.inc.i.i.i.i.i.sctp_addrs_lookup_transport.exit.thread.i.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_addrs_lookup_transport.exit.thread.i.i.i.i

sctp_addrs_lookup_transport.exit.thread.i.i.i.i:  ; preds = %for.inc.i.i.i.i.i.sctp_addrs_lookup_transport.exit.thread.i.i.i.i_crit_edge, %if.end11.i.i.i.sctp_addrs_lookup_transport.exit.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg.i.i.i.i.i) #12
  br label %sw.epilog.thread53.i.i

sctp_addrs_lookup_transport.exit.i.i.i.i:         ; preds = %if.end.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg.i.i.i.i.i) #12
  %tobool.not.i.i.i42.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i42.i, label %sctp_addrs_lookup_transport.exit.i.i.i.i.sw.epilog.thread53.i.i_crit_edge, label %sw.epilog.i.i

sctp_addrs_lookup_transport.exit.i.i.i.i.sw.epilog.thread53.i.i_crit_edge: ; preds = %sctp_addrs_lookup_transport.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread53.i.i

sw.epilog.thread53.i.i:                           ; preds = %sctp_addrs_lookup_transport.exit.i.i.i.i.sw.epilog.thread53.i.i_crit_edge, %sctp_addrs_lookup_transport.exit.thread.i.i.i.i, %if.end8.i.i.i.sw.epilog.thread53.i.i_crit_edge, %if.end.i.i.i.sw.epilog.thread53.i.i_crit_edge, %if.then18.i.i.sw.epilog.thread53.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %paddr.i.i.i) #12
  br label %if.end24.i.i

sw.epilog.i.i:                                    ; preds = %sctp_addrs_lookup_transport.exit.i.i.i.i
  %asoc.i.i.i.i.i.le = getelementptr i8, ptr %tmp.034.i.i.i.i.i, i32 144
  %101 = ptrtoint ptr %asoc.i.i.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %asoc.i.i.i.i.i.le, align 8
  %103 = ptrtoint ptr %transportp to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %add.ptr.i.i.i.i.i, ptr %transportp, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %paddr.i.i.i) #12
  %tobool22.not.i.i = icmp eq ptr %102, null
  br i1 %tobool22.not.i.i, label %sw.epilog.i.i.if.end24.i.i_crit_edge, label %sw.epilog.i.i.out_crit_edge

sw.epilog.i.i.out_crit_edge:                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.epilog.i.i.if.end24.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %sw.epilog.i.i.if.end24.i.i_crit_edge, %sw.epilog.thread53.i.i, %lor.lhs.false.i.i.if.end24.i.i_crit_edge, %land.lhs.true.i37.i.if.end24.i.i_crit_edge, %sw.bb9.i.i.if.end24.i.i_crit_edge, %sw.bb.i.i, %if.end7.i.i.if.end24.i.i_crit_edge
  %have_auth.151.i.i = phi i32 [ %have_auth.0.i.i, %sw.epilog.i.i.if.end24.i.i_crit_edge ], [ %have_auth.0.i.i, %sw.epilog.thread53.i.i ], [ %chunk_num.0.i.i, %sw.bb.i.i ], [ %have_auth.0.i.i, %sw.bb9.i.i.if.end24.i.i_crit_edge ], [ 1, %land.lhs.true.i37.i.if.end24.i.i_crit_edge ], [ 0, %lor.lhs.false.i.i.if.end24.i.i_crit_edge ], [ %have_auth.0.i.i, %if.end7.i.i.if.end24.i.i_crit_edge ]
  %inc.i.i = add i32 %chunk_num.0.i.i, 1
  %add.ptr25.i.i = getelementptr i8, ptr %add.ptr.i.i59, i32 4
  %104 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tail.i.i.i, align 8
  %cmp27.i.i = icmp ult ptr %add.ptr25.i.i, %105
  br i1 %cmp27.i.i, label %if.end24.i.i.do.body.i.i_crit_edge, label %if.end24.i.i.if.end4_crit_edge

if.end24.i.i.if.end4_crit_edge:                   ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end24.i.i.do.body.i.i_crit_edge:               ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

__sctp_rcv_lookup_harder.exit.thread69:           ; preds = %for.inc.i.i58.__sctp_rcv_lookup_harder.exit.thread69_crit_edge, %land.lhs.true.i.i.__sctp_rcv_lookup_harder.exit.thread69_crit_edge, %if.then12.i.__sctp_rcv_lookup_harder.exit.thread69_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %addr.i.i) #12
  br label %if.end4

__sctp_rcv_lookup_harder.exit:                    ; preds = %__sctp_lookup_association.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %addr.i.i) #12
  br label %out

if.end4:                                          ; preds = %__sctp_rcv_lookup_harder.exit.thread69, %if.end24.i.i.if.end4_crit_edge, %land.lhs.true.i37.i.if.end4_crit_edge, %if.end.i36.i.if.end4_crit_edge, %do.body.i.i.if.end4_crit_edge, %if.end.i55.if.end4_crit_edge, %land.lhs.true.i.if.end4_crit_edge
  %106 = ptrtoint ptr %paddr to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %paddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %107)
  %cmp = icmp eq i16 %107, 2
  br i1 %cmp, label %do.body, label %do.body17

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__sctp_rcv_lookup.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__sctp_rcv_lookup, %if.then11)) #12
          to label %out [label %if.then11], !srcloc !87

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %laddr, i32 0, i32 2
  %108 = ptrtoint ptr %sin_port.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %sin_port.i.i, align 2
  %conv12 = zext i16 %109 to i32
  %sin_addr13 = getelementptr inbounds %struct.sockaddr_in, ptr %paddr, i32 0, i32 2
  %sin_port14 = getelementptr inbounds %struct.sockaddr_in, ptr %paddr, i32 0, i32 1
  %110 = ptrtoint ptr %sin_port14 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %sin_port14, align 2
  %conv15 = zext i16 %111 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__sctp_rcv_lookup.__UNIQUE_ID_ddebug680, ptr noundef nonnull @.str.26, ptr noundef %sin_addr, i32 noundef %conv12, ptr noundef %sin_addr13, i32 noundef %conv15) #12
  br label %out

do.body17:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__sctp_rcv_lookup.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__sctp_rcv_lookup, %if.then29)) #12
          to label %out [label %if.then29], !srcloc !87

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %laddr, i32 0, i32 3
  %112 = ptrtoint ptr %sin_port.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %sin_port.i.i, align 2
  %conv30 = zext i16 %113 to i32
  %sin6_addr31 = getelementptr inbounds %struct.sockaddr_in6, ptr %paddr, i32 0, i32 3
  %sin6_port32 = getelementptr inbounds %struct.sockaddr_in6, ptr %paddr, i32 0, i32 1
  %114 = ptrtoint ptr %sin6_port32 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %sin6_port32, align 2
  %conv33 = zext i16 %115 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__sctp_rcv_lookup.__UNIQUE_ID_ddebug681, ptr noundef nonnull @.str.27, ptr noundef %sin6_addr, i32 noundef %conv30, ptr noundef %sin6_addr31, i32 noundef %conv33) #12
  br label %out

out:                                              ; preds = %if.then29, %do.body17, %if.then11, %do.body, %__sctp_rcv_lookup_harder.exit, %sw.epilog.i.i.out_crit_edge, %__sctp_lookup_association.exit.out_crit_edge
  %asoc.0 = phi ptr [ %13, %__sctp_lookup_association.exit.out_crit_edge ], [ %60, %__sctp_rcv_lookup_harder.exit ], [ null, %if.then11 ], [ null, %if.then29 ], [ null, %do.body ], [ null, %do.body17 ], [ %102, %sw.epilog.i.i.out_crit_edge ]
  ret ptr %asoc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__sctp_rcv_lookup_endpoint(ptr noundef %net, ptr noundef %skb, ptr noundef %laddr, ptr nocapture noundef readonly %paddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %laddr, i32 0, i32 1
  %0 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sin_port, align 2
  %hash_mix.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 26
  %2 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash_mix.i.i, align 8
  %conv.i = zext i16 %1 to i32
  %add.i = add i32 %3, %conv.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 4) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 4), align 4
  %sub.i = add i32 %4, -1
  %and.i = and i32 %sub.i, %add.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 1), align 4
  %arrayidx = getelementptr %struct.sctp_hashbucket, ptr %5, i32 %and.i
  tail call void @_raw_read_lock(ptr noundef %arrayidx) #12
  %chain = getelementptr %struct.sctp_hashbucket, ptr %5, i32 %and.i, i32 1
  %6 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chain, align 4
  %tobool.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -88
  %tobool2.not5356 = icmp eq ptr %add.ptr, null
  %tobool2.not53 = or i1 %tobool.not, %tobool2.not5356
  br i1 %tobool2.not53, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ep.054 = phi ptr [ %add.ptr11, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %call3 = tail call ptr @sctp_endpoint_is_match(ptr noundef nonnull %ep.054, ptr noundef %net, ptr noundef %laddr) #12
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %for.inc, label %for.body.hit_crit_edge

for.body.hit_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %hit

for.inc:                                          ; preds = %for.body
  %node = getelementptr inbounds %struct.sctp_endpoint, ptr %ep.054, i32 0, i32 1
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %tobool7.not = icmp eq ptr %9, null
  %add.ptr11 = getelementptr i8, ptr %9, i32 -88
  %tobool2.not58 = icmp eq ptr %add.ptr11, null
  %tobool2.not = or i1 %tobool7.not, %tobool2.not58
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ctl_sock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 3
  %10 = ptrtoint ptr %ctl_sock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl_sock, align 4
  %ep16 = getelementptr inbounds %struct.sctp_sock, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ep16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep16, align 8
  br label %hit

hit:                                              ; preds = %for.end, %for.body.hit_crit_edge
  %ep.1 = phi ptr [ %13, %for.end ], [ %ep.054, %for.body.hit_crit_edge ]
  %sk17 = getelementptr inbounds %struct.sctp_ep_common, ptr %ep.1, i32 0, i32 3
  %14 = ptrtoint ptr %sk17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk17, align 4
  %skc_reuseport = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %skc_reuseport to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %skc_reuseport, align 1
  %17 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not = icmp eq i8 %17, 0
  br i1 %tobool18.not, label %hit.if.end27_crit_edge, label %if.then19

hit.if.end27_crit_edge:                           ; preds = %hit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then19:                                        ; preds = %hit
  %18 = ptrtoint ptr %paddr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %paddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %19)
  %cmp.i = icmp eq i16 %19, 10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %paddr, i32 0, i32 3
  %call.i = tail call fastcc i32 @jhash(ptr noundef %sin6_addr.i, i32 noundef 16, i32 noundef 0) #12
  br label %sctp_hashfn.exit

if.else.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %paddr, i32 0, i32 2
  %20 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sin_addr.i, align 4
  br label %sctp_hashfn.exit

sctp_hashfn.exit:                                 ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi i32 [ %call.i, %if.then.i ], [ %21, %if.else.i ]
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %paddr, i32 0, i32 1
  %22 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sin_port.i, align 2
  %conv2.i = zext i16 %23 to i32
  %shl.i = shl nuw i32 %conv2.i, 16
  %24 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hash_mix.i.i, align 8
  %add.i.i.i = add i32 %addr.0.i, -559038725
  %or.i = add nuw nsw i32 %conv.i, -559038725
  %add1.i.i.i = add i32 %or.i, %shl.i
  %add2.i.i.i = add i32 %25, -559038725
  %xor.i.i.i = xor i32 %add1.i.i.i, %add2.i.i.i
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #12
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i
  %or.i52.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #12
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i52.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i53.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #12
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i53.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i54.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #12
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i54.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i55.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #12
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i55.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i56.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #12
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i56.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i57.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #12
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i57.i.i.i
  %call21 = tail call ptr @reuseport_select_sock(ptr noundef %15, i32 noundef %sub20.i.i.i, ptr noundef %skb, i32 noundef 12) #12
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %sctp_hashfn.exit.if.end27_crit_edge, label %if.then23

sctp_hashfn.exit.if.end27_crit_edge:              ; preds = %sctp_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then23:                                        ; preds = %sctp_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ep25 = getelementptr inbounds %struct.sctp_sock, ptr %call21, i32 0, i32 5
  %26 = ptrtoint ptr %ep25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ep25, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %sctp_hashfn.exit.if.end27_crit_edge, %hit.if.end27_crit_edge
  %ep.3 = phi ptr [ %ep.1, %hit.if.end27_crit_edge ], [ %27, %if.then23 ], [ %ep.1, %sctp_hashfn.exit.if.end27_crit_edge ]
  %call28 = tail call i32 @sctp_endpoint_hold(ptr noundef %ep.3) #12
  tail call void @_raw_read_unlock(ptr noundef %arrayidx) #12
  ret ptr %ep.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_endpoint_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_endpoint_hold(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_rcv_ootb(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %_ch = alloca %struct.sctp_chunkhdr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ch) #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i = icmp eq ptr %skb, null
  %0 = ptrtoint ptr %_ch to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %_ch, align 4
  br label %do.body

do.body:                                          ; preds = %if.end32.do.body_crit_edge, %entry
  %offset.0 = phi i32 [ 0, %entry ], [ %add8, %if.end32.do.body_crit_edge ]
  %add = add i32 %offset.0, 4
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %2)
  %cmp = icmp ugt i32 %add, %2
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %do.body
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  %5 = add i32 %offset.0, %4
  %sub.i4.i = sub i32 %2, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 4
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !84

if.end.i.i:                                       ; preds = %if.end
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset.0, ptr noundef nonnull %_ch, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.lor.lhs.false_crit_edge

lor.lhs.false.i.i.lor.lhs.false_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %if.end
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %offset.0
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.lor.lhs.false_crit_edge

skb_header_pointer.exit.lor.lhs.false_crit_edge:  ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %skb_header_pointer.exit.lor.lhs.false_crit_edge, %lor.lhs.false.i.i.lor.lhs.false_crit_edge
  %retval.0.i.i58 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.lor.lhs.false_crit_edge ], [ %_ch, %lor.lhs.false.i.i.lor.lhs.false_crit_edge ]
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %retval.0.i.i58, i32 0, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %9)
  %cmp1 = icmp ult i16 %9, 4
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %conv = zext i16 %9 to i32
  %add7 = add nuw nsw i32 %conv, 3
  %and = and i32 %add7, 131068
  %add8 = add i32 %and, %offset.0
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %11)
  %cmp10 = icmp ugt i32 %add8, %11
  br i1 %cmp10, label %if.end4.cleanup_crit_edge, label %if.end13

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %12 = ptrtoint ptr %retval.0.i.i58 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %retval.0.i.i58, align 2
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %13, label %if.end13.if.end32_crit_edge [
    i8 6, label %if.end13.cleanup_crit_edge
    i8 14, label %if.end13.cleanup_crit_edge60
    i8 1, label %land.lhs.true
  ]

if.end13.cleanup_crit_edge60:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.if.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end13
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %cmp29.not = icmp eq ptr %retval.0.i.i58, %16
  br i1 %cmp29.not, label %land.lhs.true.if.end32_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %if.end13.if.end32_crit_edge
  %cmp34 = icmp ult i32 %add8, %11
  br i1 %cmp34, label %if.end32.do.body_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32.do.body_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

cleanup:                                          ; preds = %if.end32.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end13.cleanup_crit_edge60, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ 0, %skb_header_pointer.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 1, %if.end13.cleanup_crit_edge ], [ 1, %if.end13.cleanup_crit_edge60 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ch) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_reset_ct(ptr nocapture noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %_nfct.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i, align 8
  %and.i = and i32 %1, -8
  %2 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.nf_conntrack_put.exit_crit_edge, label %land.lhs.true.i

entry.nf_conntrack_put.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_conntrack_put.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #12, !srcloc !89
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.nf_conntrack_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !83

if.end5.i.i.i.i.nf_conntrack_put.exit_crit_edge:  ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_conntrack_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef 3) #12
  br label %nf_conntrack_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !90
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %2) #12
  br label %nf_conntrack_put.exit

nf_conntrack_put.exit:                            ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.nf_conntrack_put.exit_crit_edge, %entry.nf_conntrack_put.exit_crit_edge
  %4 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %_nfct.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_chunkify(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_init_addrs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sock_owned_by_user(ptr noundef %sk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %entry.sock_owned_by_me.exit_crit_edge

entry.sock_owned_by_me.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_me.exit

lockdep_sock_is_held.exit.i:                      ; preds = %entry
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %land.rhs.i, label %lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge

lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_me.exit

land.rhs.i:                                       ; preds = %lockdep_sock_is_held.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %land.rhs.i.sock_owned_by_me.exit_crit_edge, label %land.rhs3.i

land.rhs.i.sock_owned_by_me.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_me.exit

land.rhs3.i:                                      ; preds = %land.rhs.i
  %.b40.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i, label %land.rhs3.i.sock_owned_by_me.exit_crit_edge, label %if.then.i, !prof !83

land.rhs3.i.sock_owned_by_me.exit_crit_edge:      ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_me.exit

if.then.i:                                        ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1750, i32 noundef 9, ptr noundef null) #12
  br label %sock_owned_by_me.exit

sock_owned_by_me.exit:                            ; preds = %if.then.i, %land.rhs3.i.sock_owned_by_me.exit_crit_edge, %land.rhs.i.sock_owned_by_me.exit_crit_edge, %lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge, %entry.sock_owned_by_me.exit_crit_edge
  %owned = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %owned to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %owned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_add_backlog(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %chunk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk1, align 8
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transport, align 4
  %rcvr2 = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %rcvr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rcvr2, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %6 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sk_rcvbuf, align 8
  %call = tail call fastcc i32 @sk_add_backlog(ptr noundef %sk, ptr noundef %skb, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %9, label %do.body11 [
    i32 1, label %if.then3
    i32 0, label %if.then7
  ]

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @sctp_transport_hold(ptr noundef %3) #12
  br label %if.end18

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 @sctp_endpoint_hold(ptr noundef %5) #12
  br label %if.end18

do.body11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/input.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 378, 0\0A.popsection", ""() #12, !srcloc !91
  unreachable

if.end18:                                         ; preds = %if.then7, %if.then3, %entry.if.end18_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_inq_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_backlog_rcv(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %chunk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk1, align 8
  %rcvr = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %rcvr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rcvr, align 4
  %inqueue2 = getelementptr inbounds %struct.sctp_ep_common, ptr %3, i32 0, i32 5
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transport, align 4
  %dead = getelementptr inbounds %struct.sctp_ep_common, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dead, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_chunk_free(ptr noundef %1) #12
  br label %done

if.end:                                           ; preds = %entry
  %sk5 = getelementptr inbounds %struct.sctp_ep_common, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %sk5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk5, align 4
  %cmp.not = icmp eq ptr %9, %sk
  br i1 %cmp.not, label %if.else23, label %if.then8, !prof !83

if.then8:                                         ; preds = %if.end
  tail call fastcc void @local_bh_disable()
  %sk_lock = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #12
  %call = tail call fastcc zeroext i1 @sock_owned_by_user(ptr noundef %9)
  br i1 %call, label %if.then8.if.then11_crit_edge, label %lor.lhs.false

if.then8.if.then11_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.then8
  %10 = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %sctp_newsk_ready.exit, label %lor.lhs.false.if.else16_crit_edge

lor.lhs.false.if.else16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else16

sctp_newsk_ready.exit:                            ; preds = %lor.lhs.false
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 71
  %14 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk_socket.i, align 8
  %tobool.i.not = icmp eq ptr %15, null
  br i1 %tobool.i.not, label %sctp_newsk_ready.exit.if.then11_crit_edge, label %sctp_newsk_ready.exit.if.else16_crit_edge

sctp_newsk_ready.exit.if.else16_crit_edge:        ; preds = %sctp_newsk_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else16

sctp_newsk_ready.exit.if.then11_crit_edge:        ; preds = %sctp_newsk_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

if.then11:                                        ; preds = %sctp_newsk_ready.exit.if.then11_crit_edge, %if.then8.if.then11_crit_edge
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 15
  %16 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %sk_rcvbuf, align 8
  %call12 = tail call fastcc i32 @sk_add_backlog(ptr noundef %9, ptr noundef %skb, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_chunk_free(ptr noundef %1) #12
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #12
  tail call fastcc void @local_bh_enable()
  br label %done

if.else16:                                        ; preds = %sctp_newsk_ready.exit.if.else16_crit_edge, %lor.lhs.false.if.else16_crit_edge
  tail call void @sctp_inq_push(ptr noundef %inqueue2, ptr noundef %1) #12
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #12
  tail call fastcc void @local_bh_enable()
  br label %done

if.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #12
  tail call fastcc void @local_bh_enable()
  br label %cleanup

if.else23:                                        ; preds = %if.end
  %18 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %21 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i84 = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i84, label %sctp_newsk_ready.exit88, label %if.else23.if.else35_crit_edge

if.else23.if.else35_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else35

sctp_newsk_ready.exit88:                          ; preds = %if.else23
  %sk_socket.i85 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %22 = ptrtoint ptr %sk_socket.i85 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk_socket.i85, align 8
  %tobool.i86.not = icmp eq ptr %23, null
  br i1 %tobool.i86.not, label %if.then25, label %sctp_newsk_ready.exit88.if.else35_crit_edge

sctp_newsk_ready.exit88.if.else35_crit_edge:      ; preds = %sctp_newsk_ready.exit88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else35

if.then25:                                        ; preds = %sctp_newsk_ready.exit88
  %sk_rcvbuf30 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %24 = ptrtoint ptr %sk_rcvbuf30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %sk_rcvbuf30, align 8
  %call31 = tail call fastcc i32 @sk_add_backlog(ptr noundef %sk, ptr noundef %skb, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then25.cleanup_crit_edge, label %if.end34

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_chunk_free(ptr noundef %1) #12
  br label %done

if.else35:                                        ; preds = %sctp_newsk_ready.exit88.if.else35_crit_edge, %if.else23.if.else35_crit_edge
  tail call void @sctp_inq_push(ptr noundef %inqueue2, ptr noundef %1) #12
  br label %done

done:                                             ; preds = %if.else35, %if.end34, %if.else16, %if.then14, %if.then
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %27, label %do.body46 [
    i32 1, label %if.then39
    i32 0, label %if.then43
  ]

if.then39:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_transport_put(ptr noundef %5) #12
  br label %cleanup

if.then43:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_endpoint_put(ptr noundef %3) #12
  br label %cleanup

do.body46:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/input.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 355, 0\0A.popsection", ""() #12, !srcloc !92
  unreachable

cleanup:                                          ; preds = %if.then43, %if.then39, %if.then25.cleanup_crit_edge, %if.end17
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sk_add_backlog(ptr noundef %sk, ptr noundef %skb, i32 noundef %limit) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %len.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #12
  %2 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sk_backlog.i, align 4
  %add.i = add i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %limit)
  %cmp.i = icmp ugt i32 %add.i, %limit
  br i1 %cmp.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %pfmemalloc.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %4 = ptrtoint ptr %pfmemalloc.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %pfmemalloc.i, align 2
  %5 = and i8 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not = icmp eq i8 %5, 0
  br i1 %tobool.i.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %6 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %9 = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i10.not = icmp eq i32 %9, 0
  br i1 %tobool.i10.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %and.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end4.skb_dst_force.exit.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end4.skb_dst_force.exit.i_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_force.exit.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end4
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_is_noref.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge, !prof !84

land.rhs.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_is_noref.exit.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst_is_noref.exit.i.i

skb_dst_is_noref.exit.i.i:                        ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %tobool1.i.i.i = icmp ugt i32 %14, 1
  br i1 %tobool1.i.i.i, label %if.then.i.i, label %skb_dst_is_noref.exit.i.i.skb_dst_force.exit.i_crit_edge

skb_dst_is_noref.exit.i.i.skb_dst_force.exit.i_crit_edge: ; preds = %skb_dst_is_noref.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_force.exit.i

if.then.i.i:                                      ; preds = %skb_dst_is_noref.exit.i.i
  %and.i2.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.skb_dst.exit.i.i_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i
  %call.i.i.i11 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i11)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i11, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !84

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %if.then.i.i.skb_dst.exit.i.i_crit_edge
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 8
  %and25.i.i.i = and i32 %16, -2
  %17 = inttoptr i32 %and25.i.i.i to ptr
  %call2.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %skb_dst.exit.i.i.if.end.i.i_crit_edge, !prof !84

skb_dst.exit.i.i.if.end.i.i_crit_edge:            ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 316, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %skb_dst.exit.i.i.if.end.i.i_crit_edge
  %__refcnt.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %17, i32 0, i32 18
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i.i, i32 1, i32 3, i32 1) #12
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i.i, ptr %__refcnt.i.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i.i) #12, !srcloc !94
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.end.i.i.dst_hold_safe.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.end.i.i.dst_hold_safe.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_hold_safe.exit.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !95
  br label %dst_hold_safe.exit.i.i

dst_hold_safe.exit.i.i:                           ; preds = %do.end11.i.i.i.i.i.i.i, %if.end.i.i.dst_hold_safe.exit.i.i_crit_edge
  %spec.select.i.i = phi ptr [ null, %if.end.i.i.dst_hold_safe.exit.i.i_crit_edge ], [ %17, %do.end11.i.i.i.i.i.i.i ]
  %19 = ptrtoint ptr %spec.select.i.i to i32
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %10, align 8
  %tobool27.not.i.i = icmp eq ptr %spec.select.i.i, null
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %21 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i.i, 4096
  %bf.shl.i.i = select i1 %tobool27.not.i.i, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear34.i.i = and i32 %bf.load.i.i, -4097
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear34.i.i
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  br label %skb_dst_force.exit.i

skb_dst_force.exit.i:                             ; preds = %dst_hold_safe.exit.i.i, %skb_dst_is_noref.exit.i.i.skb_dst_force.exit.i_crit_edge, %if.end4.skb_dst_force.exit.i_crit_edge
  %tail.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9, i32 3
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %do.body2.i, label %if.else.i

do.body2.i:                                       ; preds = %skb_dst_force.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %head.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9, i32 2
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %skb, ptr %head.i, align 4
  br label %__sk_add_backlog.exit

if.else.i:                                        ; preds = %skb_dst_force.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %skb, ptr %23, align 8
  br label %__sk_add_backlog.exit

__sk_add_backlog.exit:                            ; preds = %if.else.i, %do.body2.i
  %26 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %skb, ptr %tail.i, align 4
  %27 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %skb, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %28 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %truesize, align 8
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 4
  %add = add i32 %31, %29
  store i32 %add, ptr %len.i, align 4
  br label %return

return:                                           ; preds = %__sk_add_backlog.exit, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %__sk_add_backlog.exit ], [ -105, %entry.return_crit_edge ], [ -12, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_icmp_frag_needed(ptr noundef %sk, ptr noundef %asoc, ptr noundef %t, i32 noundef %pmtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %t, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %pathmtu = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 34
  %0 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pathmtu, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %pmtu)
  %cmp.not = icmp ugt i32 %1, %pmtu
  br i1 %cmp.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %probe_size = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 48, i32 1
  %2 = ptrtoint ptr %probe_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %probe_size, align 2
  %conv = zext i16 %3 to i32
  %asoc.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %4 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asoc.i, align 8
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %land.lhs.true.sctp_transport_pl_hlen.exit_crit_edge, label %if.then.i.i

land.lhs.true.sctp_transport_pl_hlen.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit

if.then.i.i:                                      ; preds = %land.lhs.true
  %pf.i.i = getelementptr inbounds %struct.sctp_sock, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pf.i.i, align 4
  %af.i.i = getelementptr inbounds %struct.sctp_pf, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %af.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %af.i.i, align 4
  %net_header_len.i.i = getelementptr inbounds %struct.sctp_af, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %net_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %net_header_len.i.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, 12
  %udp_port.i.i = getelementptr inbounds %struct.sctp_sock, ptr %7, i32 0, i32 16
  %14 = ptrtoint ptr %udp_port.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %udp_port.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool3.not.i.i = icmp eq i16 %15, 0
  br i1 %tobool3.not.i.i, label %if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge, label %lor.lhs.false.i.i

if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_pl_hlen.exit

lor.lhs.false.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %encap_port.i.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 28
  %16 = ptrtoint ptr %encap_port.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %encap_port.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool6.not.i.i = icmp eq i16 %17, 0
  %add8.i.i = add nuw nsw i32 %conv.i.i, 20
  %spec.select = select i1 %tobool6.not.i.i, i32 %add1.i.i, i32 %add8.i.i
  br label %sctp_transport_pl_hlen.exit

sctp_transport_pl_hlen.exit:                      ; preds = %lor.lhs.false.i.i, %if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge, %land.lhs.true.sctp_transport_pl_hlen.exit_crit_edge
  %overhead.0.i.i = phi i32 [ %add1.i.i, %if.then.i.i.sctp_transport_pl_hlen.exit_crit_edge ], [ 52, %land.lhs.true.sctp_transport_pl_hlen.exit_crit_edge ], [ %spec.select, %lor.lhs.false.i.i ]
  %sub.i = add nsw i32 %conv, -12
  %add = add nsw i32 %sub.i, %overhead.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %pmtu)
  %cmp1.not = icmp ugt i32 %add, %pmtu
  br i1 %cmp1.not, label %sctp_transport_pl_hlen.exit.if.end_crit_edge, label %sctp_transport_pl_hlen.exit.return_crit_edge

sctp_transport_pl_hlen.exit.return_crit_edge:     ; preds = %sctp_transport_pl_hlen.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sctp_transport_pl_hlen.exit.if.end_crit_edge:     ; preds = %sctp_transport_pl_hlen.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %sctp_transport_pl_hlen.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %if.end.sock_owned_by_user.exit_crit_edge

if.end.sock_owned_by_user.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %if.end
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %18 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i26 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i26, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i27, !prof !83

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

if.then.i.i27:                                    ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1750, i32 noundef 9, ptr noundef null) #12
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i27, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %if.end.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not = icmp eq i32 %20, 0
  br i1 %tobool.i.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  %mtu_info = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mtu_info, i32 noundef 4) #12
  %21 = ptrtoint ptr %mtu_info to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %pmtu, ptr %mtu_info, align 4
  %pmtu_pending = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 25
  %22 = ptrtoint ptr %pmtu_pending to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %pmtu_pending, align 1
  %pmtu_pending5 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 3
  %23 = ptrtoint ptr %pmtu_pending5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %pmtu_pending5, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %pmtu_pending5, align 4
  br label %return

if.end6:                                          ; preds = %sock_owned_by_user.exit
  %param_flags = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 35
  %24 = ptrtoint ptr %param_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %param_flags, align 4
  %and = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.return_crit_edge, label %if.end9

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end9:                                          ; preds = %if.end6
  %call10 = tail call zeroext i1 @sctp_transport_update_pmtu(ptr noundef nonnull %t, i32 noundef %pmtu) #12
  br i1 %call10, label %if.end12, label %if.end9.return_crit_edge

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_assoc_sync_pmtu(ptr noundef %asoc) #12
  %outqueue = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61
  tail call void @sctp_retransmit(ptr noundef %outqueue, ptr noundef nonnull %t, i32 noundef 2) #12
  br label %return

return:                                           ; preds = %if.end12, %if.end9.return_crit_edge, %if.end6.return_crit_edge, %if.then4, %sctp_transport_pl_hlen.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sctp_transport_update_pmtu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_assoc_sync_pmtu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_retransmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_icmp_redirect(ptr noundef %sk, ptr noundef %t, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !83

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1750, i32 noundef 9, ptr noundef null) #12
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i = icmp ne i32 %2, 0
  %tobool.not = icmp eq ptr %t, null
  %or.cond = or i1 %tobool.not, %tobool.i
  br i1 %or.cond, label %sock_owned_by_user.exit.cleanup_crit_edge, label %if.end

sock_owned_by_user.exit.cleanup_crit_edge:        ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sock_owned_by_user.exit
  %dst.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 18
  %3 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %land.lhs.true.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end
  %obsolete.i.i = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %obsolete.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %obsolete.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i.i9 = icmp eq i16 %6, 0
  br i1 %tobool.not.i.i9, label %land.lhs.true.i.sctp_transport_dst_check.exit_crit_edge, label %dst_check.exit.i

land.lhs.true.i.sctp_transport_dst_check.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_dst_check.exit

dst_check.exit.i:                                 ; preds = %land.lhs.true.i
  %dst_cookie.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 4
  %7 = ptrtoint ptr %dst_cookie.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst_cookie.i, align 8
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 4
  %check.i.i = getelementptr inbounds %struct.dst_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %check.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %check.i.i, align 4
  %call.i.i = tail call ptr %12(ptr noundef nonnull %4, i32 noundef %8) #12
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.then.i, label %dst_check.exit.i.sctp_transport_dst_check.exit_crit_edge

dst_check.exit.i.sctp_transport_dst_check.exit_crit_edge: ; preds = %dst_check.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_transport_dst_check.exit

if.then.i:                                        ; preds = %dst_check.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_transport_dst_release(ptr noundef nonnull %t) #12
  br label %sctp_transport_dst_check.exit

sctp_transport_dst_check.exit:                    ; preds = %if.then.i, %dst_check.exit.i.sctp_transport_dst_check.exit_crit_edge, %land.lhs.true.i.sctp_transport_dst_check.exit_crit_edge
  %13 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %dst.i, align 8
  %tobool2.not = icmp eq ptr %.pr, null
  br i1 %tobool2.not, label %sctp_transport_dst_check.exit.cleanup_crit_edge, label %if.then3

sctp_transport_dst_check.exit.cleanup_crit_edge:  ; preds = %sctp_transport_dst_check.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %sctp_transport_dst_check.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ops = getelementptr inbounds %struct.dst_entry, ptr %.pr, i32 0, i32 1
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %redirect = getelementptr inbounds %struct.dst_ops, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %redirect to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %redirect, align 16
  tail call void %17(ptr noundef nonnull %.pr, ptr noundef %sk, ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %sctp_transport_dst_check.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sock_owned_by_user.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_icmp_proto_unreachable(ptr noundef %sk, ptr noundef %asoc, ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !83

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1750, i32 noundef 9, ptr noundef null) #12
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.else9, label %if.then

if.then:                                          ; preds = %sock_owned_by_user.exit
  %pprev.i.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 41, i32 0, i32 1
  %3 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i34.not = icmp eq ptr %4, null
  br i1 %tobool.not.i.i34.not, label %if.else, label %if.then.if.end25_crit_edge

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.else:                                          ; preds = %if.then
  %proto_unreach_timer = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %5, 5
  %call4 = tail call i32 @mod_timer(ptr noundef %proto_unreach_timer, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 @sctp_transport_hold(ptr noundef %t) #12
  br label %if.end25

if.else9:                                         ; preds = %sock_owned_by_user.exit
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_icmp_proto_unreachable.__UNIQUE_ID_ddebug671, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_icmp_proto_unreachable, %if.then15)) #12
          to label %do.end [label %if.then15], !srcloc !87

if.then15:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_icmp_proto_unreachable.__UNIQUE_ID_ddebug671, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #12
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.else9
  %proto_unreach_timer17 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 41
  %call18 = tail call i32 @del_timer(ptr noundef %proto_unreach_timer17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end.if.end21_crit_edge, label %if.then20

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_transport_put(ptr noundef %t) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %do.end.if.end21_crit_edge
  %state = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 6
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %ep = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %10 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep, align 4
  %call24 = tail call i32 @sctp_do_sm(ptr noundef %7, i32 noundef 3, [1 x i32] [i32 1], i32 noundef %9, ptr noundef %11, ptr noundef %asoc, ptr noundef %t, i32 noundef 2592) #12
  br label %if.end25

if.end25:                                         ; preds = %if.end21, %if.then6, %if.else.if.end25_crit_edge, %if.then.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_transport_hold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_do_sm(ptr noundef, i32 noundef, [1 x i32], i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_err_lookup(ptr noundef %net, i32 noundef %family, ptr noundef %skb, ptr nocapture noundef readonly %sctphdr, ptr nocapture noundef writeonly %app, ptr nocapture noundef writeonly %tpp) local_unnamed_addr #0 align 64 {
entry:
  %arg.i.i = alloca %struct.sctp_hash_cmp_arg, align 4
  %_chunkhdr = alloca %struct.sctp_init_chunk, align 4
  %saddr = alloca %union.sctp_addr, align 4
  %daddr = alloca %union.sctp_addr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_chunkhdr) #12
  %0 = call ptr @memset(ptr %_chunkhdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %saddr) #12
  %1 = call ptr @memset(ptr %saddr, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %daddr) #12
  %vtag1 = getelementptr inbounds %struct.sctphdr, ptr %sctphdr, i32 0, i32 2
  %2 = call ptr @memset(ptr %daddr, i32 255, i32 28)
  %3 = ptrtoint ptr %vtag1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vtag1, align 4
  %5 = ptrtoint ptr %app to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %app, align 4
  %6 = ptrtoint ptr %tpp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tpp, align 4
  %conv = trunc i32 %family to i16
  %call = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %conv) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !84

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.sockaddr_in6, ptr %saddr, i32 0, i32 1
  %from_skb = getelementptr inbounds %struct.sctp_af, ptr %call, i32 0, i32 8
  %8 = ptrtoint ptr %from_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %from_skb, align 4
  call void %9(ptr noundef nonnull %saddr, ptr noundef %skb, i32 noundef 1) #12
  %10 = ptrtoint ptr %from_skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %from_skb, align 4
  call void %11(ptr noundef nonnull %daddr, ptr noundef %skb, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg.i.i) #12
  %12 = getelementptr inbounds i8, ptr %arg.i.i, i32 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4
  %14 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %daddr, ptr %arg.i.i, align 4
  %net2.i.i = getelementptr inbounds %struct.sctp_hash_cmp_arg, ptr %arg.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %net2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %net, ptr %net2.i.i, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %7, align 2
  store i16 %17, ptr %12, align 4
  %call.i.i = call fastcc ptr @rhltable_lookup(ptr noundef nonnull %arg.i.i, [7 x i32] [i32 0, i32 8, i32 0, i32 256, i32 ptrtoint (ptr @sctp_hash_key to i32), i32 ptrtoint (ptr @sctp_hash_obj to i32), i32 ptrtoint (ptr @sctp_hash_cmp to i32)]) #12
  %tobool.not33.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not33.i.i, label %if.end.sctp_addrs_lookup_transport.exit.thread.i_crit_edge, label %if.end.land.rhs.i.i_crit_edge

if.end.land.rhs.i.i_crit_edge:                    ; preds = %if.end
  br label %land.rhs.i.i

if.end.sctp_addrs_lookup_transport.exit.thread.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_addrs_lookup_transport.exit.thread.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %if.end.land.rhs.i.i_crit_edge
  %tmp.034.i.i = phi ptr [ %23, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ %call.i.i, %if.end.land.rhs.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %tmp.034.i.i, i32 -8
  %call6.i.i = call i32 @sctp_transport_hold(ptr noundef %add.ptr.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.rhs.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

land.rhs.i.i.for.inc.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %land.rhs.i.i
  %asoc.i.i = getelementptr i8, ptr %tmp.034.i.i, i32 144
  %18 = ptrtoint ptr %asoc.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asoc.i.i, align 8
  %bind_addr.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %19, i32 0, i32 6
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk.i.i, align 4
  %call11.i.i = call i32 @sctp_bind_addr_match(ptr noundef %bind_addr.i.i, ptr noundef nonnull %saddr, ptr noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %sctp_addrs_lookup_transport.exit.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @sctp_transport_put(ptr noundef %add.ptr.i.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end14.i.i, %land.rhs.i.i.for.inc.i.i_crit_edge
  %next.i.i = getelementptr inbounds %struct.rhlist_head, ptr %tmp.034.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.sctp_addrs_lookup_transport.exit.thread.i_crit_edge, label %for.inc.i.i.land.rhs.i.i_crit_edge

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

for.inc.i.i.sctp_addrs_lookup_transport.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_addrs_lookup_transport.exit.thread.i

sctp_addrs_lookup_transport.exit.thread.i:        ; preds = %for.inc.i.i.sctp_addrs_lookup_transport.exit.thread.i_crit_edge, %if.end.sctp_addrs_lookup_transport.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg.i.i) #12
  br label %cleanup

sctp_addrs_lookup_transport.exit.i:               ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg.i.i) #12
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %sctp_addrs_lookup_transport.exit.i.cleanup_crit_edge, label %__sctp_lookup_association.exit

sctp_addrs_lookup_transport.exit.i.cleanup_crit_edge: ; preds = %sctp_addrs_lookup_transport.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

__sctp_lookup_association.exit:                   ; preds = %sctp_addrs_lookup_transport.exit.i
  %asoc.i.i.le = getelementptr i8, ptr %tmp.034.i.i, i32 144
  %24 = ptrtoint ptr %asoc.i.i.le to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asoc.i.i.le, align 8
  %tobool7.not = icmp eq ptr %25, null
  br i1 %tobool7.not, label %__sctp_lookup_association.exit.cleanup_crit_edge, label %if.end9

__sctp_lookup_association.exit.cleanup_crit_edge: ; preds = %__sctp_lookup_association.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %__sctp_lookup_association.exit
  %sk10 = getelementptr inbounds %struct.sctp_ep_common, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %sk10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sk10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %30 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %31 to i32
  %add.ptr.i.i73 = getelementptr i8, ptr %29, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i73 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add = add i32 %sub.ptr.sub.i, 12
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %34 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %36 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_len.i.i, align 8
  %add.neg = sub i32 -12, %sub.ptr.sub.i
  %.neg93 = sub i32 %35, %37
  %sub.i4.i = add i32 %.neg93, %add.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 8
  br i1 %cmp.not.i.i, label %if.end.i.i76, label %skb_header_pointer.exit, !prof !84

if.end.i.i76:                                     ; preds = %if.then12
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i76.out_crit_edge, label %lor.lhs.false.i.i

if.end.i.i76.out_crit_edge:                       ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false.i.i:                                ; preds = %if.end.i.i76
  %call.i.i77 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %_chunkhdr, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %cmp3.i.i = icmp slt i32 %call.i.i77, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.out_crit_edge, label %lor.lhs.false.i.i.lor.lhs.false_crit_edge

lor.lhs.false.i.i.lor.lhs.false_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

lor.lhs.false.i.i.out_crit_edge:                  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

skb_header_pointer.exit:                          ; preds = %if.then12
  %add.ptr.i.i75 = getelementptr i8, ptr %33, i32 %add
  %tobool15.not = icmp eq ptr %add.ptr.i.i75, null
  br i1 %tobool15.not, label %skb_header_pointer.exit.out_crit_edge, label %skb_header_pointer.exit.lor.lhs.false_crit_edge

skb_header_pointer.exit.lor.lhs.false_crit_edge:  ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

skb_header_pointer.exit.out_crit_edge:            ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %skb_header_pointer.exit.lor.lhs.false_crit_edge, %lor.lhs.false.i.i.lor.lhs.false_crit_edge
  %retval.0.i.i92 = phi ptr [ %add.ptr.i.i75, %skb_header_pointer.exit.lor.lhs.false_crit_edge ], [ %_chunkhdr, %lor.lhs.false.i.i.lor.lhs.false_crit_edge ]
  %38 = ptrtoint ptr %retval.0.i.i92 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %retval.0.i.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp17.not = icmp eq i8 %39, 1
  br i1 %cmp17.not, label %lor.lhs.false19, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %init_hdr = getelementptr inbounds %struct.sctp_init_chunk, ptr %retval.0.i.i92, i32 0, i32 1
  %40 = ptrtoint ptr %init_hdr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %init_hdr, align 4
  %c = getelementptr inbounds %struct.sctp_association, ptr %25, i32 0, i32 4
  %42 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %c, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp20.not = icmp eq i32 %41, %43
  br i1 %cmp20.not, label %lor.lhs.false19.if.end29_crit_edge, label %lor.lhs.false19.out_crit_edge

lor.lhs.false19.out_crit_edge:                    ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false19.if.end29_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.else:                                          ; preds = %if.end9
  %peer_vtag = getelementptr inbounds %struct.sctp_association, ptr %25, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %peer_vtag to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %peer_vtag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %45)
  %cmp25.not = icmp eq i32 %4, %45
  br i1 %cmp25.not, label %if.else.if.end29_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end29:                                         ; preds = %if.else.if.end29_crit_edge, %lor.lhs.false19.if.end29_crit_edge
  %sk_lock = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %sk_lock) #12
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 4, i32 3
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %if.end29.sock_owned_by_user.exit_crit_edge

if.end29.sock_owned_by_user.exit_crit_edge:       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %if.end29
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i79, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

land.rhs.i.i79:                                   ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %46 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i78 = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i78, label %land.rhs.i.i79.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i79.sock_owned_by_user.exit_crit_edge: ; preds = %land.rhs.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i79
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i80, !prof !83

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

if.then.i.i80:                                    ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1750, i32 noundef 9, ptr noundef null) #12
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i80, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i79.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %if.end29.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not = icmp eq i32 %48, 0
  br i1 %tobool.i.not, label %sock_owned_by_user.exit.if.end47_crit_edge, label %if.then31

sock_owned_by_user.exit.if.end47_crit_edge:       ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then31:                                        ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  %net_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 3
  %49 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %arrayidx to i32
  %52 = call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu, align 4
  %arrayidx40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx40, align 4
  %add41 = add i32 %57, %51
  %58 = inttoptr i32 %add41 to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %add42 = add i32 %60, 1
  store i32 %add42, ptr %58, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then31, %sock_owned_by_user.exit.if.end47_crit_edge
  %61 = ptrtoint ptr %app to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %25, ptr %app, align 4
  %62 = ptrtoint ptr %tpp to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr.i.i, ptr %tpp, align 4
  br label %cleanup

out:                                              ; preds = %if.else.out_crit_edge, %lor.lhs.false19.out_crit_edge, %lor.lhs.false.out_crit_edge, %skb_header_pointer.exit.out_crit_edge, %lor.lhs.false.i.i.out_crit_edge, %if.end.i.i76.out_crit_edge
  call void @sctp_transport_put(ptr noundef nonnull %add.ptr.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end47, %__sctp_lookup_association.exit.cleanup_crit_edge, %sctp_addrs_lookup_transport.exit.i.cleanup_crit_edge, %sctp_addrs_lookup_transport.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out ], [ %27, %if.end47 ], [ null, %entry.cleanup_crit_edge ], [ null, %__sctp_lookup_association.exit.cleanup_crit_edge ], [ null, %sctp_addrs_lookup_transport.exit.i.cleanup_crit_edge ], [ null, %sctp_addrs_lookup_transport.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %daddr) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %saddr) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_chunkhdr) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_err_finish(ptr noundef %sk, ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #12
  tail call void @sctp_transport_put(ptr noundef %t) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_v4_err(ptr noundef %skb, i32 noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %transport = alloca ptr, align 4
  %asoc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %4 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i.i, align 4
  %code3 = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %code3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %code3, align 1
  %10 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 127
  %13 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %transport) #12
  %15 = ptrtoint ptr %transport to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %transport, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %asoc) #12
  %network_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %16 = ptrtoint ptr %network_header to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %network_header, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  store i16 %conv.i, ptr %network_header, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %1, align 4
  %bf.clear = shl i8 %bf.load, 2
  %19 = and i8 %bf.clear, 60
  %20 = zext i8 %19 to i16
  %conv1.i = add i16 %20, %conv.i
  %21 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv1.i, ptr %transport_header.i.i, align 2
  %conv.i.i58 = zext i16 %conv1.i to i32
  %add.ptr.i.i59 = getelementptr i8, ptr %3, i32 %conv.i.i58
  %call8 = call ptr @sctp_err_lookup(ptr noundef %14, i32 noundef 2, ptr noundef %skb, ptr noundef %add.ptr.i.i59, ptr noundef nonnull %asoc, ptr noundef nonnull %transport)
  %22 = ptrtoint ptr %network_header to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %17, ptr %network_header, align 4
  %23 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %5, ptr %transport_header.i.i, align 2
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %icmp_statistics = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 30, i32 11
  %24 = ptrtoint ptr %icmp_statistics to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %icmp_statistics, align 4
  %arrayidx = getelementptr [28 x i32], ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu, align 4
  %arrayidx19 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx19, align 4
  %add = add i32 %32, %26
  %33 = inttoptr i32 %add to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add20 = add i32 %35, 1
  store i32 %add20, ptr %33, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %transport, align 4
  tail call fastcc void @sctp_v4_err_handle(ptr noundef %37, ptr noundef %skb, i8 noundef zeroext %7, i8 noundef zeroext %9, i32 noundef %info)
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %call8, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #12
  tail call void @sctp_transport_put(ptr noundef %37) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %asoc) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %transport) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_v4_err_handle(ptr noundef %t, ptr noundef %skb, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc1 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  %sk2 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sk2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk2, align 4
  %4 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %type, label %entry.cleanup_crit_edge [
    i8 12, label %entry.sw.epilog_crit_edge
    i8 3, label %sw.bb3
    i8 11, label %sw.bb16
    i8 5, label %sw.bb22
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %conv4 = zext i8 %code to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %code)
  %cmp = icmp ugt i8 %code, 15
  br i1 %cmp, label %sw.bb3.cleanup_crit_edge, label %if.end

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  %5 = zext i8 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %code, label %if.end15 [
    i8 4, label %if.then9
    i8 2, label %if.then14
  ]

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %info, -4
  tail call void @sctp_icmp_frag_needed(ptr noundef %3, ptr noundef %1, ptr noundef %t, i32 noundef %and)
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_icmp_proto_unreachable(ptr noundef %3, ptr noundef %1, ptr noundef %t)
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [0 x %struct.icmp_err], ptr @icmp_err_convert, i32 0, i32 %conv4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %code)
  %cmp18 = icmp eq i8 %code, 1
  br i1 %cmp18, label %sw.bb16.cleanup_crit_edge, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sctp_icmp_redirect(ptr noundef %3, ptr noundef %t, ptr noundef %skb)
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb16.sw.epilog_crit_edge, %if.end15, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ %7, %if.end15 ], [ 71, %entry.sw.epilog_crit_edge ], [ 113, %sw.bb16.sw.epilog_crit_edge ]
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %sw.epilog.sock_owned_by_user.exit_crit_edge

sw.epilog.sock_owned_by_user.exit_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %sw.epilog
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !83

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1750, i32 noundef 9, ptr noundef null) #12
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %sw.epilog.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %sock_owned_by_user.exit.if.else_crit_edge

sock_owned_by_user.exit.if.else_crit_edge:        ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %sock_owned_by_user.exit
  %recverr = getelementptr inbounds %struct.inet_sock, ptr %3, i32 0, i32 12
  %11 = ptrtoint ptr %recverr to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %recverr, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then25

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %sk_err = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 51
  %12 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %err.0, ptr %sk_err, align 4
  tail call void @sk_error_report(ptr noundef %3) #12
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sock_owned_by_user.exit.if.else_crit_edge
  %sk_err_soft = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 52
  %13 = ptrtoint ptr %sk_err_soft to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %err.0, ptr %sk_err_soft, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then25, %sw.bb22, %sw.bb16.cleanup_crit_edge, %if.then14, %if.then9, %sw.bb3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_udp_v4_err(ptr nocapture noundef readnone %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %asoc = alloca ptr, align 4
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %asoc) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #12
  %5 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !96
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_header, align 2
  %add = add i16 %7, 8
  store i16 %add, ptr %transport_header, align 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %conv.i.i = zext i16 %add to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %call3 = call ptr @sctp_err_lookup(ptr noundef %4, i32 noundef 2, ptr noundef %skb, ptr noundef %add.ptr.i.i, ptr noundef nonnull %asoc, ptr noundef nonnull %t)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %icmp_statistics = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 11
  %10 = ptrtoint ptr %icmp_statistics to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %icmp_statistics, align 4
  %arrayidx = getelementptr [28 x i32], ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx12 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %18, %12
  %19 = inttoptr i32 %add13 to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add14 = add i32 %21, 1
  store i32 %add14, ptr %19, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %transport_header to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %transport_header, align 2
  %sub = add i16 %23, -8
  store i16 %sub, ptr %transport_header, align 2
  %24 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %26 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %27 to i32
  %add.ptr.i = getelementptr i8, ptr %25, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 -8
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr, align 4
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %29, label %if.end.if.end36_crit_edge [
    i8 5, label %if.then25
    i8 3, label %land.lhs.true
  ]

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %t, align 4
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %call3, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #12
  tail call void @sctp_transport_put(ptr noundef %32) #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %code = getelementptr i8, ptr %add.ptr.i, i32 -7
  %33 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %34)
  %cmp32 = icmp eq i8 %34, 4
  br i1 %cmp32, label %if.then34, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %mtu = getelementptr i8, ptr %add.ptr.i, i32 -2
  %35 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %mtu, align 2
  %conv35 = zext i16 %36 to i32
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %info.0 = phi i32 [ %conv35, %if.then34 ], [ 0, %land.lhs.true.if.end36_crit_edge ], [ 0, %if.end.if.end36_crit_edge ]
  %37 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %t, align 4
  %code38 = getelementptr i8, ptr %add.ptr.i, i32 -7
  %39 = ptrtoint ptr %code38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %code38, align 1
  tail call fastcc void @sctp_v4_err_handle(ptr noundef %38, ptr noundef %skb, i8 noundef zeroext %29, i8 noundef zeroext %40, i32 noundef %info.0)
  %sk_lock.i57 = getelementptr inbounds %struct.sock, ptr %call3, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i57) #12
  tail call void @sctp_transport_put(ptr noundef %38) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then25, %if.then
  %retval.0 = phi i32 [ 0, %if.then25 ], [ 1, %if.end36 ], [ -2, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %asoc) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_hash_endpoint(ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable()
  %sk1.i = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1.i, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i.i, align 4
  %bind_addr.i = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 6
  %4 = ptrtoint ptr %bind_addr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bind_addr.i, align 4
  %hash_mix.i.i.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 26
  %6 = ptrtoint ptr %hash_mix.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash_mix.i.i.i, align 8
  %conv.i.i = zext i16 %5 to i32
  %add.i.i = add i32 %7, %conv.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 4) to i32))
  %8 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 4), align 4
  %sub.i.i = add i32 %8, -1
  %and.i.i = and i32 %sub.i.i, %add.i.i
  %hashent.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 2
  %9 = ptrtoint ptr %hashent.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and.i.i, ptr %hashent.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 1), align 4
  %arrayidx.i = getelementptr %struct.sctp_hashbucket, ptr %10, i32 %and.i.i
  %skc_reuseport.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %skc_reuseport.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %skc_reuseport.i, align 1
  %12 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %entry.if.end83.i_crit_edge, label %if.then.i

entry.if.end83.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83.i

if.then.i:                                        ; preds = %entry
  %call5.i = tail call i32 @sctp_is_ep_boundall(ptr noundef %1) #12
  %address_list.i = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 6, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then.i
  %cnt.0.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %list.0.in.i = phi ptr [ %address_list.i, %if.then.i ], [ %list.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %13 = ptrtoint ptr %list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %list.0.i = load ptr, ptr %list.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %list.0.i, %address_list.i
  %inc.i = add i32 %cnt.0.i, 1
  br i1 %cmp.i.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.i = icmp ne i32 %call5.i, 0
  %chain.i = getelementptr %struct.sctp_hashbucket, ptr %10, i32 %and.i.i, i32 1
  %14 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chain.i, align 4
  %tobool15.not.i = icmp eq ptr %15, null
  %add.ptr.i = getelementptr i8, ptr %15, i32 -88
  %tobool18.not166172.i = icmp eq ptr %add.ptr.i, null
  %tobool18.not166.i = or i1 %tobool15.not.i, %tobool18.not166172.i
  br i1 %tobool18.not166.i, label %for.end.i.if.then69.i_crit_edge, label %for.end.i.for.body19.i_crit_edge

for.end.i.for.body19.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body19.i

for.end.i.if.then69.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69.i

for.body19.i:                                     ; preds = %for.inc55.i.for.body19.i_crit_edge, %for.end.i.for.body19.i_crit_edge
  %ep2.0168.i = phi ptr [ %add.ptr63.i, %for.inc55.i.for.body19.i_crit_edge ], [ %add.ptr.i, %for.end.i.for.body19.i_crit_edge ]
  %err.0167.i = phi i32 [ %err.1.ph.i, %for.inc55.i.for.body19.i_crit_edge ], [ 1, %for.end.i.for.body19.i_crit_edge ]
  %sk21.i = getelementptr inbounds %struct.sctp_ep_common, ptr %ep2.0168.i, i32 0, i32 3
  %16 = ptrtoint ptr %sk21.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk21.i, align 4
  %skc_net.i135.i = getelementptr inbounds %struct.sock_common, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %skc_net.i135.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skc_net.i135.i, align 4
  %cmp.i136.i = icmp ne ptr %19, %3
  %cmp.i = icmp eq ptr %17, %1
  %or.cond.i = or i1 %cmp.i, %cmp.i136.i
  br i1 %or.cond.i, label %for.body19.i.for.inc55.i_crit_edge, label %lor.lhs.false25.i

for.body19.i.for.inc55.i_crit_edge:               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc55.i

lor.lhs.false25.i:                                ; preds = %for.body19.i
  %call26.i = tail call i32 @sock_i_uid(ptr noundef %17) #12
  %call28.i = tail call i32 @sock_i_uid(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call26.i, i32 %call28.i)
  %cmp.i138.i = icmp eq i32 %call26.i, %call28.i
  br i1 %cmp.i138.i, label %lor.lhs.false33.i, label %lor.lhs.false25.i.for.inc55.i_crit_edge

lor.lhs.false25.i.for.inc55.i_crit_edge:          ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc55.i

lor.lhs.false33.i:                                ; preds = %lor.lhs.false25.i
  %skc_reuseport35.i = getelementptr inbounds %struct.sock_common, ptr %17, i32 0, i32 5
  %20 = ptrtoint ptr %skc_reuseport35.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load36.i = load i8, ptr %skc_reuseport35.i, align 1
  %21 = and i8 %bf.load36.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool39.not.i = icmp eq i8 %21, 0
  br i1 %tobool39.not.i, label %lor.lhs.false33.i.for.inc55.i_crit_edge, label %if.end.i

lor.lhs.false33.i.for.inc55.i_crit_edge:          ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc55.i

if.end.i:                                         ; preds = %lor.lhs.false33.i
  %call43.i = tail call i32 @sctp_bind_addrs_check(ptr noundef %17, ptr noundef %1, i32 noundef %cnt.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %if.else.i

if.then45.i:                                      ; preds = %if.end.i
  %call47.i = tail call i32 @reuseport_add_sock(ptr noundef %1, ptr noundef %17, i1 noundef zeroext %tobool6.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.then45.i.if.end83.i_crit_edge, label %if.then45.i.__sctp_hash_endpoint.exit_crit_edge

if.then45.i.__sctp_hash_endpoint.exit_crit_edge:  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sctp_hash_endpoint.exit

if.then45.i.if.end83.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp51.i = icmp slt i32 %call43.i, 0
  br i1 %cmp51.i, label %if.else.i.__sctp_hash_endpoint.exit_crit_edge, label %if.else.i.for.inc55.i_crit_edge

if.else.i.for.inc55.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc55.i

if.else.i.__sctp_hash_endpoint.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sctp_hash_endpoint.exit

for.inc55.i:                                      ; preds = %if.else.i.for.inc55.i_crit_edge, %lor.lhs.false33.i.for.inc55.i_crit_edge, %lor.lhs.false25.i.for.inc55.i_crit_edge, %for.body19.i.for.inc55.i_crit_edge
  %err.1.ph.i = phi i32 [ %call43.i, %if.else.i.for.inc55.i_crit_edge ], [ %err.0167.i, %for.body19.i.for.inc55.i_crit_edge ], [ %err.0167.i, %lor.lhs.false25.i.for.inc55.i_crit_edge ], [ %err.0167.i, %lor.lhs.false33.i.for.inc55.i_crit_edge ]
  %node.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep2.0168.i, i32 0, i32 1
  %22 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node.i, align 4
  %tobool59.not.i = icmp eq ptr %23, null
  %add.ptr63.i = getelementptr i8, ptr %23, i32 -88
  %tobool18.not178.i = icmp eq ptr %add.ptr63.i, null
  %tobool18.not.i = or i1 %tobool59.not.i, %tobool18.not178.i
  br i1 %tobool18.not.i, label %for.end67.i, label %for.inc55.i.for.body19.i_crit_edge

for.inc55.i.for.body19.i_crit_edge:               ; preds = %for.inc55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body19.i

for.end67.i:                                      ; preds = %for.inc55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.ph.i)
  %tobool68.not.i = icmp eq i32 %err.1.ph.i, 0
  br i1 %tobool68.not.i, label %for.end67.i.if.end83.i_crit_edge, label %for.end67.i.if.then69.i_crit_edge

for.end67.i.if.then69.i_crit_edge:                ; preds = %for.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69.i

for.end67.i.if.end83.i_crit_edge:                 ; preds = %for.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83.i

if.then69.i:                                      ; preds = %for.end67.i.if.then69.i_crit_edge, %for.end.i.if.then69.i_crit_edge
  %call71.i = tail call i32 @reuseport_alloc(ptr noundef %1, i1 noundef zeroext %tobool6.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.then69.i.if.end83.i_crit_edge, label %if.then69.i.__sctp_hash_endpoint.exit_crit_edge

if.then69.i.__sctp_hash_endpoint.exit_crit_edge:  ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sctp_hash_endpoint.exit

if.then69.i.if.end83.i_crit_edge:                 ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then69.i.if.end83.i_crit_edge, %for.end67.i.if.end83.i_crit_edge, %if.then45.i.if.end83.i_crit_edge, %entry.if.end83.i_crit_edge
  tail call void @_raw_write_lock(ptr noundef %arrayidx.i) #12
  %node84.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 1
  %chain85.i = getelementptr %struct.sctp_hashbucket, ptr %10, i32 %and.i.i, i32 1
  %24 = ptrtoint ptr %chain85.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chain85.i, align 4
  %26 = ptrtoint ptr %node84.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %25, ptr %node84.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end83.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.end83.i.hlist_add_head.exit.i_crit_edge:       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %node84.i, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.end83.i.hlist_add_head.exit.i_crit_edge
  %28 = ptrtoint ptr %chain85.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %node84.i, ptr %chain85.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %chain85.i, ptr %pprev34.i.i, align 4
  tail call void @_raw_write_unlock(ptr noundef %arrayidx.i) #12
  br label %__sctp_hash_endpoint.exit

__sctp_hash_endpoint.exit:                        ; preds = %hlist_add_head.exit.i, %if.then69.i.__sctp_hash_endpoint.exit_crit_edge, %if.else.i.__sctp_hash_endpoint.exit_crit_edge, %if.then45.i.__sctp_hash_endpoint.exit_crit_edge
  %retval.4.i = phi i32 [ 0, %hlist_add_head.exit.i ], [ %call71.i, %if.then69.i.__sctp_hash_endpoint.exit_crit_edge ], [ %call47.i, %if.then45.i.__sctp_hash_endpoint.exit_crit_edge ], [ %call43.i, %if.else.i.__sctp_hash_endpoint.exit_crit_edge ]
  tail call fastcc void @local_bh_enable()
  ret i32 %retval.4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_unhash_endpoint(ptr nocapture noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable()
  %sk1.i = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1.i, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i.i, align 4
  %bind_addr.i = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 6
  %4 = ptrtoint ptr %bind_addr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bind_addr.i, align 4
  %hash_mix.i.i.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 26
  %6 = ptrtoint ptr %hash_mix.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash_mix.i.i.i, align 8
  %conv.i.i = zext i16 %5 to i32
  %add.i.i = add i32 %7, %conv.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 4) to i32))
  %8 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 4), align 4
  %sub.i.i = add i32 %8, -1
  %and.i.i = and i32 %sub.i.i, %add.i.i
  %hashent.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 2
  %9 = ptrtoint ptr %hashent.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and.i.i, ptr %hashent.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 1), align 4
  %sk_reuseport_cb.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 83
  %11 = ptrtoint ptr %sk_reuseport_cb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %sk_reuseport_cb.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @reuseport_detach_sock(ptr noundef %1) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.sctp_hashbucket, ptr %10, i32 %and.i.i
  tail call void @_raw_write_lock(ptr noundef %arrayidx.i) #12
  %node.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 1
  %pprev.i.i.i = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.not.i.i, label %if.end.i.__sctp_unhash_endpoint.exit_crit_edge, label %if.then.i.i

if.end.i.__sctp_unhash_endpoint.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sctp_unhash_endpoint.exit

if.then.i.i:                                      ; preds = %if.end.i
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %14, align 4
  %tobool.not.i3.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %14, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %19 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %node.i, align 4
  %20 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %__sctp_unhash_endpoint.exit

__sctp_unhash_endpoint.exit:                      ; preds = %__hlist_del.exit.i.i, %if.end.i.__sctp_unhash_endpoint.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %arrayidx.i) #12
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_transport_hashtable_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rhltable_init(ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3), ptr noundef nonnull @sctp_hash_params) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhltable_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_transport_hashtable_destroy() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rhashtable_free_and_destroy(ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3), ptr noundef null, ptr noundef null) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_hash_transport(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.sctp_hash_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #12
  %0 = getelementptr inbounds i8, ptr %arg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %2 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asoc, align 8
  %temp = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 78
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %temp, align 8
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %net = getelementptr inbounds %struct.sctp_ep_common, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 8
  %net2 = getelementptr inbounds %struct.sctp_hash_cmp_arg, ptr %arg, i32 0, i32 1
  %8 = ptrtoint ptr %net2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %net2, align 4
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 6
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ipaddr, ptr %arg, align 4
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %bind_addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bind_addr, align 4
  %lport = getelementptr inbounds %struct.sctp_hash_cmp_arg, ptr %arg, i32 0, i32 2
  %12 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %lport, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call = call fastcc ptr @rhltable_lookup(ptr noundef nonnull %arg, [7 x i32] [i32 0, i32 8, i32 0, i32 256, i32 ptrtoint (ptr @sctp_hash_key to i32), i32 ptrtoint (ptr @sctp_hash_obj to i32), i32 ptrtoint (ptr @sctp_hash_cmp to i32)])
  %tobool5.not105 = icmp eq ptr %call, null
  br i1 %tobool5.not105, label %rcu_read_lock.exit.for.end_crit_edge, label %for.body.lr.ph

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %17 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asoc, align 8
  %ep11 = getelementptr inbounds %struct.sctp_association, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ep11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep11, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp.0106 = phi ptr [ %call, %for.body.lr.ph ], [ %30, %for.inc.for.body_crit_edge ]
  %asoc9 = getelementptr i8, ptr %tmp.0106, i32 144
  %21 = ptrtoint ptr %asoc9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %asoc9, align 8
  %ep = getelementptr inbounds %struct.sctp_association, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ep, align 4
  %cmp = icmp eq ptr %24, %20
  br i1 %cmp, label %if.then12, label %for.inc

if.then12:                                        ; preds = %for.body
  %call.i68 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i68, label %if.then12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i71

if.then12.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i71:                                ; preds = %if.then12
  %call1.i69 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i69)
  %tobool.not.i70 = icmp eq i32 %call1.i69, 0
  br i1 %tobool.not.i70, label %land.lhs.true.i71.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i73

land.lhs.true.i71.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i73:                               ; preds = %land.lhs.true.i71
  %.b4.i72 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i72, label %land.lhs.true2.i73.rcu_read_unlock.exit_crit_edge, label %if.then.i74

land.lhs.true2.i73.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i74:                                      ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.16) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i74, %land.lhs.true2.i73.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i71.rcu_read_unlock.exit_crit_edge, %if.then12.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !98
  %25 = call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i.i.i75 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i75 to ptr
  %preempt_count.i.i.i.i76 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i76, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i76, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.rhlist_head, ptr %tmp.0106, i32 0, i32 1
  %29 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %next, align 4
  %tobool5.not = icmp eq ptr %30, null
  br i1 %tobool5.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i77 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i77, label %for.end.rcu_read_unlock.exit87_crit_edge, label %land.lhs.true.i80

for.end.rcu_read_unlock.exit87_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit87

land.lhs.true.i80:                                ; preds = %for.end
  %call1.i78 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78)
  %tobool.not.i79 = icmp eq i32 %call1.i78, 0
  br i1 %tobool.not.i79, label %land.lhs.true.i80.rcu_read_unlock.exit87_crit_edge, label %land.lhs.true2.i82

land.lhs.true.i80.rcu_read_unlock.exit87_crit_edge: ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit87

land.lhs.true2.i82:                               ; preds = %land.lhs.true.i80
  %.b4.i81 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i81, label %land.lhs.true2.i82.rcu_read_unlock.exit87_crit_edge, label %if.then.i83

land.lhs.true2.i82.rcu_read_unlock.exit87_crit_edge: ; preds = %land.lhs.true2.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit87

if.then.i83:                                      ; preds = %land.lhs.true2.i82
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.16) #12
  br label %rcu_read_unlock.exit87

rcu_read_unlock.exit87:                           ; preds = %if.then.i83, %land.lhs.true2.i82.rcu_read_unlock.exit87_crit_edge, %land.lhs.true.i80.rcu_read_unlock.exit87_crit_edge, %for.end.rcu_read_unlock.exit87_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !98
  %31 = call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i.i.i84 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i84 to ptr
  %preempt_count.i.i.i.i85 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i85, align 4
  %sub.i.i.i86 = add i32 %34, -1
  store volatile i32 %sub.i.i.i86, ptr %preempt_count.i.i.i.i85, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %node = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 1
  %35 = call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %rcu_read_unlock.exit87.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

rcu_read_unlock.exit87.rcu_read_lock.exit.i.i_crit_edge: ; preds = %rcu_read_unlock.exit87
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %rcu_read_unlock.exit87
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %rcu_read_unlock.exit87.rcu_read_lock.exit.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3) to i32))
  %39 = load volatile ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3), align 4
  %call.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b3.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b3.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 715, ptr noundef nonnull @.str.14) #12
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 3) to i32))
  %40 = load i16, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 3), align 2
  %conv.i.i.i.i = zext i16 %40 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %node, i32 %idx.neg.i.i.i.i
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %39, i32 0, i32 2
  %41 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hash_rnd.i.i.i, align 8
  %asoc.i91 = getelementptr inbounds %struct.sctp_transport, ptr %add.ptr.i.i.i.i, i32 0, i32 8
  %43 = ptrtoint ptr %asoc.i91 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %asoc.i91, align 8
  %net.i92 = getelementptr inbounds %struct.sctp_ep_common, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %net.i92 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net.i92, align 8
  %bind_addr.i93 = getelementptr inbounds %struct.sctp_ep_common, ptr %44, i32 0, i32 6
  %47 = ptrtoint ptr %bind_addr.i93 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %bind_addr.i93, align 4
  %ipaddr.i94 = getelementptr inbounds %struct.sctp_transport, ptr %add.ptr.i.i.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %ipaddr.i94 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ipaddr.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %50)
  %cmp.i.i = icmp eq i16 %50, 10
  br i1 %cmp.i.i, label %if.then.i.i96, label %if.else.i.i

if.then.i.i96:                                    ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sin6_addr.i.i = getelementptr inbounds %struct.sctp_transport, ptr %add.ptr.i.i.i.i, i32 0, i32 6, i32 0, i32 3
  %call.i.i95 = call fastcc i32 @jhash(ptr noundef %sin6_addr.i.i, i32 noundef 16, i32 noundef %42) #12
  br label %sctp_hash_obj.exit

if.else.i.i:                                      ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sin_addr.i.i = getelementptr inbounds %struct.sctp_transport, ptr %add.ptr.i.i.i.i, i32 0, i32 6, i32 0, i32 2
  %51 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sin_addr.i.i, align 4
  br label %sctp_hash_obj.exit

sctp_hash_obj.exit:                               ; preds = %if.else.i.i, %if.then.i.i96
  %addr.0.i.i = phi i32 [ %call.i.i95, %if.then.i.i96 ], [ %52, %if.else.i.i ]
  %sin_port.i.i = getelementptr inbounds %struct.sctp_transport, ptr %add.ptr.i.i.i.i, i32 0, i32 6, i32 0, i32 1
  %53 = ptrtoint ptr %sin_port.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %sin_port.i.i, align 2
  %conv2.i.i = zext i16 %54 to i32
  %shl.i.i = shl nuw i32 %conv2.i.i, 16
  %conv3.i.i = zext i16 %48 to i32
  %hash_mix.i.i.i = getelementptr inbounds %struct.net, ptr %46, i32 0, i32 26
  %55 = ptrtoint ptr %hash_mix.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hash_mix.i.i.i, align 8
  %add1.i.i.i = add i32 %42, -559038725
  %add.i.i.i.i = add i32 %addr.0.i.i, %add1.i.i.i
  %or.i.i = add i32 %add1.i.i.i, %conv3.i.i
  %add1.i.i.i.i = add i32 %or.i.i, %shl.i.i
  %add2.i.i.i.i = add i32 %56, %add1.i.i.i
  %xor.i.i.i.i = xor i32 %add1.i.i.i.i, %add2.i.i.i.i
  %or.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i, i32 %add1.i.i.i.i, i32 14) #12
  %sub.i.i.i.i = sub i32 %xor.i.i.i.i, %or.i.i.i.i.i
  %xor3.i.i.i.i = xor i32 %sub.i.i.i.i, %add.i.i.i.i
  %or.i52.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i, i32 %sub.i.i.i.i, i32 11) #12
  %sub5.i.i.i.i = sub i32 %xor3.i.i.i.i, %or.i52.i.i.i.i
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, %add1.i.i.i.i
  %or.i53.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #12
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i53.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, %sub.i.i.i.i
  %or.i54.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #12
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i54.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i55.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #12
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i55.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i56.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #12
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i56.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i57.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i, i32 %sub17.i.i.i.i, i32 24) #12
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i57.i.i.i.i
  %57 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %39, align 128
  %sub.i.i.i.i.i = add i32 %58, -1
  %and.i1.i.i.i.i = and i32 %sub20.i.i.i.i, %sub.i.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %39, i32 0, i32 1
  %59 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i5.i.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i5.i.i, label %cond.false.i8.i.i, label %cond.true.i7.i.i, !prof !83

cond.true.i7.i.i:                                 ; preds = %sctp_hash_obj.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i6.i.i = call ptr @rht_bucket_nested_insert(ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3), ptr noundef %39, i32 noundef %and.i1.i.i.i.i) #12
  br label %rht_bucket_insert.exit.i.i

cond.false.i8.i.i:                                ; preds = %sctp_hash_obj.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %39, i32 0, i32 8, i32 %and.i1.i.i.i.i
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i8.i.i, %cond.true.i7.i.i
  %cond.i9.i.i = phi ptr [ %call.i6.i.i, %cond.true.i7.i.i ], [ %arrayidx.i.i.i, %cond.false.i8.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i9.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  call fastcc void @rht_lock(ptr noundef %39, ptr noundef nonnull %cond.i9.i.i) #12
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %39, i32 0, i32 5
  %61 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %62, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !83

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  call fastcc void @rht_unlock(ptr noundef %39, ptr noundef nonnull %cond.i9.i.i) #12
  %call.i11.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i11.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i14.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i14.i.i:                            ; preds = %slow_path.i.i
  %call1.i12.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i.i)
  %tobool.not.i13.i.i = icmp eq i32 %call1.i12.i.i, 0
  br i1 %tobool.not.i13.i.i, label %land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i16.i.i

land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i16.i.i:                           ; preds = %land.lhs.true.i14.i.i
  %.b4.i15.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i.i, label %land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i17.i.i

land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

if.then.i17.i.i:                                  ; preds = %land.lhs.true2.i16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.16) #12
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i17.i.i, %land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !98
  %63 = call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i.i.i18.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i18.i.i to ptr
  %preempt_count.i.i.i.i19.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i19.i.i, align 4
  %sub.i.i.i20.i.i = add i32 %66, -1
  store volatile i32 %sub.i.i.i20.i.i, ptr %preempt_count.i.i.i.i19.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call29.i.i = call ptr @rhashtable_insert_slow(ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3), ptr noundef nonnull %arg, ptr noundef %node) #12
  br label %rhltable_insert_key.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i21.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %39, i32 noundef %and.i1.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i)
  %tobool.not.i22.i.i = icmp eq i32 %call.i21.i.i, 0
  br i1 %tobool.not.i22.i.i, label %land.lhs.true.i24.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true.i24.i.i:                            ; preds = %if.end30.i.i
  %call1.i23.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i23.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i24.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i25.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

if.then.i25.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 377, ptr noundef nonnull @.str.18) #12
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i25.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %67 = ptrtoint ptr %cond.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cond.i9.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  %and.i.i.i.i = and i32 %69, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %70 = ptrtoint ptr %cond.i9.i.i to i32
  %or.i.i.i.i = or i32 %70, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i82.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82.i.i)
  %tobool.i.not83.i.i = icmp eq i32 %and.i82.i.i, 0
  br i1 %tobool.i.not83.i.i, label %for.body.lr.ph.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i.i

for.body.lr.ph.i.i:                               ; preds = %rht_ptr.exit.i.i
  %71 = inttoptr i32 %cond.i.i.i.i to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end147.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %pprev.086.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %head.085.i.i, %do.end147.i.i.for.body.i.i_crit_edge ]
  %head.085.i.i = phi ptr [ %71, %for.body.lr.ph.i.i ], [ %91, %do.end147.i.i.for.body.i.i_crit_edge ]
  %elasticity.084.i.i = phi i32 [ 16, %for.body.lr.ph.i.i ], [ %dec.i.i, %do.end147.i.i.for.body.i.i_crit_edge ]
  %dec.i.i = add i32 %elasticity.084.i.i, -1
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 3) to i32))
  %72 = load i16, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 3), align 2
  %conv.i28.i.i = zext i16 %72 to i32
  %idx.neg.i29.i.i = sub nsw i32 0, %conv.i28.i.i
  %add.ptr.i30.i.i = getelementptr i8, ptr %head.085.i.i, i32 %idx.neg.i29.i.i
  %ipaddr.i = getelementptr inbounds %struct.sctp_transport, ptr %add.ptr.i30.i.i, i32 0, i32 6
  %73 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arg, align 4
  %call.i88 = call i32 @sctp_cmp_addr_exact(ptr noundef %ipaddr.i, ptr noundef %74) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i89 = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i89, label %for.body.i.i.do.body136.i.i_crit_edge, label %if.end.i

for.body.i.i.do.body136.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136.i.i

if.end.i:                                         ; preds = %for.body.i.i
  %call1.i90 = call i32 @sctp_transport_hold(ptr noundef %add.ptr.i30.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i90)
  %tobool2.not.i = icmp eq i32 %call1.i90, 0
  br i1 %tobool2.not.i, label %if.end.i.do.body136.i.i_crit_edge, label %if.end4.i

if.end.i.do.body136.i.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136.i.i

if.end4.i:                                        ; preds = %if.end.i
  %asoc.i = getelementptr inbounds %struct.sctp_transport, ptr %add.ptr.i30.i.i, i32 0, i32 8
  %75 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %asoc.i, align 8
  %net.i = getelementptr inbounds %struct.sctp_ep_common, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %net.i, align 8
  %79 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net2, align 4
  %cmp.i.not.i = icmp eq ptr %78, %80
  br i1 %cmp.i.not.i, label %sctp_hash_cmp.exit, label %sctp_hash_cmp.exit.thread99

sctp_hash_cmp.exit.thread99:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @sctp_transport_put(ptr noundef %add.ptr.i30.i.i) #12
  br label %do.body136.i.i

sctp_hash_cmp.exit:                               ; preds = %if.end4.i
  %81 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %lport, align 4
  %bind_addr.i = getelementptr inbounds %struct.sctp_ep_common, ptr %76, i32 0, i32 6
  %83 = ptrtoint ptr %bind_addr.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %bind_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %82, i16 %84)
  %cmp.not.i.not = icmp eq i16 %82, %84
  call void @sctp_transport_put(ptr noundef %add.ptr.i30.i.i) #12
  br i1 %cmp.not.i.not, label %if.end46.i.i, label %sctp_hash_cmp.exit.do.body136.i.i_crit_edge

sctp_hash_cmp.exit.do.body136.i.i_crit_edge:      ; preds = %sctp_hash_cmp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136.i.i

if.end46.i.i:                                     ; preds = %sctp_hash_cmp.exit
  %next61.i.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 1, i32 1
  %85 = ptrtoint ptr %next61.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %head.085.i.i, ptr %next61.i.i, align 4
  %call69.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %39, i32 noundef %and.i1.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i.i)
  %tobool70.not.i.i = icmp eq i32 %call69.i.i, 0
  br i1 %tobool70.not.i.i, label %land.lhs.true71.i.i, label %if.end46.i.i.do.end79.i.i_crit_edge

if.end46.i.i.do.end79.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end79.i.i

land.lhs.true71.i.i:                              ; preds = %if.end46.i.i
  %call72.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i.i)
  %tobool73.not.i.i = icmp eq i32 %call72.i.i, 0
  br i1 %tobool73.not.i.i, label %land.lhs.true71.i.i.do.end79.i.i_crit_edge, label %land.lhs.true74.i.i

land.lhs.true71.i.i.do.end79.i.i_crit_edge:       ; preds = %land.lhs.true71.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end79.i.i

land.lhs.true74.i.i:                              ; preds = %land.lhs.true71.i.i
  %.b2812.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.17, align 1
  br i1 %.b2812.i.i, label %land.lhs.true74.i.i.do.end79.i.i_crit_edge, label %if.then76.i.i

land.lhs.true74.i.i.do.end79.i.i_crit_edge:       ; preds = %land.lhs.true74.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end79.i.i

if.then76.i.i:                                    ; preds = %land.lhs.true74.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned.17, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 755, ptr noundef nonnull @.str.18) #12
  br label %do.end79.i.i

do.end79.i.i:                                     ; preds = %if.then76.i.i, %land.lhs.true74.i.i.do.end79.i.i_crit_edge, %land.lhs.true71.i.i.do.end79.i.i_crit_edge, %if.end46.i.i.do.end79.i.i_crit_edge
  %86 = ptrtoint ptr %head.085.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %head.085.i.i, align 4
  %88 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %87, ptr %node, align 4
  %tobool95.not.i.i = icmp eq ptr %pprev.086.i.i, null
  br i1 %tobool95.not.i.i, label %if.else133.i.i, label %do.body97.i.i

do.body97.i.i:                                    ; preds = %do.end79.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !99
  %89 = ptrtoint ptr %pprev.086.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %node, ptr %pprev.086.i.i, align 4
  call fastcc void @rht_unlock(ptr noundef %39, ptr noundef nonnull %cond.i9.i.i) #12
  br label %out.i.i

if.else133.i.i:                                   ; preds = %do.end79.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @rht_assign_unlock(ptr noundef %39, ptr noundef nonnull %cond.i9.i.i, ptr noundef %node) #12
  br label %out.i.i

do.body136.i.i:                                   ; preds = %sctp_hash_cmp.exit.do.body136.i.i_crit_edge, %sctp_hash_cmp.exit.thread99, %if.end.i.do.body136.i.i_crit_edge, %for.body.i.i.do.body136.i.i_crit_edge
  %call137.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %39, i32 noundef %and.i1.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %do.body136.i.i.do.end147.i.i_crit_edge

do.body136.i.i.do.end147.i.i_crit_edge:           ; preds = %do.body136.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %do.body136.i.i
  %call140.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2821.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.19, align 1
  br i1 %.b2821.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned.19, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 732, ptr noundef nonnull @.str.18) #12
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %do.body136.i.i.do.end147.i.i_crit_edge
  %90 = ptrtoint ptr %head.085.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %head.085.i.i, align 4
  %92 = ptrtoint ptr %91 to i32
  %and.i.i.i = and i32 %92, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i_crit_edge, label %for.end.i.i

do.end147.i.i.for.body.i.i_crit_edge:             ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i, label %for.end.i.i.slow_path.i.i_crit_edge, label %for.end.i.i.if.end152.i.i_crit_edge

for.end.i.i.if.end152.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i.i

for.end.i.i.slow_path.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %call.i.i.i37.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8) to i32))
  %93 = load volatile i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 2) to i32))
  %94 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %94)
  %cmp.i.not.i.i = icmp ult i32 %93, %94
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %out_unlock.i.i, !prof !83

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i38.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8) to i32))
  %95 = load volatile i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), align 4
  %96 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %39, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp.i39.i.i = icmp ugt i32 %95, %97
  br i1 %cmp.i39.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 4) to i32))
  %98 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i40.i.i = icmp eq i32 %98, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %98)
  %cmp4.i.i.i = icmp ult i32 %97, %98
  %spec.select.i.i.i = select i1 %tobool.not.i40.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !84

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i41.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %39, i32 noundef %and.i1.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i.i)
  %tobool.not.i42.i.i = icmp eq i32 %call.i41.i.i, 0
  br i1 %tobool.not.i42.i.i, label %land.lhs.true.i45.i.i, label %if.end171.i.i.rht_ptr.exit53.i.i_crit_edge

if.end171.i.i.rht_ptr.exit53.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit53.i.i

land.lhs.true.i45.i.i:                            ; preds = %if.end171.i.i
  %call1.i43.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43.i.i)
  %tobool2.not.i44.i.i = icmp eq i32 %call1.i43.i.i, 0
  br i1 %tobool2.not.i44.i.i, label %land.lhs.true.i45.i.i.rht_ptr.exit53.i.i_crit_edge, label %land.lhs.true3.i47.i.i

land.lhs.true.i45.i.i.rht_ptr.exit53.i.i_crit_edge: ; preds = %land.lhs.true.i45.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit53.i.i

land.lhs.true3.i47.i.i:                           ; preds = %land.lhs.true.i45.i.i
  %.b7.i46.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i46.i.i, label %land.lhs.true3.i47.i.i.rht_ptr.exit53.i.i_crit_edge, label %if.then.i48.i.i

land.lhs.true3.i47.i.i.rht_ptr.exit53.i.i_crit_edge: ; preds = %land.lhs.true3.i47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit53.i.i

if.then.i48.i.i:                                  ; preds = %land.lhs.true3.i47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 377, ptr noundef nonnull @.str.18) #12
  br label %rht_ptr.exit53.i.i

rht_ptr.exit53.i.i:                               ; preds = %if.then.i48.i.i, %land.lhs.true3.i47.i.i.rht_ptr.exit53.i.i_crit_edge, %land.lhs.true.i45.i.i.rht_ptr.exit53.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit53.i.i_crit_edge
  %99 = ptrtoint ptr %cond.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cond.i9.i.i, align 4
  %101 = ptrtoint ptr %100 to i32
  %and.i.i49.i.i = and i32 %101, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i49.i.i)
  %tobool.not.i.i50.i.i = icmp eq i32 %and.i.i49.i.i, 0
  %cond.i.i52.i.i = select i1 %tobool.not.i.i50.i.i, i32 %or.i.i.i.i, i32 %and.i.i49.i.i
  %102 = inttoptr i32 %cond.i.i52.i.i to ptr
  %103 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %102, ptr %node, align 4
  %next198.i.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 1, i32 1
  %104 = ptrtoint ptr %next198.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr null, ptr %next198.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), i32 1, i32 3, i32 1) #12
  %105 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8)) #12, !srcloc !100
  call fastcc void @rht_assign_unlock(ptr noundef %39, ptr noundef nonnull %cond.i9.i.i, ptr noundef %node) #12
  %call.i.i.i54.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8) to i32))
  %106 = load volatile i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), align 4
  %107 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %39, align 128
  %div1.i.i.i = lshr i32 %108, 2
  %mul.i.i.i = mul nuw i32 %div1.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %mul.i.i.i)
  %cmp.i55.i.i = icmp ugt i32 %106, %mul.i.i.i
  br i1 %cmp.i55.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit53.i.i.out.i.i_crit_edge

rht_ptr.exit53.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit53.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit53.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 4) to i32))
  %109 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i56.i.i = icmp eq i32 %109, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %109)
  %cmp4.i57.i.i = icmp ult i32 %108, %109
  %spec.select.i58.i.i = select i1 %tobool.not.i56.i.i, i1 true, i1 %cmp4.i57.i.i
  br i1 %spec.select.i58.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %110 = load ptr, ptr @system_wq, align 4
  %call.i.i60.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %110, ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 5)) #12
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit53.i.i.out.i.i_crit_edge, %if.else133.i.i, %do.body97.i.i, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %data.2.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.out.i.i_crit_edge ], [ null, %if.then207.i.i ], [ null, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge ], [ null, %if.else133.i.i ], [ null, %do.body97.i.i ], [ null, %rht_ptr.exit53.i.i.out.i.i_crit_edge ]
  %call.i61.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i61.i.i, label %out.i.i.rcu_read_unlock.exit71.i.i_crit_edge, label %land.lhs.true.i64.i.i

out.i.i.rcu_read_unlock.exit71.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit71.i.i

land.lhs.true.i64.i.i:                            ; preds = %out.i.i
  %call1.i62.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62.i.i)
  %tobool.not.i63.i.i = icmp eq i32 %call1.i62.i.i, 0
  br i1 %tobool.not.i63.i.i, label %land.lhs.true.i64.i.i.rcu_read_unlock.exit71.i.i_crit_edge, label %land.lhs.true2.i66.i.i

land.lhs.true.i64.i.i.rcu_read_unlock.exit71.i.i_crit_edge: ; preds = %land.lhs.true.i64.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit71.i.i

land.lhs.true2.i66.i.i:                           ; preds = %land.lhs.true.i64.i.i
  %.b4.i65.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i65.i.i, label %land.lhs.true2.i66.i.i.rcu_read_unlock.exit71.i.i_crit_edge, label %if.then.i67.i.i

land.lhs.true2.i66.i.i.rcu_read_unlock.exit71.i.i_crit_edge: ; preds = %land.lhs.true2.i66.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit71.i.i

if.then.i67.i.i:                                  ; preds = %land.lhs.true2.i66.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.16) #12
  br label %rcu_read_unlock.exit71.i.i

rcu_read_unlock.exit71.i.i:                       ; preds = %if.then.i67.i.i, %land.lhs.true2.i66.i.i.rcu_read_unlock.exit71.i.i_crit_edge, %land.lhs.true.i64.i.i.rcu_read_unlock.exit71.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit71.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !98
  %111 = call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i.i.i68.i.i = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i.i.i68.i.i to ptr
  %preempt_count.i.i.i.i69.i.i = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %preempt_count.i.i.i.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %preempt_count.i.i.i.i69.i.i, align 4
  %sub.i.i.i70.i.i = add i32 %114, -1
  store volatile i32 %sub.i.i.i70.i.i, ptr %preempt_count.i.i.i.i69.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %rhltable_insert_key.exit

out_unlock.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @rht_unlock(ptr noundef %39, ptr noundef nonnull %cond.i9.i.i) #12
  br label %out.i.i

rhltable_insert_key.exit:                         ; preds = %rcu_read_unlock.exit71.i.i, %rcu_read_unlock.exit.i.i
  %retval.0.i.i = phi ptr [ %call29.i.i, %rcu_read_unlock.exit.i.i ], [ %data.2.i.i, %rcu_read_unlock.exit71.i.i ]
  %115 = ptrtoint ptr %retval.0.i.i to i32
  %tobool17.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool17.not, label %rhltable_insert_key.exit.cleanup_crit_edge, label %land.end22

rhltable_insert_key.exit.cleanup_crit_edge:       ; preds = %rhltable_insert_key.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.end22:                                       ; preds = %rhltable_insert_key.exit
  %.b67 = load i1, ptr @sctp_hash_transport.__already_done, align 1
  br i1 %.b67, label %land.end22.cleanup_crit_edge, label %if.then26, !prof !83

land.end22.cleanup_crit_edge:                     ; preds = %land.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then26:                                        ; preds = %land.end22
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @sctp_hash_transport.__already_done, align 1
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %115) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.end22.cleanup_crit_edge, %rhltable_insert_key.exit.cleanup_crit_edge, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ], [ %115, %land.end22.cleanup_crit_edge ], [ %115, %if.then26 ], [ 0, %rhltable_insert_key.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhltable_lookup(ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #2 align 64 {
entry:
  %arg.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %params.coerce.fca.6.extract.i = extractvalue [7 x i32] %params.coerce, 6
  %0 = inttoptr i32 %params.coerce.fca.6.extract.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #12
  %1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i, i32 0, i32 1
  %2 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3), ptr %arg.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3) to i32))
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3), align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.end12.i_crit_edge

entry.do.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %entry
  %call5.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 594, ptr noundef nonnull @.str.14) #12
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %entry.do.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i)
  %tobool19.not.i = icmp eq i32 %params.coerce.fca.6.extract.i, 0
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %do.end60.i.if.then.i.i.i_crit_edge, %do.end12.i
  %tbl.0.i = phi ptr [ %4, %do.end12.i ], [ %32, %do.end60.i.if.then.i.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hash_rnd.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 7), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 1) to i32))
  %8 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 1), align 4
  %call.i.i.i = call i32 %7(ptr noundef %key, i32 noundef %8, i32 noundef %6) #12
  %9 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i = add i32 %10, -1
  %and.i1.i.i = and i32 %sub.i.i.i, %call.i.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !prof !83

cond.true.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i1.i.i) #12
  br label %rht_bucket.exit.i

cond.false.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i1.i.i
  br label %rht_bucket.exit.i

rht_bucket.exit.i:                                ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi ptr [ %call.i.i, %cond.true.i.i ], [ %arrayidx.i.i, %cond.false.i.i ]
  %13 = ptrtoint ptr %cond.i.i to i32
  %or.i.i.i = or i32 %13, 1
  %14 = inttoptr i32 %or.i.i.i to ptr
  br label %do.body16.i

do.body16.i:                                      ; preds = %do.cond34.i.do.body16.i_crit_edge, %rht_bucket.exit.i
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  %15 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %cond.i.i, align 4
  %call.i3.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i.i, label %do.body16.i.rht_ptr_rcu.exit.i_crit_edge

do.body16.i.rht_ptr_rcu.exit.i_crit_edge:         ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %do.body16.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge:  ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 369, ptr noundef nonnull @.str.14) #12
  br label %rht_ptr_rcu.exit.i

rht_ptr_rcu.exit.i:                               ; preds = %if.then.i.i, %land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge, %land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge, %do.body16.i.rht_ptr_rcu.exit.i_crit_edge
  %17 = ptrtoint ptr %16 to i32
  %and.i.i5.i = and i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i5.i)
  %tobool.not.i.i6.i = icmp eq i32 %and.i.i5.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i6.i, i32 %or.i.i.i, i32 %and.i.i5.i
  %18 = inttoptr i32 %cond.i.i.i to ptr
  %and.i15.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i)
  %tobool.i.not16.i = icmp eq i32 %and.i15.i, 0
  br i1 %tobool.i.not16.i, label %rht_ptr_rcu.exit.i.for.body.i_crit_edge, label %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge

rht_ptr_rcu.exit.i.do.cond34.i_crit_edge:         ; preds = %rht_ptr_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i

rht_ptr_rcu.exit.i.for.body.i_crit_edge:          ; preds = %rht_ptr_rcu.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %rht_ptr_rcu.exit.i.for.body.i_crit_edge
  %he.017.i = phi ptr [ %29, %for.inc.i.for.body.i_crit_edge ], [ %18, %rht_ptr_rcu.exit.i.for.body.i_crit_edge ]
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 3) to i32))
  %19 = load i16, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 3), align 2
  %conv.i7.i = zext i16 %19 to i32
  %idx.neg.i8.i = sub nsw i32 0, %conv.i7.i
  %add.ptr.i9.i = getelementptr i8, ptr %he.017.i, i32 %idx.neg.i8.i
  br i1 %tobool19.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %for.body.i
  %call22.i = call i32 %0(ptr noundef nonnull %arg.i, ptr noundef %add.ptr.i9.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %cond.true.i.__rhashtable_lookup.exit_crit_edge, label %cond.true.i.for.inc.i_crit_edge

cond.true.i.for.inc.i_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

cond.true.i.__rhashtable_lookup.exit_crit_edge:   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit

cond.false.i:                                     ; preds = %for.body.i
  %20 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arg.i, align 4
  %key_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %21, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %key_offset.i.i, align 4
  %conv.i10.i = zext i16 %23 to i32
  %add.ptr.i11.i = getelementptr i8, ptr %add.ptr.i9.i, i32 %conv.i10.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %key_len.i.i = getelementptr inbounds %struct.rhashtable, ptr %21, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %key_len.i.i, align 2
  %conv3.i.i = zext i16 %27 to i32
  %bcmp.i = call i32 @bcmp(ptr %add.ptr.i11.i, ptr %25, i32 %conv3.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool26.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool26.not.i, label %cond.false.i.__rhashtable_lookup.exit_crit_edge, label %cond.false.i.for.inc.i_crit_edge

cond.false.i.for.inc.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

cond.false.i.__rhashtable_lookup.exit_crit_edge:  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit

for.inc.i:                                        ; preds = %cond.false.i.for.inc.i_crit_edge, %cond.true.i.for.inc.i_crit_edge
  %28 = ptrtoint ptr %he.017.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %he.017.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %and.i.i = and i32 %30, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.cond34.i_crit_edge

for.inc.i.do.cond34.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.cond34.i:                                      ; preds = %for.inc.i.do.cond34.i_crit_edge, %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge
  %he.0.lcssa.i = phi ptr [ %18, %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge ], [ %29, %for.inc.i.do.cond34.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %he.0.lcssa.i, %14
  br i1 %cmp.not.i, label %do.end39.i, label %do.cond34.i.do.body16.i_crit_edge

do.cond34.i.do.body16.i_crit_edge:                ; preds = %do.cond34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i

do.end39.i:                                       ; preds = %do.cond34.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !102
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %31 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %future_tbl.i, align 4
  %call47.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %lor.lhs.false49.i, label %do.end39.i.do.end60.i_crit_edge

do.end39.i.do.end60.i_crit_edge:                  ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i

lor.lhs.false49.i:                                ; preds = %do.end39.i
  %call50.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true52.i, label %lor.lhs.false49.i.do.end60.i_crit_edge

lor.lhs.false49.i.do.end60.i_crit_edge:           ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i

land.lhs.true52.i:                                ; preds = %lor.lhs.false49.i
  %call53.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %land.lhs.true52.i.do.end60.i_crit_edge, label %land.lhs.true55.i

land.lhs.true52.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i

land.lhs.true55.i:                                ; preds = %land.lhs.true52.i
  %.b901.i = load i1, ptr @__rhashtable_lookup.__warned.15, align 1
  br i1 %.b901.i, label %land.lhs.true55.i.do.end60.i_crit_edge, label %if.then57.i

land.lhs.true55.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i

if.then57.i:                                      ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned.15, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 614, ptr noundef nonnull @.str.14) #12
  br label %do.end60.i

do.end60.i:                                       ; preds = %if.then57.i, %land.lhs.true55.i.do.end60.i_crit_edge, %land.lhs.true52.i.do.end60.i_crit_edge, %lor.lhs.false49.i.do.end60.i_crit_edge, %do.end39.i.do.end60.i_crit_edge
  %tobool62.not.i = icmp eq ptr %32, null
  br i1 %tobool62.not.i, label %do.end60.i.__rhashtable_lookup.exit_crit_edge, label %do.end60.i.if.then.i.i.i_crit_edge, !prof !83

do.end60.i.if.then.i.i.i_crit_edge:               ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

do.end60.i.__rhashtable_lookup.exit_crit_edge:    ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit

__rhashtable_lookup.exit:                         ; preds = %do.end60.i.__rhashtable_lookup.exit_crit_edge, %cond.false.i.__rhashtable_lookup.exit_crit_edge, %cond.true.i.__rhashtable_lookup.exit_crit_edge
  %retval.0.i = phi ptr [ %he.017.i, %cond.false.i.__rhashtable_lookup.exit_crit_edge ], [ %he.017.i, %cond.true.i.__rhashtable_lookup.exit_crit_edge ], [ null, %do.end60.i.__rhashtable_lookup.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #12
  ret ptr %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_unhash_transport(ptr noundef readonly %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 8
  %temp = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 78
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %temp, align 8
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %node = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 1
  %4 = tail call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %if.end.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.rcu_read_lock.exit.i.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.rcu_read_lock.exit.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3) to i32))
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3), align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.while.cond.i.i.preheader_crit_edge

rcu_read_lock.exit.i.i.while.cond.i.i.preheader_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.preheader

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.while.cond.i.i.preheader_crit_edge

lor.lhs.false.i.i.while.cond.i.i.preheader_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.preheader

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.while.cond.i.i.preheader_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.while.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.preheader

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true7.i.i.while.cond.i.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true7.i.i.while.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1076, ptr noundef nonnull @.str.14) #12
  br label %while.cond.i.i.preheader

while.cond.i.i.preheader:                         ; preds = %if.then.i.i, %land.lhs.true7.i.i.while.cond.i.i.preheader_crit_edge, %land.lhs.true.i.i.while.cond.i.i.preheader_crit_edge, %lor.lhs.false.i.i.while.cond.i.i.preheader_crit_edge, %rcu_read_lock.exit.i.i.while.cond.i.i.preheader_crit_edge
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end33.i.i.while.cond.i.i_crit_edge, %while.cond.i.i.preheader
  %tbl.0.i.i = phi ptr [ %57, %do.end33.i.i.while.cond.i.i_crit_edge ], [ %8, %while.cond.i.i.preheader ]
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 3) to i32))
  %9 = load i16, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 3), align 2
  %conv.i.i.i.i.i = zext i16 %9 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %node, i32 %idx.neg.i.i.i.i.i
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %asoc.i = getelementptr inbounds %struct.sctp_transport, ptr %add.ptr.i.i.i.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asoc.i, align 8
  %net.i = getelementptr inbounds %struct.sctp_ep_common, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i, align 8
  %bind_addr.i = getelementptr inbounds %struct.sctp_ep_common, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %bind_addr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bind_addr.i, align 4
  %ipaddr.i = getelementptr inbounds %struct.sctp_transport, ptr %add.ptr.i.i.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %ipaddr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ipaddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %19)
  %cmp.i.i = icmp eq i16 %19, 10
  br i1 %cmp.i.i, label %if.then.i.i9, label %if.else.i.i

if.then.i.i9:                                     ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sin6_addr.i.i = getelementptr inbounds %struct.sctp_transport, ptr %add.ptr.i.i.i.i.i, i32 0, i32 6, i32 0, i32 3
  %call.i.i8 = tail call fastcc i32 @jhash(ptr noundef %sin6_addr.i.i, i32 noundef 16, i32 noundef %11) #12
  br label %sctp_hash_obj.exit

if.else.i.i:                                      ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sin_addr.i.i = getelementptr inbounds %struct.sctp_transport, ptr %add.ptr.i.i.i.i.i, i32 0, i32 6, i32 0, i32 2
  %20 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sin_addr.i.i, align 4
  br label %sctp_hash_obj.exit

sctp_hash_obj.exit:                               ; preds = %if.else.i.i, %if.then.i.i9
  %addr.0.i.i = phi i32 [ %call.i.i8, %if.then.i.i9 ], [ %21, %if.else.i.i ]
  %sin_port.i.i = getelementptr inbounds %struct.sctp_transport, ptr %add.ptr.i.i.i.i.i, i32 0, i32 6, i32 0, i32 1
  %22 = ptrtoint ptr %sin_port.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sin_port.i.i, align 2
  %conv2.i.i = zext i16 %23 to i32
  %shl.i.i = shl nuw i32 %conv2.i.i, 16
  %conv3.i.i = zext i16 %17 to i32
  %hash_mix.i.i.i = getelementptr inbounds %struct.net, ptr %15, i32 0, i32 26
  %24 = ptrtoint ptr %hash_mix.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hash_mix.i.i.i, align 8
  %add1.i.i.i = add i32 %11, -559038725
  %add.i.i.i.i = add i32 %addr.0.i.i, %add1.i.i.i
  %or.i.i = add i32 %add1.i.i.i, %conv3.i.i
  %add1.i.i.i.i = add i32 %or.i.i, %shl.i.i
  %add2.i.i.i.i = add i32 %25, %add1.i.i.i
  %xor.i.i.i.i = xor i32 %add1.i.i.i.i, %add2.i.i.i.i
  %or.i.i.i.i.i10 = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i, i32 %add1.i.i.i.i, i32 14) #12
  %sub.i.i.i.i = sub i32 %xor.i.i.i.i, %or.i.i.i.i.i10
  %xor3.i.i.i.i = xor i32 %sub.i.i.i.i, %add.i.i.i.i
  %or.i52.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i, i32 %sub.i.i.i.i, i32 11) #12
  %sub5.i.i.i.i = sub i32 %xor3.i.i.i.i, %or.i52.i.i.i.i
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, %add1.i.i.i.i
  %or.i53.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #12
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i53.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, %sub.i.i.i.i
  %or.i54.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #12
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i54.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i55.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #12
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i55.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i56.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #12
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i56.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i57.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i, i32 %sub17.i.i.i.i, i32 24) #12
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i57.i.i.i.i
  %26 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i.i.i = add i32 %27, -1
  %and.i1.i.i.i.i.i = and i32 %sub20.i.i.i.i, %sub.i.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i6.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i6.i.i.i, label %cond.false.i8.i.i.i, label %cond.true.i7.i.i.i, !prof !83

cond.true.i7.i.i.i:                               ; preds = %sctp_hash_obj.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i1.i.i.i.i.i) #12
  br label %rht_bucket_var.exit.i.i.i

cond.false.i8.i.i.i:                              ; preds = %sctp_hash_obj.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i1.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i

rht_bucket_var.exit.i.i.i:                        ; preds = %cond.false.i8.i.i.i, %cond.true.i7.i.i.i
  %cond.i9.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i7.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i8.i.i.i ]
  %tobool.not.i3.i.i = icmp eq ptr %cond.i9.i.i.i, null
  br i1 %tobool.not.i3.i.i, label %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge, label %if.end.i.i.i

rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

if.end.i.i.i:                                     ; preds = %rht_bucket_var.exit.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i9.i.i.i) #12
  %call.i11.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i1.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i.i)
  %tobool.not.i12.i.i.i = icmp eq i32 %call.i11.i.i.i, 0
  br i1 %tobool.not.i12.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 377, ptr noundef nonnull @.str.18) #12
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %30 = ptrtoint ptr %cond.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cond.i9.i.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %and.i.i.i.i.i = and i32 %32, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %33 = ptrtoint ptr %cond.i9.i.i.i to i32
  %or.i.i.i.i.i = or i32 %33, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i34.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i.i.i)
  %tobool.i.not35.i.i.i = icmp eq i32 %and.i34.i.i.i, 0
  br i1 %tobool.i.not35.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.__rhashtable_remove_fast_one.exit.thread21.i.i_crit_edge

rht_ptr.exit.i.i.i.__rhashtable_remove_fast_one.exit.thread21.i.i_crit_edge: ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast_one.exit.thread21.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %34 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %cmp.not.i35.i.i = icmp eq ptr %node, %34
  br i1 %cmp.not.i35.i.i, label %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.preheader.i.i.i.do.body.i.preheader.i.i_crit_edge

for.body.preheader.i.i.i.do.body.i.preheader.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  br label %do.body.i.preheader.i.i

for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i.i

for.body.i.i.i:                                   ; preds = %do.end156.i.i.i
  %cmp.not.i.i.i = icmp eq ptr %44, %node
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.i.i.i.do.body.i.preheader.i.i_crit_edge

for.body.i.i.i.do.body.i.preheader.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.preheader.i.i

for.body.i.i.i.do.body54.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i.i

do.body.i.preheader.i.i:                          ; preds = %for.body.i.i.i.do.body.i.preheader.i.i_crit_edge, %for.body.preheader.i.i.i.do.body.i.preheader.i.i_crit_edge
  %he.036.i36.i.i = phi ptr [ %44, %for.body.i.i.i.do.body.i.preheader.i.i_crit_edge ], [ %34, %for.body.preheader.i.i.i.do.body.i.preheader.i.i_crit_edge ]
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.end.i.i.i.do.body.i.i.i_crit_edge, %do.body.i.preheader.i.i
  %list.0.i.i.i = phi ptr [ %36, %do.end.i.i.i.do.body.i.i.i_crit_edge ], [ %he.036.i36.i.i, %do.body.i.preheader.i.i ]
  %next8.i.i.i = getelementptr inbounds %struct.rhlist_head, ptr %list.0.i.i.i, i32 0, i32 1
  %call10.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i1.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %land.lhs.true.i4.i.i, label %do.body.i.i.i.do.end.i.i.i_crit_edge

do.body.i.i.i.do.end.i.i.i_crit_edge:             ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

land.lhs.true.i4.i.i:                             ; preds = %do.body.i.i.i
  %call12.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %call12.i.i.i, 0
  br i1 %tobool13.not.i.i.i, label %land.lhs.true.i4.i.i.do.end.i.i.i_crit_edge, label %land.lhs.true14.i.i.i

land.lhs.true.i4.i.i.do.end.i.i.i_crit_edge:      ; preds = %land.lhs.true.i4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

land.lhs.true14.i.i.i:                            ; preds = %land.lhs.true.i4.i.i
  %.b5.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned, align 1
  br i1 %.b5.i.i.i, label %land.lhs.true14.i.i.i.do.end.i.i.i_crit_edge, label %if.then16.i.i.i

land.lhs.true14.i.i.i.do.end.i.i.i_crit_edge:     ; preds = %land.lhs.true14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

if.then16.i.i.i:                                  ; preds = %land.lhs.true14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1020, ptr noundef nonnull @.str.18) #12
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then16.i.i.i, %land.lhs.true14.i.i.i.do.end.i.i.i_crit_edge, %land.lhs.true.i4.i.i.do.end.i.i.i_crit_edge, %do.body.i.i.i.do.end.i.i.i_crit_edge
  %35 = ptrtoint ptr %next8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %next8.i.i.i, align 4
  %tobool21.not.i.i.i = icmp eq ptr %36, null
  %cmp22.not.i.i.i = icmp eq ptr %36, %node
  %or.cond.i.i.i = or i1 %tobool21.not.i.i.i, %cmp22.not.i.i.i
  br i1 %or.cond.i.i.i, label %do.end23.i.i.i, label %do.end.i.i.i.do.body.i.i.i_crit_edge

do.end.i.i.i.do.body.i.i.i_crit_edge:             ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

do.end23.i.i.i:                                   ; preds = %do.end.i.i.i
  %call146.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i1.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i)
  %tobool147.not.i.i.i = icmp eq i32 %call146.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %do.body145.i.i.i, label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.end23.i.i.i
  br i1 %tobool147.not.i.i.i, label %land.lhs.true30.i.i.i, label %do.body27.i.i.i.__rhashtable_remove_fast_one.exit.i.i_crit_edge

do.body27.i.i.i.__rhashtable_remove_fast_one.exit.i.i_crit_edge: ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast_one.exit.i.i

land.lhs.true30.i.i.i:                            ; preds = %do.body27.i.i.i
  %call31.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %call31.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %land.lhs.true30.i.i.i.__rhashtable_remove_fast_one.exit.i.i_crit_edge, label %land.lhs.true33.i.i.i

land.lhs.true30.i.i.i.__rhashtable_remove_fast_one.exit.i.i_crit_edge: ; preds = %land.lhs.true30.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast_one.exit.i.i

land.lhs.true33.i.i.i:                            ; preds = %land.lhs.true30.i.i.i
  %.b2284.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.21, align 1
  br i1 %.b2284.i.i.i, label %land.lhs.true33.i.i.i.__rhashtable_remove_fast_one.exit.i.i_crit_edge, label %if.then35.i.i.i

land.lhs.true33.i.i.i.__rhashtable_remove_fast_one.exit.i.i_crit_edge: ; preds = %land.lhs.true33.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast_one.exit.i.i

if.then35.i.i.i:                                  ; preds = %land.lhs.true33.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1026, ptr noundef nonnull @.str.18) #12
  br label %__rhashtable_remove_fast_one.exit.i.i

do.body54.i.i.i:                                  ; preds = %for.body.i.i.i.do.body54.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge
  %pprev.037.i.lcssa.i.i = phi ptr [ %he.036.i36.i.i, %for.body.i.i.i.do.body54.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge ]
  %call55.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i1.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i)
  %tobool56.not.i.i.i = icmp eq i32 %call55.i.i.i, 0
  br i1 %tobool56.not.i.i.i, label %land.lhs.true57.i.i.i, label %do.body54.i.i.i.do.end65.i.i.i_crit_edge

do.body54.i.i.i.do.end65.i.i.i_crit_edge:         ; preds = %do.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i.i

land.lhs.true57.i.i.i:                            ; preds = %do.body54.i.i.i
  %call58.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i)
  %tobool59.not.i.i.i = icmp eq i32 %call58.i.i.i, 0
  br i1 %tobool59.not.i.i.i, label %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, label %land.lhs.true60.i.i.i

land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true57.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %land.lhs.true57.i.i.i
  %.b2293.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.22, align 1
  br i1 %.b2293.i.i.i, label %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, label %if.then62.i.i.i

land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i.i

if.then62.i.i.i:                                  ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1032, ptr noundef nonnull @.str.18) #12
  br label %do.end65.i.i.i

do.end65.i.i.i:                                   ; preds = %if.then62.i.i.i, %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, %do.body54.i.i.i.do.end65.i.i.i_crit_edge
  %37 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %node, align 4
  %call71.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i1.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i.i.i)
  %tobool72.not.i.i.i = icmp eq i32 %call71.i.i.i, 0
  br i1 %tobool72.not.i.i.i, label %land.lhs.true73.i.i.i, label %do.end65.i.i.i.do.end81.i.i.i_crit_edge

do.end65.i.i.i.do.end81.i.i.i_crit_edge:          ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81.i.i.i

land.lhs.true73.i.i.i:                            ; preds = %do.end65.i.i.i
  %call74.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i.i.i)
  %tobool75.not.i.i.i = icmp eq i32 %call74.i.i.i, 0
  br i1 %tobool75.not.i.i.i, label %land.lhs.true73.i.i.i.do.end81.i.i.i_crit_edge, label %land.lhs.true76.i.i.i

land.lhs.true73.i.i.i.do.end81.i.i.i_crit_edge:   ; preds = %land.lhs.true73.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81.i.i.i

land.lhs.true76.i.i.i:                            ; preds = %land.lhs.true73.i.i.i
  %.b2302.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.23, align 1
  br i1 %.b2302.i.i.i, label %land.lhs.true76.i.i.i.do.end81.i.i.i_crit_edge, label %if.then78.i.i.i

land.lhs.true76.i.i.i.do.end81.i.i.i_crit_edge:   ; preds = %land.lhs.true76.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81.i.i.i

if.then78.i.i.i:                                  ; preds = %land.lhs.true76.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1036, ptr noundef nonnull @.str.18) #12
  br label %do.end81.i.i.i

do.end81.i.i.i:                                   ; preds = %if.then78.i.i.i, %land.lhs.true76.i.i.i.do.end81.i.i.i_crit_edge, %land.lhs.true73.i.i.i.do.end81.i.i.i_crit_edge, %do.end65.i.i.i.do.end81.i.i.i_crit_edge
  %next83.i.i.i = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %next83.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %next83.i.i.i, align 4
  %tobool84.not.i.i.i = icmp eq ptr %40, null
  br i1 %tobool84.not.i.i.i, label %do.end81.i.i.i.if.end102.i.i.i_crit_edge, label %do.body91.i.i.i

do.end81.i.i.i.if.end102.i.i.i_crit_edge:         ; preds = %do.end81.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102.i.i.i

do.body91.i.i.i:                                  ; preds = %do.end81.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %38, ptr %40, align 4
  br label %if.end102.i.i.i

if.end102.i.i.i:                                  ; preds = %do.body91.i.i.i, %do.end81.i.i.i.if.end102.i.i.i_crit_edge
  %obj.addr.1.i.i.i = phi ptr [ %40, %do.body91.i.i.i ], [ %38, %do.end81.i.i.i.if.end102.i.i.i_crit_edge ]
  %tobool103.not.i.i.i = icmp eq ptr %pprev.037.i.lcssa.i.i, null
  br i1 %tobool103.not.i.i.i, label %if.else142.i.i.i, label %do.body105.i.i.i

do.body105.i.i.i:                                 ; preds = %if.end102.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  %42 = ptrtoint ptr %pprev.037.i.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %obj.addr.1.i.i.i, ptr %pprev.037.i.lcssa.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i9.i.i.i) #12
  br label %unlocked.i.i.i

if.else142.i.i.i:                                 ; preds = %if.end102.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i9.i.i.i, ptr noundef %obj.addr.1.i.i.i) #12
  br label %unlocked.i.i.i

do.body145.i.i.i:                                 ; preds = %do.end23.i.i.i
  br i1 %tobool147.not.i.i.i, label %land.lhs.true148.i.i.i, label %do.body145.i.i.i.do.end156.i.i.i_crit_edge

do.body145.i.i.i.do.end156.i.i.i_crit_edge:       ; preds = %do.body145.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i.i

land.lhs.true148.i.i.i:                           ; preds = %do.body145.i.i.i
  %call149.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i)
  %tobool150.not.i.i.i = icmp eq i32 %call149.i.i.i, 0
  br i1 %tobool150.not.i.i.i, label %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, label %land.lhs.true151.i.i.i

land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i.i

land.lhs.true151.i.i.i:                           ; preds = %land.lhs.true148.i.i.i
  %.b2311.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.24, align 1
  br i1 %.b2311.i.i.i, label %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, label %if.then153.i.i.i

land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i.i

if.then153.i.i.i:                                 ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1004, ptr noundef nonnull @.str.18) #12
  br label %do.end156.i.i.i

do.end156.i.i.i:                                  ; preds = %if.then153.i.i.i, %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, %do.body145.i.i.i.do.end156.i.i.i_crit_edge
  %43 = ptrtoint ptr %he.036.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %he.036.i36.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  %and.i.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i.i, label %do.end156.i.i.i.__rhashtable_remove_fast_one.exit.thread21.i.i_crit_edge

do.end156.i.i.i.__rhashtable_remove_fast_one.exit.thread21.i.i_crit_edge: ; preds = %do.end156.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast_one.exit.thread21.i.i

unlocked.i.i.i:                                   ; preds = %if.else142.i.i.i, %do.body105.i.i.i
  br i1 %tobool84.not.i.i.i, label %if.then160.i.i.i, label %unlocked.i.i.i.while.end.i.i_crit_edge

unlocked.i.i.i.while.end.i.i_crit_edge:           ; preds = %unlocked.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

if.then160.i.i.i:                                 ; preds = %unlocked.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), i32 1, i32 3, i32 1) #12
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8)) #12, !srcloc !104
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 6) to i32))
  %47 = load i8, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 6), align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool161.not.i.i.i = icmp eq i8 %47, 0
  br i1 %tobool161.not.i.i.i, label %if.then160.i.i.i.while.end.i.i_crit_edge, label %land.rhs162.i.i.i

if.then160.i.i.i.while.end.i.i_crit_edge:         ; preds = %if.then160.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

land.rhs162.i.i.i:                                ; preds = %if.then160.i.i.i
  %call.i.i.i13.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8) to i32))
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 8), align 4
  %49 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tbl.0.i.i, align 128
  %mul.i.i.i.i = mul i32 %50, 3
  %div.i.i.i.i = udiv i32 %mul.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %div.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %48, %div.i.i.i.i
  br i1 %cmp.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i, label %land.rhs162.i.i.i.while.end.i.i_crit_edge

land.rhs162.i.i.i.while.end.i.i_crit_edge:        ; preds = %land.rhs162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

rht_shrink_below_30.exit.i.i.i:                   ; preds = %land.rhs162.i.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 5) to i32))
  %51 = load i16, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 3, i32 5), align 4
  %conv.i14.i.i.i = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv.i14.i.i.i)
  %cmp2.i.i.i.i = icmp ugt i32 %50, %conv.i14.i.i.i
  br i1 %cmp2.i.i.i.i, label %if.then168.i.i.i, label %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, !prof !84

rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

if.then168.i.i.i:                                 ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %52 = load ptr, ptr @system_wq, align 4
  %call.i.i15.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %52, ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3, i32 0, i32 5)) #12
  br label %while.end.i.i

__rhashtable_remove_fast_one.exit.thread21.i.i:   ; preds = %do.end156.i.i.i.__rhashtable_remove_fast_one.exit.thread21.i.i_crit_edge, %rht_ptr.exit.i.i.i.__rhashtable_remove_fast_one.exit.thread21.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i9.i.i.i) #12
  br label %land.rhs.i.i

__rhashtable_remove_fast_one.exit.i.i:            ; preds = %if.then35.i.i.i, %land.lhs.true33.i.i.i.__rhashtable_remove_fast_one.exit.i.i_crit_edge, %land.lhs.true30.i.i.i.__rhashtable_remove_fast_one.exit.i.i_crit_edge, %do.body27.i.i.i.__rhashtable_remove_fast_one.exit.i.i_crit_edge
  %next40.i.i.i = getelementptr inbounds %struct.rhlist_head, ptr %36, i32 0, i32 1
  %53 = ptrtoint ptr %next40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %next40.i.i.i, align 4
  %55 = ptrtoint ptr %next8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %54, ptr %next8.i.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i9.i.i.i) #12
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %__rhashtable_remove_fast_one.exit.thread21.i.i, %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call20.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 3)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %lor.lhs.false22.i.i, label %land.rhs.i.i.do.end33.i.i_crit_edge

land.rhs.i.i.do.end33.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

lor.lhs.false22.i.i:                              ; preds = %land.rhs.i.i
  %call23.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true25.i.i, label %lor.lhs.false22.i.i.do.end33.i.i_crit_edge

lor.lhs.false22.i.i.do.end33.i.i_crit_edge:       ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

land.lhs.true25.i.i:                              ; preds = %lor.lhs.false22.i.i
  %call26.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true25.i.i.do.end33.i.i_crit_edge, label %land.lhs.true28.i.i

land.lhs.true25.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true25.i.i
  %.b401.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.20, align 1
  br i1 %.b401.i.i, label %land.lhs.true28.i.i.do.end33.i.i_crit_edge, label %if.then30.i.i

land.lhs.true28.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

if.then30.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1085, ptr noundef nonnull @.str.14) #12
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.then30.i.i, %land.lhs.true28.i.i.do.end33.i.i_crit_edge, %land.lhs.true25.i.i.do.end33.i.i_crit_edge, %lor.lhs.false22.i.i.do.end33.i.i_crit_edge, %land.rhs.i.i.do.end33.i.i_crit_edge
  %tobool35.not.i.i = icmp eq ptr %57, null
  br i1 %tobool35.not.i.i, label %do.end33.i.i.while.end.i.i_crit_edge, label %do.end33.i.i.while.cond.i.i_crit_edge

do.end33.i.i.while.cond.i.i_crit_edge:            ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

do.end33.i.i.while.end.i.i_crit_edge:             ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end33.i.i.while.end.i.i_crit_edge, %__rhashtable_remove_fast_one.exit.i.i, %if.then168.i.i.i, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, %land.rhs162.i.i.i.while.end.i.i_crit_edge, %if.then160.i.i.i.while.end.i.i_crit_edge, %unlocked.i.i.i.while.end.i.i_crit_edge
  %call.i5.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i5.i.i, label %while.end.i.i.rhltable_remove.exit_crit_edge, label %land.lhs.true.i8.i.i

while.end.i.i.rhltable_remove.exit_crit_edge:     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhltable_remove.exit

land.lhs.true.i8.i.i:                             ; preds = %while.end.i.i
  %call1.i6.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6.i.i)
  %tobool.not.i7.i.i = icmp eq i32 %call1.i6.i.i, 0
  br i1 %tobool.not.i7.i.i, label %land.lhs.true.i8.i.i.rhltable_remove.exit_crit_edge, label %land.lhs.true2.i10.i.i

land.lhs.true.i8.i.i.rhltable_remove.exit_crit_edge: ; preds = %land.lhs.true.i8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhltable_remove.exit

land.lhs.true2.i10.i.i:                           ; preds = %land.lhs.true.i8.i.i
  %.b4.i9.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9.i.i, label %land.lhs.true2.i10.i.i.rhltable_remove.exit_crit_edge, label %if.then.i11.i.i

land.lhs.true2.i10.i.i.rhltable_remove.exit_crit_edge: ; preds = %land.lhs.true2.i10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhltable_remove.exit

if.then.i11.i.i:                                  ; preds = %land.lhs.true2.i10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.16) #12
  br label %rhltable_remove.exit

rhltable_remove.exit:                             ; preds = %if.then.i11.i.i, %land.lhs.true2.i10.i.i.rhltable_remove.exit_crit_edge, %land.lhs.true.i8.i.i.rhltable_remove.exit_crit_edge, %while.end.i.i.rhltable_remove.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !98
  %58 = tail call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i.i.i12.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i12.i.i to ptr
  %preempt_count.i.i.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i13.i.i, align 4
  %sub.i.i.i.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i13.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %return

return:                                           ; preds = %rhltable_remove.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_addrs_lookup_transport(ptr noundef %net, ptr noundef %laddr, ptr noundef %paddr) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.sctp_hash_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #12
  %0 = getelementptr inbounds i8, ptr %arg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %paddr, ptr %arg, align 4
  %net2 = getelementptr inbounds %struct.sctp_hash_cmp_arg, ptr %arg, i32 0, i32 1
  %3 = ptrtoint ptr %net2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %net, ptr %net2, align 4
  %lport = getelementptr inbounds %struct.sctp_hash_cmp_arg, ptr %arg, i32 0, i32 2
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %laddr, i32 0, i32 1
  %4 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sin_port, align 2
  %6 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %lport, align 4
  %call = call fastcc ptr @rhltable_lookup(ptr noundef nonnull %arg, [7 x i32] [i32 0, i32 8, i32 0, i32 256, i32 ptrtoint (ptr @sctp_hash_key to i32), i32 ptrtoint (ptr @sctp_hash_obj to i32), i32 ptrtoint (ptr @sctp_hash_cmp to i32)])
  %tobool.not33 = icmp eq ptr %call, null
  br i1 %tobool.not33, label %entry.cleanup_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %tmp.034 = phi ptr [ %12, %for.inc.land.rhs_crit_edge ], [ %call, %entry.land.rhs_crit_edge ]
  %add.ptr = getelementptr i8, ptr %tmp.034, i32 -8
  %call6 = call i32 @sctp_transport_hold(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.rhs.for.inc_crit_edge, label %if.end

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %land.rhs
  %asoc = getelementptr i8, ptr %tmp.034, i32 144
  %7 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asoc, align 8
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %8, i32 0, i32 6
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk, align 4
  %call11 = call i32 @sctp_bind_addr_match(ptr noundef %bind_addr, ptr noundef %laddr, ptr noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @sctp_transport_put(ptr noundef %add.ptr) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %land.rhs.for.inc_crit_edge
  %next = getelementptr inbounds %struct.rhlist_head, ptr %tmp.034, i32 0, i32 1
  %11 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %add.ptr, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_bind_addr_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_epaddr_lookup_transport(ptr noundef readonly %ep, ptr noundef %paddr) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.sctp_hash_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #12
  %0 = getelementptr inbounds i8, ptr %arg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %paddr, ptr %arg, align 4
  %net = getelementptr inbounds %struct.sctp_hash_cmp_arg, ptr %arg, i32 0, i32 1
  %net2 = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 4
  %3 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net2, align 4
  %5 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %net, align 4
  %lport = getelementptr inbounds %struct.sctp_hash_cmp_arg, ptr %arg, i32 0, i32 2
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %ep, i32 0, i32 6
  %6 = ptrtoint ptr %bind_addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bind_addr, align 4
  %8 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %lport, align 4
  %call = call fastcc ptr @rhltable_lookup(ptr noundef nonnull %arg, [7 x i32] [i32 0, i32 8, i32 0, i32 256, i32 ptrtoint (ptr @sctp_hash_key to i32), i32 ptrtoint (ptr @sctp_hash_obj to i32), i32 ptrtoint (ptr @sctp_hash_cmp to i32)])
  %tobool.not26 = icmp eq ptr %call, null
  br i1 %tobool.not26, label %entry.cleanup_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %tmp.027 = phi ptr [ %14, %for.inc.land.rhs_crit_edge ], [ %call, %entry.land.rhs_crit_edge ]
  %asoc = getelementptr i8, ptr %tmp.027, i32 144
  %9 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asoc, align 8
  %ep7 = getelementptr inbounds %struct.sctp_association, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %ep7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep7, align 4
  %cmp = icmp eq ptr %12, %ep
  br i1 %cmp, label %cleanup.split.loop.exit24, label %for.inc

for.inc:                                          ; preds = %land.rhs
  %next = getelementptr inbounds %struct.rhlist_head, ptr %tmp.027, i32 0, i32 1
  %13 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.split.loop.exit24:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.le = getelementptr i8, ptr %tmp.027, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit24, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr.le, %cleanup.split.loop.exit24 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sctp_has_association(ptr noundef %net, ptr noundef %laddr, ptr noundef %paddr) local_unnamed_addr #0 align 64 {
entry:
  %arg.i.i.i = alloca %struct.sctp_hash_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg.i.i.i) #12
  %4 = getelementptr inbounds i8, ptr %arg.i.i.i, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %paddr, ptr %arg.i.i.i, align 4
  %net2.i.i.i = getelementptr inbounds %struct.sctp_hash_cmp_arg, ptr %arg.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %net2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %net, ptr %net2.i.i.i, align 4
  %sin_port.i.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %laddr, i32 0, i32 1
  %8 = ptrtoint ptr %sin_port.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sin_port.i.i.i, align 2
  store i16 %9, ptr %4, align 4
  %call.i.i.i = call fastcc ptr @rhltable_lookup(ptr noundef nonnull %arg.i.i.i, [7 x i32] [i32 0, i32 8, i32 0, i32 256, i32 ptrtoint (ptr @sctp_hash_key to i32), i32 ptrtoint (ptr @sctp_hash_obj to i32), i32 ptrtoint (ptr @sctp_hash_cmp to i32)]) #12
  %tobool.not33.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not33.i.i.i, label %rcu_read_lock.exit.i.sctp_addrs_lookup_transport.exit.thread.i.i_crit_edge, label %rcu_read_lock.exit.i.land.rhs.i.i.i_crit_edge

rcu_read_lock.exit.i.land.rhs.i.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i
  br label %land.rhs.i.i.i

rcu_read_lock.exit.i.sctp_addrs_lookup_transport.exit.thread.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_addrs_lookup_transport.exit.thread.i.i

land.rhs.i.i.i:                                   ; preds = %for.inc.i.i.i.land.rhs.i.i.i_crit_edge, %rcu_read_lock.exit.i.land.rhs.i.i.i_crit_edge
  %tmp.034.i.i.i = phi ptr [ %15, %for.inc.i.i.i.land.rhs.i.i.i_crit_edge ], [ %call.i.i.i, %rcu_read_lock.exit.i.land.rhs.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %tmp.034.i.i.i, i32 -8
  %call6.i.i.i = call i32 @sctp_transport_hold(ptr noundef %add.ptr.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %land.rhs.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i.i

land.rhs.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  %asoc.i.i.i = getelementptr i8, ptr %tmp.034.i.i.i, i32 144
  %10 = ptrtoint ptr %asoc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asoc.i.i.i, align 8
  %bind_addr.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %11, i32 0, i32 6
  %sk.i.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk.i.i.i, align 4
  %call11.i.i.i = call i32 @sctp_bind_addr_match(ptr noundef %bind_addr.i.i.i, ptr noundef %laddr, ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %if.end14.i.i.i, label %sctp_addrs_lookup_transport.exit.i.i

if.end14.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @sctp_transport_put(ptr noundef %add.ptr.i.i.i) #12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end14.i.i.i, %land.rhs.i.i.i.for.inc.i.i.i_crit_edge
  %next.i.i.i = getelementptr inbounds %struct.rhlist_head, ptr %tmp.034.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %next.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i.sctp_addrs_lookup_transport.exit.thread.i.i_crit_edge, label %for.inc.i.i.i.land.rhs.i.i.i_crit_edge

for.inc.i.i.i.land.rhs.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i.i

for.inc.i.i.i.sctp_addrs_lookup_transport.exit.thread.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_addrs_lookup_transport.exit.thread.i.i

sctp_addrs_lookup_transport.exit.thread.i.i:      ; preds = %for.inc.i.i.i.sctp_addrs_lookup_transport.exit.thread.i.i_crit_edge, %rcu_read_lock.exit.i.sctp_addrs_lookup_transport.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg.i.i.i) #12
  br label %__sctp_lookup_association.exit.i

sctp_addrs_lookup_transport.exit.i.i:             ; preds = %if.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg.i.i.i) #12
  %tobool.not.i1.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i1.i, label %sctp_addrs_lookup_transport.exit.i.i.__sctp_lookup_association.exit.i_crit_edge, label %if.end.i.i

sctp_addrs_lookup_transport.exit.i.i.__sctp_lookup_association.exit.i_crit_edge: ; preds = %sctp_addrs_lookup_transport.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sctp_lookup_association.exit.i

if.end.i.i:                                       ; preds = %sctp_addrs_lookup_transport.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %asoc.i.i.i.le = getelementptr i8, ptr %tmp.034.i.i.i, i32 144
  %16 = ptrtoint ptr %asoc.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asoc.i.i.i.le, align 8
  br label %__sctp_lookup_association.exit.i

__sctp_lookup_association.exit.i:                 ; preds = %if.end.i.i, %sctp_addrs_lookup_transport.exit.i.i.__sctp_lookup_association.exit.i_crit_edge, %sctp_addrs_lookup_transport.exit.thread.i.i
  %transport.0 = phi ptr [ inttoptr (i32 -1 to ptr), %sctp_addrs_lookup_transport.exit.thread.i.i ], [ inttoptr (i32 -1 to ptr), %sctp_addrs_lookup_transport.exit.i.i.__sctp_lookup_association.exit.i_crit_edge ], [ %add.ptr.i.i.i, %if.end.i.i ]
  %asoc.0.i.i = phi ptr [ null, %sctp_addrs_lookup_transport.exit.thread.i.i ], [ null, %sctp_addrs_lookup_transport.exit.i.i.__sctp_lookup_association.exit.i_crit_edge ], [ %17, %if.end.i.i ]
  %call.i2.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2.i, label %__sctp_lookup_association.exit.i.sctp_lookup_association.exit_crit_edge, label %land.lhs.true.i5.i

__sctp_lookup_association.exit.i.sctp_lookup_association.exit_crit_edge: ; preds = %__sctp_lookup_association.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_lookup_association.exit

land.lhs.true.i5.i:                               ; preds = %__sctp_lookup_association.exit.i
  %call1.i3.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.sctp_lookup_association.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.sctp_lookup_association.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_lookup_association.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.sctp_lookup_association.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.sctp_lookup_association.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sctp_lookup_association.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.16) #12
  br label %sctp_lookup_association.exit

sctp_lookup_association.exit:                     ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.sctp_lookup_association.exit_crit_edge, %land.lhs.true.i5.i.sctp_lookup_association.exit_crit_edge, %__sctp_lookup_association.exit.i.sctp_lookup_association.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !98
  %18 = call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i.i.i9.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool.not = icmp eq ptr %asoc.0.i.i, null
  br i1 %tobool.not, label %sctp_lookup_association.exit.cleanup_crit_edge, label %if.then

sctp_lookup_association.exit.cleanup_crit_edge:   ; preds = %sctp_lookup_association.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %sctp_lookup_association.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @sctp_transport_put(ptr noundef nonnull %transport.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sctp_lookup_association.exit.cleanup_crit_edge
  %22 = xor i1 %tobool.not, true
  ret i1 %22
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_csum_update(ptr noundef %buff, i32 noundef %len, i32 noundef %sum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @crc32c(i32 noundef %sum, ptr noundef %buff, i32 noundef %len) #12
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_csum_combine(i32 noundef %csum, i32 noundef %csum2, i32 noundef %offset, i32 noundef %len) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @__crc32c_le_shift(i32 noundef %csum, i32 noundef %len) #17
  %xor.i = xor i32 %call.i, %csum2
  ret i32 %xor.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @__crc32c_le_shift(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_is_ep_boundall(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_bind_addrs_check(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reuseport_add_sock(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reuseport_alloc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @reuseport_detach_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_endpoint_is_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reuseport_select_sock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jhash(ptr nocapture noundef readonly %key, i32 noundef %length, i32 noundef %initval) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %length, -559038737
  %add1 = add i32 %add, %initval
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %length)
  %cmp213 = icmp ugt i32 %length, 12
  br i1 %cmp213, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %k.0218 = phi ptr [ %add.ptr31, %while.body.while.body_crit_edge ], [ %key, %entry.while.body_crit_edge ]
  %c.0217 = phi i32 [ %xor28, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %b.0216 = phi i32 [ %add29, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %a.0215 = phi i32 [ %add25, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %length.addr.0214 = phi i32 [ %sub30, %while.body.while.body_crit_edge ], [ %length, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %k.0218 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %k.0218, align 1
  %add2 = add i32 %1, %a.0215
  %add.ptr = getelementptr i8, ptr %k.0218, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %add4 = add i32 %3, %b.0216
  %add.ptr5 = getelementptr i8, ptr %k.0218, i32 8
  %4 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5, align 1
  %add7 = add i32 %5, %c.0217
  %sub = sub i32 %add2, %add7
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add7, i32 %add7, i32 4) #12
  %xor = xor i32 %sub, %or.i
  %add9 = add i32 %add7, %add4
  %sub10 = sub i32 %add4, %xor
  %or.i201 = tail call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 6) #12
  %xor12 = xor i32 %sub10, %or.i201
  %add13 = add i32 %xor, %add9
  %sub14 = sub i32 %add9, %xor12
  %or.i202 = tail call i32 @llvm.fshl.i32(i32 %xor12, i32 %xor12, i32 8) #12
  %xor16 = xor i32 %sub14, %or.i202
  %add17 = add i32 %xor12, %add13
  %sub18 = sub i32 %add13, %xor16
  %or.i203 = tail call i32 @llvm.fshl.i32(i32 %xor16, i32 %xor16, i32 16) #12
  %xor20 = xor i32 %sub18, %or.i203
  %add21 = add i32 %xor16, %add17
  %sub22 = sub i32 %add17, %xor20
  %or.i204 = tail call i32 @llvm.fshl.i32(i32 %xor20, i32 %xor20, i32 19) #12
  %xor24 = xor i32 %sub22, %or.i204
  %add25 = add i32 %xor20, %add21
  %sub26 = sub i32 %add21, %xor24
  %or.i205 = tail call i32 @llvm.fshl.i32(i32 %xor24, i32 %xor24, i32 4) #12
  %xor28 = xor i32 %sub26, %or.i205
  %add29 = add i32 %xor24, %add25
  %sub30 = add i32 %length.addr.0214, -12
  %add.ptr31 = getelementptr i8, ptr %k.0218, i32 12
  %cmp = icmp ugt i32 %sub30, 12
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %length.addr.0.lcssa = phi i32 [ %length, %entry.while.end_crit_edge ], [ %sub30, %while.body.while.end_crit_edge ]
  %a.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %add25, %while.body.while.end_crit_edge ]
  %b.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %add29, %while.body.while.end_crit_edge ]
  %c.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %xor28, %while.body.while.end_crit_edge ]
  %k.0.lcssa = phi ptr [ %key, %entry.while.end_crit_edge ], [ %add.ptr31, %while.body.while.end_crit_edge ]
  %6 = zext i32 %length.addr.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %length.addr.0.lcssa, label %while.end.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 11, label %while.end.sw.bb33_crit_edge
    i32 10, label %while.end.sw.bb38_crit_edge
    i32 9, label %while.end.sw.bb43_crit_edge
    i32 8, label %while.end.sw.bb47_crit_edge
    i32 7, label %while.end.sw.bb52_crit_edge
    i32 6, label %while.end.sw.bb57_crit_edge
    i32 5, label %while.end.sw.bb62_crit_edge
    i32 4, label %while.end.sw.bb66_crit_edge
    i32 3, label %while.end.sw.bb71_crit_edge
    i32 2, label %while.end.sw.bb76_crit_edge
    i32 1, label %while.end.sw.bb81_crit_edge
  ]

while.end.sw.bb81_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb81

while.end.sw.bb76_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb76

while.end.sw.bb71_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb71

while.end.sw.bb66_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb66

while.end.sw.bb62_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb62

while.end.sw.bb57_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb57

while.end.sw.bb52_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb52

while.end.sw.bb47_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb47

while.end.sw.bb43_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb43

while.end.sw.bb38_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb38

while.end.sw.bb33_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb33

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr i8, ptr %k.0.lcssa, i32 11
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw i32 %conv, 24
  %add32 = add i32 %shl, %c.0.lcssa
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb, %while.end.sw.bb33_crit_edge
  %c.1 = phi i32 [ %c.0.lcssa, %while.end.sw.bb33_crit_edge ], [ %add32, %sw.bb ]
  %arrayidx34 = getelementptr i8, ptr %k.0.lcssa, i32 10
  %9 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %10 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %add37 = add i32 %shl36, %c.1
  br label %sw.bb38

sw.bb38:                                          ; preds = %sw.bb33, %while.end.sw.bb38_crit_edge
  %c.2 = phi i32 [ %c.0.lcssa, %while.end.sw.bb38_crit_edge ], [ %add37, %sw.bb33 ]
  %arrayidx39 = getelementptr i8, ptr %k.0.lcssa, i32 9
  %11 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %12 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %add42 = add i32 %shl41, %c.2
  br label %sw.bb43

sw.bb43:                                          ; preds = %sw.bb38, %while.end.sw.bb43_crit_edge
  %c.3 = phi i32 [ %c.0.lcssa, %while.end.sw.bb43_crit_edge ], [ %add42, %sw.bb38 ]
  %arrayidx44 = getelementptr i8, ptr %k.0.lcssa, i32 8
  %13 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %14 to i32
  %add46 = add i32 %c.3, %conv45
  br label %sw.bb47

sw.bb47:                                          ; preds = %sw.bb43, %while.end.sw.bb47_crit_edge
  %c.4 = phi i32 [ %c.0.lcssa, %while.end.sw.bb47_crit_edge ], [ %add46, %sw.bb43 ]
  %arrayidx48 = getelementptr i8, ptr %k.0.lcssa, i32 7
  %15 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %16 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %add51 = add i32 %shl50, %b.0.lcssa
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb47, %while.end.sw.bb52_crit_edge
  %b.1 = phi i32 [ %b.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %add51, %sw.bb47 ]
  %c.5 = phi i32 [ %c.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %c.4, %sw.bb47 ]
  %arrayidx53 = getelementptr i8, ptr %k.0.lcssa, i32 6
  %17 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %18 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %add56 = add i32 %shl55, %b.1
  br label %sw.bb57

sw.bb57:                                          ; preds = %sw.bb52, %while.end.sw.bb57_crit_edge
  %b.2 = phi i32 [ %b.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %add56, %sw.bb52 ]
  %c.6 = phi i32 [ %c.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %c.5, %sw.bb52 ]
  %arrayidx58 = getelementptr i8, ptr %k.0.lcssa, i32 5
  %19 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %20 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %add61 = add i32 %shl60, %b.2
  br label %sw.bb62

sw.bb62:                                          ; preds = %sw.bb57, %while.end.sw.bb62_crit_edge
  %b.3 = phi i32 [ %b.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %add61, %sw.bb57 ]
  %c.7 = phi i32 [ %c.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %c.6, %sw.bb57 ]
  %arrayidx63 = getelementptr i8, ptr %k.0.lcssa, i32 4
  %21 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %22 to i32
  %add65 = add i32 %b.3, %conv64
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb62, %while.end.sw.bb66_crit_edge
  %b.4 = phi i32 [ %b.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %add65, %sw.bb62 ]
  %c.8 = phi i32 [ %c.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %c.7, %sw.bb62 ]
  %arrayidx67 = getelementptr i8, ptr %k.0.lcssa, i32 3
  %23 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %24 to i32
  %shl69 = shl nuw i32 %conv68, 24
  %add70 = add i32 %shl69, %a.0.lcssa
  br label %sw.bb71

sw.bb71:                                          ; preds = %sw.bb66, %while.end.sw.bb71_crit_edge
  %a.1 = phi i32 [ %a.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %add70, %sw.bb66 ]
  %b.5 = phi i32 [ %b.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %b.4, %sw.bb66 ]
  %c.9 = phi i32 [ %c.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %c.8, %sw.bb66 ]
  %arrayidx72 = getelementptr i8, ptr %k.0.lcssa, i32 2
  %25 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %26 to i32
  %shl74 = shl nuw nsw i32 %conv73, 16
  %add75 = add i32 %shl74, %a.1
  br label %sw.bb76

sw.bb76:                                          ; preds = %sw.bb71, %while.end.sw.bb76_crit_edge
  %a.2 = phi i32 [ %a.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %add75, %sw.bb71 ]
  %b.6 = phi i32 [ %b.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %b.5, %sw.bb71 ]
  %c.10 = phi i32 [ %c.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %c.9, %sw.bb71 ]
  %arrayidx77 = getelementptr i8, ptr %k.0.lcssa, i32 1
  %27 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %28 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %add80 = add i32 %shl79, %a.2
  br label %sw.bb81

sw.bb81:                                          ; preds = %sw.bb76, %while.end.sw.bb81_crit_edge
  %a.3 = phi i32 [ %a.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %add80, %sw.bb76 ]
  %b.7 = phi i32 [ %b.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %b.6, %sw.bb76 ]
  %c.11 = phi i32 [ %c.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %c.10, %sw.bb76 ]
  %29 = ptrtoint ptr %k.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %k.0.lcssa, align 1
  %conv83 = zext i8 %30 to i32
  %add84 = add i32 %a.3, %conv83
  %xor85 = xor i32 %c.11, %b.7
  %or.i206 = tail call i32 @llvm.fshl.i32(i32 %b.7, i32 %b.7, i32 14) #12
  %sub87 = sub i32 %xor85, %or.i206
  %xor88 = xor i32 %add84, %sub87
  %or.i207 = tail call i32 @llvm.fshl.i32(i32 %sub87, i32 %sub87, i32 11) #12
  %sub90 = sub i32 %xor88, %or.i207
  %xor91 = xor i32 %sub90, %b.7
  %or.i208 = tail call i32 @llvm.fshl.i32(i32 %sub90, i32 %sub90, i32 25) #12
  %sub93 = sub i32 %xor91, %or.i208
  %xor94 = xor i32 %sub93, %sub87
  %or.i209 = tail call i32 @llvm.fshl.i32(i32 %sub93, i32 %sub93, i32 16) #12
  %sub96 = sub i32 %xor94, %or.i209
  %xor97 = xor i32 %sub96, %sub90
  %or.i210 = tail call i32 @llvm.fshl.i32(i32 %sub96, i32 %sub96, i32 4) #12
  %sub99 = sub i32 %xor97, %or.i210
  %xor100 = xor i32 %sub99, %sub93
  %or.i211 = tail call i32 @llvm.fshl.i32(i32 %sub99, i32 %sub99, i32 14) #12
  %sub102 = sub i32 %xor100, %or.i211
  %xor103 = xor i32 %sub102, %sub96
  %or.i212 = tail call i32 @llvm.fshl.i32(i32 %sub102, i32 %sub102, i32 24) #12
  %sub105 = sub i32 %xor103, %or.i212
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb81, %while.end.sw.epilog_crit_edge
  %c.12 = phi i32 [ %c.0.lcssa, %while.end.sw.epilog_crit_edge ], [ %sub105, %sw.bb81 ]
  ret i32 %c.12
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_hash_key(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %net = getelementptr inbounds %struct.sctp_hash_cmp_arg, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %lport = getelementptr inbounds %struct.sctp_hash_cmp_arg, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %lport, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %7)
  %cmp.i = icmp eq i16 %7, 10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %5, i32 0, i32 3
  %call.i = tail call fastcc i32 @jhash(ptr noundef %sin6_addr.i, i32 noundef 16, i32 noundef %seed) #12
  br label %sctp_hashfn.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin_addr.i, align 4
  br label %sctp_hashfn.exit

sctp_hashfn.exit:                                 ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sin_port.i, align 2
  %conv2.i = zext i16 %11 to i32
  %shl.i = shl nuw i32 %conv2.i, 16
  %conv3.i = zext i16 %3 to i32
  %hash_mix.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hash_mix.i.i, align 8
  %add1.i.i = add i32 %seed, -559038725
  %add.i.i.i = add i32 %addr.0.i, %add1.i.i
  %or.i = add i32 %add1.i.i, %conv3.i
  %add1.i.i.i = add i32 %or.i, %shl.i
  %add2.i.i.i = add i32 %13, %add1.i.i
  %xor.i.i.i = xor i32 %add1.i.i.i, %add2.i.i.i
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #12
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i
  %or.i52.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #12
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i52.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i53.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #12
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i53.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i54.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #12
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i54.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i55.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #12
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i55.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i56.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #12
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i56.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i57.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #12
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i57.i.i.i
  ret i32 %sub20.i.i.i
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_hash_obj(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 8
  %net = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 8
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %bind_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bind_addr, align 4
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %data, i32 0, i32 6
  %6 = ptrtoint ptr %ipaddr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ipaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %7)
  %cmp.i = icmp eq i16 %7, 10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sin6_addr.i = getelementptr inbounds %struct.sctp_transport, ptr %data, i32 0, i32 6, i32 0, i32 3
  %call.i = tail call fastcc i32 @jhash(ptr noundef %sin6_addr.i, i32 noundef 16, i32 noundef %seed) #12
  br label %sctp_hashfn.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sin_addr.i = getelementptr inbounds %struct.sctp_transport, ptr %data, i32 0, i32 6, i32 0, i32 2
  %8 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin_addr.i, align 4
  br label %sctp_hashfn.exit

sctp_hashfn.exit:                                 ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %sin_port.i = getelementptr inbounds %struct.sctp_transport, ptr %data, i32 0, i32 6, i32 0, i32 1
  %10 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sin_port.i, align 2
  %conv2.i = zext i16 %11 to i32
  %shl.i = shl nuw i32 %conv2.i, 16
  %conv3.i = zext i16 %5 to i32
  %hash_mix.i.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 26
  %12 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hash_mix.i.i, align 8
  %add1.i.i = add i32 %seed, -559038725
  %add.i.i.i = add i32 %addr.0.i, %add1.i.i
  %or.i = add i32 %add1.i.i, %conv3.i
  %add1.i.i.i = add i32 %or.i, %shl.i
  %add2.i.i.i = add i32 %13, %add1.i.i
  %xor.i.i.i = xor i32 %add1.i.i.i, %add2.i.i.i
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #12
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i
  %or.i52.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #12
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i52.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i53.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #12
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i53.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i54.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #12
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i54.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i55.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #12
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i55.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i56.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #12
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i56.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i57.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #12
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i57.i.i.i
  ret i32 %sub20.i.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_hash_cmp(ptr nocapture noundef readonly %arg, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %ptr, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @sctp_cmp_addr_exact(ptr noundef %ipaddr, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @sctp_transport_hold(ptr noundef %ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %ptr, i32 0, i32 8
  %4 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asoc, align 8
  %net = getelementptr inbounds %struct.sctp_ep_common, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 8
  %net5 = getelementptr inbounds %struct.sctp_hash_cmp_arg, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %net5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net5, align 4
  %cmp.i.not = icmp eq ptr %7, %9
  br i1 %cmp.i.not, label %if.end9, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %lport = getelementptr inbounds %struct.sctp_hash_cmp_arg, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %lport, align 4
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %bind_addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bind_addr, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp.not = icmp ne i16 %11, %13
  %spec.select = zext i1 %cmp.not to i32
  br label %out

out:                                              ; preds = %if.end9, %if.end4.out_crit_edge
  %err.0 = phi i32 [ 1, %if.end4.out_crit_edge ], [ %spec.select, %if.end9 ]
  tail call void @sctp_transport_put(ptr noundef %ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_cmp_addr_exact(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
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
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !105
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !106

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !107
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !83

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !109
  %7 = tail call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !110
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !111
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #12
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !84

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !115
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !116
  %3 = tail call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !117
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  %2 = tail call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72}
!llvm.named.register.sp = !{!73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sctp/input.c", i32 103, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/sctp/input.c", i32 459, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @sctp_icmp_proto_unreachable.__UNIQUE_ID_ddebug671, !3, !"__UNIQUE_ID_ddebug671", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../net/sctp/input.c", i32 977, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @sctp_hash_transport._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @sctp_hash_transport._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @sctp_csum_ops, !15, !"sctp_csum_ops", i1 false, i1 false}
!15 = !{!"../include/net/sctp/checksum.h", i32 46, i32 38}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/net/sock.h", i32 1750, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/net/dst.h", i32 316, i32 3}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/net/sctp/sctp.h", i32 591, i32 6}
!25 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sctp_hash_params, !27, !"sctp_hash_params", i1 false, i1 false}
!27 = !{!"../net/sctp/input.c", i32 931, i32 39}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/sctp/input.c", i32 1337, i32 3}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @__sctp_rcv_lookup.__UNIQUE_ID_ddebug680, !67, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/sctp/input.c", i32 1341, i32 3}
!72 = !{ptr @__sctp_rcv_lookup.__UNIQUE_ID_ddebug681, !71, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!73 = !{!"sp"}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i64 2154600060, i64 2154600548, i64 2154600097, i64 2154600153, i64 2154600187, i64 2154600211, i64 2154600252, i64 2154600273, i64 2154600301, i64 2154600335}
!86 = !{i8 0, i8 2}
!87 = !{i64 2148855609, i64 2148855614, i64 2148855627, i64 2148855671, i64 2148855705, i64 2148855726}
!88 = !{i64 2148463289}
!89 = !{i64 2148377729, i64 2148377761, i64 2148377790, i64 2148377824, i64 2148377855, i64 2148377878}
!90 = !{i64 2149307310}
!91 = !{i64 2159430109, i64 2159430590, i64 2159430146, i64 2159430202, i64 2159430236, i64 2159430260, i64 2159430301, i64 2159430322, i64 2159430350, i64 2159430384}
!92 = !{i64 2159425743, i64 2159426224, i64 2159425780, i64 2159425836, i64 2159425870, i64 2159425894, i64 2159425935, i64 2159425956, i64 2159425984, i64 2159426018}
!93 = !{i64 2148373153}
!94 = !{i64 857976, i64 858001, i64 858023, i64 858039, i64 858051, i64 858071, i64 858095, i64 858111, i64 858123}
!95 = !{i64 2148373341}
!96 = !{!"auto-init"}
!97 = !{i64 2149357800}
!98 = !{i64 2149358066}
!99 = !{i64 2158574524}
!100 = !{i64 2148373734, i64 2148373760, i64 2148373789, i64 2148373823, i64 2148373854, i64 2148373877}
!101 = !{i64 2158542244}
!102 = !{i64 2158545678}
!103 = !{i64 2158605559}
!104 = !{i64 2148376199, i64 2148376225, i64 2148376254, i64 2148376288, i64 2148376319, i64 2148376342}
!105 = !{i64 2150534230}
!106 = !{!"branch_weights", i32 2146410443, i32 1073205}
!107 = !{i64 2148382592, i64 2148382624, i64 2148382653, i64 2148382687, i64 2148382718, i64 2148382741}
!108 = !{i64 2148471697}
!109 = !{i64 2150534390}
!110 = !{i64 2150534667}
!111 = !{i64 2150534509}
!112 = !{i64 2150534872}
!113 = !{i64 2150535935, i64 2150536427, i64 2150535972, i64 2150536028, i64 2150536062, i64 2150536086, i64 2150536127, i64 2150536148, i64 2150536176, i64 2150536210}
!114 = !{i64 2148470584}
!115 = !{i64 2148380979, i64 2148381011, i64 2148381040, i64 2148381074, i64 2148381105, i64 2148381128}
!116 = !{i64 2150537330}
!117 = !{i64 2158535317}
!118 = !{i64 2158537616}
