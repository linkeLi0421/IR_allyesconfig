; ModuleID = '/llk/IR_all_yes/net/sctp/inqueue.c_pt.bc'
source_filename = "../net/sctp/inqueue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.8 }
%union.anon.8 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sctp_chunk = type { %struct.list_head, %struct.refcount_struct, i32, %union.anon, %struct.list_head, ptr, %union.anon.154, %union.sctp_params, %union.anon.155, ptr, ptr, ptr, %struct.sctp_sndrcvinfo, ptr, ptr, i32, %union.sctp_addr, %union.sctp_addr, ptr, ptr, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon = type { %struct.list_head }
%union.anon.154 = type { ptr }
%union.sctp_params = type { ptr }
%union.anon.155 = type { ptr }
%struct.sctp_sndrcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.166, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.166 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.sctp_stream = type { %struct.anon.167, %struct.anon.172, i16, i16, ptr, %union.anon.174, ptr }
%struct.anon.167 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.168, i32, ptr, i8 }
%union.anon.168 = type { i32 }
%struct.anon.172 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.173, i32, i32, i32, i8, i8 }
%union.anon.173 = type { i32 }
%union.anon.174 = type { %struct.anon.176 }
%struct.anon.176 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.99, i32, %struct.spinlock }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, ptr }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.162 }
%union.anon.162 = type { ptr, [124 x i8] }
%struct.callback_head = type { ptr, ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.136, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.136 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.109, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sock_common = type { %union.anon.110, %union.anon.112, %union.anon.113, i16, i8, i8, i32, %union.anon.115, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.118, [0 x i32], %union.anon.119, i16, i16, %union.anon.120, %struct.refcount_struct, [0 x i32], %union.anon.121 }
%union.anon.110 = type { i64 }
%union.anon.112 = type { i32 }
%union.anon.113 = type { i32 }
%union.anon.115 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { %struct.hlist_node }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }

@sctp_inq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&queue->immediate)\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/sctp/inqueue.c\00", [45 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@sctp_inq_pop.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.5, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sctp\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sctp_inq_pop\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"+++sctp_inq_pop+++ chunk:%p[%s], length:%d, skb->len:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"sctp: +++sctp_inq_pop+++ chunk:%p[%s], length:%d, skb->len:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@sctp_inq_set_th_handler.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&q->immediate)\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 38, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 169, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 219, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [22 x i8] c"../net/sctp/inqueue.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 236, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @sctp_inq_init.__key, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sctp_inq_set_th_handler.__key, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_inq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_inq_set_th_handler.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_inq_init(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %queue, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %queue, ptr %prev.i, align 4
  %in_progress = getelementptr inbounds %struct.sctp_inq, ptr %queue, i32 0, i32 1
  %2 = ptrtoint ptr %in_progress to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %in_progress, align 4
  %immediate = getelementptr inbounds %struct.sctp_inq, ptr %queue, i32 0, i32 2
  tail call void @__init_work(ptr noundef %immediate, i32 noundef 0) #4
  %3 = ptrtoint ptr %immediate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %immediate, align 4
  %lockdep_map = getelementptr inbounds %struct.sctp_inq, ptr %queue, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @sctp_inq_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry4 = getelementptr inbounds %struct.sctp_inq, ptr %queue, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i12 = getelementptr inbounds %struct.sctp_inq, ptr %queue, i32 0, i32 2, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry4, ptr %prev.i12, align 4
  %func = getelementptr inbounds %struct.sctp_inq, ptr %queue, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %func, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_inq_free(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %cmp.not24 = icmp eq ptr %1, %queue
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %chunk.025 = phi ptr [ %tmp.0, %list_del_init.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %chunk.025 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %chunk.025, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %chunk.025) #4
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %chunk.025, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %chunk.025 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chunk.025, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %chunk.025 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %chunk.025, ptr %chunk.025, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %chunk.025, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %chunk.025, ptr %prev.i3.i, align 4
  tail call void @sctp_chunk_free(ptr noundef %chunk.025) #4
  %cmp.not = icmp eq ptr %tmp.0, %queue
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %in_progress = getelementptr inbounds %struct.sctp_inq, ptr %queue, i32 0, i32 1
  %11 = ptrtoint ptr %in_progress to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %in_progress, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sctp_chunk_free(ptr noundef nonnull %12) #4
  %13 = ptrtoint ptr %in_progress to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %in_progress, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_inq_push(ptr noundef %q, ptr noundef %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rcvr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 14
  %0 = ptrtoint ptr %rcvr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcvr, align 4
  %dead = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dead, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sctp_chunk_free(ptr noundef %chunk) #4
  br label %return

if.end:                                           ; preds = %entry
  %prev.i = getelementptr inbounds %struct.list_head, ptr %q, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %chunk, ptr noundef %5, ptr noundef %q) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %chunk, ptr %prev.i, align 4
  %7 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %q, ptr %chunk, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %chunk, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %chunk, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %asoc = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 13
  %10 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asoc, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %list_add_tail.exit.if.end4_crit_edge, label %if.then2

list_add_tail.exit.if.end4_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  %ipackets = getelementptr inbounds %struct.sctp_association, ptr %11, i32 0, i32 85, i32 5
  %12 = ptrtoint ptr %ipackets to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ipackets, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %ipackets, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %list_add_tail.exit.if.end4_crit_edge
  %immediate = getelementptr inbounds %struct.sctp_inq, ptr %q, i32 0, i32 2
  %func = getelementptr inbounds %struct.sctp_inq, ptr %q, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func, align 4
  tail call void %15(ptr noundef %immediate) #4
  br label %return

return:                                           ; preds = %if.end4, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @sctp_inq_peek(ptr nocapture noundef readonly %queue) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %in_progress = getelementptr inbounds %struct.sctp_inq, ptr %queue, i32 0, i32 1
  %0 = ptrtoint ptr %in_progress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_progress, align 4
  %singleton = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %singleton to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %singleton, align 4
  %3 = and i16 %bf.load, 6656
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %chunk_end = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %chunk_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chunk_end, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_inq_pop(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %in_progress = getelementptr inbounds %struct.sctp_inq, ptr %queue, i32 0, i32 1
  %0 = ptrtoint ptr %in_progress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_progress, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %if.then

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then:                                          ; preds = %entry
  %singleton = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %singleton to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %singleton, align 4
  %3 = and i16 %bf.load, 6656
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %if.end35.thread, label %if.then13

if.then13:                                        ; preds = %if.then
  %5 = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb, align 4
  %cmp = icmp eq ptr %7, %9
  br i1 %cmp, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %frag_list, align 8
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %skb, align 4
  br label %new_skb

if.end:                                           ; preds = %if.then13
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %9, align 8
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %skb, align 4
  br label %new_skb

if.end24:                                         ; preds = %if.end
  %tobool25.not = icmp eq ptr %7, null
  br i1 %tobool25.not, label %if.end24.if.end28_crit_edge, label %if.then26

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %7, ptr %skb, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  tail call void @sctp_chunk_free(ptr noundef nonnull %1) #4
  %19 = ptrtoint ptr %in_progress to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %in_progress, align 4
  br label %if.end35

if.end35.thread:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %chunk_end = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %chunk_end to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chunk_end, align 4
  %skb30 = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %skb30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb30, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call33 = tail call ptr @skb_pull(ptr noundef %23, i32 noundef %sub.ptr.sub) #4
  br label %if.end157

if.end35:                                         ; preds = %if.end28, %entry.if.end35_crit_edge
  %26 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i318 = icmp eq ptr %27, %queue
  br i1 %cmp.i.not.i318, label %if.end35.cleanup_crit_edge, label %if.end35.if.then.i_crit_edge

if.end35.if.then.i_crit_edge:                     ; preds = %if.end35
  br label %if.then.i

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %do.end.if.then.i_crit_edge, %if.end35.if.then.i_crit_edge
  %28 = phi ptr [ %85, %do.end.if.then.i_crit_edge ], [ %27, %if.end35.if.then.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %28) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.sctp_list_dequeue.exit_crit_edge

if.then.i.sctp_list_dequeue.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sctp_list_dequeue.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %sctp_list_dequeue.exit

sctp_list_dequeue.exit:                           ; preds = %if.end.i.i.i, %if.then.i.sctp_list_dequeue.exit_crit_edge
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %28, ptr %28, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %28, ptr %prev.i3.i.i, align 4
  %tobool40.not = icmp eq ptr %28, null
  br i1 %tobool40.not, label %sctp_list_dequeue.exit.cleanup_crit_edge, label %if.end42

sctp_list_dequeue.exit.cleanup_crit_edge:         ; preds = %sctp_list_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end42:                                         ; preds = %sctp_list_dequeue.exit
  %skb43 = getelementptr inbounds %struct.sctp_chunk, ptr %28, i32 0, i32 5
  %37 = ptrtoint ptr %skb43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skb43, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 17
  %39 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.i.not = icmp eq i16 %42, 0
  br i1 %tobool.i.not, label %if.end42.if.end117_crit_edge, label %land.lhs.true

if.end42.if.end117_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end117

land.lhs.true:                                    ; preds = %if.end42
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 8
  %43 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %gso_type.i, align 8
  %and.i = and i32 %44, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i302.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i302.not, label %land.lhs.true.if.end117_crit_edge, label %if.then49

land.lhs.true.if.end117_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end117

if.then49:                                        ; preds = %land.lhs.true
  %frag_list52 = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 6
  %45 = ptrtoint ptr %frag_list52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %frag_list52, align 8
  %tobool53.not = icmp eq ptr %46, null
  br i1 %tobool53.not, label %if.then49.if.end56_crit_edge, label %if.then54

if.then49.if.end56_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.then54:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #6
  %47 = getelementptr inbounds %struct.sctp_chunk, ptr %28, i32 0, i32 6
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %38, ptr %47, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.then49.if.end56_crit_edge
  %49 = getelementptr inbounds %struct.sctp_chunk, ptr %28, i32 0, i32 6
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %tobool57.not = icmp eq ptr %51, null
  br i1 %tobool57.not, label %if.end56.if.end68thread-pre-split_crit_edge, label %land.lhs.true58

if.end56.if.end68thread-pre-split_crit_edge:      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68thread-pre-split

land.lhs.true58:                                  ; preds = %if.end56
  %52 = ptrtoint ptr %skb43 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skb43, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_len, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 6
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp61 = icmp eq i32 %55, %57
  br i1 %cmp61, label %if.then63, label %land.lhs.true58.if.end68thread-pre-split_crit_edge

land.lhs.true58.if.end68thread-pre-split_crit_edge: ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68thread-pre-split

if.then63:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #6
  %end.i304 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 17
  %58 = ptrtoint ptr %end.i304 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %end.i304, align 4
  %frag_list66 = getelementptr inbounds %struct.skb_shared_info, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %frag_list66 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %frag_list66, align 8
  %62 = ptrtoint ptr %skb43 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %skb43, align 4
  br label %if.end68

if.end68thread-pre-split:                         ; preds = %land.lhs.true58.if.end68thread-pre-split_crit_edge, %if.end56.if.end68thread-pre-split_crit_edge
  %63 = ptrtoint ptr %skb43 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr = load ptr, ptr %skb43, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end68thread-pre-split, %if.then63
  %64 = phi ptr [ %.pr, %if.end68thread-pre-split ], [ %61, %if.then63 ]
  %tobool70.not = icmp eq ptr %64, null
  br i1 %tobool70.not, label %do.end, label %if.end68.if.end117_crit_edge, !prof !27

if.end68.if.end117_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end117

do.end:                                           ; preds = %if.end68
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  %65 = ptrtoint ptr %skb43 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %skb43, align 4
  %67 = getelementptr inbounds %struct.anon, ptr %66, i32 0, i32 2
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 127
  %70 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %nd_net.i, align 4
  %sctp = getelementptr inbounds %struct.net, ptr %71, i32 0, i32 38
  %72 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sctp, align 8
  %arrayidx = getelementptr [34 x i32], ptr %73, i32 0, i32 32
  %74 = ptrtoint ptr %arrayidx to i32
  %75 = tail call i32 @llvm.read_register.i32(metadata !16) #4
  %and.i305 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i305 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cpu, align 4
  %arrayidx110 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx110, align 4
  %add = add i32 %80, %74
  %81 = inttoptr i32 %add to ptr
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %add111 = add i32 %83, 1
  store i32 %add111, ptr %81, align 4
  tail call void @sctp_chunk_free(ptr noundef nonnull %28) #4
  %84 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i = icmp eq ptr %85, %queue
  br i1 %cmp.i.not.i, label %do.end.cleanup_crit_edge, label %do.end.if.then.i_crit_edge

do.end.if.then.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end117:                                        ; preds = %if.end68.if.end117_crit_edge, %land.lhs.true.if.end117_crit_edge, %if.end42.if.end117_crit_edge
  %asoc = getelementptr inbounds %struct.sctp_chunk, ptr %28, i32 0, i32 13
  %86 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %asoc, align 4
  %tobool118.not = icmp eq ptr %87, null
  br i1 %tobool118.not, label %if.end117.if.end122_crit_edge, label %if.then119

if.end117.if.end122_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end122

if.then119:                                       ; preds = %if.end117
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sk, align 4
  %90 = ptrtoint ptr %skb43 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %skb43, align 4
  %92 = getelementptr inbounds %struct.sock_common, ptr %89, i32 0, i32 21
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 8
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %91, i32 0, i32 15, i32 0, i32 8
  %95 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %hash.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp.not.i = icmp eq i32 %94, %96
  br i1 %cmp.not.i, label %if.then119.if.end122_crit_edge, label %if.then.i306, !prof !28

if.then119.if.end122_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end122

if.then.i306:                                     ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #6
  %97 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %92, align 8
  br label %if.end122

if.end122:                                        ; preds = %if.then.i306, %if.then119.if.end122_crit_edge, %if.end117.if.end122_crit_edge
  %98 = ptrtoint ptr %in_progress to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %28, ptr %in_progress, align 4
  br label %new_skb

new_skb:                                          ; preds = %if.end122, %if.then20, %if.then15
  %chunk.1 = phi ptr [ %1, %if.then15 ], [ %1, %if.then20 ], [ %28, %if.end122 ]
  %skb124 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.1, i32 0, i32 5
  %99 = ptrtoint ptr %skb124 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %skb124, align 4
  %data125 = getelementptr inbounds %struct.sk_buff, ptr %100, i32 0, i32 19
  %101 = ptrtoint ptr %data125 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data125, align 4
  %singleton126 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.1, i32 0, i32 21
  %103 = ptrtoint ptr %singleton126 to i32
  call void @__asan_load2_noabort(i32 %103)
  %bf.load127 = load i16, ptr %singleton126, align 4
  %bf.set = and i16 %bf.load127, -6881
  %bf.clear130 = or i16 %bf.set, 4096
  store i16 %bf.clear130, ptr %singleton126, align 4
  %104 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.1, i32 0, i32 6
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %tobool146.not = icmp eq ptr %106, null
  br i1 %tobool146.not, label %new_skb.if.end157_crit_edge, label %if.then147

new_skb.if.end157_crit_edge:                      ; preds = %new_skb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end157

if.then147:                                       ; preds = %new_skb
  call void @__sanitizer_cov_trace_pc() #6
  %chunk153 = getelementptr inbounds %struct.sk_buff, ptr %106, i32 0, i32 3, i32 24
  %107 = ptrtoint ptr %chunk153 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %chunk153, align 4
  %chunk154 = getelementptr inbounds %struct.sk_buff, ptr %100, i32 0, i32 3, i32 24
  %109 = ptrtoint ptr %chunk154 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %chunk154, align 4
  %af = getelementptr inbounds %struct.sk_buff, ptr %106, i32 0, i32 3, i32 28
  %110 = ptrtoint ptr %af to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %af, align 4
  %af155 = getelementptr inbounds %struct.sk_buff, ptr %100, i32 0, i32 3, i32 28
  %112 = ptrtoint ptr %af155 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %af155, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then147, %new_skb.if.end157_crit_edge, %if.end35.thread
  %ch.1 = phi ptr [ %102, %if.then147 ], [ %102, %new_skb.if.end157_crit_edge ], [ %21, %if.end35.thread ]
  %chunk.2 = phi ptr [ %chunk.1, %if.then147 ], [ %chunk.1, %new_skb.if.end157_crit_edge ], [ %1, %if.end35.thread ]
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.2, i32 0, i32 10
  %113 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %ch.1, ptr %chunk_hdr, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %ch.1, i32 0, i32 2
  %114 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %length, align 2
  %conv158 = zext i16 %115 to i32
  %add159 = add nuw nsw i32 %conv158, 3
  %and = and i32 %add159, 131068
  %add.ptr160 = getelementptr i8, ptr %ch.1, i32 %and
  %chunk_end161 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.2, i32 0, i32 9
  %116 = ptrtoint ptr %chunk_end161 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %add.ptr160, ptr %chunk_end161, align 4
  %skb162 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.2, i32 0, i32 5
  %117 = ptrtoint ptr %skb162 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %skb162, align 4
  %call163 = tail call ptr @skb_pull(ptr noundef %118, i32 noundef 4) #4
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.2, i32 0, i32 8
  %119 = ptrtoint ptr %subh to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %subh, align 4
  %120 = ptrtoint ptr %chunk_end161 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %chunk_end161, align 4
  %add.ptr165 = getelementptr i8, ptr %121, i32 4
  %122 = ptrtoint ptr %skb162 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %skb162, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 16
  %124 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tail.i, align 8
  %cmp168.not = icmp ugt ptr %add.ptr165, %125
  br i1 %cmp168.not, label %if.else175, label %if.then170

if.then170:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #6
  %singleton171 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.2, i32 0, i32 21
  %126 = ptrtoint ptr %singleton171 to i32
  call void @__asan_load2_noabort(i32 %126)
  %bf.load172 = load i16, ptr %singleton171, align 4
  %bf.clear173 = and i16 %bf.load172, -4097
  store i16 %bf.clear173, ptr %singleton171, align 4
  br label %do.body196

if.else175:                                       ; preds = %if.end157
  %cmp179 = icmp ugt ptr %121, %125
  %pdiscard182 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.2, i32 0, i32 21
  %127 = ptrtoint ptr %pdiscard182 to i32
  call void @__asan_load2_noabort(i32 %127)
  %bf.load183 = load i16, ptr %pdiscard182, align 4
  br i1 %cmp179, label %if.then181, label %if.else189

if.then181:                                       ; preds = %if.else175
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set185 = or i16 %bf.load183, 512
  %128 = ptrtoint ptr %pdiscard182 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %bf.set185, ptr %pdiscard182, align 4
  %129 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %tail.i, align 8
  %131 = ptrtoint ptr %chunk_end161 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %130, ptr %chunk_end161, align 4
  br label %do.body196

if.else189:                                       ; preds = %if.else175
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set193 = or i16 %bf.load183, 2048
  %132 = ptrtoint ptr %pdiscard182 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %bf.set193, ptr %pdiscard182, align 4
  br label %do.body196

do.body196:                                       ; preds = %if.else189, %if.then181, %if.then170
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_inq_pop.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_inq_pop, %if.then206)) #4
          to label %cleanup [label %if.then206], !srcloc !29

if.then206:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #6
  %133 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %chunk_hdr, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %134, align 2
  %conv208 = zext i8 %136 to i32
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %conv208, 0
  %call211 = tail call ptr @sctp_cname([1 x i32] %.fca.0.insert) #4
  %137 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %chunk_hdr, align 4
  %length213 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %length213 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %length213, align 2
  %conv214 = zext i16 %140 to i32
  %141 = ptrtoint ptr %skb162 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %skb162, align 4
  %len216 = getelementptr inbounds %struct.sk_buff, ptr %142, i32 0, i32 6
  %143 = ptrtoint ptr %len216 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %len216, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_inq_pop.__UNIQUE_ID_ddebug562, ptr noundef nonnull @.str.6, ptr noundef nonnull %chunk.2, ptr noundef %call211, i32 noundef %conv214, i32 noundef %144) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then206, %do.body196, %do.end.cleanup_crit_edge, %sctp_list_dequeue.exit.cleanup_crit_edge, %if.end35.cleanup_crit_edge
  %retval.0 = phi ptr [ %chunk.2, %if.then206 ], [ %chunk.2, %do.body196 ], [ null, %if.end35.cleanup_crit_edge ], [ null, %do.end.cleanup_crit_edge ], [ null, %sctp_list_dequeue.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_cname([1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_inq_set_th_handler(ptr noundef %q, ptr noundef %callback) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %immediate = getelementptr inbounds %struct.sctp_inq, ptr %q, i32 0, i32 2
  tail call void @__init_work(ptr noundef %immediate, i32 noundef 0) #4
  %0 = ptrtoint ptr %immediate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %immediate, align 4
  %lockdep_map = getelementptr inbounds %struct.sctp_inq, ptr %q, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @sctp_inq_set_th_handler.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry4 = getelementptr inbounds %struct.sctp_inq, ptr %q, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.sctp_inq, ptr %q, i32 0, i32 2, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sctp_inq, ptr %q, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %callback, ptr %func, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @sctp_inq_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/sctp/inqueue.c", i32 38, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../net/sctp/inqueue.c", i32 169, i32 8}
!5 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/sctp/inqueue.c", i32 170, i32 5}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/sctp/inqueue.c", i32 219, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sctp_inq_pop.__UNIQUE_ID_ddebug562, !8, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!12 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @sctp_inq_set_th_handler.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../net/sctp/inqueue.c", i32 236, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{!"sp"}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i8 0, i8 2}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 2148226590, i64 2148226595, i64 2148226608, i64 2148226652, i64 2148226686, i64 2148226707}
