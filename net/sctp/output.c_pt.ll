; ModuleID = '/llk/IR_all_yes/net/sctp/output.c_pt.bc'
source_filename = "../net/sctp/output.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sctp_globals = type { %struct.list_head, ptr, ptr, %struct.rhltable, i32, i32, i16, i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.skb_checksum_ops = type { ptr, ptr }
%struct.sctp_packet = type { i16, i16, i32, %struct.list_head, i32, i32, i32, ptr, ptr, i8 }
%struct.sctp_transport = type { %struct.list_head, %struct.rhlist_head, %struct.refcount_struct, i8, i32, %struct.flowi, %union.sctp_addr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.sctp_addr, i32, i32, i32, i32, %struct.atomic_t, i64, i32, i32, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.list_head, %struct.sctp_packet, %struct.list_head, %struct.anon.175, %struct.anon.176, i64, %struct.callback_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.flowi = type { %union.anon.23 }
%union.anon.23 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.175 = type { i32, i8, i8, i8 }
%struct.anon.176 = type { i16, i16, i16, i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.122, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.123, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.124, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.110, %union.anon.112, %union.anon.113, i16, i8, i8, i32, %union.anon.115, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.118, [0 x i32], %union.anon.119, i16, i16, %union.anon.120, %struct.refcount_struct, [0 x i32], %union.anon.121 }
%union.anon.110 = type { i64 }
%union.anon.112 = type { i32 }
%union.anon.113 = type { i32 }
%union.anon.115 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { %struct.hlist_node }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.122 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.123 = type { ptr }
%union.anon.124 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.sctp_rtoinfo = type { i32, i32, i32, i32 }
%struct.sctp_paddrparams = type <{ i32, %struct.__kernel_sockaddr_storage, i32, i16, i32, i32, i32, i32, i8, i8 }>
%struct.__kernel_sockaddr_storage = type { %union.anon.170 }
%union.anon.170 = type { ptr, [124 x i8] }
%struct.sctp_assocparams = type { i32, i16, i16, i32, i32, i32 }
%struct.sctp_initmsg = type { i16, i16, i16, i16 }
%struct.sk_buff_head = type { %union.anon.99, i32, %struct.spinlock }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, ptr }
%struct.sctp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sctp_af = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, ptr, i16, %struct.list_head }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.157, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.157 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.sctp_stream = type { %struct.anon.158, %struct.anon.163, i16, i16, ptr, %union.anon.165, ptr }
%struct.anon.158 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.159, i32, ptr, i8 }
%union.anon.159 = type { i32 }
%struct.anon.163 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.164, i32, i32, i32, i8, i8 }
%union.anon.164 = type { i32 }
%union.anon.165 = type { %struct.anon.167 }
%struct.anon.167 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.136, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.136 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sctp_chunk = type { %struct.list_head, %struct.refcount_struct, i32, %union.anon, %struct.list_head, ptr, %union.anon.154, %union.sctp_params, %union.anon.155, ptr, ptr, ptr, %struct.sctp_sndrcvinfo, ptr, ptr, i32, %union.sctp_addr, %union.sctp_addr, ptr, ptr, ptr, i16 }
%union.anon = type { %struct.list_head }
%union.anon.154 = type { ptr }
%union.sctp_params = type { ptr }
%union.anon.155 = type { ptr }
%struct.sctp_sndrcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.0, %union.anon.137, %union.anon.138, [48 x i8], %union.anon.139, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.141, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.137 = type { ptr }
%union.anon.138 = type { i64 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { i32, ptr }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.143, i32, i32, i32, i16, i16, %union.anon.145, i32, %union.anon.146, %union.anon.147, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.143 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i16 }
%struct.sctp_datamsg = type { %struct.list_head, %struct.refcount_struct, i32, i32, i8 }
%struct.sctp_shared_key = type { %struct.list_head, ptr, %struct.refcount_struct, i16, i8 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.20, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.109, ptr, [24 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.109 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.sctp_stream_interleave = type { i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.144 = type { i16, i16 }

@sctp_packet_config.__UNIQUE_ID_ddebug564 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sctp\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sctp_packet_config\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/sctp/output.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: packet:%p vtag:0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sctp: %s: packet:%p vtag:0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@sctp_packet_init.__UNIQUE_ID_ddebug566 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sctp_packet_init\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: packet:%p transport:%p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sctp: %s: packet:%p transport:%p\0A\00", [62 x i8] zeroinitializer }, align 32
@sctp_packet_free.__UNIQUE_ID_ddebug567 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sctp_packet_free\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: packet:%p\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp: %s: packet:%p\0A\00", [43 x i8] zeroinitializer }, align 32
@sctp_packet_transmit_chunk.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sctp_packet_transmit_chunk\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: packet:%p size:%zu chunk:%p size:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sctp: %s: packet:%p size:%zu chunk:%p size:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@sctp_packet_append_chunk.__UNIQUE_ID_ddebug569 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sctp_packet_append_chunk\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: packet:%p chunk:%p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sctp: %s: packet:%p chunk:%p\0A\00", [34 x i8] zeroinitializer }, align 32
@sctp_packet_transmit.__UNIQUE_ID_ddebug573 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.9, i8 0, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_packet_transmit\00", [43 x i8] zeroinitializer }, align 32
@sctp_packet_transmit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sctp_packet_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.17, ptr @.str.2, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013sctp: Trying to GSO but underlying device doesn't support it.\00", [32 x i8] zeroinitializer }, align 32
@sctp_packet_transmit._entry_ptr = internal global ptr @sctp_packet_transmit._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@sctp_packet_transmit.__UNIQUE_ID_ddebug574 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"***sctp_transmit_packet*** skb->len:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sctp: ***sctp_transmit_packet*** skb->len:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@sctp_packet_pack.__UNIQUE_ID_ddebug570 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sctp_packet_pack\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"*** Chunk:%p[%s] %s 0x%x, length:%d, chunk->skb->len:%d, rtt_in_progress:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"sctp: *** Chunk:%p[%s] %s 0x%x, length:%d, chunk->skb->len:%d, rtt_in_progress:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TSN\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"No TSN\00", [25 x i8] zeroinitializer }, align 32
@sctp_globals = external dso_local local_unnamed_addr global %struct.sctp_globals, align 4
@sctp_csum_ops = internal constant { %struct.skb_checksum_ops, [24 x i8] } { %struct.skb_checksum_ops { ptr @sctp_csum_update, ptr @sctp_csum_combine }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 64]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 64]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 64]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 64]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 3, i64 10, i64 15, i64 64]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 64]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 64]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 81, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 147, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 164, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 185, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 387, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 578, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 589, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 625, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 695, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 2067, i32 9 }
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 231, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 723, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 271, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [21 x i8] c"../net/sctp/output.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 501, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant [14 x i8] c"sctp_csum_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [31 x i8] c"../include/net/sctp/checksum.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 46, i32 38 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @sctp_packet_transmit._entry, ptr @sctp_packet_transmit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @sctp_csum_ops], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_packet_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_csum_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_packet_config(ptr noundef %packet, i32 noundef %vtag, i32 noundef %ecn_capable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %transport = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 7
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport, align 4
  %asoc1 = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asoc1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_packet_config.__UNIQUE_ID_ddebug564, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_packet_config, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_packet_config.__UNIQUE_ID_ddebug564, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %packet, i32 noundef %vtag) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vtag4 = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 2
  %4 = ptrtoint ptr %vtag4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %vtag, ptr %vtag4, align 4
  %size.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 5
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 4
  %overhead.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 4
  %7 = ptrtoint ptr %overhead.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %overhead.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.i.not = icmp eq i32 %6, %8
  br i1 %cmp.i.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %pathmtu = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 34
  %9 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pathmtu, align 8
  %max_size = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 6
  %11 = ptrtoint ptr %max_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_size, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %sctp_mtu_payload.exit, label %if.end13

if.end13:                                         ; preds = %if.end8
  %sk11 = getelementptr inbounds %struct.sctp_ep_common, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %sk11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk11, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end13.if.end18_crit_edge, label %if.then.i.i

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %pf.i.i = getelementptr inbounds %struct.sctp_sock, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pf.i.i, align 4
  %af.i.i = getelementptr inbounds %struct.sctp_pf, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %af.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %af.i.i, align 4
  %net_header_len.i.i = getelementptr inbounds %struct.sctp_af, ptr %17, i32 0, i32 21
  %18 = ptrtoint ptr %net_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %net_header_len.i.i, align 4
  %conv.i.i = zext i16 %19 to i32
  %udp_port.i.i = getelementptr inbounds %struct.sctp_sock, ptr %13, i32 0, i32 16
  %20 = ptrtoint ptr %udp_port.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %udp_port.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool3.not.i.i = icmp eq i16 %21, 0
  %spec.select.v.i.i = select i1 %tobool3.not.i.i, i32 12, i32 20
  %spec.select.i.i = add nuw nsw i32 %spec.select.v.i.i, %conv.i.i
  br label %if.end18

sctp_mtu_payload.exit:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %overhead.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 52, ptr %overhead.i, align 4
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 52, ptr %size.i, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.then.i.i, %if.end13.if.end18_crit_edge
  %overhead.0.i.i.ph = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ 52, %if.end13.if.end18_crit_edge ]
  %24 = ptrtoint ptr %overhead.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %overhead.0.i.i.ph, ptr %overhead.i, align 4
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %overhead.0.i.i.ph, ptr %size.i, align 4
  %dst.i = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 18
  %26 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dst.i, align 8
  %tobool.not.i110 = icmp eq ptr %27, null
  br i1 %tobool.not.i110, label %if.end18.if.then21_crit_edge, label %land.lhs.true.i112

if.end18.if.then21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

land.lhs.true.i112:                               ; preds = %if.end18
  %obsolete.i.i = getelementptr inbounds %struct.dst_entry, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %obsolete.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %obsolete.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i.i111 = icmp eq i16 %29, 0
  br i1 %tobool.not.i.i111, label %land.lhs.true.i112.sctp_transport_dst_check.exit_crit_edge, label %dst_check.exit.i

land.lhs.true.i112.sctp_transport_dst_check.exit_crit_edge: ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sctp_transport_dst_check.exit

dst_check.exit.i:                                 ; preds = %land.lhs.true.i112
  %dst_cookie.i = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %dst_cookie.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dst_cookie.i, align 8
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i.i, align 4
  %check.i.i = getelementptr inbounds %struct.dst_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %check.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %check.i.i, align 4
  %call.i.i = tail call ptr %35(ptr noundef nonnull %27, i32 noundef %31) #10
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.then.i113, label %dst_check.exit.i.sctp_transport_dst_check.exit_crit_edge

dst_check.exit.i.sctp_transport_dst_check.exit_crit_edge: ; preds = %dst_check.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sctp_transport_dst_check.exit

if.then.i113:                                     ; preds = %dst_check.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sctp_transport_dst_release(ptr noundef %1) #10
  br label %sctp_transport_dst_check.exit

sctp_transport_dst_check.exit:                    ; preds = %if.then.i113, %dst_check.exit.i.sctp_transport_dst_check.exit_crit_edge, %land.lhs.true.i112.sctp_transport_dst_check.exit_crit_edge
  %36 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load ptr, ptr %dst.i, align 8
  %tobool20.not = icmp eq ptr %.pr, null
  br i1 %tobool20.not, label %sctp_transport_dst_check.exit.if.then21_crit_edge, label %if.else

sctp_transport_dst_check.exit.if.then21_crit_edge: ; preds = %sctp_transport_dst_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then21:                                        ; preds = %sctp_transport_dst_check.exit.if.then21_crit_edge, %if.end18.if.then21_crit_edge
  tail call void @sctp_transport_route(ptr noundef %1, ptr noundef null, ptr noundef %13) #10
  %param_flags = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 27
  %37 = ptrtoint ptr %param_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %param_flags, align 8
  %and = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.then21.if.end34_crit_edge, label %if.then21.if.end34.sink.split_crit_edge

if.then21.if.end34.sink.split_crit_edge:          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.sink.split

if.then21.if.end34_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.else:                                          ; preds = %sctp_transport_dst_check.exit
  %state.i = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 48, i32 4
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp.i114.not = icmp eq i8 %40, 0
  br i1 %cmp.i114.not, label %land.lhs.true, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true:                                    ; preds = %if.else
  %param_flags26 = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 27
  %41 = ptrtoint ptr %param_flags26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %param_flags26, align 8
  %and27 = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %land.lhs.true.if.end34_crit_edge, label %if.then29

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then29:                                        ; preds = %land.lhs.true
  %ops.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %.pr, i32 0, i32 1
  %43 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i.i.i, align 4
  %mtu.i.i.i = getelementptr inbounds %struct.dst_ops, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mtu.i.i.i, align 4
  %call.i.i.i = tail call i32 %46(ptr noundef nonnull %.pr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %call.i.i.i)
  %cmp.i.i = icmp ugt i32 %call.i.i.i, 512
  %phi.bo.i.i = and i32 %call.i.i.i, -4
  %cond.i.i = select i1 %cmp.i.i, i32 %phi.bo.i.i, i32 512
  %47 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pathmtu, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %cond.i.i)
  %cmp.i116 = icmp eq i32 %48, %cond.i.i
  br i1 %cmp.i116, label %if.then29.if.end34_crit_edge, label %if.then31

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %pathmtu to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond.i.i, ptr %pathmtu, align 8
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.then31, %if.then21.if.end34.sink.split_crit_edge
  tail call void @sctp_assoc_sync_pmtu(ptr noundef nonnull %3) #10
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.then29.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %if.else.if.end34_crit_edge, %if.then21.if.end34_crit_edge
  %pmtu_pending = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 25
  %50 = ptrtoint ptr %pmtu_pending to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pmtu_pending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool35.not = icmp eq i8 %51, 0
  br i1 %tobool35.not, label %if.end34.if.end43_crit_edge, label %if.then36

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then36:                                        ; preds = %if.end34
  %param_flags37 = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 27
  %52 = ptrtoint ptr %param_flags37 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %param_flags37, align 8
  %and38 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then36.if.end41_crit_edge, label %if.then40

if.then36.if.end41_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sctp_assoc_sync_pmtu(ptr noundef nonnull %3) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then36.if.end41_crit_edge
  %54 = ptrtoint ptr %pmtu_pending to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %pmtu_pending, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end34.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ecn_capable)
  %tobool44.not = icmp eq i32 %ecn_capable, 0
  br i1 %tobool44.not, label %if.end43.if.end51_crit_edge, label %if.then45

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then45:                                        ; preds = %if.end43
  %call46 = tail call ptr @sctp_get_ecne_prepend(ptr noundef nonnull %3) #10
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.then45.if.end51_crit_edge, label %if.then48

if.then45.if.end51_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = tail call i32 @sctp_packet_append_chunk(ptr noundef %packet, ptr noundef nonnull %call46)
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.then45.if.end51_crit_edge, %if.end43.if.end51_crit_edge
  %55 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dst.i, align 8
  %tobool52.not = icmp eq ptr %56, null
  br i1 %tobool52.not, label %if.end51.cleanup_crit_edge, label %if.end54

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end54:                                         ; preds = %if.end51
  %57 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %60, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !78
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end54.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end54.rcu_read_lock.exit_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end54
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end54.rcu_read_lock.exit_crit_edge
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 19
  %61 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 3
  %call.i.i.i117 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i117)
  %tobool.not.i.i118 = icmp eq i32 %call.i.i.i117, 0
  br i1 %tobool.not.i.i118, label %lockdep_sock_is_held.exit.i, label %rcu_read_lock.exit.__sk_dst_get.exit_crit_edge

rcu_read_lock.exit.__sk_dst_get.exit_crit_edge:   ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_get.exit

lockdep_sock_is_held.exit.i:                      ; preds = %rcu_read_lock.exit
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %lor.lhs.false.i, label %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge

lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_get.exit

lor.lhs.false.i:                                  ; preds = %lockdep_sock_is_held.exit.i
  %call2.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i119 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i119, label %land.lhs.true.i120, label %lor.lhs.false.i.__sk_dst_get.exit_crit_edge

lor.lhs.false.i.__sk_dst_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_get.exit

land.lhs.true.i120:                               ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i120.__sk_dst_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i120.__sk_dst_get.exit_crit_edge:   ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i120
  %.b11.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, label %if.then.i121

land.lhs.true5.i.__sk_dst_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_get.exit

if.then.i121:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 2068, ptr noundef nonnull @.str.25) #10
  br label %__sk_dst_get.exit

__sk_dst_get.exit:                                ; preds = %if.then.i121, %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, %land.lhs.true.i120.__sk_dst_get.exit_crit_edge, %lor.lhs.false.i.__sk_dst_get.exit_crit_edge, %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge, %rcu_read_lock.exit.__sk_dst_get.exit_crit_edge
  %63 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dst.i, align 8
  %cmp.not = icmp eq ptr %62, %64
  br i1 %cmp.not, label %__sk_dst_get.exit.if.end60_crit_edge, label %if.then57

__sk_dst_get.exit.if.end60_crit_edge:             ; preds = %__sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then57:                                        ; preds = %__sk_dst_get.exit
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %64, i32 0, i32 18
  %call.i.i.i122 = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #10
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #10, !srcloc !80
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end10.i, label %atomic_inc_not_zero.exit.thread.i

atomic_inc_not_zero.exit.thread.i:                ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  br label %dst_hold.exit

do.end10.i:                                       ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 231, i32 noundef 9, ptr noundef null) #10
  br label %dst_hold.exit

dst_hold.exit:                                    ; preds = %do.end10.i, %atomic_inc_not_zero.exit.thread.i
  %66 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dst.i, align 8
  tail call void @sk_setup_caps(ptr noundef %13, ptr noundef %67) #10
  br label %if.end60

if.end60:                                         ; preds = %dst_hold.exit, %__sk_dst_get.exit.if.end60_crit_edge
  %sk_route_caps.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 38
  %68 = ptrtoint ptr %sk_route_caps.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %sk_route_caps.i, align 8
  %sk_gso_type.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 39
  %70 = ptrtoint ptr %sk_gso_type.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sk_gso_type.i, align 8
  %conv.i.i124 = sext i32 %71 to i64
  %shl.i.i = shl nsw i64 %conv.i.i124, 16
  %and.i.i = and i64 %shl.i.i, %69
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %shl.i.i)
  %cmp.i.i125 = icmp eq i64 %and.i.i, %shl.i.i
  br i1 %cmp.i.i125, label %do.end64, label %cond.false

do.end64:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dst.i, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %gso_max_size = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 137
  %76 = ptrtoint ptr %gso_max_size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %gso_max_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %pathmtu67 = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 26
  %78 = ptrtoint ptr %pathmtu67 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pathmtu67, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end64
  %cond = phi i32 [ %77, %do.end64 ], [ %79, %cond.false ]
  %80 = ptrtoint ptr %max_size to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %cond, ptr %max_size, align 4
  %call.i126 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i126, label %cond.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i129

cond.end.rcu_read_unlock.exit_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i129:                               ; preds = %cond.end
  %call1.i127 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i127)
  %tobool.not.i128 = icmp eq i32 %call1.i127, 0
  br i1 %tobool.not.i128, label %land.lhs.true.i129.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i131

land.lhs.true.i129.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i131:                              ; preds = %land.lhs.true.i129
  %.b4.i130 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i130, label %land.lhs.true2.i131.rcu_read_unlock.exit_crit_edge, label %if.then.i132

land.lhs.true2.i131.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i132:                                     ; preds = %land.lhs.true2.i131
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.27) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i132, %land.lhs.true2.i131.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i129.rcu_read_unlock.exit_crit_edge, %cond.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  %81 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i133 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i133 to ptr
  %preempt_count.i.i.i.i134 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i.i134, align 4
  %sub.i.i.i = add i32 %84, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i134, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end51.cleanup_crit_edge, %sctp_mtu_payload.exit, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_route(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_assoc_sync_pmtu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_get_ecne_prepend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_packet_append_chunk(ptr noundef %packet, ptr noundef %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_packet_append_chunk.__UNIQUE_ID_ddebug569, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_packet_append_chunk, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_packet_append_chunk.__UNIQUE_ID_ddebug569, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, ptr noundef %packet, ptr noundef %chunk) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %do.end.if.end16_crit_edge [
    i8 0, label %do.end.if.then10_crit_edge
    i8 64, label %do.end.if.then10_crit_edge77
  ]

do.end.if.then10_crit_edge77:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

do.end.if.then10_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then10:                                        ; preds = %do.end.if.then10_crit_edge, %do.end.if.then10_crit_edge77
  %transport1.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 7
  %5 = ptrtoint ptr %transport1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transport1.i, align 4
  %asoc2.i = getelementptr inbounds %struct.sctp_transport, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %asoc2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asoc2.i, align 8
  %rwnd3.i = getelementptr inbounds %struct.sctp_association, ptr %8, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %rwnd3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rwnd3.i, align 8
  %outstanding_bytes.i = getelementptr inbounds %struct.sctp_association, ptr %8, i32 0, i32 61, i32 9
  %11 = ptrtoint ptr %outstanding_bytes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %outstanding_bytes.i, align 4
  %flight_size4.i = getelementptr inbounds %struct.sctp_transport, ptr %6, i32 0, i32 16
  %13 = ptrtoint ptr %flight_size4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flight_size4.i, align 8
  %length.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %length.i.i, align 2
  %asoc.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 13
  %17 = ptrtoint ptr %asoc.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asoc.i.i, align 4
  %si.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %18, i32 0, i32 60, i32 6
  %19 = ptrtoint ptr %si.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %si.i.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 4
  %sub.i.i = sub i16 %16, %22
  %conv.i = zext i16 %sub.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i)
  %cmp.i = icmp uge i32 %10, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6.not.i = icmp eq i32 %12, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp6.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.then10.finish_crit_edge

if.then10.finish_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %finish

if.end.i:                                         ; preds = %if.then10
  %fast_retransmit.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 21
  %23 = ptrtoint ptr %fast_retransmit.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i = load i16, ptr %fast_retransmit.i, align 4
  %bf.clear.i = and i16 %bf.load.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %bf.clear.i)
  %cmp9.not.i = icmp eq i16 %bf.clear.i, 1
  br i1 %cmp9.not.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true11.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

land.lhs.true11.i:                                ; preds = %if.end.i
  %cwnd.i = getelementptr inbounds %struct.sctp_transport, ptr %6, i32 0, i32 13
  %24 = ptrtoint ptr %cwnd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cwnd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %25)
  %cmp12.not.i = icmp ult i32 %14, %25
  br i1 %cmp12.not.i, label %land.lhs.true11.i.if.end15.i_crit_edge, label %land.lhs.true11.i.finish_crit_edge

land.lhs.true11.i.finish_crit_edge:               ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %finish

land.lhs.true11.i.if.end15.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.end15.i:                                       ; preds = %land.lhs.true11.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %8, i32 0, i32 3
  %26 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sk.i, align 4
  %nodelay.i = getelementptr inbounds %struct.sctp_sock, ptr %27, i32 0, i32 37
  %28 = ptrtoint ptr %nodelay.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load17.i = load i16, ptr %nodelay.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load17.i)
  %tobool.not.i = icmp slt i16 %bf.load17.i, 0
  %or.cond72.i = select i1 %tobool.not.i, i1 true, i1 %cmp6.not.i
  br i1 %or.cond72.i, label %land.lhs.true21.i, label %if.end15.i.if.end27.i_crit_edge

if.end15.i.if.end27.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

land.lhs.true21.i:                                ; preds = %if.end15.i
  %force_delay.i = getelementptr inbounds %struct.sctp_association, ptr %8, i32 0, i32 78
  %29 = ptrtoint ptr %force_delay.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load22.i = load i8, ptr %force_delay.i, align 8
  %30 = and i8 %bf.load22.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool25.not.i = icmp eq i8 %30, 0
  br i1 %tobool25.not.i, label %land.lhs.true21.i.if.end16_crit_edge, label %land.lhs.true21.i.if.end27.i_crit_edge

land.lhs.true21.i.if.end27.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

land.lhs.true21.i.if.end16_crit_edge:             ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end27.i:                                       ; preds = %land.lhs.true21.i.if.end27.i_crit_edge, %if.end15.i.if.end27.i_crit_edge
  %size.i.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 5
  %31 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i.i, align 4
  %overhead.i.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 4
  %33 = ptrtoint ptr %overhead.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %overhead.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.i.not.i = icmp eq i32 %32, %34
  br i1 %cmp.i.not.i, label %if.end31.i, label %if.end27.i.if.end16_crit_edge

if.end27.i.if.end16_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end31.i:                                       ; preds = %if.end27.i
  %state1.i.i = getelementptr inbounds %struct.sctp_association, ptr %8, i32 0, i32 6
  %35 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp.i73.not.i = icmp eq i32 %36, 3
  br i1 %cmp.i73.not.i, label %if.end35.i, label %if.end31.i.if.end16_crit_edge

if.end31.i.if.end16_crit_edge:                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end35.i:                                       ; preds = %if.end31.i
  %skb.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %37 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skb.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i, align 4
  %out_qlen.i = getelementptr inbounds %struct.sctp_association, ptr %8, i32 0, i32 61, i32 3
  %41 = ptrtoint ptr %out_qlen.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %out_qlen.i, align 4
  %add.i = add i32 %42, %40
  %pathmtu.i = getelementptr inbounds %struct.sctp_transport, ptr %6, i32 0, i32 34
  %43 = ptrtoint ptr %pathmtu.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pathmtu.i, align 8
  %conv38.i = zext i16 %22 to i32
  %45 = add i32 %32, %conv38.i
  %46 = sub i32 -4, %45
  %sub40.i = add i32 %46, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub40.i)
  %cmp41.i = icmp ugt i32 %add.i, %sub40.i
  br i1 %cmp41.i, label %if.end35.i.if.end16_crit_edge, label %if.end44.i

if.end35.i.if.end16_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end44.i:                                       ; preds = %if.end35.i
  %msg.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 18
  %47 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %msg.i, align 4
  %can_delay.i = getelementptr inbounds %struct.sctp_datamsg, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %can_delay.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load45.i = load i8, ptr %can_delay.i, align 4
  %50 = and i8 %bf.load45.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool48.not.i = icmp eq i8 %50, 0
  br i1 %tobool48.not.i, label %if.end44.i.if.end16_crit_edge, label %if.end44.i.finish_crit_edge

if.end44.i.finish_crit_edge:                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %finish

if.end44.i.if.end16_crit_edge:                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end16:                                         ; preds = %if.end44.i.if.end16_crit_edge, %if.end35.i.if.end16_crit_edge, %if.end31.i.if.end16_crit_edge, %if.end27.i.if.end16_crit_edge, %land.lhs.true21.i.if.end16_crit_edge, %do.end.if.end16_crit_edge
  %transport.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 7
  %51 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %transport.i, align 4
  %asoc1.i = getelementptr inbounds %struct.sctp_transport, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %asoc1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %asoc1.i, align 8
  %tobool.not.i50 = icmp eq ptr %54, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %3)
  %cmp.i51 = icmp eq i8 %3, 15
  %or.cond = select i1 %tobool.not.i50, i1 true, i1 %cmp.i51
  br i1 %or.cond, label %if.end16.if.end21_crit_edge, label %lor.lhs.false.i

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

lor.lhs.false.i:                                  ; preds = %if.end16
  %has_auth.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 9
  %55 = ptrtoint ptr %has_auth.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i53 = load i8, ptr %has_auth.i, align 4
  %56 = and i8 %bf.load.i53, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool5.not.i = icmp eq i8 %56, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %lor.lhs.false.i.if.end21_crit_edge

lor.lhs.false.i.if.end21_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end7.i:                                        ; preds = %lor.lhs.false.i
  %auth8.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 21
  %57 = ptrtoint ptr %auth8.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load9.i = load i16, ptr %auth8.i, align 4
  %58 = and i16 %bf.load9.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool12.not.i = icmp eq i16 %58, 0
  br i1 %tobool12.not.i, label %if.end7.i.if.end21_crit_edge, label %if.end14.i

if.end7.i.if.end21_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end14.i:                                       ; preds = %if.end7.i
  %59 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 6
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %key_id.i = getelementptr inbounds %struct.sctp_shared_key, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %key_id.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %key_id.i, align 4
  %call.i = tail call ptr @sctp_make_auth(ptr noundef nonnull %54, i16 noundef zeroext %63) #10
  %tobool15.not.i = icmp eq ptr %call.i, null
  br i1 %tobool15.not.i, label %if.end14.i.if.end21_crit_edge, label %if.end17.i

if.end14.i.if.end21_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end17.i:                                       ; preds = %if.end14.i
  %64 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %59, align 4
  %66 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i, i32 0, i32 6
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %66, align 4
  tail call void @sctp_auth_shkey_hold(ptr noundef %65) #10
  %call18.i = tail call fastcc i32 @__sctp_packet_append_chunk(ptr noundef %packet, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.not.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.not.i, label %if.end17.i.if.end21_crit_edge, label %sctp_packet_bundle_auth.exit

if.end17.i.if.end21_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

sctp_packet_bundle_auth.exit:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sctp_chunk_free(ptr noundef nonnull %call.i) #10
  br label %finish

if.end21:                                         ; preds = %if.end17.i.if.end21_crit_edge, %if.end14.i.if.end21_crit_edge, %if.end7.i.if.end21_crit_edge, %lor.lhs.false.i.if.end21_crit_edge, %if.end16.if.end21_crit_edge
  %68 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %chunk_hdr, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 2
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %71, label %if.end21.if.end26_crit_edge [
    i8 0, label %if.end21.land.lhs.true.i_crit_edge
    i8 64, label %if.end21.land.lhs.true.i_crit_edge78
  ]

if.end21.land.lhs.true.i_crit_edge78:             ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

if.end21.land.lhs.true.i_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true.i:                                  ; preds = %if.end21.land.lhs.true.i_crit_edge, %if.end21.land.lhs.true.i_crit_edge78
  %has_sack.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 9
  %73 = ptrtoint ptr %has_sack.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i56 = load i8, ptr %has_sack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i56)
  %74 = icmp ult i8 %bf.load.i56, 64
  br i1 %74, label %if.then.i, label %land.lhs.true.i.if.end26_crit_edge

land.lhs.true.i.if.end26_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then.i:                                        ; preds = %land.lhs.true.i
  %75 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %transport.i, align 4
  %asoc12.i = getelementptr inbounds %struct.sctp_transport, ptr %76, i32 0, i32 8
  %77 = ptrtoint ptr %asoc12.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %asoc12.i, align 8
  %arrayidx.i = getelementptr %struct.sctp_association, ptr %78, i32 0, i32 31, i32 10
  %pprev.i.i.i = getelementptr %struct.sctp_association, ptr %78, i32 0, i32 31, i32 10, i32 0, i32 1
  %79 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.i.not.i, label %if.then.i.if.end26_crit_edge, label %if.then14.i

if.then.i.if.end26_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then14.i:                                      ; preds = %if.then.i
  %sack_generation.i = getelementptr inbounds %struct.sctp_transport, ptr %76, i32 0, i32 3
  %81 = ptrtoint ptr %sack_generation.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load16.i = load i8, ptr %sack_generation.i, align 4
  %bf.lshr17.i = lshr i8 %bf.load16.i, 3
  %bf.clear18.i = and i8 %bf.lshr17.i, 1
  %sack_generation21.i = getelementptr inbounds %struct.sctp_association, ptr %78, i32 0, i32 5, i32 12
  %82 = ptrtoint ptr %sack_generation21.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %bf.load22.i58 = load i16, ptr %sack_generation21.i, align 2
  %bf.lshr23.i = lshr i16 %bf.load22.i58, 5
  %bf.clear24.i = and i16 %bf.lshr23.i, 1
  %83 = zext i8 %bf.clear18.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.clear24.i, i16 %83)
  %cmp26.not.i = icmp eq i16 %bf.clear24.i, %83
  br i1 %cmp26.not.i, label %if.end.i59, label %if.then14.i.if.end26_crit_edge

if.then14.i.if.end26_crit_edge:                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end.i59:                                       ; preds = %if.then14.i
  %rwnd.i = getelementptr inbounds %struct.sctp_association, ptr %78, i32 0, i32 43
  %84 = ptrtoint ptr %rwnd.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rwnd.i, align 4
  %a_rwnd.i = getelementptr inbounds %struct.sctp_association, ptr %78, i32 0, i32 44
  %86 = ptrtoint ptr %a_rwnd.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %a_rwnd.i, align 8
  %call29.i = tail call ptr @sctp_make_sack(ptr noundef %78) #10
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %if.end.i59.if.end26_crit_edge, label %if.then31.i

if.end.i59.if.end26_crit_edge:                    ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then31.i:                                      ; preds = %if.end.i59
  %call32.i = tail call fastcc i32 @__sctp_packet_append_chunk(ptr noundef %packet, ptr noundef nonnull %call29.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.not.i = icmp eq i32 %call32.i, 0
  br i1 %cmp33.not.i, label %do.body37.i, label %sctp_packet_bundle_sack.exit

do.body37.i:                                      ; preds = %if.then31.i
  %87 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !83
  %net.i = getelementptr inbounds %struct.sctp_ep_common, ptr %78, i32 0, i32 4
  %88 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %net.i, align 8
  %sctp.i = getelementptr inbounds %struct.net, ptr %89, i32 0, i32 38
  %90 = ptrtoint ptr %sctp.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sctp.i, align 8
  %arrayidx51.i = getelementptr [34 x i32], ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %arrayidx51.i to i32
  %93 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu.i, align 4
  %arrayidx54.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx54.i, align 4
  %add.i60 = add i32 %98, %92
  %99 = inttoptr i32 %add.i60 to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add55.i = add i32 %101, 1
  store i32 %add55.i, ptr %99, align 4
  %102 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !84
  %and.i.i.i = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool66.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool66.not.i, label %if.then70.i, label %do.body37.i.do.end73.i_crit_edge, !prof !85

do.body37.i.do.end73.i_crit_edge:                 ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73.i

if.then70.i:                                      ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end73.i

do.end73.i:                                       ; preds = %if.then70.i, %do.body37.i.do.end73.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %87) #10, !srcloc !86
  %octrlchunks.i = getelementptr inbounds %struct.sctp_association, ptr %78, i32 0, i32 85, i32 14
  %103 = ptrtoint ptr %octrlchunks.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %octrlchunks.i, align 8
  %inc.i = add i64 %104, 1
  store i64 %inc.i, ptr %octrlchunks.i, align 8
  %105 = ptrtoint ptr %sack_generation21.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %bf.load81.i = load i16, ptr %sack_generation21.i, align 2
  %bf.clear82.i = and i16 %bf.load81.i, -65
  store i16 %bf.clear82.i, ptr %sack_generation21.i, align 2
  %call83.i = tail call i32 @del_timer(ptr noundef %arrayidx.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %do.end73.i.if.end26_crit_edge, label %if.then85.i

do.end73.i.if.end26_crit_edge:                    ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then85.i:                                      ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sctp_association_put(ptr noundef %78) #10
  br label %if.end26

sctp_packet_bundle_sack.exit:                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sctp_chunk_free(ptr noundef nonnull %call29.i) #10
  br label %finish

if.end26:                                         ; preds = %if.then85.i, %do.end73.i.if.end26_crit_edge, %if.end.i59.if.end26_crit_edge, %if.then14.i.if.end26_crit_edge, %if.then.i.if.end26_crit_edge, %land.lhs.true.i.if.end26_crit_edge, %if.end21.if.end26_crit_edge
  %call27 = tail call fastcc i32 @__sctp_packet_append_chunk(ptr noundef %packet, ptr noundef %chunk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end31, label %if.end26.finish_crit_edge

if.end26.finish_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %finish

if.end31:                                         ; preds = %if.end26
  %106 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %transport.i, align 4
  %pmtu_probe.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 21
  %108 = ptrtoint ptr %pmtu_probe.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %bf.load.i62 = load i16, ptr %pmtu_probe.i, align 4
  %109 = and i16 %bf.load.i62, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool.not.i63 = icmp eq i16 %109, 0
  br i1 %tobool.not.i63, label %if.end31.finish_crit_edge, label %if.end.i66

if.end31.finish_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %finish

if.end.i66:                                       ; preds = %if.end31
  %asoc.i = getelementptr inbounds %struct.sctp_transport, ptr %107, i32 0, i32 8
  %110 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %asoc.i, align 8
  %probe_size.i = getelementptr inbounds %struct.sctp_transport, ptr %107, i32 0, i32 48, i32 1
  %112 = ptrtoint ptr %probe_size.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %probe_size.i, align 2
  %conv.i64 = zext i16 %113 to i32
  %sub.i = add nsw i32 %conv.i64, -76
  %call.i65 = tail call ptr @sctp_make_pad(ptr noundef %111, i32 noundef %sub.i) #10
  %tobool2.not.i = icmp eq ptr %call.i65, null
  br i1 %tobool2.not.i, label %if.end.i66.finish_crit_edge, label %if.end4.i

if.end.i66.finish_crit_edge:                      ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %finish

if.end4.i:                                        ; preds = %if.end.i66
  %chunk_list.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 3, i32 1
  %114 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i65, ptr noundef %115, ptr noundef %chunk_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.list_add_tail.exit.i_crit_edge

if.end4.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call.i65, ptr %prev.i.i, align 4
  %117 = ptrtoint ptr %call.i65 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %chunk_list.i, ptr %call.i65, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i65, i32 0, i32 1
  %118 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev3.i.i.i, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %call.i65, ptr %115, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end4.i.list_add_tail.exit.i_crit_edge
  %chunk_hdr.i67 = getelementptr inbounds %struct.sctp_chunk, ptr %call.i65, i32 0, i32 10
  %120 = ptrtoint ptr %chunk_hdr.i67 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %chunk_hdr.i67, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %length.i, align 2
  %conv5.i = zext i16 %123 to i32
  %add6.i = add nuw nsw i32 %conv5.i, 3
  %and.i = and i32 %add6.i, 131068
  %size.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 5
  %124 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %size.i, align 4
  %add7.i = add i32 %and.i, %125
  store i32 %add7.i, ptr %size.i, align 4
  %transport8.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %126 = ptrtoint ptr %transport8.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %107, ptr %transport8.i, align 4
  br label %finish

finish:                                           ; preds = %list_add_tail.exit.i, %if.end.i66.finish_crit_edge, %if.end31.finish_crit_edge, %if.end26.finish_crit_edge, %sctp_packet_bundle_sack.exit, %sctp_packet_bundle_auth.exit, %if.end44.i.finish_crit_edge, %land.lhs.true11.i.finish_crit_edge, %if.then10.finish_crit_edge
  %retval1.0 = phi i32 [ %call18.i, %sctp_packet_bundle_auth.exit ], [ 1, %sctp_packet_bundle_sack.exit ], [ 1, %if.end26.finish_crit_edge ], [ 2, %if.then10.finish_crit_edge ], [ 2, %land.lhs.true11.i.finish_crit_edge ], [ 3, %if.end44.i.finish_crit_edge ], [ 0, %list_add_tail.exit.i ], [ 0, %if.end31.finish_crit_edge ], [ 3, %if.end.i66.finish_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_packet_init(ptr noundef %packet, ptr noundef %transport, i16 noundef zeroext %sport, i16 noundef zeroext %dport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_packet_init.__UNIQUE_ID_ddebug566, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_packet_init, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_packet_init.__UNIQUE_ID_ddebug566, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef %packet, ptr noundef %transport) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %transport3 = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 7
  %0 = ptrtoint ptr %transport3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %transport, ptr %transport3, align 4
  %1 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %sport, ptr %packet, align 4
  %destination_port = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 1
  %2 = ptrtoint ptr %destination_port to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %dport, ptr %destination_port, align 2
  %chunk_list = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 3
  %3 = ptrtoint ptr %chunk_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %chunk_list, ptr %chunk_list, align 4
  %prev.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %chunk_list, ptr %prev.i, align 4
  %overhead = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 4
  %5 = ptrtoint ptr %overhead to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %overhead, align 4
  %size.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 5
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %size.i, align 4
  %has_cookie_echo.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 9
  %7 = ptrtoint ptr %has_cookie_echo.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %has_cookie_echo.i, align 4
  %bf.clear11.i = and i8 %bf.load.i, 7
  store i8 %bf.clear11.i, ptr %has_cookie_echo.i, align 4
  %auth.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 8
  %8 = ptrtoint ptr %auth.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %auth.i, align 4
  %vtag = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 2
  %9 = ptrtoint ptr %vtag to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %vtag, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_packet_free(ptr noundef %packet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_packet_free.__UNIQUE_ID_ddebug567, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_packet_free, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_packet_free.__UNIQUE_ID_ddebug567, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, ptr noundef %packet) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %chunk_list = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 3
  %0 = ptrtoint ptr %chunk_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_list, align 4
  %cmp.not26 = icmp eq ptr %1, %chunk_list
  br i1 %cmp.not26, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %chunk.027 = phi ptr [ %tmp.0, %list_del_init.exit.for.body_crit_edge ], [ %1, %do.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %chunk.027 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %chunk.027, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %chunk.027) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %chunk.027, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %chunk.027 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chunk.027, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %chunk.027 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %chunk.027, ptr %chunk.027, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %chunk.027, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %chunk.027, ptr %prev.i3.i, align 4
  tail call void @sctp_chunk_free(ptr noundef %chunk.027) #10
  %cmp.not = icmp eq ptr %tmp.0, %chunk_list
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_packet_transmit_chunk(ptr noundef %packet, ptr noundef %chunk, i32 noundef %one_packet, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_packet_transmit_chunk.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_packet_transmit_chunk, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ -1, %if.then.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_packet_transmit_chunk.__UNIQUE_ID_ddebug568, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, ptr noundef %packet, i32 noundef %1, ptr noundef %chunk, i32 noundef %cond) #10
  br label %do.end

do.end:                                           ; preds = %cond.end, %entry
  %call6 = tail call i32 @sctp_packet_append_chunk(ptr noundef %packet, ptr noundef %chunk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cond19 = icmp eq i32 %call6, 1
  br i1 %cond19, label %sw.bb, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %has_cookie_echo = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 9
  %6 = ptrtoint ptr %has_cookie_echo to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %has_cookie_echo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %if.then8, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then8:                                         ; preds = %sw.bb
  %call9 = tail call i32 @sctp_packet_transmit(ptr noundef %packet, i32 noundef %gfp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %one_packet)
  %tobool13.not = icmp eq i32 %one_packet, 0
  br i1 %tobool13.not, label %if.then14, label %if.then8.sw.epilog_crit_edge

if.then8.sw.epilog_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 @sctp_packet_append_chunk(ptr noundef %packet, ptr noundef %chunk)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then14, %if.then8.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  %retval1.1 = phi i32 [ 1, %sw.bb.sw.epilog_crit_edge ], [ %call6, %do.end.sw.epilog_crit_edge ], [ 1, %if.then8.sw.epilog_crit_edge ], [ %call15, %if.then14 ]
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_packet_transmit(ptr noundef %packet, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %transport = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 7
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport, align 4
  %asoc1 = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asoc1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_packet_transmit.__UNIQUE_ID_ddebug573, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_packet_transmit, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_packet_transmit.__UNIQUE_ID_ddebug573, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.17, ptr noundef %packet) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %chunk_list = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 3
  %4 = ptrtoint ptr %chunk_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %chunk_list, align 4
  %cmp.i.not = icmp eq ptr %5, %chunk_list
  br i1 %cmp.i.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %size = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 5
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %pathmtu = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 34
  %13 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pathmtu, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp = icmp ugt i32 %12, %14
  br i1 %cmp, label %land.lhs.true, label %if.end8._crit_edge

if.end8._crit_edge:                               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %26

land.lhs.true:                                    ; preds = %if.end8
  %ipfragok = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 9
  %15 = ptrtoint ptr %ipfragok to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %ipfragok, align 4
  %16 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool11.not = icmp eq i8 %16, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %land.lhs.true._crit_edge

land.lhs.true._crit_edge:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %26

land.lhs.true12:                                  ; preds = %land.lhs.true
  %pmtu_probe = getelementptr inbounds %struct.sctp_chunk, ptr %5, i32 0, i32 21
  %17 = ptrtoint ptr %pmtu_probe to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load13 = load i16, ptr %pmtu_probe, align 4
  %18 = and i16 %bf.load13, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool16.not = icmp eq i16 %18, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true12._crit_edge

land.lhs.true12._crit_edge:                       ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %26

if.then17:                                        ; preds = %land.lhs.true12
  %state = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 48, i32 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp18 = icmp eq i8 %20, 4
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set = or i8 %bf.load, 8
  %21 = ptrtoint ptr %ipfragok to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %bf.set, ptr %ipfragok, align 4
  br label %26

if.else:                                          ; preds = %if.then17
  %sk_route_caps.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 38
  %22 = ptrtoint ptr %sk_route_caps.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sk_route_caps.i, align 8
  %sk_gso_type.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 39
  %24 = ptrtoint ptr %sk_gso_type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sk_gso_type.i, align 8
  %conv.i.i = sext i32 %25 to i64
  %shl.i.i = shl nsw i64 %conv.i.i, 16
  %and.i.i = and i64 %shl.i.i, %23
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %shl.i.i)
  %cmp.i.i = icmp eq i64 %and.i.i, %shl.i.i
  br i1 %cmp.i.i, label %if.end53, label %land.end

land.end:                                         ; preds = %if.else
  %.b275 = load i1, ptr @sctp_packet_transmit.__already_done, align 1
  br i1 %.b275, label %land.end.out_crit_edge, label %if.then37, !prof !87

land.end.out_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then37:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sctp_packet_transmit.__already_done, align 1
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #13
  br label %out

if.end53:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %overhead = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 4
  br label %27

26:                                               ; preds = %if.then20, %land.lhs.true12._crit_edge, %land.lhs.true._crit_edge, %if.end8._crit_edge
  %overhead288 = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 4
  br label %27

27:                                               ; preds = %26, %if.end53
  %overhead291 = phi ptr [ %overhead288, %26 ], [ %overhead, %if.end53 ]
  %gso.0289 = phi i32 [ 0, %26 ], [ 1, %if.end53 ]
  %28 = phi ptr [ %size, %26 ], [ %overhead, %if.end53 ]
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %cond = load i32, ptr %28, align 4
  %add = add i32 %cond, 176
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #10
  %tobool57.not = icmp eq ptr %call.i, null
  br i1 %tobool57.not, label %.out_crit_edge, label %if.end59

.out_crit_edge:                                   ; preds = %27
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end59:                                         ; preds = %27
  %30 = ptrtoint ptr %overhead291 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %overhead291, align 4
  %add61 = add i32 %31, 176
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 %add61
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %35, i32 %add61
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i, ptr noundef %10) #10
  %call62 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 12) #10
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %38 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i280 = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %40 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i280, ptr %transport_header.i, align 2
  %41 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %packet, align 4
  %43 = ptrtoint ptr %call62 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %call62, align 4
  %destination_port = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 1
  %44 = ptrtoint ptr %destination_port to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %destination_port, align 2
  %dest = getelementptr inbounds %struct.sctphdr, ptr %call62, i32 0, i32 1
  %46 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %dest, align 2
  %vtag = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 2
  %47 = ptrtoint ptr %vtag to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vtag, align 4
  %vtag63 = getelementptr inbounds %struct.sctphdr, ptr %call62, i32 0, i32 2
  %49 = ptrtoint ptr %vtag63 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %vtag63, align 4
  %checksum = getelementptr inbounds %struct.sctphdr, ptr %call62, i32 0, i32 3
  %50 = ptrtoint ptr %checksum to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %checksum, align 4
  %dst = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 18
  %51 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dst, align 8
  %tobool64.not = icmp eq ptr %52, null
  br i1 %tobool64.not, label %do.body66, label %if.end83

do.body66:                                        ; preds = %if.end59
  tail call fastcc void @local_bh_disable()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 9
  %53 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %skc_net.i, align 4
  %mib = getelementptr inbounds %struct.net, ptr %54, i32 0, i32 30
  %55 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mib, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx, align 4
  %add75 = add i32 %63, %57
  %64 = inttoptr i32 %add75 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %64, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %65 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i, label %do.body66.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

do.body66.u64_stats_update_begin.exit_crit_edge:  ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %do.body66
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %67, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !88
  %68 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %73, ptrtoint (ptr @lockdep_recursion to i32)
  %74 = inttoptr i32 %add.i.i to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  %77 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i7.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %80, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool20.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %81 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i.i281 = icmp eq i32 %84, 0
  br i1 %cmp.i.i281, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %85 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i9.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %88, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %89 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %90
  %91 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %92, ptrtoint (ptr @hardirqs_enabled to i32)
  %93 = inttoptr i32 %add47.i.i to ptr
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %93, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !91
  %96 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i12.i.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %99, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool54.not.i.i = icmp eq i32 %95, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !87

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %do.body66.u64_stats_update_begin.exit_crit_edge
  %100 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %101, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  %dep_map.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %64, i32 0, i32 1, i32 0, i32 1
  %102 = tail call ptr @llvm.returnaddress(i32 0) #10
  %103 = ptrtoint ptr %102 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %103) #10
  %arrayidx76 = getelementptr [37 x i64], ptr %64, i32 0, i32 15
  %104 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %arrayidx76, align 8
  %add77 = add i64 %105, 1
  store i64 %add77, ptr %arrayidx76, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %103) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !93
  %106 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %107, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #10
  br label %out

if.end83:                                         ; preds = %if.end59
  %call84 = tail call fastcc i32 @sctp_packet_pack(ptr noundef %packet, ptr noundef nonnull %call.i, i32 noundef %gso.0289, i32 noundef %gfp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then86, label %do.body88

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #10
  br label %out

do.body88:                                        ; preds = %if.end83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_packet_transmit.__UNIQUE_ID_ddebug574, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_packet_transmit, %if.then100)) #10
          to label %do.end103 [label %if.then100], !srcloc !77

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %108 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_packet_transmit.__UNIQUE_ID_ddebug574, ptr noundef nonnull @.str.20, i32 noundef %109) #10
  br label %do.end103

do.end103:                                        ; preds = %if.then100, %do.body88
  %has_data = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 9
  %110 = ptrtoint ptr %has_data to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load104 = load i8, ptr %has_data, align 4
  %111 = and i8 %bf.load104, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool108.not = icmp eq i8 %111, 0
  br i1 %tobool108.not, label %do.end103.if.end124_crit_edge, label %land.lhs.true109

do.end103.if.end124_crit_edge:                    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

land.lhs.true109:                                 ; preds = %do.end103
  %state1.i = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 6
  %112 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %113)
  %cmp.i282.not = icmp eq i32 %113, 3
  br i1 %cmp.i282.not, label %land.lhs.true112, label %land.lhs.true109.if.end124_crit_edge

land.lhs.true109.if.end124_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

land.lhs.true112:                                 ; preds = %land.lhs.true109
  %arrayidx113 = getelementptr %struct.sctp_association, ptr %3, i32 0, i32 30, i32 11
  %114 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool114.not = icmp eq i32 %115, 0
  br i1 %tobool114.not, label %land.lhs.true112.if.end124_crit_edge, label %if.then115

land.lhs.true112.if.end124_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then115:                                       ; preds = %land.lhs.true112
  %arrayidx116 = getelementptr %struct.sctp_association, ptr %3, i32 0, i32 31, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %116 = load volatile i32, ptr @jiffies, align 128
  %add119 = add i32 %116, %115
  %call120 = tail call i32 @mod_timer(ptr noundef %arrayidx116, i32 noundef %add119) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then122, label %if.then115.if.end124_crit_edge

if.then115.if.end124_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then122:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sctp_association_hold(ptr noundef %3) #10
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.then115.if.end124_crit_edge, %land.lhs.true112.if.end124_crit_edge, %land.lhs.true109.if.end124_crit_edge, %do.end103.if.end124_crit_edge
  %af_specific = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 7
  %117 = ptrtoint ptr %af_specific to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %af_specific, align 4
  %ecn_capable = getelementptr inbounds %struct.sctp_af, ptr %118, i32 0, i32 20
  %119 = ptrtoint ptr %ecn_capable to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ecn_capable, align 4
  tail call void %120(ptr noundef %10) #10
  %tobool125.not = icmp eq ptr %3, null
  br i1 %tobool125.not, label %if.end124.if.end135_crit_edge, label %if.then126

if.end124.if.end135_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.then126:                                       ; preds = %if.end124
  %conv127 = sext i32 %call84 to i64
  %opackets = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 85, i32 4
  %121 = ptrtoint ptr %opackets to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %opackets, align 8
  %add128 = add i64 %122, %conv127
  store i64 %add128, ptr %opackets, align 8
  %last_sent_to = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 5, i32 8
  %123 = ptrtoint ptr %last_sent_to to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %last_sent_to, align 8
  %cmp129.not = icmp eq ptr %124, %1
  br i1 %cmp129.not, label %if.then126.if.end135_crit_edge, label %if.then131

if.then126.if.end135_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.then131:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %last_sent_to to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %1, ptr %last_sent_to, align 8
  br label %if.end135

if.end135:                                        ; preds = %if.then131, %if.then126.if.end135_crit_edge, %if.end124.if.end135_crit_edge
  %126 = ptrtoint ptr %has_data to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load137 = load i8, ptr %has_data, align 4
  %bf.lshr138 = lshr i8 %bf.load137, 3
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %127 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %127)
  %bf.load140 = load i16, ptr %ignore_df, align 8
  %128 = and i8 %bf.lshr138, 1
  %bf.value = zext i8 %128 to i16
  %bf.shl = shl nuw nsw i16 %bf.value, 12
  %bf.clear141 = and i16 %bf.load140, -4097
  %bf.set142 = or i16 %bf.shl, %bf.clear141
  store i16 %bf.set142, ptr %ignore_df, align 8
  %dst_pending_confirm = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 3
  %129 = ptrtoint ptr %dst_pending_confirm to i32
  call void @__asan_load1_noabort(i32 %129)
  %bf.load143 = load i8, ptr %dst_pending_confirm, align 4
  %130 = and i8 %bf.load143, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool146.not = icmp eq i8 %130, 0
  br i1 %tobool146.not, label %if.end135.if.end148_crit_edge, label %if.then147

if.end135.if.end148_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.then147:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  %dst_pending_confirm.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 3
  %131 = ptrtoint ptr %dst_pending_confirm.i to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %bf.load.i = load i32, ptr %dst_pending_confirm.i, align 2
  %bf.set.i = or i32 %bf.load.i, 67108864
  store i32 %bf.set.i, ptr %dst_pending_confirm.i, align 2
  br label %if.end148

if.end148:                                        ; preds = %if.then147, %if.end135.if.end148_crit_edge
  %132 = ptrtoint ptr %af_specific to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %af_specific, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %call150 = tail call i32 %135(ptr noundef nonnull %call.i, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call150)
  %cmp151 = icmp sgt i32 %call150, -1
  br i1 %cmp151, label %land.lhs.true153, label %if.end148.out_crit_edge

if.end148.out_crit_edge:                          ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true153:                                 ; preds = %if.end148
  %136 = ptrtoint ptr %dst_pending_confirm to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load155 = load i8, ptr %dst_pending_confirm, align 4
  %137 = and i8 %bf.load155, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool159.not = icmp eq i8 %137, 0
  br i1 %tobool159.not, label %land.lhs.true153.out_crit_edge, label %if.then160

land.lhs.true153.out_crit_edge:                   ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then160:                                       ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear163 = and i8 %bf.load155, -17
  %138 = ptrtoint ptr %dst_pending_confirm to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %bf.clear163, ptr %dst_pending_confirm, align 4
  br label %out

out:                                              ; preds = %if.then160, %land.lhs.true153.out_crit_edge, %if.end148.out_crit_edge, %if.then86, %u64_stats_update_begin.exit, %.out_crit_edge, %if.then37, %land.end.out_crit_edge
  %139 = ptrtoint ptr %chunk_list to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %chunk_list, align 4
  %cmp177.not295 = icmp eq ptr %140, %chunk_list
  br i1 %cmp177.not295, label %out.for.end_crit_edge, label %out.for.body_crit_edge

out.for.body_crit_edge:                           ; preds = %out
  br label %for.body

out.for.end_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %out.for.body_crit_edge
  %chunk.0296 = phi ptr [ %tmp.0298, %for.inc.for.body_crit_edge ], [ %140, %out.for.body_crit_edge ]
  %141 = ptrtoint ptr %chunk.0296 to i32
  call void @__asan_load4_noabort(i32 %141)
  %tmp.0298 = load ptr, ptr %chunk.0296, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %chunk.0296) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %chunk.0296, i32 0, i32 1
  %142 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev.i.i, align 4
  %144 = ptrtoint ptr %chunk.0296 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %chunk.0296, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %prev1.i.i.i, align 4
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %145, ptr %143, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %148 = ptrtoint ptr %chunk.0296 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %chunk.0296, ptr %chunk.0296, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %chunk.0296, i32 0, i32 1
  %149 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %chunk.0296, ptr %prev.i3.i, align 4
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.0296, i32 0, i32 10
  %150 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %chunk_hdr, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %151, align 2
  %154 = zext i8 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %153, label %if.then190 [
    i8 0, label %list_del_init.exit.for.inc_crit_edge
    i8 64, label %list_del_init.exit.for.inc_crit_edge299
  ]

list_del_init.exit.for.inc_crit_edge299:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

list_del_init.exit.for.inc_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then190:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sctp_chunk_free(ptr noundef %chunk.0296) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then190, %list_del_init.exit.for.inc_crit_edge, %list_del_init.exit.for.inc_crit_edge299
  %cmp177.not = icmp eq ptr %tmp.0298, %chunk_list
  br i1 %cmp177.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %out.for.end_crit_edge
  %overhead.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 4
  %155 = ptrtoint ptr %overhead.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %overhead.i, align 4
  %157 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %size, align 4
  %has_cookie_echo.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 9
  %158 = ptrtoint ptr %has_cookie_echo.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load.i284 = load i8, ptr %has_cookie_echo.i, align 4
  %bf.clear11.i = and i8 %bf.load.i284, 7
  store i8 %bf.clear11.i, ptr %has_cookie_echo.i, align 4
  %auth.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 8
  %159 = ptrtoint ptr %auth.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %auth.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__sctp_packet_append_chunk(ptr noundef %packet, ptr noundef %chunk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 2
  %add = add i16 %3, 3
  %and = and i16 %add, -4
  %auth.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 8
  %4 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %auth.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %6 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 6
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  br i1 %tobool.not.i, label %land.lhs.true5.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %9 = getelementptr inbounds %struct.sctp_chunk, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %cmp.not.i = icmp eq ptr %8, %11
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.finish_crit_edge

land.lhs.true.i.finish_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %finish

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true5.i:                                 ; preds = %entry
  %tobool6.not.i = icmp eq ptr %8, null
  br i1 %tobool6.not.i, label %land.lhs.true5.i.if.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true5.i.if.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true5.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %13)
  %cmp8.not.i = icmp eq i8 %13, 15
  br i1 %cmp8.not.i, label %land.lhs.true7.i.if.end.i_crit_edge, label %land.lhs.true7.i.finish_crit_edge

land.lhs.true7.i.finish_crit_edge:                ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %finish

land.lhs.true7.i.if.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true7.i.if.end.i_crit_edge, %land.lhs.true5.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge
  %size.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 5
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %transport.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 7
  %16 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %transport.i, align 4
  %asoc.i = getelementptr inbounds %struct.sctp_transport, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %asoc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asoc.i, align 8
  %tobool10.not.i = icmp eq ptr %19, null
  %pathmtu.i = getelementptr inbounds %struct.sctp_association, ptr %19, i32 0, i32 26
  %pathmtu15.i = getelementptr inbounds %struct.sctp_transport, ptr %17, i32 0, i32 34
  %pmtu.0.in.i = select i1 %tobool10.not.i, ptr %pathmtu15.i, ptr %pathmtu.i
  %20 = ptrtoint ptr %pmtu.0.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %pmtu.0.i = load i32, ptr %pmtu.0.in.i, align 4
  %conv17.i = zext i16 %and to i32
  %add.i = add i32 %15, %conv17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %pmtu.0.i)
  %cmp18.i = icmp ugt i32 %add.i, %pmtu.0.i
  br i1 %cmp18.i, label %if.then20.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then20.i:                                      ; preds = %if.end.i
  %overhead.i.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 4
  %21 = ptrtoint ptr %overhead.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %overhead.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %22)
  %cmp.i.not.i = icmp eq i32 %15, %22
  br i1 %cmp.i.not.i, label %if.then20.i.if.then31.i_crit_edge, label %lor.lhs.false22.i

if.then20.i.if.then31.i_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

lor.lhs.false22.i:                                ; preds = %if.then20.i
  %has_data.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 9
  %23 = ptrtoint ptr %has_data.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %has_data.i, align 4
  %24 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool23.not.i = icmp eq i8 %24, 0
  br i1 %tobool23.not.i, label %land.lhs.true24.i, label %lor.lhs.false22.i.if.end34.i_crit_edge

lor.lhs.false22.i.if.end34.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

land.lhs.true24.i:                                ; preds = %lor.lhs.false22.i
  %auth25.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 21
  %25 = ptrtoint ptr %auth25.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load26.i = load i16, ptr %auth25.i, align 4
  %26 = and i16 %bf.load26.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool30.not.i = icmp eq i16 %26, 0
  br i1 %tobool30.not.i, label %land.lhs.true24.i.if.end34.i_crit_edge, label %land.lhs.true24.i.if.then31.i_crit_edge

land.lhs.true24.i.if.then31.i_crit_edge:          ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

land.lhs.true24.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then31.i:                                      ; preds = %land.lhs.true24.i.if.then31.i_crit_edge, %if.then20.i.if.then31.i_crit_edge
  %ipfragok.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 9
  %27 = ptrtoint ptr %ipfragok.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load32.i = load i8, ptr %ipfragok.i, align 4
  %bf.set.i = or i8 %bf.load32.i, 8
  store i8 %bf.set.i, ptr %ipfragok.i, align 4
  br label %if.end

if.end34.i:                                       ; preds = %land.lhs.true24.i.if.end34.i_crit_edge, %lor.lhs.false22.i.if.end34.i_crit_edge
  %sub.i = sub i32 %pmtu.0.i, %22
  br i1 %tobool.not.i, label %if.end34.i.if.end41.i_crit_edge, label %if.then37.i

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  %skb.i = getelementptr inbounds %struct.sctp_chunk, ptr %5, i32 0, i32 5
  %28 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 4
  %add39.i = add i32 %31, 3
  %and.i = and i32 %add39.i, -4
  %sub40.i = sub i32 %sub.i, %and.i
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then37.i, %if.end34.i.if.end41.i_crit_edge
  %maxsize.0.i = phi i32 [ %sub40.i, %if.then37.i ], [ %sub.i, %if.end34.i.if.end41.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %maxsize.0.i, i32 %conv17.i)
  %cmp43.i = icmp ult i32 %maxsize.0.i, %conv17.i
  %spec.select.i = zext i1 %cmp43.i to i32
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %1, align 2
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %33, label %land.lhs.true58.i [
    i8 0, label %if.end41.i.if.end66.i_crit_edge
    i8 64, label %if.end41.i.if.end66.i_crit_edge75
  ]

if.end41.i.if.end66.i_crit_edge75:                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

if.end41.i.if.end66.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

land.lhs.true58.i:                                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select135.i = select i1 %tobool23.not.i, i32 %spec.select.i, i32 1
  br label %if.end66.i

if.end66.i:                                       ; preds = %land.lhs.true58.i, %if.end41.i.if.end66.i_crit_edge, %if.end41.i.if.end66.i_crit_edge75
  %retval1.1.i = phi i32 [ %spec.select.i, %if.end41.i.if.end66.i_crit_edge ], [ %spec.select.i, %if.end41.i.if.end66.i_crit_edge75 ], [ %spec.select135.i, %land.lhs.true58.i ]
  %max_size.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 6
  %35 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %36)
  %cmp69.i = icmp ule i32 %add.i, %36
  %burst_limited.i = getelementptr inbounds %struct.sctp_transport, ptr %17, i32 0, i32 17
  %37 = ptrtoint ptr %burst_limited.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %burst_limited.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool74.not.i = icmp eq i32 %38, 0
  br i1 %tobool74.not.i, label %if.end82.i.thread, label %if.end82.i

if.end82.i.thread:                                ; preds = %if.end66.i
  %cwnd.i = getelementptr inbounds %struct.sctp_transport, ptr %17, i32 0, i32 13
  %39 = ptrtoint ptr %cwnd.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cwnd.i, align 4
  %shr.i = lshr i32 %40, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %shr.i)
  %cmp79.i = icmp ugt i32 %add.i, %shr.i
  br i1 %cmp79.i, label %if.end82.i.thread.finish_crit_edge, label %if.end82.i.thread.sctp_packet_will_fit.exit_crit_edge

if.end82.i.thread.sctp_packet_will_fit.exit_crit_edge: ; preds = %if.end82.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %sctp_packet_will_fit.exit

if.end82.i.thread.finish_crit_edge:               ; preds = %if.end82.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %finish

if.end82.i:                                       ; preds = %if.end66.i
  %shr91.i = lshr i32 %38, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %shr91.i)
  %cmp92.i = icmp ugt i32 %add.i, %shr91.i
  br i1 %cmp92.i, label %if.end82.i.finish_crit_edge, label %if.end82.i.sctp_packet_will_fit.exit_crit_edge

if.end82.i.sctp_packet_will_fit.exit_crit_edge:   ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sctp_packet_will_fit.exit

if.end82.i.finish_crit_edge:                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %finish

sctp_packet_will_fit.exit:                        ; preds = %if.end82.i.sctp_packet_will_fit.exit_crit_edge, %if.end82.i.thread.sctp_packet_will_fit.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1.i)
  %cmp.not74 = icmp eq i32 %retval1.1.i, 0
  %cmp.not = select i1 %cmp69.i, i1 %cmp.not74, i1 false
  br i1 %cmp.not, label %sctp_packet_will_fit.exit.if.end_crit_edge, label %sctp_packet_will_fit.exit.finish_crit_edge

sctp_packet_will_fit.exit.finish_crit_edge:       ; preds = %sctp_packet_will_fit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %finish

sctp_packet_will_fit.exit.if.end_crit_edge:       ; preds = %sctp_packet_will_fit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %sctp_packet_will_fit.exit.if.end_crit_edge, %if.then31.i, %if.end.i.if.end_crit_edge
  %41 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chunk_hdr, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 2
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %44, label %if.end.sw.epilog_crit_edge [
    i8 0, label %if.end.sw.bb_crit_edge
    i8 64, label %if.end.sw.bb_crit_edge76
    i8 10, label %sw.bb12
    i8 3, label %sw.bb16
    i8 15, label %sw.bb25
  ]

if.end.sw.bb_crit_edge76:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge76
  %46 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %transport.i, align 4
  %length.i.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %42, i32 0, i32 2
  %48 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %length.i.i, align 2
  %asoc.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 13
  %50 = ptrtoint ptr %asoc.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %asoc.i.i, align 4
  %si.i.i.i = getelementptr inbounds %struct.sctp_association, ptr %51, i32 0, i32 60, i32 6
  %52 = ptrtoint ptr %si.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %si.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %53, align 4
  %sub.i.i = sub i16 %49, %55
  %conv.i = zext i16 %sub.i.i to i32
  %asoc2.i = getelementptr inbounds %struct.sctp_transport, ptr %47, i32 0, i32 8
  %56 = ptrtoint ptr %asoc2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %asoc2.i, align 8
  %rwnd3.i = getelementptr inbounds %struct.sctp_association, ptr %57, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %rwnd3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rwnd3.i, align 8
  %flight_size.i = getelementptr inbounds %struct.sctp_transport, ptr %47, i32 0, i32 16
  %60 = ptrtoint ptr %flight_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flight_size.i, align 8
  %add.i56 = add i32 %61, %conv.i
  store i32 %add.i56, ptr %flight_size.i, align 8
  %outstanding_bytes.i = getelementptr inbounds %struct.sctp_association, ptr %57, i32 0, i32 61, i32 9
  %62 = ptrtoint ptr %outstanding_bytes.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %outstanding_bytes.i, align 4
  %add4.i = add i32 %63, %conv.i
  store i32 %add4.i, ptr %outstanding_bytes.i, align 4
  %64 = tail call i32 @llvm.usub.sat.i32(i32 %59, i32 %conv.i) #10
  %65 = ptrtoint ptr %rwnd3.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %rwnd3.i, align 8
  tail call void @sctp_chunk_assign_tsn(ptr noundef %chunk) #10
  %si.i = getelementptr inbounds %struct.sctp_association, ptr %57, i32 0, i32 60, i32 6
  %66 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %si.i, align 4
  %assign_number.i = getelementptr inbounds %struct.sctp_stream_interleave, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %assign_number.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %assign_number.i, align 4
  tail call void %69(ptr noundef %chunk) #10
  %has_sack = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 9
  %70 = ptrtoint ptr %has_sack to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load = load i8, ptr %has_sack, align 4
  %bf.set11 = or i8 %bf.load, 112
  store i8 %bf.set11, ptr %has_sack, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %sent_at = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 15
  %72 = ptrtoint ptr %sent_at to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %sent_at, align 4
  %sent_count = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 2
  %73 = ptrtoint ptr %sent_count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sent_count, align 4
  %inc = add i32 %74, 1
  store i32 %inc, ptr %sent_count, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %has_cookie_echo = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 9
  %75 = ptrtoint ptr %has_cookie_echo to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load13 = load i8, ptr %has_cookie_echo, align 4
  %bf.set15 = or i8 %bf.load13, -128
  store i8 %bf.set15, ptr %has_cookie_echo, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %has_sack17 = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 9
  %76 = ptrtoint ptr %has_sack17 to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load18 = load i8, ptr %has_sack17, align 4
  %bf.set20 = or i8 %bf.load18, 64
  store i8 %bf.set20, ptr %has_sack17, align 4
  %asoc = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 13
  %77 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %asoc, align 4
  %tobool.not = icmp eq ptr %78, null
  br i1 %tobool.not, label %sw.bb16.sw.epilog_crit_edge, label %if.then21

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then21:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  %osacks = getelementptr inbounds %struct.sctp_association, ptr %78, i32 0, i32 85, i32 3
  %79 = ptrtoint ptr %osacks to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %osacks, align 8
  %inc23 = add i64 %80, 1
  store i64 %inc23, ptr %osacks, align 8
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %has_auth26 = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 9
  %81 = ptrtoint ptr %has_auth26 to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load27 = load i8, ptr %has_auth26, align 4
  %bf.set29 = or i8 %bf.load27, 32
  store i8 %bf.set29, ptr %has_auth26, align 4
  %82 = ptrtoint ptr %auth.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %chunk, ptr %auth.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %if.then21, %sw.bb16.sw.epilog_crit_edge, %sw.bb12, %sw.bb, %if.end.sw.epilog_crit_edge
  %chunk_list = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 3, i32 1
  %83 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %chunk, ptr noundef %84, ptr noundef %chunk_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog.list_add_tail.exit_crit_edge

sw.epilog.list_add_tail.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %chunk, ptr %prev.i, align 4
  %86 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %chunk_list, ptr %chunk, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %chunk, i32 0, i32 1
  %87 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev3.i.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %chunk, ptr %84, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sw.epilog.list_add_tail.exit_crit_edge
  %89 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %size.i, align 4
  %add31 = add i32 %90, %conv17.i
  store i32 %add31, ptr %size.i, align 4
  %91 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %transport.i, align 4
  %transport32 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %93 = ptrtoint ptr %transport32 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %transport32, align 4
  br label %finish

finish:                                           ; preds = %list_add_tail.exit, %sctp_packet_will_fit.exit.finish_crit_edge, %if.end82.i.finish_crit_edge, %if.end82.i.thread.finish_crit_edge, %land.lhs.true7.i.finish_crit_edge, %land.lhs.true.i.finish_crit_edge
  %retval.0.i59 = phi i32 [ 1, %sctp_packet_will_fit.exit.finish_crit_edge ], [ 0, %list_add_tail.exit ], [ 1, %land.lhs.true7.i.finish_crit_edge ], [ 1, %land.lhs.true.i.finish_crit_edge ], [ 1, %if.end82.i.finish_crit_edge ], [ 1, %if.end82.i.thread.finish_crit_edge ]
  ret i32 %retval.0.i59
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_packet_pack(ptr noundef %packet, ptr noundef %head, i32 noundef %gso, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %transport = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 7
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gso)
  %tobool.not = icmp eq i32 %gso, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %sk_gso_type = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 39
  %5 = ptrtoint ptr %sk_gso_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sk_gso_type, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 17
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %gso_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %gso_type, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 3
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %head, ptr %cb, align 8
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %size = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 5
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  br label %merge

do.body:                                          ; preds = %if.end183.thread.do.body_crit_edge, %if.end183.do.body_crit_edge, %if.then
  %auth_len.0 = phi i32 [ 0, %if.then ], [ %auth_len.5, %if.end183.do.body_crit_edge ], [ %auth_len.5, %if.end183.thread.do.body_crit_edge ]
  %pkt_count.0 = phi i32 [ 0, %if.then ], [ %inc, %if.end183.do.body_crit_edge ], [ %inc358, %if.end183.thread.do.body_crit_edge ]
  %auth.0 = phi ptr [ null, %if.then ], [ %auth.4, %if.end183.do.body_crit_edge ], [ %auth.4, %if.end183.thread.do.body_crit_edge ]
  %overhead = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 4
  %13 = ptrtoint ptr %overhead to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %overhead, align 4
  %chunk_list = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 3
  %15 = ptrtoint ptr %chunk_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chunk_list, align 4
  %cmp.not370 = icmp eq ptr %16, %chunk_list
  br i1 %cmp.not370, label %do.body.for.end_crit_edge, label %for.body.lr.ph

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body
  %auth8 = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 8
  %17 = ptrtoint ptr %auth8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %auth8, align 4
  %pathmtu = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 34
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %chunk.0374 = phi ptr [ %16, %for.body.lr.ph ], [ %tmp.0375, %cleanup.for.body_crit_edge ]
  %pkt_size.0372 = phi i32 [ %14, %for.body.lr.ph ], [ %add25.pre-phi, %cleanup.for.body_crit_edge ]
  %auth_len.1371 = phi i32 [ %auth_len.0, %for.body.lr.ph ], [ %auth_len.2, %cleanup.for.body_crit_edge ]
  %19 = ptrtoint ptr %chunk.0374 to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp.0375 = load ptr, ptr %chunk.0374, align 4
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.0374, i32 0, i32 5
  %20 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %add = add i32 %23, 3
  %and = and i32 %add, -4
  %cmp9 = icmp eq ptr %chunk.0374, %18
  br i1 %cmp9, label %for.body.cleanup_crit_edge, label %if.else11

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = add i32 %and, %pkt_size.0372
  br label %cleanup

if.else11:                                        ; preds = %for.body
  %add12 = add i32 %auth_len.1371, %14
  %add14 = add i32 %add12, %and
  %24 = ptrtoint ptr %pathmtu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pathmtu, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %25)
  %cmp15 = icmp ugt i32 %add14, %25
  br i1 %cmp15, label %if.else11.cleanup230_crit_edge, label %if.else17

if.else11.cleanup230_crit_edge:                   ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup230

if.else17:                                        ; preds = %if.else11
  %add18 = add i32 %and, %pkt_size.0372
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %25)
  %cmp20 = icmp ugt i32 %add18, %25
  br i1 %cmp20, label %if.else17.for.end_crit_edge, label %if.else17.cleanup_crit_edge

if.else17.cleanup_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else17.for.end_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %if.else17.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %add25.pre-phi = phi i32 [ %.pre, %for.body.cleanup_crit_edge ], [ %add18, %if.else17.cleanup_crit_edge ]
  %auth_len.2 = phi i32 [ %and, %for.body.cleanup_crit_edge ], [ %auth_len.1371, %if.else17.cleanup_crit_edge ]
  %cmp.not = icmp eq ptr %tmp.0375, %chunk_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.else17.for.end_crit_edge, %do.body.for.end_crit_edge
  %auth_len.1.lcssa = phi i32 [ %auth_len.0, %do.body.for.end_crit_edge ], [ %auth_len.1371, %if.else17.for.end_crit_edge ], [ %auth_len.2, %cleanup.for.end_crit_edge ]
  %pkt_size.0.lcssa = phi i32 [ %14, %do.body.for.end_crit_edge ], [ %pkt_size.0372, %if.else17.for.end_crit_edge ], [ %add25.pre-phi, %cleanup.for.end_crit_edge ]
  %add31 = add i32 %pkt_size.0.lcssa, 176
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add31, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #10
  %tobool33.not = icmp eq ptr %call.i, null
  br i1 %tobool33.not, label %for.end.cleanup230_crit_edge, label %if.end35

for.end.cleanup230_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup230

if.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %overhead to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %overhead, align 4
  %add37 = add i32 %27, 176
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 %add37
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %31, i32 %add37
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %merge

merge:                                            ; preds = %if.end35, %if.else
  %auth_len.5 = phi i32 [ %auth_len.1.lcssa, %if.end35 ], [ 0, %if.else ]
  %nskb.0 = phi ptr [ %call.i, %if.end35 ], [ %head, %if.else ]
  %pkt_size.3 = phi i32 [ %pkt_size.0.lcssa, %if.end35 ], [ %12, %if.else ]
  %pkt_count.1 = phi i32 [ %pkt_count.0, %if.end35 ], [ 0, %if.else ]
  %auth.1 = phi ptr [ %auth.0, %if.end35 ], [ null, %if.else ]
  %overhead38 = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 4
  %32 = ptrtoint ptr %overhead38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %overhead38, align 4
  %sub = sub i32 %pkt_size.3, %33
  %chunk_list40 = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 3
  %34 = ptrtoint ptr %chunk_list40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chunk_list40, align 4
  %rto_pending = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 3
  %auth87 = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 8
  %tail.i335 = getelementptr inbounds %struct.sk_buff, ptr %nskb.0, i32 0, i32 16
  br label %for.cond49

for.cond49:                                       ; preds = %if.end153.for.cond49_crit_edge, %merge
  %pkt_size.4 = phi i32 [ %sub, %merge ], [ %sub136, %if.end153.for.cond49_crit_edge ]
  %chunk.1 = phi ptr [ %35, %merge ], [ %tmp.1, %if.end153.for.cond49_crit_edge ]
  %auth.2 = phi ptr [ %auth.1, %merge ], [ %auth.3, %if.end153.for.cond49_crit_edge ]
  %36 = ptrtoint ptr %chunk.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %tmp.1 = load ptr, ptr %chunk.1, align 4
  %cmp52.not = icmp eq ptr %chunk.1, %chunk_list40
  br i1 %cmp52.not, label %for.cond49.for.end166_crit_edge, label %for.body54

for.cond49.for.end166_crit_edge:                  ; preds = %for.cond49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end166

for.body54:                                       ; preds = %for.cond49
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %chunk.1) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body54.list_del_init.exit_crit_edge

for.body54.list_del_init.exit_crit_edge:          ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %chunk.1, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %chunk.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chunk.1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body54.list_del_init.exit_crit_edge
  %43 = ptrtoint ptr %chunk.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %chunk.1, ptr %chunk.1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %chunk.1, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %chunk.1, ptr %prev.i3.i, align 4
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.1, i32 0, i32 10
  %45 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chunk_hdr, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 2
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %48, label %list_del_init.exit.if.end74_crit_edge [
    i8 0, label %list_del_init.exit.if.then63_crit_edge
    i8 64, label %list_del_init.exit.if.then63_crit_edge379
  ]

list_del_init.exit.if.then63_crit_edge379:        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

list_del_init.exit.if.then63_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

list_del_init.exit.if.end74_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then63:                                        ; preds = %list_del_init.exit.if.then63_crit_edge, %list_del_init.exit.if.then63_crit_edge379
  %sent_count = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.1, i32 0, i32 2
  %50 = ptrtoint ptr %sent_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sent_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp64 = icmp sgt i32 %51, 1
  br i1 %cmp64, label %if.then63.if.end74_crit_edge, label %land.lhs.true

if.then63.if.end74_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

land.lhs.true:                                    ; preds = %if.then63
  %52 = ptrtoint ptr %rto_pending to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load = load i8, ptr %rto_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool66.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool66.not, label %if.then67, label %land.lhs.true.if.end74_crit_edge

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then67:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %rtt_in_progress = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.1, i32 0, i32 21
  %53 = ptrtoint ptr %rtt_in_progress to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load68 = load i16, ptr %rtt_in_progress, align 4
  %bf.set = or i16 %bf.load68, -32768
  store i16 %bf.set, ptr %rtt_in_progress, align 4
  %54 = ptrtoint ptr %rto_pending to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load70 = load i8, ptr %rto_pending, align 4
  %bf.set72 = or i8 %bf.load70, -128
  store i8 %bf.set72, ptr %rto_pending, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then67, %land.lhs.true.if.end74_crit_edge, %if.then63.if.end74_crit_edge, %list_del_init.exit.if.end74_crit_edge
  %skb75 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.1, i32 0, i32 5
  %55 = ptrtoint ptr %skb75 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skb75, align 4
  %len76 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %len76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len76, align 4
  %add77 = add i32 %58, 3
  %and78 = and i32 %add77, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and78, i32 %58)
  %tobool82.not = icmp eq i32 %and78, %58
  br i1 %tobool82.not, label %if.end74.if.end86_crit_edge, label %if.then83

if.end74.if.end86_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then83:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %sub81 = sub i32 %and78, %58
  %call.i334 = tail call ptr @skb_put(ptr noundef %56, i32 noundef %sub81) #10
  %59 = call ptr @memset(ptr %call.i334, i32 0, i32 %sub81)
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end74.if.end86_crit_edge
  %60 = ptrtoint ptr %auth87 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %auth87, align 4
  %cmp88 = icmp eq ptr %chunk.1, %61
  br i1 %cmp88, label %if.then90, label %if.end86.if.end92_crit_edge

if.end86.if.end92_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then90:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %tail.i335 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tail.i335, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end86.if.end92_crit_edge
  %auth.3 = phi ptr [ %63, %if.then90 ], [ %auth.2, %if.end86.if.end92_crit_edge ]
  %64 = ptrtoint ptr %skb75 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %skb75, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 19
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data, align 4
  %len95 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 6
  %68 = ptrtoint ptr %len95 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len95, align 4
  %call.i336 = tail call ptr @skb_put(ptr noundef %nskb.0, i32 noundef %69) #10
  %70 = call ptr @memcpy(ptr %call.i336, ptr %67, i32 %69)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_packet_pack.__UNIQUE_ID_ddebug570, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_packet_pack, %if.then104)) #10
          to label %do.end [label %if.then104], !srcloc !77

if.then104:                                       ; preds = %if.end92
  %71 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chunk_hdr, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 2
  %conv107 = zext i8 %74 to i32
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %conv107, 0
  %call110 = tail call ptr @sctp_cname([1 x i32] %.fca.0.insert) #10
  %has_tsn = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.1, i32 0, i32 21
  %75 = ptrtoint ptr %has_tsn to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load111 = load i16, ptr %has_tsn, align 4
  %76 = and i16 %bf.load111, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool115.not = icmp eq i16 %76, 0
  %cond = select i1 %tobool115.not, ptr @.str.33, ptr @.str.32
  br i1 %tobool115.not, label %if.then104.cond.end_crit_edge, label %cond.true

if.then104.cond.end_crit_edge:                    ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.1, i32 0, i32 8
  %77 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %subh, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then104.cond.end_crit_edge
  %cond122 = phi i32 [ %80, %cond.true ], [ 0, %if.then104.cond.end_crit_edge ]
  %81 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chunk_hdr, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %length, align 2
  %conv124 = zext i16 %84 to i32
  %85 = ptrtoint ptr %skb75 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %skb75, align 4
  %len126 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 6
  %87 = ptrtoint ptr %len126 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len126, align 4
  %bf.lshr129 = lshr i16 %bf.load111, 15
  %conv130 = zext i16 %bf.lshr129 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_packet_pack.__UNIQUE_ID_ddebug570, ptr noundef nonnull @.str.31, ptr noundef %chunk.1, ptr noundef %call110, ptr noundef nonnull %cond, i32 noundef %cond122, i32 noundef %conv124, i32 noundef %88, i32 noundef %conv130) #10
  br label %do.end

do.end:                                           ; preds = %cond.end, %if.end92
  %89 = ptrtoint ptr %skb75 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %skb75, align 4
  %len133 = getelementptr inbounds %struct.sk_buff, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %len133 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len133, align 4
  %add134 = add i32 %92, 3
  %and135 = and i32 %add134, -4
  %sub136 = sub i32 %pkt_size.4, %and135
  %93 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %chunk_hdr, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %94, align 2
  %97 = zext i8 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %96, label %land.lhs.true148 [
    i8 0, label %do.end.if.end153_crit_edge
    i8 64, label %do.end.if.end153_crit_edge380
  ]

do.end.if.end153_crit_edge380:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

do.end.if.end153_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

land.lhs.true148:                                 ; preds = %do.end
  %98 = ptrtoint ptr %auth87 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %auth87, align 4
  %cmp150.not = icmp eq ptr %chunk.1, %99
  br i1 %cmp150.not, label %land.lhs.true148.if.end153_crit_edge, label %if.then152

land.lhs.true148.if.end153_crit_edge:             ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

if.then152:                                       ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sctp_chunk_free(ptr noundef %chunk.1) #10
  br label %if.end153

if.end153:                                        ; preds = %if.then152, %land.lhs.true148.if.end153_crit_edge, %do.end.if.end153_crit_edge, %do.end.if.end153_crit_edge380
  %tobool154.not = icmp eq i32 %sub136, 0
  br i1 %tobool154.not, label %if.end153.for.end166_crit_edge, label %if.end153.for.cond49_crit_edge

if.end153.for.cond49_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond49

if.end153.for.end166_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end166

for.end166:                                       ; preds = %if.end153.for.end166_crit_edge, %for.cond49.for.end166_crit_edge
  %auth.4 = phi ptr [ %auth.3, %if.end153.for.end166_crit_edge ], [ %auth.2, %for.cond49.for.end166_crit_edge ]
  %tobool167.not = icmp eq ptr %auth.4, null
  br i1 %tobool167.not, label %for.end166.if.end180_crit_edge, label %if.then168

for.end166.if.end180_crit_edge:                   ; preds = %for.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

if.then168:                                       ; preds = %for.end166
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 8
  %100 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %asoc, align 8
  %102 = ptrtoint ptr %auth87 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %auth87, align 4
  %104 = getelementptr inbounds %struct.sctp_chunk, ptr %103, i32 0, i32 6
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  tail call void @sctp_auth_calculate_hmac(ptr noundef %101, ptr noundef %nskb.0, ptr noundef nonnull %auth.4, ptr noundef %106, i32 noundef %gfp) #10
  %107 = ptrtoint ptr %chunk_list40 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile ptr, ptr %chunk_list40, align 4
  %cmp.i.not = icmp eq ptr %108, %chunk_list40
  %109 = ptrtoint ptr %auth87 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %auth87, align 4
  br i1 %cmp.i.not, label %if.then173, label %if.else175

if.then173:                                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sctp_chunk_free(ptr noundef %110) #10
  br label %if.end180

if.else175:                                       ; preds = %if.then168
  %call.i.i337 = tail call zeroext i1 @__list_add_valid(ptr noundef %110, ptr noundef %chunk_list40, ptr noundef %108) #10
  br i1 %call.i.i337, label %if.end.i.i338, label %if.else175.if.end180_crit_edge

if.else175.if.end180_crit_edge:                   ; preds = %if.else175
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

if.end.i.i338:                                    ; preds = %if.else175
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %111 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %prev1.i.i, align 4
  %112 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %108, ptr %110, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %113 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %chunk_list40, ptr %prev3.i.i, align 4
  %114 = ptrtoint ptr %chunk_list40 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %110, ptr %chunk_list40, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.end.i.i338, %if.else175.if.end180_crit_edge, %if.then173, %for.end166.if.end180_crit_edge
  br i1 %tobool.not, label %if.end183, label %if.then182

if.then182:                                       ; preds = %if.end180
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 3
  %115 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cb.i, align 8
  %cmp.i339 = icmp eq ptr %116, %head
  br i1 %cmp.i339, label %if.then.i, label %if.then182.if.end.i_crit_edge

if.then182.if.end.i_crit_edge:                    ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 17
  %117 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %end.i.i, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %118, i32 0, i32 6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then182.if.end.i_crit_edge
  %.sink.i = phi ptr [ %frag_list.i, %if.then.i ], [ %116, %if.then182.if.end.i_crit_edge ]
  %119 = ptrtoint ptr %.sink.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %nskb.0, ptr %.sink.i, align 8
  %120 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %nskb.0, ptr %cb.i, align 8
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %nskb.0, i32 0, i32 20
  %121 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %truesize.i, align 8
  %truesize7.i = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 20
  %123 = ptrtoint ptr %truesize7.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %truesize7.i, align 8
  %add.i = add i32 %124, %122
  store i32 %add.i, ptr %truesize7.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %nskb.0, i32 0, i32 6
  %125 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 7
  %127 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %data_len.i, align 8
  %add8.i = add i32 %128, %126
  store i32 %add8.i, ptr %data_len.i, align 8
  %129 = load i32, ptr %len.i, align 4
  %len10.i = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 6
  %130 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %len10.i, align 4
  %add11.i = add i32 %131, %129
  store i32 %add11.i, ptr %len10.i, align 4
  %132 = load i32, ptr %truesize.i, align 8
  %133 = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 1
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %135, i32 0, i32 23
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc.i, i32 1, i32 3, i32 1) #10
  %136 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc.i, ptr %sk_wmem_alloc.i, i32 %132, ptr elementtype(i32) %sk_wmem_alloc.i) #10, !srcloc !94
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %136, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !85

if.end.i.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, %132
  %137 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %137)
  %.not.i.i.i = icmp sgt i32 %137, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end183.thread_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !87

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end183.thread_crit_edge:         ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183.thread

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc.i, i32 noundef %.sink.i.i.i) #10
  br label %if.end183.thread

if.end183:                                        ; preds = %if.end180
  %inc = add i32 %pkt_count.1, 1
  %138 = ptrtoint ptr %chunk_list40 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile ptr, ptr %chunk_list40, align 4
  %cmp.i340.not = icmp eq ptr %139, %chunk_list40
  br i1 %cmp.i340.not, label %if.end197, label %if.end183.do.body_crit_edge

if.end183.do.body_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end183.thread:                                 ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end183.thread_crit_edge
  %nohdr.i.i = getelementptr inbounds %struct.sk_buff, ptr %nskb.0, i32 0, i32 12
  %140 = ptrtoint ptr %nohdr.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %bf.load.i.i = load i8, ptr %nohdr.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %nohdr.i.i, align 2
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %nskb.0, i32 0, i32 17
  %141 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %142, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dataref.i.i, i32 noundef 4) #10
  %143 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile i32 65537, ptr %dataref.i.i, align 4
  %inc358 = add i32 %pkt_count.1, 1
  %144 = ptrtoint ptr %chunk_list40 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile ptr, ptr %chunk_list40, align 4
  %cmp.i340359.not = icmp eq ptr %145, %chunk_list40
  br i1 %cmp.i340359.not, label %if.then192, label %if.end183.thread.do.body_crit_edge

if.end183.thread.do.body_crit_edge:               ; preds = %if.end183.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then192:                                       ; preds = %if.end183.thread
  call void @__sanitizer_cov_trace_pc() #12
  %146 = call ptr @memset(ptr %cb.i, i32 0, i32 24)
  %conv194 = trunc i32 %inc358 to i16
  %end.i342 = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 17
  %147 = ptrtoint ptr %end.i342 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %end.i342, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %148, i32 0, i32 5
  %149 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv194, ptr %gso_segs, align 2
  %150 = load ptr, ptr %end.i342, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %150, i32 0, i32 4
  %151 = ptrtoint ptr %gso_size to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 -1, ptr %gso_size, align 4
  br label %chksum

if.end197:                                        ; preds = %if.end183
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 8) to i32))
  %152 = load i8, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 8), align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool198.not = icmp eq i8 %152, 0
  br i1 %tobool198.not, label %if.end200, label %if.end197.cleanup230_crit_edge

if.end197.cleanup230_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup230

if.end200:                                        ; preds = %if.end197
  %dst = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 18
  %153 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dst, align 8
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %156, i32 0, i32 23
  %157 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %features, align 16
  %and201 = and i64 %158, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and201)
  %tobool202.not = icmp eq i64 %and201, 0
  br i1 %tobool202.not, label %if.end200.if.then216_crit_edge, label %lor.lhs.false203

if.end200.if.then216_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then216

lor.lhs.false203:                                 ; preds = %if.end200
  %xfrm.i = getelementptr inbounds %struct.dst_entry, ptr %154, i32 0, i32 4
  %159 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %xfrm.i, align 4
  %tobool206.not = icmp eq ptr %160, null
  br i1 %tobool206.not, label %lor.lhs.false207, label %lor.lhs.false203.if.then216_crit_edge

lor.lhs.false203.if.then216_crit_edge:            ; preds = %lor.lhs.false203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then216

lor.lhs.false207:                                 ; preds = %lor.lhs.false203
  %ipfragok = getelementptr inbounds %struct.sctp_packet, ptr %packet, i32 0, i32 9
  %161 = ptrtoint ptr %ipfragok to i32
  call void @__asan_load1_noabort(i32 %161)
  %bf.load208 = load i8, ptr %ipfragok, align 4
  %162 = and i8 %bf.load208, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool212.not = icmp eq i8 %162, 0
  br i1 %tobool212.not, label %lor.lhs.false213, label %lor.lhs.false207.if.then216_crit_edge

lor.lhs.false207.if.then216_crit_edge:            ; preds = %lor.lhs.false207
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then216

lor.lhs.false213:                                 ; preds = %lor.lhs.false207
  %encap_port = getelementptr inbounds %struct.sctp_transport, ptr %1, i32 0, i32 28
  %163 = ptrtoint ptr %encap_port to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %encap_port, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %tobool215.not = icmp eq i16 %164, 0
  br i1 %tobool215.not, label %lor.lhs.false213.chksum_crit_edge, label %lor.lhs.false213.if.then216_crit_edge

lor.lhs.false213.if.then216_crit_edge:            ; preds = %lor.lhs.false213
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then216

lor.lhs.false213.chksum_crit_edge:                ; preds = %lor.lhs.false213
  call void @__sanitizer_cov_trace_pc() #12
  br label %chksum

if.then216:                                       ; preds = %lor.lhs.false213.if.then216_crit_edge, %lor.lhs.false207.if.then216_crit_edge, %lor.lhs.false203.if.then216_crit_edge, %if.end200.if.then216_crit_edge
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 18
  %165 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 15, i32 0, i32 19
  %167 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %transport_header.i, align 2
  %conv.i344 = zext i16 %168 to i32
  %add.ptr.i345 = getelementptr i8, ptr %166, i32 %conv.i344
  %call218 = tail call fastcc i32 @sctp_compute_cksum(ptr noundef %head)
  %checksum = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i345, i32 0, i32 3
  %169 = ptrtoint ptr %checksum to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %call218, ptr %checksum, align 4
  br label %cleanup230

chksum:                                           ; preds = %lor.lhs.false213.chksum_crit_edge, %if.then192
  %inc363 = phi i32 [ %inc, %lor.lhs.false213.chksum_crit_edge ], [ %inc358, %if.then192 ]
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 15
  %170 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %170)
  %bf.load220 = load i16, ptr %ip_summed, align 8
  %bf.set222 = or i16 %bf.load220, 1536
  store i16 %bf.set222, ptr %ip_summed, align 8
  %csum_not_inet = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 15, i32 0, i32 3
  %171 = ptrtoint ptr %csum_not_inet to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %bf.load223 = load i32, ptr %csum_not_inet, align 2
  %bf.set225 = or i32 %bf.load223, 134217728
  store i32 %bf.set225, ptr %csum_not_inet, align 2
  %transport_header.i347 = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 15, i32 0, i32 19
  %172 = ptrtoint ptr %transport_header.i347 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %transport_header.i347, align 2
  %174 = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 15, i32 0, i32 5
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %173, ptr %174, align 8
  %csum_offset = getelementptr inbounds %struct.anon.144, ptr %174, i32 0, i32 1
  %176 = ptrtoint ptr %csum_offset to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 8, ptr %csum_offset, align 2
  br label %cleanup230

cleanup230:                                       ; preds = %chksum, %if.then216, %if.end197.cleanup230_crit_edge, %for.end.cleanup230_crit_edge, %if.else11.cleanup230_crit_edge
  %retval.5 = phi i32 [ 0, %for.end.cleanup230_crit_edge ], [ 1, %if.end197.cleanup230_crit_edge ], [ %inc363, %chksum ], [ %inc, %if.then216 ], [ 0, %if.else11.cleanup230_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_association_hold(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_auth(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_auth_shkey_hold(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_sack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_association_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_assign_tsn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_pad(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_cname([1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_auth_calculate_hmac(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_compute_cksum(ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %checksum = getelementptr inbounds %struct.sctphdr, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %checksum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %checksum, align 4
  store i32 0, ptr %checksum, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call = tail call i32 @__skb_checksum(ptr noundef %skb, i32 noundef 0, i32 noundef %5, i32 noundef -1, ptr noundef nonnull @sctp_csum_ops) #10
  %neg = xor i32 %call, -1
  %6 = ptrtoint ptr %checksum to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %checksum, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %neg)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_csum_update(ptr noundef %buff, i32 noundef %len, i32 noundef %sum) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @crc32c(i32 noundef %sum, ptr noundef %buff, i32 noundef %len) #10
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_csum_combine(i32 noundef %csum, i32 noundef %csum2, i32 noundef %offset, i32 noundef %len) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__crc32c_le_shift(i32 noundef %csum, i32 noundef %len) #14
  %xor.i = xor i32 %call.i, %csum2
  ret i32 %xor.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @__crc32c_le_shift(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !57, !58, !60, !61, !62, !63, !64, !65}
!llvm.named.register.sp = !{!67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sctp/output.c", i32 81, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sctp_packet_config.__UNIQUE_ID_ddebug564, !1, !"__UNIQUE_ID_ddebug564", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/sctp/output.c", i32 147, i32 2}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sctp_packet_init.__UNIQUE_ID_ddebug566, !8, !"__UNIQUE_ID_ddebug566", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/sctp/output.c", i32 164, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sctp_packet_free.__UNIQUE_ID_ddebug567, !13, !"__UNIQUE_ID_ddebug567", i1 false, i1 false}
!16 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/sctp/output.c", i32 185, i32 2}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sctp_packet_transmit_chunk.__UNIQUE_ID_ddebug568, !18, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!21 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/sctp/output.c", i32 387, i32 2}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sctp_packet_append_chunk.__UNIQUE_ID_ddebug569, !23, !"__UNIQUE_ID_ddebug569", i1 false, i1 false}
!26 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/sctp/output.c", i32 578, i32 2}
!29 = !{ptr @sctp_packet_transmit.__UNIQUE_ID_ddebug573, !28, !"__UNIQUE_ID_ddebug573", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../net/sctp/output.c", i32 589, i32 5}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sctp_packet_transmit._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @sctp_packet_transmit._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/sctp/output.c", i32 625, i32 2}
!37 = !{ptr @sctp_packet_transmit.__UNIQUE_ID_ddebug574, !36, !"__UNIQUE_ID_ddebug574", i1 false, i1 false}
!38 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/net/sctp/sctp.h", i32 591, i32 6}
!41 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/net/sock.h", i32 2067, i32 9}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/net/dst.h", i32 231, i32 2}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/sctp/output.c", i32 501, i32 4}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sctp_packet_pack.__UNIQUE_ID_ddebug570, !59, !"__UNIQUE_ID_ddebug570", i1 false, i1 false}
!62 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sctp_csum_ops, !66, !"sctp_csum_ops", i1 false, i1 false}
!66 = !{!"../include/net/sctp/checksum.h", i32 46, i32 38}
!67 = !{!"sp"}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 2148713994, i64 2148713999, i64 2148714012, i64 2148714056, i64 2148714090, i64 2148714111}
!78 = !{i64 2149668815}
!79 = !{i64 2148231598}
!80 = !{i64 716421, i64 716446, i64 716468, i64 716484, i64 716496, i64 716516, i64 716540, i64 716556, i64 716568}
!81 = !{i64 2148231786}
!82 = !{i64 2149669081}
!83 = !{i64 624660, i64 624721}
!84 = !{i64 627392}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 627677}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{i64 2150177436}
!89 = !{i64 2150182370}
!90 = !{i64 2150204088}
!91 = !{i64 2150208982}
!92 = !{i64 2150285509}
!93 = !{i64 2150285834}
!94 = !{i64 2148233709, i64 2148233741, i64 2148233770, i64 2148233804, i64 2148233835, i64 2148233858}
!95 = !{i8 0, i8 2}
