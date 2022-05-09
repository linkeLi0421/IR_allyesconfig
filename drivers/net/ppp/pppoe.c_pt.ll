; ModuleID = '/llk/IR_all_yes/drivers/net/ppp/pppoe.c_pt.bc'
source_filename = "../drivers/net/ppp/pppoe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.101, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.101 = type { ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.pppox_proto = type { ptr, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ppp_channel_ops = type { ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.141, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.141 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.pppoe_net = type { [16 x ptr], %struct.rwlock_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.pppox_sock = type { %struct.sock, %struct.ppp_channel, ptr, %union.anon.147, i16 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.106, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.107, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.108, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.102, [0 x i32], %union.anon.103, i16, i16, %union.anon.104, %struct.refcount_struct, [0 x i32], %union.anon.105 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.102 = type { i32 }
%union.anon.103 = type { %struct.hlist_node }
%union.anon.104 = type { i32 }
%union.anon.105 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.106 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.ppp_channel = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%union.anon.147 = type { %struct.pppoe_opt }
%struct.pppoe_opt = type { ptr, i32, %struct.pppoe_addr, %struct.sockaddr_pppox, %struct.work_struct }
%struct.pppoe_addr = type { i16, [6 x i8], [16 x i8] }
%struct.sockaddr_pppox = type <{ i16, i32, %union.anon.148 }>
%union.anon.148 = type { %struct.pptp_addr, [16 x i8] }
%struct.pptp_addr = type { i16, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.112, [48 x i8], %union.anon.113, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.115, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.112 = type { i64 }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { i32, ptr }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.117, i32, i32, i32, i16, i16, %union.anon.119, i32, %union.anon.120, %union.anon.121, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.117 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i16 }
%struct.pppoe_hdr = type { i8, i8, i16, i16, [0 x %struct.pppoe_tag] }
%struct.pppoe_tag = type { i16, i16, [0 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.100, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.9, %union.anon.98 }
%union.anon.9 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.100 = type { ptr }
%struct.net_device_path = type { i32, ptr, %union.anon.137 }
%union.anon.137 = type { %struct.anon.139, [4 x i8] }
%struct.anon.139 = type { i32, i16, i16 }
%struct.anon.138 = type { i16, i16, [6 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@pppoe_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @pppoe_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@pppoed_ptype = internal global %struct.packet_type { i16 -30621, i8 0, ptr null, ptr null, ptr @pppoe_disc_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@pppoes_ptype = internal global %struct.packet_type { i16 -30620, i8 0, ptr null, ptr null, ptr @pppoe_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@pppoe_sk_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1104, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.101 zeroinitializer, ptr null, [32 x i8] c"PPPOE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, section ".data..read_mostly", align 4
@pppoe_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @pppoe_init_net, ptr null, ptr @pppoe_exit_net, ptr null, ptr @pppoe_net_id, i32 108 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_pppoe__467_1220_pppoe_init6 = internal global ptr @pppoe_init, section ".initcall6.init", align 4
@__exitcall_pppoe_exit = internal global ptr @pppoe_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author468 = internal constant [55 x i8] c"pppoe.author=Michal Ostrowski <mostrows@speakeasy.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description469 = internal constant [43 x i8] c"pppoe.description=PPP over Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file470 = internal constant [33 x i8] c"pppoe.file=drivers/net/ppp/pppoe\00", section ".modinfo", align 1
@__UNIQUE_ID_license471 = internal constant [18 x i8] c"pppoe.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias472 = internal constant [30 x i8] c"pppoe.alias=net-pf-24-proto-0\00", section ".modinfo", align 1
@pppoe_net_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@pppoe_init_net.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&pn->hash_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pppoe\00", [26 x i8] zeroinitializer }, align 32
@pppoe_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @pppoe_seq_start, ptr @pppoe_seq_stop, ptr @pppoe_seq_next, ptr @pppoe_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Id       Address              Device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%08X %pM %8s\0A\00", [18 x i8] zeroinitializer }, align 32
@pppoe_proto = internal constant { %struct.pppox_proto, [20 x i8] } { %struct.pppox_proto { ptr @pppoe_create, ptr @pppoe_ioctl, ptr null }, [20 x i8] zeroinitializer }, align 32
@pppoe_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 24, ptr null, ptr @pppoe_release, ptr @sock_no_bind, ptr @pppoe_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @pppoe_getname, ptr @datagram_poll, ptr @pppox_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @pppoe_sendmsg, ptr @pppoe_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@pppoe_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&pppox_sk(sk)->proto.pppoe.padt_work)\00", [40 x i8] zeroinitializer }, align 32
@pppoe_chan_ops = internal constant { %struct.ppp_channel_ops, [20 x i8] } { %struct.ppp_channel_ops { ptr @pppoe_xmit, ptr null, ptr @pppoe_fill_forward_path }, [20 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/net/ppp/pppoe.c\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 7, i64 8, i64 10]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 32, i64 45313, i64 1074033746, i64 1074033753, i64 1074049280, i64 2147775571]
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"pppoe_notifier\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 356, i32 30 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"pppoe_net_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1173, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 45, i32 7 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 695, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 723, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1156, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1158, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"pppoe_seq_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1116, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1040, i32 17 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1047, i32 18 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"pppoe_proto\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1145, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"pppoe_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1124, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 555, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"pppoe_chan_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 997, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 230, i32 6 }
@___asan_gen_.74 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 214, i32 2 }
@___asan_gen_.77 = private constant [27 x i8] c"../drivers/net/ppp/pppoe.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 751, i32 7 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 156, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias472, ptr @__UNIQUE_ID_author468, ptr @__UNIQUE_ID_description469, ptr @__UNIQUE_ID_file470, ptr @__UNIQUE_ID_license471, ptr @__exitcall_pppoe_exit, ptr @__initcall__kmod_pppoe__467_1220_pppoe_init6, ptr @pppoe_exit, ptr @pppoe_notifier, ptr @pppoe_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @pppoe_init_net.__key, ptr @.str.6, ptr @.str.7, ptr @pppoe_seq_ops, ptr @.str.8, ptr @.str.9, ptr @pppoe_proto, ptr @pppoe_ops, ptr @pppoe_create.__key, ptr @.str.10, ptr @pppoe_chan_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppoe_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppoe_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppoe_init_net.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppoe_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppoe_proto to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppoe_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppoe_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppoe_chan_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pppoe_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @pppoe_notifier) #11
  tail call void @dev_remove_pack(ptr noundef nonnull @pppoed_ptype) #11
  tail call void @dev_remove_pack(ptr noundef nonnull @pppoes_ptype) #11
  tail call void @unregister_pppox_proto(i32 noundef 0) #11
  tail call void @proto_unregister(ptr noundef nonnull @pppoe_sk_proto) #11
  tail call void @unregister_pernet_device(ptr noundef nonnull @pppoe_net_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pppox_proto(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoe_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_device(ptr noundef nonnull @pppoe_net_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @proto_register(ptr noundef nonnull @pppoe_sk_proto, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_unregister_net_ops_crit_edge

if.end.out_unregister_net_ops_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unregister_net_ops

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_pppox_proto(i32 noundef 0, ptr noundef nonnull @pppoe_proto) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %out_unregister_pppoe_proto

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dev_add_pack(ptr noundef nonnull @pppoes_ptype) #11
  tail call void @dev_add_pack(ptr noundef nonnull @pppoed_ptype) #11
  %call9 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @pppoe_notifier) #11
  br label %cleanup

out_unregister_pppoe_proto:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @proto_unregister(ptr noundef nonnull @pppoe_sk_proto) #11
  br label %out_unregister_net_ops

out_unregister_net_ops:                           ; preds = %out_unregister_pppoe_proto, %if.end.out_unregister_net_ops_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.out_unregister_net_ops_crit_edge ], [ %call5, %out_unregister_pppoe_proto ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @pppoe_net_ops) #11
  br label %cleanup

cleanup:                                          ; preds = %out_unregister_net_ops, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ %err.0, %out_unregister_net_ops ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoe_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 8, label %entry.sw.bb_crit_edge
    i32 7, label %entry.sw.bb_crit_edge15
    i32 10, label %entry.sw.bb_crit_edge16
    i32 2, label %entry.sw.bb_crit_edge17
  ]

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i.i, align 4
  %call1.i = tail call fastcc ptr @pppoe_pernet(ptr noundef %4) #11
  %hash_lock.i = getelementptr inbounds %struct.pppoe_net, ptr %call1.i, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %hash_lock.i) #11
  %tobool.not.i.i = icmp eq ptr %1, null
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  br label %for.body.i

for.body.i:                                       ; preds = %while.end35.i.for.body.i_crit_edge, %sw.bb
  %i.074.i = phi i32 [ 0, %sw.bb ], [ %inc.i, %while.end35.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x ptr], ptr %call1.i, i32 0, i32 %i.074.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %po.071.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not72.i = icmp eq ptr %po.071.i, null
  br i1 %tobool.not72.i, label %for.body.i.while.end35.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.while.end35.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end35.i

land.rhs.i:                                       ; preds = %land.rhs.i.backedge, %for.body.i.land.rhs.i_crit_edge
  %po.170.i = phi ptr [ %po.170.i.be, %land.rhs.i.backedge ], [ %po.071.i, %for.body.i.land.rhs.i_crit_edge ]
  %proto.i = getelementptr inbounds %struct.pppox_sock, ptr %po.170.i, i32 0, i32 3
  %6 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proto.i, align 8
  %cmp5.not.i = icmp eq ptr %7, %1
  br i1 %cmp5.not.i, label %if.end.critedge.i, label %while.body6.i

while.body6.i:                                    ; preds = %land.rhs.i
  %next.i = getelementptr inbounds %struct.pppox_sock, ptr %po.170.i, i32 0, i32 2
  %8 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %while.body6.i.while.end35.i_crit_edge, label %while.body6.i.land.rhs.i.backedge_crit_edge

while.body6.i.land.rhs.i.backedge_crit_edge:      ; preds = %while.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.backedge

while.body6.i.while.end35.i_crit_edge:            ; preds = %while.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end35.i

land.rhs.i.backedge:                              ; preds = %do.end31.i.land.rhs.i.backedge_crit_edge, %while.body6.i.land.rhs.i.backedge_crit_edge
  %po.170.i.be = phi ptr [ %9, %while.body6.i.land.rhs.i.backedge_crit_edge ], [ %po.0.i, %do.end31.i.land.rhs.i.backedge_crit_edge ]
  br label %land.rhs.i

if.end.critedge.i:                                ; preds = %land.rhs.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %po.170.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #11, !srcloc !77
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.critedge.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !78

if.end.critedge.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.critedge.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !79

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.critedge.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.critedge.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %hash_lock.i) #11
  tail call void @lock_sock_nested(ptr noundef nonnull %po.170.i, i32 noundef 0) #11
  %12 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %proto.i, align 8
  %cmp12.i = icmp eq ptr %13, %1
  br i1 %cmp12.i, label %land.lhs.true.i, label %sock_hold.exit.i.if.end17.i_crit_edge

sock_hold.exit.i.if.end17.i_crit_edge:            ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %sock_hold.exit.i
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %po.170.i, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state.i, align 2
  %16 = and i8 %15, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not.i = icmp eq i8 %16, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end17.i_crit_edge, label %if.then14.i

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  tail call void @pppox_unbind_sock(ptr noundef nonnull %po.170.i) #11
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %po.170.i, i32 0, i32 76
  %17 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk_state_change.i, align 4
  tail call void %18(ptr noundef nonnull %po.170.i) #11
  %19 = ptrtoint ptr %proto.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %proto.i, align 8
  br i1 %tobool.not.i.i, label %if.then14.i.if.end17.i_crit_edge, label %do.body1.i.i

if.then14.i.if.end17.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

do.body1.i.i:                                     ; preds = %if.then14.i
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !80
  %21 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !67) #11
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
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %and.i.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !78

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #11, !srcloc !82
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end30.i.i, %if.then14.i.if.end17.i_crit_edge, %land.lhs.true.i.if.end17.i_crit_edge, %sock_hold.exit.i.if.end17.i_crit_edge
  tail call void @release_sock(ptr noundef nonnull %po.170.i) #11
  %call.i.i.i.i.i.i64.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #11
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #11, !srcloc !84
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i65.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i65.i, label %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !79

if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #11
  br label %sock_put.exit.i

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @sk_free(ptr noundef nonnull %po.170.i) #11
  br label %sock_put.exit.i

sock_put.exit.i:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge
  %35 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nd_net.i.i, align 4
  %call19.i = tail call fastcc ptr @pppoe_pernet(ptr noundef %36) #11
  %cmp20.i = icmp eq ptr %call19.i, null
  br i1 %cmp20.i, label %do.body25.i, label %do.end31.i, !prof !78

do.body25.i:                                      ; preds = %sock_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ppp/pppoe.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 322, 0\0A.popsection", ""() #11, !srcloc !86
  unreachable

do.end31.i:                                       ; preds = %sock_put.exit.i
  tail call void @_raw_write_lock_bh(ptr noundef %hash_lock.i) #11
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %po.0.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %po.0.i, null
  br i1 %tobool.not.i, label %do.end31.i.while.end35.i_crit_edge, label %do.end31.i.land.rhs.i.backedge_crit_edge

do.end31.i.land.rhs.i.backedge_crit_edge:         ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.backedge

do.end31.i.while.end35.i_crit_edge:               ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end35.i

while.end35.i:                                    ; preds = %do.end31.i.while.end35.i_crit_edge, %while.body6.i.while.end35.i_crit_edge, %for.body.i.while.end35.i_crit_edge
  %inc.i = add nuw nsw i32 %i.074.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %pppoe_flush_dev.exit, label %while.end35.i.for.body.i_crit_edge

while.end35.i.for.body.i_crit_edge:               ; preds = %while.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

pppoe_flush_dev.exit:                             ; preds = %while.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_write_unlock_bh(ptr noundef %hash_lock.i) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %pppoe_flush_dev.exit, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pppoe_pernet(ptr noundef %net) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @pppoe_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !67) #11
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !87
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @.str.1) #11
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #11
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !88
  %9 = tail call i32 @llvm.read_register.i32(metadata !67) #11
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pppox_unbind_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #11, !srcloc !84
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !79

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @sk_free(ptr noundef %sk) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoe_disc_rcv(ptr noundef %skb, ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #11
  %0 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %entry
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #11
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread42, !prof !78

skb_share_check.exit.thread42:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %if.end

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %out

skb_share_check.exit:                             ; preds = %entry
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %skb_share_check.exit.out_crit_edge, label %skb_share_check.exit.if.end_crit_edge

skb_share_check.exit.if.end_crit_edge:            ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

skb_share_check.exit.out_crit_edge:               ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %skb_share_check.exit.if.end_crit_edge, %skb_share_check.exit.thread42
  %skb.addr.0.i45 = phi ptr [ %call7.i, %skb_share_check.exit.thread42 ], [ %skb, %skb_share_check.exit.if.end_crit_edge ]
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i45, i32 0, i32 15
  %2 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp.not, label %if.end3, label %if.end.abort_crit_edge

if.end.abort_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end3:                                          ; preds = %if.end
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i45, i32 0, i32 6
  %3 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i45, i32 0, i32 7
  %5 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 5
  br i1 %cmp.i, label %if.end3.if.end6_crit_edge, label %if.end.i, !prof !79

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp3.i = icmp ult i32 %4, 6
  br i1 %cmp3.i, label %if.end.i.abort_crit_edge, label %pskb_may_pull.exit, !prof !78

if.end.i.abort_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 6, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i45, i32 noundef %sub.i) #11
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.abort_crit_edge, label %pskb_may_pull.exit.if.end6_crit_edge

pskb_may_pull.exit.if.end6_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

pskb_may_pull.exit.abort_crit_edge:               ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end6:                                          ; preds = %pskb_may_pull.exit.if.end6_crit_edge, %if.end3.if.end6_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i45, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i45, i32 0, i32 15, i32 0, i32 20
  %9 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %code = getelementptr inbounds %struct.pppoe_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -89, i8 %12)
  %cmp9.not = icmp eq i8 %12, -89
  br i1 %cmp9.not, label %if.end12, label %if.end6.abort_crit_edge

if.end6.abort_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end12:                                         ; preds = %if.end6
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %13 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nd_net.i, align 4
  %call14 = tail call fastcc ptr @pppoe_pernet(ptr noundef %14)
  %sid = getelementptr inbounds %struct.pppoe_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %sid to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %sid, align 1
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i45, i32 0, i32 15, i32 0, i32 21
  %19 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i35 = zext i16 %20 to i32
  %add.ptr.i.i36 = getelementptr i8, ptr %18, i32 %conv.i.i35
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i36, i32 0, i32 1
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %21 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ifindex, align 4
  %call16 = tail call fastcc ptr @get_item(ptr noundef %call14, i16 noundef zeroext %16, ptr noundef %h_source, i32 noundef %22)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end12.abort_crit_edge, label %if.then18

if.end12.abort_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.then18:                                        ; preds = %if.end12
  %padt_work = getelementptr inbounds %struct.pppox_sock, ptr %call16, i32 0, i32 3, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %padt_work) #11
  br i1 %call.i.i, label %if.then18.abort_crit_edge, label %if.then20

if.then18.abort_crit_edge:                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.then20:                                        ; preds = %if.then18
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call16, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.abort_crit_edge, label %if.then10.i.i.i.i, !prof !79

if.end5.i.i.i.i.abort_crit_edge:                  ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %abort

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @sk_free(ptr noundef nonnull %call16) #11
  br label %abort

abort:                                            ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.abort_crit_edge, %if.then18.abort_crit_edge, %if.end12.abort_crit_edge, %if.end6.abort_crit_edge, %pskb_may_pull.exit.abort_crit_edge, %if.end.i.abort_crit_edge, %if.end.abort_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i45, i32 noundef 0) #11
  br label %out

out:                                              ; preds = %abort, %skb_share_check.exit.out_crit_edge, %skb_share_check.exit.thread
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_item(ptr noundef %pn, i16 noundef zeroext %sid, ptr nocapture noundef readonly %addr, i32 noundef %ifindex) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %hash_lock = getelementptr inbounds %struct.pppoe_net, ptr %pn, i32 0, i32 1
  tail call void @_raw_read_lock_bh(ptr noundef %hash_lock) #11
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %arrayidx.1.i.i = getelementptr i8, ptr %addr, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1.i.i, align 1
  %arrayidx.2.i.i = getelementptr i8, ptr %addr, i32 2
  %4 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.2.i.i, align 1
  %arrayidx.3.i.i = getelementptr i8, ptr %addr, i32 3
  %6 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.3.i.i, align 1
  %arrayidx.4.i.i = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.4.i.i, align 1
  %arrayidx.5.i.i = getelementptr i8, ptr %addr, i32 5
  %10 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.5.i.i, align 1
  %12 = lshr i16 %sid, 8
  %xor36.1.i18.i = xor i16 %12, %sid
  %xor36.1.i.i = trunc i16 %xor36.1.i18.i to i8
  %xor36.2.i.i = xor i8 %1, %xor36.1.i.i
  %xor36.3.i.i = xor i8 %xor36.2.i.i, %3
  %xor36.4.i.i = xor i8 %xor36.3.i.i, %5
  %xor36.5.i.i = xor i8 %xor36.4.i.i, %7
  %conv10.i.i = xor i8 %xor36.5.i.i, %9
  %conv10.1.i.i = xor i8 %conv10.i.i, %11
  %13 = lshr i8 %conv10.1.i.i, 4
  %conv10.masked.i.i = and i8 %conv10.1.i.i, 15
  %14 = xor i8 %13, %conv10.masked.i.i
  %and.i.i = zext i8 %14 to i32
  %arrayidx.i = getelementptr [16 x ptr], ptr %pn, i32 0, i32 %and.i.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %ret.013.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not14.i = icmp eq ptr %ret.013.i, null
  br i1 %tobool.not14.i, label %entry.if.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %ret.015.i = phi ptr [ %ret.0.i, %if.end.i.while.body.i_crit_edge ], [ %ret.013.i, %entry.while.body.i_crit_edge ]
  %pa.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.015.i, i32 0, i32 3, i32 0, i32 2
  %16 = ptrtoint ptr %pa.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pa.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %sid)
  %cmp.i.i = icmp eq i16 %17, %sid
  br i1 %cmp.i.i, label %cmp_addr.exit.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

cmp_addr.exit.i:                                  ; preds = %while.body.i
  %remote.i.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.015.i, i32 0, i32 3, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %remote.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %remote.i.i, align 4
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr, align 4
  %xor.i.i.i = xor i32 %21, %19
  %add.ptr.i.i.i = getelementptr %struct.pppox_sock, ptr %ret.015.i, i32 0, i32 3, i32 0, i32 2, i32 1, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i.i, align 2
  %24 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.4.i.i, align 2
  %xor37.i.i.i = xor i16 %25, %23
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %land.lhs.true.i, label %cmp_addr.exit.i.if.end.i_crit_edge

cmp_addr.exit.i.if.end.i_crit_edge:               ; preds = %cmp_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %cmp_addr.exit.i
  %ifindex4.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.015.i, i32 0, i32 3, i32 0, i32 1
  %26 = ptrtoint ptr %ifindex4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ifindex4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %ifindex)
  %cmp.i = icmp eq i32 %27, %ifindex
  br i1 %cmp.i, label %if.then, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %cmp_addr.exit.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %next.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.015.i, i32 0, i32 2
  %28 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %ret.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %ret.0.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %ret.015.i, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !77
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !78

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !79

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0.lcssa.i9 = phi ptr [ %ret.015.i, %if.else.i.i.i.i.if.end_crit_edge ], [ %ret.015.i, %if.end15.sink.split.i.i.i.i ], [ null, %entry.if.end_crit_edge ], [ null, %if.end.i.if.end_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef %hash_lock) #11
  ret ptr %ret.0.lcssa.i9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoe_rcv(ptr noundef %skb, ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #11
  %0 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %entry
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #11
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread61, !prof !78

skb_share_check.exit.thread61:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %if.end

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

skb_share_check.exit:                             ; preds = %entry
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %skb_share_check.exit.cleanup_crit_edge, label %skb_share_check.exit.if.end_crit_edge

skb_share_check.exit.if.end_crit_edge:            ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

skb_share_check.exit.cleanup_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %skb_share_check.exit.if.end_crit_edge, %skb_share_check.exit.thread61
  %skb.addr.0.i64 = phi ptr [ %call7.i, %skb_share_check.exit.thread61 ], [ %skb, %skb_share_check.exit.if.end_crit_edge ]
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i64, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i64, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i, align 2
  %conv1.i = zext i16 %5 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 14
  br i1 %cmp, label %if.end.drop_crit_edge, label %if.end3

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

if.end3:                                          ; preds = %if.end
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i64, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i64, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 5
  br i1 %cmp.i, label %if.end3.if.end6_crit_edge, label %if.end.i, !prof !79

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp3.i = icmp ult i32 %7, 6
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !78

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i46 = sub nuw nsw i32 6, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i64, i32 noundef %sub.i46) #11
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end6_crit_edge

pskb_may_pull.exit.if.end6_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

if.end6:                                          ; preds = %pskb_may_pull.exit.if.end6_crit_edge, %if.end3.if.end6_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i64, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %12 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %length = getelementptr inbounds %struct.pppoe_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %length, align 1
  %conv = zext i16 %15 to i32
  %call8 = tail call ptr @skb_pull_rcsum(ptr noundef nonnull %skb.addr.0.i64, i32 noundef 6) #11
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp10 = icmp ult i32 %17, %conv
  br i1 %cmp10, label %if.end6.drop_crit_edge, label %if.end13

if.end6.drop_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp.not.i = icmp ugt i32 %17, %conv
  br i1 %cmp.not.i, label %pskb_trim_rcsum.exit, label %if.end13.if.end17_crit_edge, !prof !78

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

pskb_trim_rcsum.exit:                             ; preds = %if.end13
  %call.i = tail call i32 @pskb_trim_rcsum_slow(ptr noundef nonnull %skb.addr.0.i64, i32 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %pskb_trim_rcsum.exit.if.end17_crit_edge, label %pskb_trim_rcsum.exit.drop_crit_edge

pskb_trim_rcsum.exit.drop_crit_edge:              ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

pskb_trim_rcsum.exit.if.end17_crit_edge:          ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %pskb_trim_rcsum.exit.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %20 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %network_header.i, align 4
  %conv.i.i51 = zext i16 %21 to i32
  %add.ptr.i.i52 = getelementptr i8, ptr %19, i32 %conv.i.i51
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %22 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nd_net.i, align 4
  %call20 = tail call fastcc ptr @pppoe_pernet(ptr noundef %23)
  %sid = getelementptr inbounds %struct.pppoe_hdr, ptr %add.ptr.i.i52, i32 0, i32 2
  %24 = ptrtoint ptr %sid to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %sid, align 1
  %26 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i, align 8
  %28 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mac_header.i, align 2
  %conv.i.i54 = zext i16 %29 to i32
  %add.ptr.i.i55 = getelementptr i8, ptr %27, i32 %conv.i.i54
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i55, i32 0, i32 1
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %30 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ifindex, align 4
  %call22 = tail call fastcc ptr @get_item(ptr noundef %call20, i16 noundef zeroext %25, ptr noundef %h_source, i32 noundef %31)
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end17.drop_crit_edge, label %if.end25

if.end17.drop_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

if.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call.i56 = tail call i32 @__sk_receive_skb(ptr noundef nonnull %call22, ptr noundef nonnull %skb.addr.0.i64, i32 noundef 0, i32 noundef 1, i1 noundef zeroext true) #11
  br label %cleanup

drop:                                             ; preds = %if.end17.drop_crit_edge, %pskb_trim_rcsum.exit.drop_crit_edge, %if.end6.drop_crit_edge, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge, %if.end.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i64, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end25, %skb_share_check.exit.cleanup_crit_edge, %skb_share_check.exit.thread
  %retval.0 = phi i32 [ %call.i56, %if.end25 ], [ 1, %skb_share_check.exit.cleanup_crit_edge ], [ 1, %drop ], [ 1, %skb_share_check.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_receive_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoe_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pppoe_pernet(ptr noundef %net)
  %hash_lock = getelementptr inbounds %struct.pppoe_net, ptr %call, i32 0, i32 1
  tail call void @__rwlock_init(ptr noundef %hash_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @pppoe_init_net.__key) #11
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call1 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @pppoe_seq_ops, i32 noundef 8, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call1, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pppoe_exit_net(ptr nocapture noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.7, ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pppoe_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call fastcc ptr @pppoe_pernet(ptr noundef %3)
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %hash_lock = getelementptr inbounds %struct.pppoe_net, ptr %call1, i32 0, i32 1
  tail call void @_raw_read_lock_bh(ptr noundef %hash_lock) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  %dec = add i64 %5, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cond.true
  %i.015.i = phi i32 [ 0, %cond.true ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %pos.addr.014.i = phi i64 [ %dec, %cond.true ], [ %pos.addr.1.lcssa.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x ptr], ptr %call1, i32 0, i32 %i.015.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %po.110.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not11.i = icmp eq ptr %po.110.i, null
  br i1 %tobool.not11.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.while.body.i_crit_edge

for.body.i.while.body.i_crit_edge:                ; preds = %for.body.i
  br label %while.body.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %for.body.i.while.body.i_crit_edge
  %po.113.i = phi ptr [ %po.1.i, %if.end.i.while.body.i_crit_edge ], [ %po.110.i, %for.body.i.while.body.i_crit_edge ]
  %pos.addr.112.i = phi i64 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ %pos.addr.014.i, %for.body.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos.addr.112.i)
  %tobool1.not.i = icmp eq i64 %pos.addr.112.i, 0
  br i1 %tobool1.not.i, label %while.body.i.cond.end_crit_edge, label %if.end.i

while.body.i.cond.end_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i:                                         ; preds = %while.body.i
  %dec.i = add i64 %pos.addr.112.i, -1
  %next.i = getelementptr inbounds %struct.pppox_sock, ptr %po.113.i, i32 0, i32 2
  %7 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %po.1.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %po.1.i, null
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %pos.addr.1.lcssa.i = phi i64 [ %pos.addr.014.i, %for.body.i.for.inc.i_crit_edge ], [ %dec.i, %if.end.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.cond.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cond.end_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.end:                                         ; preds = %for.inc.i.cond.end_crit_edge, %while.body.i.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ inttoptr (i32 1 to ptr), %entry.cond.end_crit_edge ], [ %po.113.i, %while.body.i.cond.end_crit_edge ], [ null, %for.inc.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pppoe_seq_stop(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call fastcc ptr @pppoe_pernet(ptr noundef %3)
  %hash_lock = getelementptr inbounds %struct.pppoe_net, ptr %call1, i32 0, i32 1
  tail call void @_raw_read_unlock_bh(ptr noundef %hash_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pppoe_seq_next(ptr nocapture noundef readonly %seq, ptr noundef readonly %v, ptr nocapture noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call fastcc ptr @pppoe_pernet(ptr noundef %3)
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %for.body.i, label %if.end

for.body.i:                                       ; preds = %entry
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %po.110.i = load ptr, ptr %call1, align 4
  %tobool.not11.i = icmp eq ptr %po.110.i, null
  br i1 %tobool.not11.i, label %for.inc.i, label %for.body.i.out_crit_edge

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i:                                        ; preds = %for.body.i
  %arrayidx.i.1 = getelementptr [16 x ptr], ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %po.110.i.1 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool.not11.i.1 = icmp eq ptr %po.110.i.1, null
  br i1 %tobool.not11.i.1, label %for.inc.i.1, label %for.inc.i.out_crit_edge

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i.1:                                      ; preds = %for.inc.i
  %arrayidx.i.2 = getelementptr [16 x ptr], ptr %call1, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %po.110.i.2 = load ptr, ptr %arrayidx.i.2, align 4
  %tobool.not11.i.2 = icmp eq ptr %po.110.i.2, null
  br i1 %tobool.not11.i.2, label %for.inc.i.2, label %for.inc.i.1.out_crit_edge

for.inc.i.1.out_crit_edge:                        ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %arrayidx.i.3 = getelementptr [16 x ptr], ptr %call1, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %po.110.i.3 = load ptr, ptr %arrayidx.i.3, align 4
  %tobool.not11.i.3 = icmp eq ptr %po.110.i.3, null
  br i1 %tobool.not11.i.3, label %for.inc.i.3, label %for.inc.i.2.out_crit_edge

for.inc.i.2.out_crit_edge:                        ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i.3:                                      ; preds = %for.inc.i.2
  %arrayidx.i.4 = getelementptr [16 x ptr], ptr %call1, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %po.110.i.4 = load ptr, ptr %arrayidx.i.4, align 4
  %tobool.not11.i.4 = icmp eq ptr %po.110.i.4, null
  br i1 %tobool.not11.i.4, label %for.inc.i.4, label %for.inc.i.3.out_crit_edge

for.inc.i.3.out_crit_edge:                        ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i.4:                                      ; preds = %for.inc.i.3
  %arrayidx.i.5 = getelementptr [16 x ptr], ptr %call1, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %po.110.i.5 = load ptr, ptr %arrayidx.i.5, align 4
  %tobool.not11.i.5 = icmp eq ptr %po.110.i.5, null
  br i1 %tobool.not11.i.5, label %for.inc.i.5, label %for.inc.i.4.out_crit_edge

for.inc.i.4.out_crit_edge:                        ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i.5:                                      ; preds = %for.inc.i.4
  %arrayidx.i.6 = getelementptr [16 x ptr], ptr %call1, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %po.110.i.6 = load ptr, ptr %arrayidx.i.6, align 4
  %tobool.not11.i.6 = icmp eq ptr %po.110.i.6, null
  br i1 %tobool.not11.i.6, label %for.inc.i.6, label %for.inc.i.5.out_crit_edge

for.inc.i.5.out_crit_edge:                        ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i.6:                                      ; preds = %for.inc.i.5
  %arrayidx.i.7 = getelementptr [16 x ptr], ptr %call1, i32 0, i32 7
  %13 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %po.110.i.7 = load ptr, ptr %arrayidx.i.7, align 4
  %tobool.not11.i.7 = icmp eq ptr %po.110.i.7, null
  br i1 %tobool.not11.i.7, label %for.inc.i.7, label %for.inc.i.6.out_crit_edge

for.inc.i.6.out_crit_edge:                        ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i.7:                                      ; preds = %for.inc.i.6
  %arrayidx.i.8 = getelementptr [16 x ptr], ptr %call1, i32 0, i32 8
  %14 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %po.110.i.8 = load ptr, ptr %arrayidx.i.8, align 4
  %tobool.not11.i.8 = icmp eq ptr %po.110.i.8, null
  br i1 %tobool.not11.i.8, label %for.inc.i.8, label %for.inc.i.7.out_crit_edge

for.inc.i.7.out_crit_edge:                        ; preds = %for.inc.i.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i.8:                                      ; preds = %for.inc.i.7
  %arrayidx.i.9 = getelementptr [16 x ptr], ptr %call1, i32 0, i32 9
  %15 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %po.110.i.9 = load ptr, ptr %arrayidx.i.9, align 4
  %tobool.not11.i.9 = icmp eq ptr %po.110.i.9, null
  br i1 %tobool.not11.i.9, label %for.inc.i.9, label %for.inc.i.8.out_crit_edge

for.inc.i.8.out_crit_edge:                        ; preds = %for.inc.i.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i.9:                                      ; preds = %for.inc.i.8
  %arrayidx.i.10 = getelementptr [16 x ptr], ptr %call1, i32 0, i32 10
  %16 = ptrtoint ptr %arrayidx.i.10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %po.110.i.10 = load ptr, ptr %arrayidx.i.10, align 4
  %tobool.not11.i.10 = icmp eq ptr %po.110.i.10, null
  br i1 %tobool.not11.i.10, label %for.inc.i.10, label %for.inc.i.9.out_crit_edge

for.inc.i.9.out_crit_edge:                        ; preds = %for.inc.i.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i.10:                                     ; preds = %for.inc.i.9
  %arrayidx.i.11 = getelementptr [16 x ptr], ptr %call1, i32 0, i32 11
  %17 = ptrtoint ptr %arrayidx.i.11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %po.110.i.11 = load ptr, ptr %arrayidx.i.11, align 4
  %tobool.not11.i.11 = icmp eq ptr %po.110.i.11, null
  br i1 %tobool.not11.i.11, label %for.inc.i.11, label %for.inc.i.10.out_crit_edge

for.inc.i.10.out_crit_edge:                       ; preds = %for.inc.i.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i.11:                                     ; preds = %for.inc.i.10
  %arrayidx.i.12 = getelementptr [16 x ptr], ptr %call1, i32 0, i32 12
  %18 = ptrtoint ptr %arrayidx.i.12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %po.110.i.12 = load ptr, ptr %arrayidx.i.12, align 4
  %tobool.not11.i.12 = icmp eq ptr %po.110.i.12, null
  br i1 %tobool.not11.i.12, label %for.inc.i.12, label %for.inc.i.11.out_crit_edge

for.inc.i.11.out_crit_edge:                       ; preds = %for.inc.i.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i.12:                                     ; preds = %for.inc.i.11
  %arrayidx.i.13 = getelementptr [16 x ptr], ptr %call1, i32 0, i32 13
  %19 = ptrtoint ptr %arrayidx.i.13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %po.110.i.13 = load ptr, ptr %arrayidx.i.13, align 4
  %tobool.not11.i.13 = icmp eq ptr %po.110.i.13, null
  br i1 %tobool.not11.i.13, label %for.inc.i.13, label %for.inc.i.12.out_crit_edge

for.inc.i.12.out_crit_edge:                       ; preds = %for.inc.i.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i.13:                                     ; preds = %for.inc.i.12
  %arrayidx.i.14 = getelementptr [16 x ptr], ptr %call1, i32 0, i32 14
  %20 = ptrtoint ptr %arrayidx.i.14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %po.110.i.14 = load ptr, ptr %arrayidx.i.14, align 4
  %tobool.not11.i.14 = icmp eq ptr %po.110.i.14, null
  br i1 %tobool.not11.i.14, label %for.inc.i.14, label %for.inc.i.13.out_crit_edge

for.inc.i.13.out_crit_edge:                       ; preds = %for.inc.i.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i.14:                                     ; preds = %for.inc.i.13
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.15 = getelementptr [16 x ptr], ptr %call1, i32 0, i32 15
  %21 = ptrtoint ptr %arrayidx.i.15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %po.110.i.15 = load ptr, ptr %arrayidx.i.15, align 4
  %tobool.not11.i.15 = icmp eq ptr %po.110.i.15, null
  %spec.select = select i1 %tobool.not11.i.15, ptr null, ptr %po.110.i.15
  br label %out

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.pppox_sock, ptr %v, i32 0, i32 2
  %22 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.else, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else:                                          ; preds = %if.end
  %pa = getelementptr inbounds %struct.pppox_sock, ptr %v, i32 0, i32 3, i32 0, i32 2
  %24 = ptrtoint ptr %pa to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pa, align 8
  %remote = getelementptr inbounds %struct.pppox_sock, ptr %v, i32 0, i32 3, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %remote to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %remote, align 1
  %arrayidx.1.i = getelementptr %struct.pppox_sock, ptr %v, i32 0, i32 3, i32 0, i32 2, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.pppox_sock, ptr %v, i32 0, i32 3, i32 0, i32 2, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.pppox_sock, ptr %v, i32 0, i32 3, i32 0, i32 2, i32 1, i32 3
  %32 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx.4.i = getelementptr %struct.pppox_sock, ptr %v, i32 0, i32 3, i32 0, i32 2, i32 1, i32 4
  %34 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.4.i, align 1
  %arrayidx.5.i = getelementptr %struct.pppox_sock, ptr %v, i32 0, i32 3, i32 0, i32 2, i32 1, i32 5
  %36 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.5.i, align 1
  %38 = trunc i16 %25 to i8
  %39 = lshr i16 %25, 8
  %40 = trunc i16 %39 to i8
  %xor36.1.i = xor i8 %27, %38
  %xor36.2.i = xor i8 %xor36.1.i, %29
  %xor36.3.i = xor i8 %xor36.2.i, %40
  %xor36.4.i = xor i8 %xor36.3.i, %31
  %xor36.5.i = xor i8 %xor36.4.i, %33
  %conv10.i = xor i8 %xor36.5.i, %35
  %conv10.1.i = xor i8 %conv10.i, %37
  %41 = lshr i8 %conv10.1.i, 4
  %conv10.masked.i = and i8 %conv10.1.i, 15
  %42 = xor i8 %41, %conv10.masked.i
  %and.i = zext i8 %42 to i32
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.else
  %hash.0 = phi i32 [ %and.i, %if.else ], [ %inc8, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %hash.0)
  %exitcond.not = icmp eq i32 %hash.0, 15
  br i1 %exitcond.not, label %while.cond.out_crit_edge, label %while.body

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body:                                       ; preds = %while.cond
  %inc8 = add nuw nsw i32 %hash.0, 1
  %arrayidx = getelementptr [16 x ptr], ptr %call1, i32 0, i32 %inc8
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %44, null
  br i1 %tobool10.not, label %while.body.while.cond_crit_edge, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

out:                                              ; preds = %while.body.out_crit_edge, %while.cond.out_crit_edge, %if.end.out_crit_edge, %for.inc.i.14, %for.inc.i.13.out_crit_edge, %for.inc.i.12.out_crit_edge, %for.inc.i.11.out_crit_edge, %for.inc.i.10.out_crit_edge, %for.inc.i.9.out_crit_edge, %for.inc.i.8.out_crit_edge, %for.inc.i.7.out_crit_edge, %for.inc.i.6.out_crit_edge, %for.inc.i.5.out_crit_edge, %for.inc.i.4.out_crit_edge, %for.inc.i.3.out_crit_edge, %for.inc.i.2.out_crit_edge, %for.inc.i.1.out_crit_edge, %for.inc.i.out_crit_edge, %for.body.i.out_crit_edge
  %po.2 = phi ptr [ %23, %if.end.out_crit_edge ], [ %po.110.i, %for.body.i.out_crit_edge ], [ %po.110.i.1, %for.inc.i.out_crit_edge ], [ %po.110.i.2, %for.inc.i.1.out_crit_edge ], [ %po.110.i.3, %for.inc.i.2.out_crit_edge ], [ %po.110.i.4, %for.inc.i.3.out_crit_edge ], [ %po.110.i.5, %for.inc.i.4.out_crit_edge ], [ %po.110.i.6, %for.inc.i.5.out_crit_edge ], [ %po.110.i.7, %for.inc.i.6.out_crit_edge ], [ %po.110.i.8, %for.inc.i.7.out_crit_edge ], [ %po.110.i.9, %for.inc.i.8.out_crit_edge ], [ %po.110.i.10, %for.inc.i.9.out_crit_edge ], [ %po.110.i.11, %for.inc.i.10.out_crit_edge ], [ %po.110.i.12, %for.inc.i.11.out_crit_edge ], [ %po.110.i.13, %for.inc.i.12.out_crit_edge ], [ %po.110.i.14, %for.inc.i.13.out_crit_edge ], [ %spec.select, %for.inc.i.14 ], [ null, %while.cond.out_crit_edge ], [ %44, %while.body.out_crit_edge ]
  ret ptr %po.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoe_seq_show(ptr noundef %seq, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.8) #11
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pa = getelementptr inbounds %struct.pppox_sock, ptr %v, i32 0, i32 3, i32 0, i32 2
  %dev = getelementptr inbounds %struct.pppox_sock, ptr %v, i32 0, i32 3, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %pa to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pa, align 8
  %conv = zext i16 %1 to i32
  %remote = getelementptr inbounds %struct.pppox_sock, ptr %v, i32 0, i32 3, i32 0, i32 2, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, i32 noundef %conv, ptr noundef %remote, ptr noundef %dev) #11
  br label %out

out:                                              ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pppox_proto(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoe_create(ptr noundef %net, ptr noundef %sock, i32 noundef %kern) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 24, i32 noundef 3264, ptr noundef nonnull @pppoe_sk_proto, i32 noundef %kern) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call) #11
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %sock, align 128
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @pppoe_ops, ptr %ops, align 4
  %sk_backlog_rcv = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 80
  %2 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @pppoe_rcv_core, ptr %sk_backlog_rcv, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store volatile i8 0, ptr %skc_state, align 2
  %sk_type = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 45
  %4 = ptrtoint ptr %sk_type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %sk_type, align 2
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %skc_family to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 24, ptr %skc_family, align 8
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 46
  %6 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %sk_protocol, align 4
  %padt_work = getelementptr inbounds %struct.pppox_sock, ptr %call, i32 0, i32 3, i32 0, i32 4
  tail call void @__init_work(ptr noundef %padt_work, i32 noundef 0) #11
  %7 = ptrtoint ptr %padt_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %padt_work, align 8
  %lockdep_map = getelementptr inbounds %struct.pppox_sock, ptr %call, i32 0, i32 3, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @pppoe_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry12 = getelementptr inbounds %struct.pppox_sock, ptr %call, i32 0, i32 3, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.pppox_sock, ptr %call, i32 0, i32 3, i32 0, i32 4, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.pppox_sock, ptr %call, i32 0, i32 3, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pppoe_unbind_sock_work, ptr %func, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoe_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 -2147191725, label %sw.bb
    i32 1074033746, label %sw.bb8
    i32 1074033753, label %sw.bb37
    i32 1074049280, label %sw.bb53
    i32 45313, label %sw.bb96
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state, align 2
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %6 = inttoptr i32 %arg to ptr
  %proto = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proto, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mtu, align 4
  %sub2 = add i32 %10, -10
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 754) #11
  %11 = tail call i32 @llvm.read_register.i32(metadata !67) #11
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !89
  %and.i = and i32 %13, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !91
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %sub2, i32 -1226833921) #11, !srcloc !92
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #11, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  %spec.select = select i1 %tobool5.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %skc_state10 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %skc_state10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %skc_state10, align 2
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not = icmp eq i8 %17, 0
  br i1 %tobool13.not, label %sw.bb8.sw.epilog_crit_edge, label %if.end15

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end15:                                         ; preds = %sw.bb8
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 765) #11
  %18 = inttoptr i32 %arg to ptr
  %19 = tail call i32 @llvm.read_register.i32(metadata !67) #11
  %and.i.i.i131 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i131 to ptr
  %cpu_domain.i.i132 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i132) #5, !srcloc !89
  %and.i133 = and i32 %21, -13
  %or.i134 = or i32 %and.i133, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i134) #11, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !91
  %22 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %18, i32 -1226833921) #11, !srcloc !93
  %asmresult = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #11, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool26.not = icmp eq i32 %asmresult, 0
  br i1 %tobool26.not, label %if.end28, label %if.end15.sw.epilog_crit_edge

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end28:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %asmresult24 = extractvalue { i32, i32 } %22, 1
  %proto29 = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %proto29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %proto29, align 8
  %mtu31 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 20
  %25 = ptrtoint ptr %mtu31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mtu31, align 4
  %sub33 = add i32 %26, -10
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult24, i32 %sub33)
  %cmp = icmp ult i32 %asmresult24, %sub33
  %. = select i1 %cmp, i32 0, i32 -22
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 778) #11
  %27 = inttoptr i32 %arg to ptr
  %28 = tail call i32 @llvm.read_register.i32(metadata !67) #11
  %and.i.i.i135 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i135 to ptr
  %cpu_domain.i.i136 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i136) #5, !srcloc !89
  %and.i137 = and i32 %30, -13
  %or.i138 = or i32 %and.i137, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i138) #11, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !91
  %31 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %27, i32 -1226833921) #11, !srcloc !94
  %asmresult47 = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #11, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult47)
  %tobool50.not = icmp eq i32 %asmresult47, 0
  %spec.select130 = select i1 %tobool50.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb53:                                          ; preds = %entry
  %skc_state55 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %skc_state55 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load volatile i8, ptr %skc_state55, align 2
  %34 = and i8 %33, 18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool58.not = icmp eq i8 %34, 0
  br i1 %tobool58.not, label %if.end60, label %sw.bb53.sw.epilog_crit_edge

sw.bb53.sw.epilog_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end60:                                         ; preds = %sw.bb53
  %35 = ptrtoint ptr %skc_state55 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %skc_state55, align 2
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool65.not = icmp eq i8 %37, 0
  br i1 %tobool65.not, label %if.end60.sw.epilog_crit_edge, label %if.end67

if.end60.sw.epilog_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end67:                                         ; preds = %if.end60
  %relay = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 3
  %38 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end67.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end67.if.then11.i.i_crit_edge:                 ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end67
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 30, i32 -1226833920) #14, !srcloc !95
  %asmresult.i.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !79

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %relay, i32 noundef 30) #11
  %40 = tail call i32 @llvm.read_register.i32(metadata !67) #11
  %and.i.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !89
  %and.i.i.i.i = and i32 %42, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !91
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %relay, ptr noundef %38, i32 noundef 30) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #11, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end72, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !79

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end67.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 30, %if.end67.if.then11.i.i_crit_edge ], [ 30, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 30, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %relay, i32 %sub.i.i
  %43 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %sw.epilog

if.end72:                                         ; preds = %if.end.i.i
  %44 = ptrtoint ptr %relay to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %relay, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %45)
  %cmp76.not = icmp eq i16 %45, 24
  br i1 %cmp76.not, label %lor.lhs.false, label %if.end72.sw.epilog_crit_edge

if.end72.sw.epilog_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %if.end72
  %sa_protocol = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %sa_protocol to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %sa_protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp80.not = icmp eq i32 %47, 0
  br i1 %cmp80.not, label %if.end83, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end83:                                         ; preds = %lor.lhs.false
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %48 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skc_net.i, align 4
  %call87 = tail call fastcc ptr @get_item_by_addr(ptr noundef %49, ptr noundef %relay)
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %if.end83.sw.epilog_crit_edge, label %if.end90

if.end83.sw.epilog_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end90:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sock_put(ptr noundef nonnull %call87)
  %50 = ptrtoint ptr %skc_state55 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load volatile i8, ptr %skc_state55, align 2
  %52 = or i8 %51, 4
  store volatile i8 %52, ptr %skc_state55, align 2
  br label %sw.epilog

sw.bb96:                                          ; preds = %entry
  %skc_state98 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %skc_state98 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load volatile i8, ptr %skc_state98, align 2
  %55 = and i8 %54, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool101.not = icmp eq i8 %55, 0
  br i1 %tobool101.not, label %sw.bb96.sw.epilog_crit_edge, label %if.end103

sw.bb96.sw.epilog_crit_edge:                      ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end103:                                        ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %skc_state98 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load volatile i8, ptr %skc_state98, align 2
  %58 = and i8 %57, -5
  store volatile i8 %58, ptr %skc_state98, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end103, %sw.bb96.sw.epilog_crit_edge, %if.end90, %if.end83.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %if.end72.sw.epilog_crit_edge, %if.then11.i.i, %if.end60.sw.epilog_crit_edge, %sw.bb53.sw.epilog_crit_edge, %sw.bb37, %if.end28, %if.end15.sw.epilog_crit_edge, %sw.bb8.sw.epilog_crit_edge, %if.end, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.1 = phi i32 [ 0, %if.end103 ], [ -114, %sw.bb96.sw.epilog_crit_edge ], [ -14, %if.end15.sw.epilog_crit_edge ], [ -6, %sw.bb8.sw.epilog_crit_edge ], [ -6, %sw.bb.sw.epilog_crit_edge ], [ %spec.select, %if.end ], [ %., %if.end28 ], [ %spec.select130, %sw.bb37 ], [ 0, %if.end90 ], [ -16, %sw.bb53.sw.epilog_crit_edge ], [ -107, %if.end60.sw.epilog_crit_edge ], [ -22, %lor.lhs.false.sw.epilog_crit_edge ], [ -22, %if.end72.sw.epilog_crit_edge ], [ -22, %if.end83.sw.epilog_crit_edge ], [ -25, %entry.sw.epilog_crit_edge ], [ -14, %if.then11.i.i ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoe_rcv_core(ptr noundef %sk, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, 24576
  br i1 %cmp, label %entry.abort_kfree_crit_edge, label %if.end

entry.abort_kfree_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort_kfree

if.end:                                           ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %1 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %skc_state, align 2
  %3 = and i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %chan = getelementptr inbounds %struct.pppox_sock, ptr %sk, i32 0, i32 1
  tail call void @ppp_input(ptr noundef %chan, ptr noundef %skb) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %if.else31, label %if.then9

if.then9:                                         ; preds = %if.else
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  %relay = getelementptr inbounds %struct.pppox_sock, ptr %sk, i32 0, i32 3, i32 0, i32 3
  %call11 = tail call fastcc ptr @get_item_by_addr(ptr noundef %8, ptr noundef %relay)
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %if.then9.abort_kfree_crit_edge, label %if.end15

if.then9.abort_kfree_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort_kfree

if.end15:                                         ; preds = %if.then9
  %skc_state18 = getelementptr inbounds %struct.sock_common, ptr %call11, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state18 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state18, align 2
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp21 = icmp eq i8 %11, 0
  br i1 %cmp21, label %abort_put, label %if.end24

if.end24:                                         ; preds = %if.end15
  tail call fastcc void @__pppoe_xmit(ptr noundef nonnull %call11, ptr noundef %skb)
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call11, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !79

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @sk_free(ptr noundef nonnull %call11) #11
  br label %cleanup

if.else31:                                        ; preds = %if.else
  %call32 = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.else31.cleanup_crit_edge, label %if.else31.abort_kfree_crit_edge

if.else31.abort_kfree_crit_edge:                  ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort_kfree

if.else31.cleanup_crit_edge:                      ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

abort_put:                                        ; preds = %if.end15
  %skc_refcnt.i53 = getelementptr inbounds %struct.sock_common, ptr %call11, i32 0, i32 19
  %call.i.i.i.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i53, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i53, i32 1, i32 3, i32 1) #11
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i53, ptr %skc_refcnt.i53, i32 1, ptr elementtype(i32) %skc_refcnt.i53) #11, !srcloc !84
  %asmresult.i.i.i.i.i.i.i55 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i55)
  %cmp.i.i.i.i56 = icmp eq i32 %asmresult.i.i.i.i.i.i.i55, 1
  br i1 %cmp.i.i.i.i56, label %if.then.i60, label %if.end5.i.i.i.i58

if.end5.i.i.i.i58:                                ; preds = %abort_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i55)
  %.not.i.i.i.i57 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i55, 0
  br i1 %.not.i.i.i.i57, label %if.end5.i.i.i.i58.abort_kfree_crit_edge, label %if.then10.i.i.i.i59, !prof !79

if.end5.i.i.i.i58.abort_kfree_crit_edge:          ; preds = %if.end5.i.i.i.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort_kfree

if.then10.i.i.i.i59:                              ; preds = %if.end5.i.i.i.i58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i53, i32 noundef 3) #11
  br label %abort_kfree

if.then.i60:                                      ; preds = %abort_put
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @sk_free(ptr noundef nonnull %call11) #11
  br label %abort_kfree

abort_kfree:                                      ; preds = %if.then.i60, %if.then10.i.i.i.i59, %if.end5.i.i.i.i58.abort_kfree_crit_edge, %if.else31.abort_kfree_crit_edge, %if.then9.abort_kfree_crit_edge, %entry.abort_kfree_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %abort_kfree, %if.else31.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ 1, %abort_kfree ], [ 0, %if.else31.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pppoe_unbind_sock_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1056
  tail call void @lock_sock_nested(ptr noundef %add.ptr, i32 noundef 0) #11
  %proto = getelementptr i8, ptr %work, i32 -64
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body1.i:                                       ; preds = %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !80
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %3 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_refcnt.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !67) #11
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add13.i = add i32 %14, -1
  store i32 %add13.i, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %and.i.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !78

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #11, !srcloc !82
  %16 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %proto, align 8
  br label %if.end

if.end:                                           ; preds = %dev_put.exit, %entry.if.end_crit_edge
  tail call void @pppox_unbind_sock(ptr noundef %add.ptr) #11
  tail call void @release_sock(ptr noundef %add.ptr) #11
  %skc_refcnt.i = getelementptr i8, ptr %work, i32 -956
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !79

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @sk_free(ptr noundef %add.ptr) #11
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoe_release(ptr nocapture noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #11
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @release_sock(ptr noundef nonnull %1) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %proto = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %proto, align 8
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.end3.if.end11_crit_edge, label %do.body1.i

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.body1.i:                                       ; preds = %if.end3
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !80
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 118
  %8 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcpu_refcnt.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !67) #11
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add13.i = add i32 %19, -1
  store i32 %add13.i, ptr %17, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %and.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !78

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #11, !srcloc !82
  %21 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %proto, align 8
  br label %if.end11

if.end11:                                         ; preds = %dev_put.exit, %if.end3.if.end11_crit_edge
  tail call void @pppox_unbind_sock(ptr noundef nonnull %1) #11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %22)
  store volatile i8 16, ptr %skc_state, align 2
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skc_net.i, align 4
  %call13 = tail call fastcc ptr @pppoe_pernet(ptr noundef %24)
  %pa = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2
  %25 = ptrtoint ptr %pa to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pa, align 8
  %remote = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1
  %ifindex = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 1
  %27 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ifindex, align 4
  %hash_lock.i = getelementptr inbounds %struct.pppoe_net, ptr %call13, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %hash_lock.i) #11
  %29 = ptrtoint ptr %remote to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %remote, align 1
  %arrayidx.1.i.i.i = getelementptr %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.1.i.i.i, align 1
  %arrayidx.2.i.i.i = getelementptr %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1, i32 2
  %33 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.2.i.i.i, align 1
  %arrayidx.3.i.i.i = getelementptr %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1, i32 3
  %35 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.3.i.i.i, align 1
  %arrayidx.4.i.i.i = getelementptr %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1, i32 4
  %37 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.4.i.i.i, align 1
  %arrayidx.5.i.i.i = getelementptr %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1, i32 5
  %39 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.5.i.i.i, align 1
  %41 = lshr i16 %26, 8
  %xor36.1.i26.i.i = xor i16 %41, %26
  %xor36.1.i.i.i = trunc i16 %xor36.1.i26.i.i to i8
  %xor36.2.i.i.i = xor i8 %30, %xor36.1.i.i.i
  %xor36.3.i.i.i = xor i8 %xor36.2.i.i.i, %32
  %xor36.4.i.i.i = xor i8 %xor36.3.i.i.i, %34
  %xor36.5.i.i.i = xor i8 %xor36.4.i.i.i, %36
  %conv10.i.i.i = xor i8 %xor36.5.i.i.i, %38
  %conv10.1.i.i.i = xor i8 %conv10.i.i.i, %40
  %42 = lshr i8 %conv10.1.i.i.i, 4
  %conv10.masked.i.i.i = and i8 %conv10.1.i.i.i, 15
  %43 = xor i8 %42, %conv10.masked.i.i.i
  %and.i.i.i40 = zext i8 %43 to i32
  %arrayidx.i.i = getelementptr [16 x ptr], ptr %call13, i32 0, i32 %and.i.i.i40
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %ret.021.i.i = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not22.i.i = icmp eq ptr %ret.021.i.i, null
  br i1 %tobool.not22.i.i, label %if.end11.delete_item.exit_crit_edge, label %if.end11.while.body.i.i_crit_edge

if.end11.while.body.i.i_crit_edge:                ; preds = %if.end11
  br label %while.body.i.i

if.end11.delete_item.exit_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %delete_item.exit

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.end11.while.body.i.i_crit_edge
  %ret.024.i.i = phi ptr [ %ret.0.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %ret.021.i.i, %if.end11.while.body.i.i_crit_edge ]
  %src.023.i.i = phi ptr [ %next7.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %arrayidx.i.i, %if.end11.while.body.i.i_crit_edge ]
  %pa.i.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.024.i.i, i32 0, i32 3, i32 0, i32 2
  %45 = ptrtoint ptr %pa.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %pa.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %26)
  %cmp.i.i.i = icmp eq i16 %46, %26
  br i1 %cmp.i.i.i, label %cmp_addr.exit.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

cmp_addr.exit.i.i:                                ; preds = %while.body.i.i
  %remote.i.i.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.024.i.i, i32 0, i32 3, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %remote.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %remote.i.i.i, align 4
  %49 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %remote, align 4
  %xor.i.i.i.i = xor i32 %50, %48
  %add.ptr.i.i.i.i = getelementptr %struct.pppox_sock, ptr %ret.024.i.i, i32 0, i32 3, i32 0, i32 2, i32 1, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %53 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.4.i.i.i, align 2
  %xor37.i.i.i.i = xor i16 %54, %52
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.not.i.i, label %land.lhs.true.i.i, label %cmp_addr.exit.i.i.if.end.i.i_crit_edge

cmp_addr.exit.i.i.if.end.i.i_crit_edge:           ; preds = %cmp_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %cmp_addr.exit.i.i
  %ifindex6.i.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.024.i.i, i32 0, i32 3, i32 0, i32 1
  %55 = ptrtoint ptr %ifindex6.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ifindex6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %28)
  %cmp.i.i = icmp eq i32 %56, %28
  br i1 %cmp.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %next.i.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.024.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %next.i.i, align 4
  %59 = ptrtoint ptr %src.023.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %src.023.i.i, align 4
  br label %delete_item.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %cmp_addr.exit.i.i.if.end.i.i_crit_edge, %while.body.i.i.if.end.i.i_crit_edge
  %next7.i.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.024.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %next7.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %ret.0.i.i = load ptr, ptr %next7.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %ret.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.delete_item.exit_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

if.end.i.i.delete_item.exit_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %delete_item.exit

delete_item.exit:                                 ; preds = %if.end.i.i.delete_item.exit_crit_edge, %if.then.i.i, %if.end11.delete_item.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %hash_lock.i) #11
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #11
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %2, align 4
  %or.i.i.i = or i32 %62, 1
  store i32 %or.i.i.i, ptr %2, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %63 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %sk_socket.i.i, align 8
  %64 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %64, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #11
  %66 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %sk1, align 16
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #11
  tail call void @release_sock(ptr noundef nonnull %1) #11
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %delete_item.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !79

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %delete_item.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @sk_free(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %if.then2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_bind(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoe_connect(ptr nocapture noundef readonly %sock, ptr noundef %uservaddr, i32 noundef %sockaddr_len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %sockaddr_len)
  %cmp.not = icmp eq i32 %sockaddr_len, 30
  br i1 %cmp.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %sa_protocol = getelementptr inbounds %struct.sockaddr_pppox, ptr %uservaddr, i32 0, i32 1
  %2 = ptrtoint ptr %sa_protocol to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %sa_protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not = icmp eq i32 %3, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end4.if.end8_crit_edge, label %land.lhs.true

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %sa_addr = getelementptr inbounds %struct.sockaddr_pppox, ptr %uservaddr, i32 0, i32 2
  %7 = ptrtoint ptr %sa_addr to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %sa_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i.not = icmp eq i16 %8, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.end_crit_edge

land.lhs.true.end_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state, align 2
  %11 = and i8 %10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %if.end8.if.end19_crit_edge, label %land.lhs.true14

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true14:                                  ; preds = %if.end8
  %sa_addr15 = getelementptr inbounds %struct.sockaddr_pppox, ptr %uservaddr, i32 0, i32 2
  %12 = ptrtoint ptr %sa_addr15 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %sa_addr15, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.i175.not = icmp eq i16 %13, 0
  br i1 %cmp.i175.not, label %land.lhs.true14.end_crit_edge, label %land.lhs.true14.if.end19_crit_edge

land.lhs.true14.if.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true14.end_crit_edge:                    ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end19:                                         ; preds = %land.lhs.true14.if.end19_crit_edge, %if.end8.if.end19_crit_edge
  %proto = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3
  %pa = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2
  %14 = ptrtoint ptr %pa to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pa, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i176.not = icmp eq i16 %15, 0
  br i1 %cmp.i176.not, label %if.end19.if.end47_crit_edge, label %if.then22

if.end19.if.end47_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then22:                                        ; preds = %if.end19
  tail call void @pppox_unbind_sock(ptr noundef %1) #11
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skc_net.i, align 4
  %call24 = tail call fastcc ptr @pppoe_pernet(ptr noundef %17)
  %18 = ptrtoint ptr %pa to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pa, align 8
  %remote = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1
  %ifindex = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 1
  %20 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ifindex, align 4
  %hash_lock.i = getelementptr inbounds %struct.pppoe_net, ptr %call24, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %hash_lock.i) #11
  %22 = ptrtoint ptr %remote to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %remote, align 1
  %arrayidx.1.i.i.i = getelementptr %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.1.i.i.i, align 1
  %arrayidx.2.i.i.i = getelementptr %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.2.i.i.i, align 1
  %arrayidx.3.i.i.i = getelementptr %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1, i32 3
  %28 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.3.i.i.i, align 1
  %arrayidx.4.i.i.i = getelementptr %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1, i32 4
  %30 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.4.i.i.i, align 1
  %arrayidx.5.i.i.i = getelementptr %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1, i32 5
  %32 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.5.i.i.i, align 1
  %34 = lshr i16 %19, 8
  %xor36.1.i26.i.i = xor i16 %34, %19
  %xor36.1.i.i.i = trunc i16 %xor36.1.i26.i.i to i8
  %xor36.2.i.i.i = xor i8 %23, %xor36.1.i.i.i
  %xor36.3.i.i.i = xor i8 %xor36.2.i.i.i, %25
  %xor36.4.i.i.i = xor i8 %xor36.3.i.i.i, %27
  %xor36.5.i.i.i = xor i8 %xor36.4.i.i.i, %29
  %conv10.i.i.i = xor i8 %xor36.5.i.i.i, %31
  %conv10.1.i.i.i = xor i8 %conv10.i.i.i, %33
  %35 = lshr i8 %conv10.1.i.i.i, 4
  %conv10.masked.i.i.i = and i8 %conv10.1.i.i.i, 15
  %36 = xor i8 %35, %conv10.masked.i.i.i
  %and.i.i.i = zext i8 %36 to i32
  %arrayidx.i.i = getelementptr [16 x ptr], ptr %call24, i32 0, i32 %and.i.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %ret.021.i.i = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not22.i.i = icmp eq ptr %ret.021.i.i, null
  br i1 %tobool.not22.i.i, label %if.then22.delete_item.exit_crit_edge, label %if.then22.while.body.i.i_crit_edge

if.then22.while.body.i.i_crit_edge:               ; preds = %if.then22
  br label %while.body.i.i

if.then22.delete_item.exit_crit_edge:             ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %delete_item.exit

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.then22.while.body.i.i_crit_edge
  %ret.024.i.i = phi ptr [ %ret.0.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %ret.021.i.i, %if.then22.while.body.i.i_crit_edge ]
  %src.023.i.i = phi ptr [ %next7.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %arrayidx.i.i, %if.then22.while.body.i.i_crit_edge ]
  %pa.i.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.024.i.i, i32 0, i32 3, i32 0, i32 2
  %38 = ptrtoint ptr %pa.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %pa.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %19)
  %cmp.i.i.i = icmp eq i16 %39, %19
  br i1 %cmp.i.i.i, label %cmp_addr.exit.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

cmp_addr.exit.i.i:                                ; preds = %while.body.i.i
  %remote.i.i.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.024.i.i, i32 0, i32 3, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %remote.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %remote.i.i.i, align 4
  %42 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %remote, align 4
  %xor.i.i.i.i = xor i32 %43, %41
  %add.ptr.i.i.i.i = getelementptr %struct.pppox_sock, ptr %ret.024.i.i, i32 0, i32 3, i32 0, i32 2, i32 1, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %46 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.4.i.i.i, align 2
  %xor37.i.i.i.i = xor i16 %47, %45
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.not.i.i, label %land.lhs.true.i.i, label %cmp_addr.exit.i.i.if.end.i.i_crit_edge

cmp_addr.exit.i.i.if.end.i.i_crit_edge:           ; preds = %cmp_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %cmp_addr.exit.i.i
  %ifindex6.i.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.024.i.i, i32 0, i32 3, i32 0, i32 1
  %48 = ptrtoint ptr %ifindex6.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ifindex6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %21)
  %cmp.i.i = icmp eq i32 %49, %21
  br i1 %cmp.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %next.i.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.024.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %next.i.i, align 4
  %52 = ptrtoint ptr %src.023.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %src.023.i.i, align 4
  br label %delete_item.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %cmp_addr.exit.i.i.if.end.i.i_crit_edge, %while.body.i.i.if.end.i.i_crit_edge
  %next7.i.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.024.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %next7.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %ret.0.i.i = load ptr, ptr %next7.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %ret.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.delete_item.exit_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

if.end.i.i.delete_item.exit_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %delete_item.exit

delete_item.exit:                                 ; preds = %if.end.i.i.delete_item.exit_crit_edge, %if.then.i.i, %if.then22.delete_item.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %hash_lock.i) #11
  %54 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %proto, align 8
  %tobool33.not = icmp eq ptr %55, null
  br i1 %tobool33.not, label %delete_item.exit.if.end39_crit_edge, label %do.body1.i

delete_item.exit.if.end39_crit_edge:              ; preds = %delete_item.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

do.body1.i:                                       ; preds = %delete_item.exit
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !80
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 118
  %57 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcpu_refcnt.i, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = tail call i32 @llvm.read_register.i32(metadata !67) #11
  %and.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %65, %59
  %66 = inttoptr i32 %add.i to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add13.i = add i32 %68, -1
  store i32 %add13.i, ptr %66, align 4
  %69 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %and.i.i.i177 = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i177)
  %tobool24.not.i = icmp eq i32 %and.i.i.i177, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !78

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #11, !srcloc !82
  %70 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %proto, align 8
  br label %if.end39

if.end39:                                         ; preds = %dev_put.exit, %delete_item.exit.if.end39_crit_edge
  %chan = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 1
  %num = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 4
  %71 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %num, align 4
  %72 = call ptr @memset(ptr %chan, i32 0, i32 32)
  %73 = call ptr @memset(ptr %ifindex, i32 0, i32 58)
  %74 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %74)
  store volatile i8 0, ptr %skc_state, align 2
  br label %if.end47

if.end47:                                         ; preds = %if.end39, %if.end19.if.end47_crit_edge
  %sa_addr48 = getelementptr inbounds %struct.sockaddr_pppox, ptr %uservaddr, i32 0, i32 2
  %75 = ptrtoint ptr %sa_addr48 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %sa_addr48, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp.i178.not = icmp eq i16 %76, 0
  br i1 %cmp.i178.not, label %if.end47.if.end104_crit_edge, label %if.then51

if.end47.if.end104_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then51:                                        ; preds = %if.end47
  %skc_net.i179 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %77 = ptrtoint ptr %skc_net.i179 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %skc_net.i179, align 4
  %dev54 = getelementptr inbounds %struct.sockaddr_pppox, ptr %uservaddr, i32 0, i32 2, i32 1
  %call56 = tail call ptr @dev_get_by_name(ptr noundef %78, ptr noundef %dev54) #11
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.then51.err_put_crit_edge, label %if.end59

if.then51.err_put_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end59:                                         ; preds = %if.then51
  %79 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call56, ptr %proto, align 8
  %ifindex62 = getelementptr inbounds %struct.net_device, ptr %call56, i32 0, i32 17
  %80 = ptrtoint ptr %ifindex62 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ifindex62, align 4
  %ifindex64 = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 1
  %82 = ptrtoint ptr %ifindex64 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %ifindex64, align 4
  %call65 = tail call fastcc ptr @pppoe_pernet(ptr noundef %78)
  %flags66 = getelementptr inbounds %struct.net_device, ptr %call56, i32 0, i32 14
  %83 = ptrtoint ptr %flags66 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags66, align 8
  %and67 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end59.err_put_crit_edge, label %if.end70

if.end59.err_put_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end70:                                         ; preds = %if.end59
  %85 = call ptr @memcpy(ptr %pa, ptr %sa_addr48, i32 24)
  %hash_lock = getelementptr inbounds %struct.pppoe_net, ptr %call65, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %hash_lock) #11
  %call74 = tail call fastcc i32 @__set_item(ptr noundef %call65, ptr noundef %1)
  tail call void @_raw_write_unlock_bh(ptr noundef %hash_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp76 = icmp slt i32 %call74, 0
  br i1 %cmp76, label %if.end70.err_put_crit_edge, label %if.end79

if.end70.err_put_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end79:                                         ; preds = %if.end70
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %call56, i32 0, i32 19
  %86 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %hard_header_len, align 2
  %conv80 = zext i16 %87 to i32
  %add = add nuw nsw i32 %conv80, 6
  %chan81 = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 1
  %hdrlen = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 1, i32 3
  %88 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add, ptr %hdrlen, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %call56, i32 0, i32 20
  %89 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mtu, align 4
  %sub82 = add i32 %90, -8
  %mtu84 = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 1, i32 2
  %91 = ptrtoint ptr %mtu84 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %sub82, ptr %mtu84, align 8
  %92 = ptrtoint ptr %chan81 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %1, ptr %chan81, align 8
  %ops = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @pppoe_chan_ops, ptr %ops, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call56, i32 0, i32 127
  %94 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %nd_net.i, align 4
  %call89 = tail call i32 @ppp_register_net_channel(ptr noundef %95, ptr noundef %chan81) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end101, label %if.then91

if.then91:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %pa to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %pa, align 8
  %remote97 = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1
  %98 = ptrtoint ptr %ifindex64 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ifindex64, align 4
  tail call fastcc void @delete_item(ptr noundef %call65, i16 noundef zeroext %97, ptr noundef %remote97, i32 noundef %99)
  br label %err_put

if.end101:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %100)
  store volatile i8 1, ptr %skc_state, align 2
  br label %if.end104

if.end104:                                        ; preds = %if.end101, %if.end47.if.end104_crit_edge
  %101 = ptrtoint ptr %sa_addr48 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %sa_addr48, align 1
  %num107 = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 4
  %103 = ptrtoint ptr %num107 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %num107, align 4
  br label %end

end:                                              ; preds = %dev_put.exit192, %err_put.end_crit_edge, %if.end104, %land.lhs.true14.end_crit_edge, %land.lhs.true.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %error.1 = phi i32 [ -22, %entry.end_crit_edge ], [ -22, %if.end.end_crit_edge ], [ -16, %land.lhs.true.end_crit_edge ], [ %error.2, %dev_put.exit192 ], [ %error.2, %err_put.end_crit_edge ], [ 0, %if.end104 ], [ -114, %land.lhs.true14.end_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #11
  ret i32 %error.1

err_put:                                          ; preds = %if.then91, %if.end70.err_put_crit_edge, %if.end59.err_put_crit_edge, %if.then51.err_put_crit_edge
  %error.2 = phi i32 [ %call74, %if.end70.err_put_crit_edge ], [ %call89, %if.then91 ], [ -19, %if.end59.err_put_crit_edge ], [ -19, %if.then51.err_put_crit_edge ]
  %104 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %proto, align 8
  %tobool110.not = icmp eq ptr %105, null
  br i1 %tobool110.not, label %err_put.end_crit_edge, label %do.body1.i189

err_put.end_crit_edge:                            ; preds = %err_put
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

do.body1.i189:                                    ; preds = %err_put
  %106 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !80
  %pcpu_refcnt.i181 = getelementptr inbounds %struct.net_device, ptr %105, i32 0, i32 118
  %107 = ptrtoint ptr %pcpu_refcnt.i181 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pcpu_refcnt.i181, align 4
  %109 = ptrtoint ptr %108 to i32
  %110 = tail call i32 @llvm.read_register.i32(metadata !67) #11
  %and.i.i182 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i182 to ptr
  %cpu.i183 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %cpu.i183 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cpu.i183, align 4
  %arrayidx.i184 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %113
  %114 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i184, align 4
  %add.i185 = add i32 %115, %109
  %116 = inttoptr i32 %add.i185 to ptr
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  %add13.i186 = add i32 %118, -1
  store i32 %add13.i186, ptr %116, align 4
  %119 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %and.i.i.i187 = and i32 %119, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i187)
  %tobool24.not.i188 = icmp eq i32 %and.i.i.i187, 0
  br i1 %tobool24.not.i188, label %if.then28.i190, label %do.body1.i189.dev_put.exit192_crit_edge, !prof !78

do.body1.i189.dev_put.exit192_crit_edge:          ; preds = %do.body1.i189
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit192

if.then28.i190:                                   ; preds = %do.body1.i189
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %dev_put.exit192

dev_put.exit192:                                  ; preds = %if.then28.i190, %do.body1.i189.dev_put.exit192_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %106) #11, !srcloc !82
  %120 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %proto, align 8
  br label %end
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pppoe_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #7 align 64 {
entry:
  %sp.sroa.6 = alloca %union.anon.148, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sp.sroa.6)
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %pa = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %sp.sroa.6, ptr %pa, i32 24)
  %3 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 24, ptr %uaddr, align 2
  %sp.sroa.5.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 2
  %4 = ptrtoint ptr %sp.sroa.5.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %sp.sroa.5.0.uaddr.sroa_idx, align 2
  %sp.sroa.6.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 6
  %5 = call ptr @memcpy(ptr %sp.sroa.6.0.uaddr.sroa_idx, ptr %sp.sroa.6, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sp.sroa.6)
  ret i32 30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pppox_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoe_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %m, i32 noundef %total_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.end_crit_edge, label %if.end

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  %num = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num, align 4
  %proto = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proto, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 19
  %14 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hard_header_len, align 2
  %conv7 = zext i16 %15 to i32
  %add = add i32 %13, %conv7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %total_len)
  %cmp = icmp ult i32 %add, %total_len
  br i1 %cmp, label %if.end.end_crit_edge, label %if.end10

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end10:                                         ; preds = %if.end
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 21
  %16 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %needed_headroom, align 8
  %conv13 = zext i16 %17 to i32
  %add14 = add nuw nsw i32 %conv13, %conv7
  %and15 = and i32 %add14, 131056
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 22
  %18 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %needed_tailroom, align 2
  %conv19 = zext i16 %19 to i32
  %add17 = add i32 %total_len, 22
  %add18 = add i32 %add17, %conv19
  %add20 = add i32 %add18, %and15
  %call21 = tail call ptr @sock_wmalloc(ptr noundef %1, i32 noundef %add20, i32 noundef 0, i32 noundef 3264) #11
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end10.end_crit_edge, label %if.end24

if.end10.end_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end24:                                         ; preds = %if.end10
  %add16 = add nuw nsw i32 %and15, 16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %add16
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %23, i32 %add16
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 18
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 15, i32 0, i32 20
  %26 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %network_header.i, align 4
  %27 = getelementptr inbounds %struct.anon.0, ptr %call21, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %11, ptr %27, align 8
  %sk_priority = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 33
  %29 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sk_priority, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 15, i32 0, i32 6
  %31 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %priority, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 15, i32 0, i32 18
  %32 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -30620, ptr %protocol, align 8
  %add25 = add i32 %total_len, 6
  %call26 = tail call ptr @skb_put(ptr noundef nonnull %call21, i32 noundef %add25) #11
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %m, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_len)
  %cmp9.i.i.i.i = icmp slt i32 %total_len, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end24
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !79

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %tag = getelementptr inbounds %struct.pppoe_hdr, ptr %call26, i32 0, i32 4
  tail call void @__check_object_size(ptr noundef %tag, i32 noundef %total_len, i1 noundef zeroext false) #11
  %call3.i.i.i = tail call i32 @_copy_from_iter(ptr noundef %tag, i32 noundef %total_len, ptr noundef %msg_iter.i) #11
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %total_len)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %total_len
  br i1 %cmp.i.i, label %if.end31, label %if.then30, !prof !79

if.then30:                                        ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %call21, i32 noundef 0) #11
  br label %end

if.end31:                                         ; preds = %copy_from_iter.exit.i.i
  %remote = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 49
  %33 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end31.dev_hard_header.exit_crit_edge, label %lor.lhs.false.i

if.end31.dev_hard_header.exit_crit_edge:          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_hard_header.exit

lor.lhs.false.i:                                  ; preds = %if.end31
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool2.not.i = icmp eq ptr %36, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dev_hard_header.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dev_hard_header.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_hard_header.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %36(ptr noundef nonnull %call21, ptr noundef %11, i16 noundef zeroext -30620, ptr noundef %remote, ptr noundef null, i32 noundef %total_len) #11
  br label %dev_hard_header.exit

dev_hard_header.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.dev_hard_header.exit_crit_edge, %if.end31.dev_hard_header.exit_crit_edge
  %37 = ptrtoint ptr %call26 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 17, ptr %call26, align 1
  %hdr.sroa.8.0.ph.0.43.sroa_idx = getelementptr inbounds i8, ptr %call26, i32 1
  %38 = ptrtoint ptr %hdr.sroa.8.0.ph.0.43.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %hdr.sroa.8.0.ph.0.43.sroa_idx, align 1
  %hdr.sroa.10.0.ph.0.43.sroa_idx = getelementptr inbounds i8, ptr %call26, i32 2
  %39 = ptrtoint ptr %hdr.sroa.10.0.ph.0.43.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %9, ptr %hdr.sroa.10.0.ph.0.43.sroa_idx, align 1
  %hdr.sroa.12.0.ph.0.43.sroa_idx = getelementptr inbounds i8, ptr %call26, i32 4
  %conv34 = trunc i32 %total_len to i16
  %40 = ptrtoint ptr %hdr.sroa.12.0.ph.0.43.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %conv34, ptr %hdr.sroa.12.0.ph.0.43.sroa_idx, align 1
  %call35 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call21) #11
  br label %end

end:                                              ; preds = %dev_hard_header.exit, %if.then30, %if.end10.end_crit_edge, %if.end.end_crit_edge, %lor.lhs.false.end_crit_edge, %entry.end_crit_edge
  %error.0 = phi i32 [ -90, %if.end.end_crit_edge ], [ -14, %if.then30 ], [ %total_len, %dev_hard_header.exit ], [ -107, %lor.lhs.false.end_crit_edge ], [ -107, %entry.end_crit_edge ], [ -12, %if.end10.end_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #11
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoe_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %m, i32 noundef %total_len, i32 noundef %flags) #2 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #11
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %error, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state, align 2
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -5, ptr %error, align 4
  br label %end

if.end:                                           ; preds = %entry
  %and2 = and i32 %flags, -65
  %and3 = and i32 %flags, 64
  %call = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %and2, i32 noundef %and3, ptr noundef nonnull %error) #11
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.end.end_crit_edge, label %if.end6

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.end6.if.end16_crit_edge, label %if.then8

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then8:                                         ; preds = %if.end6
  %len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %11 = call i32 @llvm.umin.i32(i32 %10, i32 %total_len)
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %m, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %11) #11
  %12 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp eq i32 %call.i, 0
  br i1 %cmp12, label %if.then14, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  call void @consume_skb(ptr noundef nonnull %call) #11
  br label %cleanup

if.end16:                                         ; preds = %if.then8.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  call void @kfree_skb_reason(ptr noundef %call, i32 noundef 0) #11
  br label %end

end:                                              ; preds = %if.end16, %if.end.end_crit_edge, %if.then
  %13 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then14
  %retval.0 = phi i32 [ %14, %end ], [ %11, %if.then14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @delete_item(ptr noundef %pn, i16 noundef zeroext %sid, ptr nocapture noundef readonly %addr, i32 noundef %ifindex) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %hash_lock = getelementptr inbounds %struct.pppoe_net, ptr %pn, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %hash_lock) #11
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %arrayidx.1.i.i = getelementptr i8, ptr %addr, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1.i.i, align 1
  %arrayidx.2.i.i = getelementptr i8, ptr %addr, i32 2
  %4 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.2.i.i, align 1
  %arrayidx.3.i.i = getelementptr i8, ptr %addr, i32 3
  %6 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.3.i.i, align 1
  %arrayidx.4.i.i = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.4.i.i, align 1
  %arrayidx.5.i.i = getelementptr i8, ptr %addr, i32 5
  %10 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.5.i.i, align 1
  %12 = lshr i16 %sid, 8
  %xor36.1.i26.i = xor i16 %12, %sid
  %xor36.1.i.i = trunc i16 %xor36.1.i26.i to i8
  %xor36.2.i.i = xor i8 %1, %xor36.1.i.i
  %xor36.3.i.i = xor i8 %xor36.2.i.i, %3
  %xor36.4.i.i = xor i8 %xor36.3.i.i, %5
  %xor36.5.i.i = xor i8 %xor36.4.i.i, %7
  %conv10.i.i = xor i8 %xor36.5.i.i, %9
  %conv10.1.i.i = xor i8 %conv10.i.i, %11
  %13 = lshr i8 %conv10.1.i.i, 4
  %conv10.masked.i.i = and i8 %conv10.1.i.i, 15
  %14 = xor i8 %13, %conv10.masked.i.i
  %and.i.i = zext i8 %14 to i32
  %arrayidx.i = getelementptr [16 x ptr], ptr %pn, i32 0, i32 %and.i.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %ret.021.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not22.i = icmp eq ptr %ret.021.i, null
  br i1 %tobool.not22.i, label %entry.__delete_item.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.__delete_item.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__delete_item.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %ret.024.i = phi ptr [ %ret.0.i, %if.end.i.while.body.i_crit_edge ], [ %ret.021.i, %entry.while.body.i_crit_edge ]
  %src.023.i = phi ptr [ %next7.i, %if.end.i.while.body.i_crit_edge ], [ %arrayidx.i, %entry.while.body.i_crit_edge ]
  %pa.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.024.i, i32 0, i32 3, i32 0, i32 2
  %16 = ptrtoint ptr %pa.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pa.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %sid)
  %cmp.i.i = icmp eq i16 %17, %sid
  br i1 %cmp.i.i, label %cmp_addr.exit.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

cmp_addr.exit.i:                                  ; preds = %while.body.i
  %remote.i.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.024.i, i32 0, i32 3, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %remote.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %remote.i.i, align 4
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr, align 4
  %xor.i.i.i = xor i32 %21, %19
  %add.ptr.i.i.i = getelementptr %struct.pppox_sock, ptr %ret.024.i, i32 0, i32 3, i32 0, i32 2, i32 1, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i.i, align 2
  %24 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.4.i.i, align 2
  %xor37.i.i.i = xor i16 %25, %23
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %land.lhs.true.i, label %cmp_addr.exit.i.if.end.i_crit_edge

cmp_addr.exit.i.if.end.i_crit_edge:               ; preds = %cmp_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %cmp_addr.exit.i
  %ifindex6.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.024.i, i32 0, i32 3, i32 0, i32 1
  %26 = ptrtoint ptr %ifindex6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ifindex6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %ifindex)
  %cmp.i = icmp eq i32 %27, %ifindex
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %next.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.024.i, i32 0, i32 2
  %28 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %next.i, align 4
  %30 = ptrtoint ptr %src.023.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %src.023.i, align 4
  br label %__delete_item.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %cmp_addr.exit.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %next7.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.024.i, i32 0, i32 2
  %31 = ptrtoint ptr %next7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %ret.0.i = load ptr, ptr %next7.i, align 4
  %tobool.not.i = icmp eq ptr %ret.0.i, null
  br i1 %tobool.not.i, label %if.end.i.__delete_item.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i.__delete_item.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__delete_item.exit

__delete_item.exit:                               ; preds = %if.end.i.__delete_item.exit_crit_edge, %if.then.i, %entry.__delete_item.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %hash_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__set_item(ptr nocapture noundef %pn, ptr noundef %po) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pa = getelementptr inbounds %struct.pppox_sock, ptr %po, i32 0, i32 3, i32 0, i32 2
  %0 = ptrtoint ptr %pa to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pa, align 8
  %remote = getelementptr inbounds %struct.pppox_sock, ptr %po, i32 0, i32 3, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %remote to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %remote, align 1
  %arrayidx.1.i = getelementptr %struct.pppox_sock, ptr %po, i32 0, i32 3, i32 0, i32 2, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.pppox_sock, ptr %po, i32 0, i32 3, i32 0, i32 2, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.pppox_sock, ptr %po, i32 0, i32 3, i32 0, i32 2, i32 1, i32 3
  %8 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx.4.i = getelementptr %struct.pppox_sock, ptr %po, i32 0, i32 3, i32 0, i32 2, i32 1, i32 4
  %10 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.4.i, align 1
  %arrayidx.5.i = getelementptr %struct.pppox_sock, ptr %po, i32 0, i32 3, i32 0, i32 2, i32 1, i32 5
  %12 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.5.i, align 1
  %14 = trunc i16 %1 to i8
  %15 = lshr i16 %1, 8
  %16 = trunc i16 %15 to i8
  %xor36.1.i = xor i8 %3, %14
  %xor36.2.i = xor i8 %xor36.1.i, %5
  %xor36.3.i = xor i8 %xor36.2.i, %16
  %xor36.4.i = xor i8 %xor36.3.i, %7
  %xor36.5.i = xor i8 %xor36.4.i, %9
  %conv10.i = xor i8 %xor36.5.i, %11
  %conv10.1.i = xor i8 %conv10.i, %13
  %17 = lshr i8 %conv10.1.i, 4
  %conv10.masked.i = and i8 %conv10.1.i, 15
  %18 = xor i8 %17, %conv10.masked.i
  %and.i = zext i8 %18 to i32
  %arrayidx = getelementptr [16 x ptr], ptr %pn, i32 0, i32 %and.i
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %ret.031 = load ptr, ptr %arrayidx, align 4
  %tobool.not32 = icmp eq ptr %ret.031, null
  br i1 %tobool.not32, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ifindex11 = getelementptr inbounds %struct.pppox_sock, ptr %po, i32 0, i32 3, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %ret.033 = phi ptr [ %ret.031, %while.body.lr.ph ], [ %ret.0, %if.end.while.body_crit_edge ]
  %pa4 = getelementptr inbounds %struct.pppox_sock, ptr %ret.033, i32 0, i32 3, i32 0, i32 2
  %20 = ptrtoint ptr %pa4 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pa4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %1)
  %cmp.i = icmp eq i16 %21, %1
  br i1 %cmp.i, label %cmp_2_addr.exit, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cmp_2_addr.exit:                                  ; preds = %while.body
  %remote.i = getelementptr inbounds %struct.pppox_sock, ptr %ret.033, i32 0, i32 3, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %remote.i, align 4
  %24 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %remote, align 4
  %xor.i.i = xor i32 %25, %23
  %add.ptr.i.i = getelementptr %struct.pppox_sock, ptr %ret.033, i32 0, i32 3, i32 0, i32 2, i32 1, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i.i, align 2
  %28 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.4.i, align 2
  %xor37.i.i = xor i16 %29, %27
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %land.lhs.true, label %cmp_2_addr.exit.if.end_crit_edge

cmp_2_addr.exit.if.end_crit_edge:                 ; preds = %cmp_2_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %cmp_2_addr.exit
  %ifindex = getelementptr inbounds %struct.pppox_sock, ptr %ret.033, i32 0, i32 3, i32 0, i32 1
  %30 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ifindex, align 4
  %32 = ptrtoint ptr %ifindex11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ifindex11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp = icmp eq i32 %31, %33
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %cmp_2_addr.exit.if.end_crit_edge, %while.body.if.end_crit_edge
  %next = getelementptr inbounds %struct.pppox_sock, ptr %ret.033, i32 0, i32 2
  %34 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %34)
  %ret.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %ret.0, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %next14 = getelementptr inbounds %struct.pppox_sock, ptr %po, i32 0, i32 2
  %37 = ptrtoint ptr %next14 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %next14, align 4
  store ptr %po, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -114, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_register_net_channel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoe_xmit(ptr nocapture noundef readonly %chan, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  tail call fastcc void @__pppoe_xmit(ptr noundef %1, ptr noundef %skb)
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pppoe_fill_forward_path(ptr nocapture noundef %ctx, ptr nocapture noundef writeonly %path, ptr nocapture noundef readonly %chan) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %proto = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proto, align 8
  %4 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %tobool4.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %path, align 4
  %11 = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 2
  %proto5 = getelementptr inbounds %struct.anon.138, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %proto5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -30620, ptr %proto5, align 2
  %num = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %11, align 4
  %h_dest = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 2, i32 0, i32 1
  %remote = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1
  %16 = call ptr @memcpy(ptr %h_dest, ptr %remote, i32 6)
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %dev9 = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 1
  %19 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %dev9, align 4
  store ptr %3, ptr %ctx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__pppoe_xmit(ptr noundef %sk, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr inbounds %struct.pppox_sock, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %entry.abort_crit_edge

entry.abort_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

lor.lhs.false:                                    ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %tobool3.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %lor.lhs.false.abort_crit_edge, label %if.end5

lor.lhs.false.abort_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end5:                                          ; preds = %lor.lhs.false
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hard_header_len, align 2
  %conv6 = zext i16 %11 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %needed_headroom, align 8
  %conv7 = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv7, %conv6
  %and8 = and i32 %add, 131056
  %add10 = add nuw nsw i32 %and8, 22
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %14 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end5.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

if.end5.skb_header_cloned.exit.i_crit_edge:       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %15 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #11
  %17 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %18, 65535
  %shr.i.i = ashr i32 %18, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %if.end5.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %if.end5.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add10)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add10
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end14_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end14_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %23 = tail call i32 @llvm.usub.sat.i32(i32 %add10, i32 %sub.ptr.sub.i.i.i) #11
  %add.i.i = add nuw nsw i32 %23, 127
  %and.i4.i = and i32 %add.i.i, 524160
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool12.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool12.not, label %skb_cow_head.exit.if.end14_crit_edge, label %skb_cow_head.exit.abort_crit_edge

skb_cow_head.exit.abort_crit_edge:                ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

skb_cow_head.exit.if.end14_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end14:                                         ; preds = %skb_cow_head.exit.if.end14_crit_edge, %skb_header_cloned.exit.i.if.end14_crit_edge
  %24 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 -6
  store ptr %add.ptr.i, ptr %data.i.i.i, align 4
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %add.i = add i32 %27, 6
  store i32 %add.i, ptr %len, align 4
  %28 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %conv.i.i
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 17, ptr %add.ptr.i.i, align 1
  %code = getelementptr inbounds %struct.pppoe_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %code, align 1
  %num = getelementptr inbounds %struct.pppox_sock, ptr %sk, i32 0, i32 4
  %33 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num, align 4
  %sid = getelementptr inbounds %struct.pppoe_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %sid to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %sid, align 1
  %conv20 = trunc i32 %3 to i16
  %length = getelementptr inbounds %struct.pppoe_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %conv20, ptr %length, align 1
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %37 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -30620, ptr %protocol, align 8
  %38 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %1, ptr %38, align 8
  %remote = getelementptr inbounds %struct.pppox_sock, ptr %sk, i32 0, i32 3, i32 0, i32 2, i32 1
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 49
  %40 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %if.end14.dev_hard_header.exit_crit_edge, label %lor.lhs.false.i

if.end14.dev_hard_header.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_hard_header.exit

lor.lhs.false.i:                                  ; preds = %if.end14
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %tobool2.not.i = icmp eq ptr %43, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dev_hard_header.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dev_hard_header.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_hard_header.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %43(ptr noundef %skb, ptr noundef nonnull %1, i16 noundef zeroext -30620, ptr noundef %remote, ptr noundef null, i32 noundef %3) #11
  br label %dev_hard_header.exit

dev_hard_header.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.dev_hard_header.exit_crit_edge, %if.end14.dev_hard_header.exit_crit_edge
  %call23 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #11
  br label %cleanup

abort:                                            ; preds = %skb_cow_head.exit.abort_crit_edge, %lor.lhs.false.abort_crit_edge, %entry.abort_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %abort, %dev_hard_header.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_wmalloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_input(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_item_by_addr(ptr noundef %net, ptr noundef %sp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !87
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %dev1 = getelementptr inbounds %struct.sockaddr_pppox, ptr %sp, i32 0, i32 2, i32 1
  %call = tail call ptr @dev_get_by_name_rcu(ptr noundef %net, ptr noundef %dev1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sa_addr = getelementptr inbounds %struct.sockaddr_pppox, ptr %sp, i32 0, i32 2
  %ifindex2 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %ifindex2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex2, align 4
  %call3 = tail call fastcc ptr @pppoe_pernet(ptr noundef %net)
  %6 = ptrtoint ptr %sa_addr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %sa_addr, align 1
  %remote = getelementptr inbounds %struct.pppoe_addr, ptr %sa_addr, i32 0, i32 1
  %call7 = tail call fastcc ptr @get_item(ptr noundef %call3, i16 noundef zeroext %7, ptr noundef %remote, i32 noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %rcu_read_lock.exit.if.end_crit_edge
  %pppox_sock.0 = phi ptr [ %call7, %if.then ], [ null, %rcu_read_lock.exit.if.end_crit_edge ]
  %call.i12 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i12, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i15

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i15:                                ; preds = %if.end
  %call1.i13 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !88
  %8 = tail call i32 @llvm.read_register.i32(metadata !67) #11
  %and.i.i.i.i.i19 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i20, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i20, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %pppox_sock.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !21, !22, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !54, !56, !58, !60, !61, !63, !65}
!llvm.named.register.sp = !{!67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_pppoe__467_1220_pppoe_init6, !1, !"__initcall__kmod_pppoe__467_1220_pppoe_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ppp/pppoe.c", i32 1220, i32 1}
!2 = !{ptr @__exitcall_pppoe_exit, !3, !"__exitcall_pppoe_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/ppp/pppoe.c", i32 1221, i32 1}
!4 = !{ptr @__UNIQUE_ID_author468, !5, !"__UNIQUE_ID_author468", i1 false, i1 false}
!5 = !{!"../drivers/net/ppp/pppoe.c", i32 1223, i32 1}
!6 = !{ptr @__UNIQUE_ID_description469, !7, !"__UNIQUE_ID_description469", i1 false, i1 false}
!7 = !{!"../drivers/net/ppp/pppoe.c", i32 1224, i32 1}
!8 = !{ptr @__UNIQUE_ID_file470, !9, !"__UNIQUE_ID_file470", i1 false, i1 false}
!9 = !{!"../drivers/net/ppp/pppoe.c", i32 1225, i32 1}
!10 = !{ptr @__UNIQUE_ID_license471, !9, !"__UNIQUE_ID_license471", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias472, !12, !"__UNIQUE_ID_alias472", i1 false, i1 false}
!12 = !{!"../drivers/net/ppp/pppoe.c", i32 1226, i32 1}
!13 = !{ptr @pppoe_notifier, !14, !"pppoe_notifier", i1 false, i1 false}
!14 = !{!"../drivers/net/ppp/pppoe.c", i32 356, i32 30}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pppoe_net_id, !27, !"pppoe_net_id", i1 false, i1 false}
!27 = !{!"../drivers/net/ppp/pppoe.c", i32 93, i32 21}
!28 = !{ptr @pppoed_ptype, !29, !"pppoed_ptype", i1 false, i1 false}
!29 = !{!"../drivers/net/ppp/pppoe.c", i32 520, i32 27}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!32 = !{ptr @pppoes_ptype, !33, !"pppoes_ptype", i1 false, i1 false}
!33 = !{!"../drivers/net/ppp/pppoe.c", i32 515, i32 27}
!34 = !{ptr @pppoe_sk_proto, !35, !"pppoe_sk_proto", i1 false, i1 false}
!35 = !{!"../drivers/net/ppp/pppoe.c", i32 525, i32 21}
!36 = !{ptr @pppoe_net_ops, !37, !"pppoe_net_ops", i1 false, i1 false}
!37 = !{!"../drivers/net/ppp/pppoe.c", i32 1173, i32 33}
!38 = !{ptr @pppoe_init_net.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/net/ppp/pppoe.c", i32 1156, i32 2}
!40 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ppp/pppoe.c", i32 1158, i32 8}
!43 = !{ptr @pppoe_seq_ops, !44, !"pppoe_seq_ops", i1 false, i1 false}
!44 = !{!"../drivers/net/ppp/pppoe.c", i32 1116, i32 36}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ppp/pppoe.c", i32 1040, i32 17}
!47 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ppp/pppoe.c", i32 1047, i32 18}
!49 = !{ptr @pppoe_proto, !50, !"pppoe_proto", i1 false, i1 false}
!50 = !{!"../drivers/net/ppp/pppoe.c", i32 1145, i32 33}
!51 = !{ptr @pppoe_create.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/net/ppp/pppoe.c", i32 555, i32 2}
!53 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @pppoe_ops, !55, !"pppoe_ops", i1 false, i1 false}
!55 = !{!"../drivers/net/ppp/pppoe.c", i32 1124, i32 31}
!56 = !{ptr @pppoe_chan_ops, !57, !"pppoe_chan_ops", i1 false, i1 false}
!57 = !{!"../drivers/net/ppp/pppoe.c", i32 997, i32 37}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!60 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ppp/pppoe.c", i32 751, i32 7}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
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
!77 = !{i64 2148383734, i64 2148383766, i64 2148383795, i64 2148383829, i64 2148383860, i64 2148383883}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 785904, i64 785965}
!81 = !{i64 788636}
!82 = !{i64 788921}
!83 = !{i64 2148471759}
!84 = !{i64 2148386199, i64 2148386231, i64 2148386260, i64 2148386294, i64 2148386325, i64 2148386348}
!85 = !{i64 2149332210}
!86 = !{i64 2156981579, i64 2156982067, i64 2156981616, i64 2156981672, i64 2156981706, i64 2156981730, i64 2156981771, i64 2156981792, i64 2156981820, i64 2156981854}
!87 = !{i64 2149382700}
!88 = !{i64 2149382966}
!89 = !{i64 5978857}
!90 = !{i64 5979054}
!91 = !{i64 2153464287}
!92 = !{i64 2156993894, i64 2156994174, i64 2156994508, i64 2156994842}
!93 = !{i64 2157006144, i64 2157006424, i64 2157006758, i64 2157007092}
!94 = !{i64 2157019074, i64 2157019354, i64 2157019688, i64 2157020022}
!95 = !{i64 2153483302, i64 2153483327}
