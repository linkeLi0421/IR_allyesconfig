; ModuleID = '/llk/IR_all_yes/net/ieee802154/socket.c_pt.bc'
source_filename = "../net/ieee802154/socket.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.99, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.99 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.104, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.105, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.106, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.104 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.wpan_dev = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i32, i16, i16, i64, %struct.atomic_t, %struct.atomic_t, i8, i8, i8, i8, i8, i8, i8 }
%struct.dgram_sock = type { %struct.sock, %struct.ieee802154_addr, %struct.ieee802154_addr, i16 }
%struct.ieee802154_addr = type { i8, i16, %union.anon.139 }
%union.anon.139 = type { i64 }
%struct.sockaddr_ieee802154 = type { i16, %struct.ieee802154_addr_sa }
%struct.ieee802154_addr_sa = type { i32, i16, %union.anon.148 }
%union.anon.148 = type { i16, [6 x i8] }
%struct.ieee802154_hdr = type { %struct.ieee802154_hdr_fc, i8, %struct.ieee802154_addr, %struct.ieee802154_addr, %struct.ieee802154_sechdr }
%struct.ieee802154_hdr_fc = type { i16 }
%struct.ieee802154_sechdr = type { i8, i8, i32, %union.anon.149 }
%union.anon.149 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.98, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.9, %union.anon.96 }
%union.anon.9 = type { ptr }
%union.anon.96 = type { i64 }
%union.anon.98 = type { ptr }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.ifreq = type { %union.anon.126, %union.anon.127 }
%union.anon.126 = type { [16 x i8] }
%union.anon.127 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ieee802154_packet_type = internal global { %struct.packet_type, [56 x i8] } { %struct.packet_type { i16 246, i8 0, ptr null, ptr null, ptr @ieee802154_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@ieee802154_dgram_prot = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr @dgram_close, ptr null, ptr @dgram_connect, ptr @dgram_disconnect, ptr null, ptr @dgram_ioctl, ptr @dgram_init, ptr null, ptr null, ptr @dgram_setsockopt, ptr @dgram_getsockopt, ptr null, ptr @dgram_sendmsg, ptr @dgram_recvmsg, ptr null, ptr @dgram_bind, ptr null, ptr null, ptr null, ptr null, ptr @dgram_hash, ptr @dgram_unhash, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1000, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.99 zeroinitializer, ptr null, [32 x i8] c"IEEE-802.15.4-MAC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@ieee802154_raw_prot = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr @raw_close, ptr null, ptr @raw_connect, ptr @raw_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @raw_setsockopt, ptr @raw_getsockopt, ptr null, ptr @raw_sendmsg, ptr @raw_recvmsg, ptr null, ptr @raw_bind, ptr null, ptr null, ptr null, ptr null, ptr @raw_hash, ptr @raw_unhash, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 960, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.99 zeroinitializer, ptr null, [32 x i8] c"IEEE-802.15.4-RAW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_ieee802154_socket__498_1129_af_ieee802154_init6 = internal global ptr @af_ieee802154_init, section ".initcall6.init", align 4
@__exitcall_af_ieee802154_remove = internal global ptr @af_ieee802154_remove, section ".exitcall.exit", align 4
@__UNIQUE_ID_file499 = internal constant [56 x i8] c"ieee802154_socket.file=net/ieee802154/ieee802154_socket\00", section ".modinfo", align 1
@__UNIQUE_ID_license500 = internal constant [30 x i8] c"ieee802154_socket.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias501 = internal constant [34 x i8] c"ieee802154_socket.alias=net-pf-36\00", section ".modinfo", align 1
@ieee802154_rcv.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ieee802154_socket\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ieee802154_rcv\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/ieee802154/socket.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"got frame, type %d, dev %p\0A\00", [36 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@raw_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@raw_head = internal global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"raw_lock\00", [23 x i8] zeroinitializer }, align 32
@dgram_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@dgram_head = internal global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dgram_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@dgram_sendmsg.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dgram_sendmsg\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"msg->msg_flags = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@dgram_sendmsg.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"no dev\0A\00", [24 x i8] zeroinitializer }, align 32
@dgram_sendmsg.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.13, i8 0, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"name = %s, mtu = %u\0A\00", [43 x i8] zeroinitializer }, align 32
@dgram_sendmsg.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.14, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"size = %zu, mtu = %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ieee802154_get_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014Unsupported ieee802154 address type: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ieee802154_get_dev\00", [45 x i8] zeroinitializer }, align 32
@ieee802154_get_dev._entry_ptr = internal global ptr @ieee802154_get_dev._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@raw_sendmsg.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.11, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"raw_sendmsg\00", [20 x i8] zeroinitializer }, align 32
@raw_sendmsg.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.12, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@raw_sendmsg.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.13, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@raw_sendmsg.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.14, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ieee802154_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 36, ptr @ieee802154_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@ieee802154_raw_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 36, ptr null, ptr @ieee802154_sock_release, ptr @ieee802154_sock_bind, ptr @ieee802154_sock_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @datagram_poll, ptr @ieee802154_sock_ioctl, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @sock_common_setsockopt, ptr @sock_common_getsockopt, ptr null, ptr @ieee802154_sock_sendmsg, ptr @sock_common_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ieee802154_dgram_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 36, ptr null, ptr @ieee802154_sock_release, ptr @ieee802154_sock_bind, ptr @ieee802154_sock_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @datagram_poll, ptr @ieee802154_sock_ioctl, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @sock_common_setsockopt, ptr @sock_common_getsockopt, ptr null, ptr @ieee802154_sock_sendmsg, ptr @sock_common_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 21521, i64 21531]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 65279, i64 65535]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"ieee802154_packet_type\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1087, i32 27 }
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"ieee802154_dgram_prot\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 946, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"ieee802154_raw_prot\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 389, i32 21 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1065, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [9 x i8] c"raw_lock\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [9 x i8] c"raw_head\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 170, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 171, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"dgram_lock\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"dgram_head\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 428, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 429, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 230, i32 6 }
@___asan_gen_.77 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 214, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 156, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 611, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 626, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 631, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 634, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 72, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 695, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 723, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 729, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 249, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"ieee802154_family_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1054, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"ieee802154_raw_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 405, i32 31 }
@___asan_gen_.127 = private unnamed_addr constant [21 x i8] c"ieee802154_dgram_ops\00", align 1
@___asan_gen_.128 = private constant [27 x i8] c"../net/ieee802154/socket.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 964, i32 31 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_alias501, ptr @__UNIQUE_ID_file499, ptr @__UNIQUE_ID_license500, ptr @__exitcall_af_ieee802154_remove, ptr @__initcall__kmod_ieee802154_socket__498_1129_af_ieee802154_init6, ptr @af_ieee802154_remove, ptr @ieee802154_get_dev._entry, ptr @ieee802154_get_dev._entry_ptr, ptr @ieee802154_packet_type, ptr @ieee802154_dgram_prot, ptr @ieee802154_raw_prot, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @raw_lock, ptr @raw_head, ptr @.str.4, ptr @dgram_lock, ptr @dgram_head, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ieee802154_family_ops, ptr @ieee802154_raw_ops, ptr @ieee802154_dgram_ops], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154_packet_type to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154_dgram_prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154_raw_prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_head to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dgram_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dgram_head to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154_get_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154_raw_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154_dgram_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @af_ieee802154_remove() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dev_remove_pack(ptr noundef nonnull @ieee802154_packet_type) #12
  tail call void @sock_unregister(i32 noundef 36) #12
  tail call void @proto_unregister(ptr noundef nonnull @ieee802154_dgram_prot) #12
  tail call void @proto_unregister(ptr noundef nonnull @ieee802154_raw_prot) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @af_ieee802154_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @ieee802154_raw_prot, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @proto_register(ptr noundef nonnull @ieee802154_dgram_prot, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_dgram_crit_edge

if.end.err_dgram_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_dgram

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @sock_register(ptr noundef nonnull @ieee802154_family_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %err_sock

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dev_add_pack(ptr noundef nonnull @ieee802154_packet_type) #12
  br label %out

err_sock:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @proto_unregister(ptr noundef nonnull @ieee802154_dgram_prot) #12
  br label %err_dgram

err_dgram:                                        ; preds = %err_sock, %if.end.err_dgram_crit_edge
  %rc.0 = phi i32 [ %call1, %if.end.err_dgram_crit_edge ], [ %call5, %err_sock ]
  tail call void @proto_unregister(ptr noundef nonnull @ieee802154_raw_prot) #12
  br label %out

out:                                              ; preds = %err_dgram, %if.end8, %entry.out_crit_edge
  %rc.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %rc.0, %err_dgram ], [ 0, %if.end8 ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee802154_rcv(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.drop_crit_edge, label %do.body

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_rcv.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_rcv, %if.then4)) #12
          to label %do.end [label %if.then4], !srcloc !92

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_rcv.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.3, i32 noundef %conv, ptr noundef %dev) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %5, @init_net
  br i1 %cmp.i.not, label %if.end10, label %do.end.drop_crit_edge

do.end.drop_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end10:                                         ; preds = %do.end
  tail call void @_raw_read_lock(ptr noundef nonnull @raw_lock) #12
  %6 = load ptr, ptr @raw_head, align 4
  %tobool.not.i = icmp eq ptr %6, null
  %add.ptr.i = getelementptr i8, ptr %6, i32 -84
  %tobool2.not3740.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not37.i = or i1 %tobool.not.i, %tobool2.not3740.i
  br i1 %tobool2.not37.i, label %if.end10.ieee802154_raw_deliver.exit_crit_edge, label %for.body.lr.ph.i

if.end10.ieee802154_raw_deliver.exit_crit_edge:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %ieee802154_raw_deliver.exit

for.body.lr.ph.i:                                 ; preds = %if.end10
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sk.038.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr19.i, %if.end9.i.for.body.i_crit_edge ]
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %sk.038.i, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock.i) #12
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %sk.038.i, i32 0, i32 6
  %7 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %skc_bound_dev_if.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %for.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %9 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ifindex.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.i31 = icmp eq i32 %8, %10
  br i1 %cmp.i31, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end9.i_crit_edge

lor.lhs.false.i.if.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %call.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #12
  %tobool6.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.i, label %if.then.i.if.end9.i_crit_edge, label %if.then7.i

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.then.i
  %users.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 21
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i.i.i, i32 noundef 4) #12
  %11 = ptrtoint ptr %users.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %users.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i.not.i.i.i = icmp eq i32 %12, 1
  br i1 %cmp.i.not.i.i.i, label %if.then7.i.if.end.i.i_crit_edge, label %if.then6.i.i.i

if.then7.i.if.end.i.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then6.i.i.i:                                   ; preds = %if.then7.i
  %call7.i.i.i = tail call ptr @skb_clone(ptr noundef nonnull %call.i, i32 noundef 2592) #12
  %tobool8.not.i.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool8.not.i.i.i, label %if.then6.i.i.i.if.end9.sink.split.i_crit_edge, label %skb_share_check.exit.thread3.i.i, !prof !93

if.then6.i.i.i.if.end9.sink.split.i_crit_edge:    ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.sink.split.i

skb_share_check.exit.thread3.i.i:                 ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %call.i) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %skb_share_check.exit.thread3.i.i, %if.then7.i.if.end.i.i_crit_edge
  %skb.addr.0.i6.i.i = phi ptr [ %call7.i.i.i, %skb_share_check.exit.thread3.i.i ], [ %call.i, %if.then7.i.if.end.i.i_crit_edge ]
  %call1.i.i = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %sk.038.i, ptr noundef nonnull %skb.addr.0.i6.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.if.end9.sink.split.i_crit_edge, label %if.end.i.i.if.end9.i_crit_edge

if.end.i.i.if.end9.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.end.i.i.if.end9.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %if.end.i.i.if.end9.sink.split.i_crit_edge, %if.then6.i.i.i.if.end9.sink.split.i_crit_edge
  %skb.addr.0.i6.i.sink.i = phi ptr [ %call.i, %if.then6.i.i.i.if.end9.sink.split.i_crit_edge ], [ %skb.addr.0.i6.i.i, %if.end.i.i.if.end9.sink.split.i_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i6.i.sink.i, i32 noundef 0) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end9.sink.split.i, %if.end.i.i.if.end9.i_crit_edge, %if.then.i.if.end9.i_crit_edge, %lor.lhs.false.i.if.end9.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #12
  %13 = getelementptr inbounds %struct.sock_common, ptr %sk.038.i, i32 0, i32 15
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool15.not.i = icmp eq ptr %15, null
  %add.ptr19.i = getelementptr i8, ptr %15, i32 -84
  %tobool2.not41.i = icmp eq ptr %add.ptr19.i, null
  %tobool2.not.i = or i1 %tobool15.not.i, %tobool2.not41.i
  br i1 %tobool2.not.i, label %if.end9.i.ieee802154_raw_deliver.exit_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end9.i.ieee802154_raw_deliver.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ieee802154_raw_deliver.exit

ieee802154_raw_deliver.exit:                      ; preds = %if.end9.i.ieee802154_raw_deliver.exit_crit_edge, %if.end10.ieee802154_raw_deliver.exit_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @raw_lock) #12
  %type11 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %16 = ptrtoint ptr %type11 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %type11, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 804, i16 %17)
  %cmp.not = icmp eq i16 %17, 804
  br i1 %cmp.not, label %if.end15, label %ieee802154_raw_deliver.exit.drop_crit_edge

ieee802154_raw_deliver.exit.drop_crit_edge:       ; preds = %ieee802154_raw_deliver.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end15:                                         ; preds = %ieee802154_raw_deliver.exit
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %18 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %bf.lshr.mask)
  %cmp17.not = icmp eq i16 %bf.lshr.mask, 24576
  br i1 %cmp17.not, label %if.end15.drop_crit_edge, label %do.end8.i

if.end15.drop_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

do.end8.i:                                        ; preds = %if.end15
  %ieee802154_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 83
  %19 = ptrtoint ptr %ieee802154_ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ieee802154_ptr.i, align 4
  %pan_id9.i = getelementptr inbounds %struct.wpan_dev, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %pan_id9.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pan_id9.i, align 8
  %short_addr11.i = getelementptr inbounds %struct.wpan_dev, ptr %20, i32 0, i32 8
  %23 = ptrtoint ptr %short_addr11.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %short_addr11.i, align 2
  %extended_addr.i = getelementptr inbounds %struct.wpan_dev, ptr %20, i32 0, i32 9
  %25 = ptrtoint ptr %extended_addr.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %extended_addr.i, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @dgram_lock) #12
  %27 = load ptr, ptr @dgram_head, align 4
  %tobool13.not.i = icmp eq ptr %27, null
  %add.ptr.i32 = getelementptr i8, ptr %27, i32 -84
  %tobool15.not6065.i = icmp eq ptr %add.ptr.i32, null
  %tobool15.not60.i = or i1 %tobool13.not.i, %tobool15.not6065.i
  br i1 %tobool15.not60.i, label %do.end8.i.if.else.i_crit_edge, label %do.end8.i.for.body.i33_crit_edge

do.end8.i.for.body.i33_crit_edge:                 ; preds = %do.end8.i
  br label %for.body.i33

do.end8.i.if.else.i_crit_edge:                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

for.body.i33:                                     ; preds = %for.inc.i.for.body.i33_crit_edge, %do.end8.i.for.body.i33_crit_edge
  %sk.063.i = phi ptr [ %add.ptr33.i, %for.inc.i.for.body.i33_crit_edge ], [ %add.ptr.i32, %do.end8.i.for.body.i33_crit_edge ]
  %prev.061.i = phi ptr [ %prev.1.i, %for.inc.i.for.body.i33_crit_edge ], [ null, %do.end8.i.for.body.i33_crit_edge ]
  %bound.i.i = getelementptr inbounds %struct.dgram_sock, ptr %sk.063.i, i32 0, i32 3
  %28 = ptrtoint ptr %bound.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i.i = load i16, ptr %bound.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %for.body.i33.if.then17.i_crit_edge, label %if.end.i.i34

for.body.i33.if.then17.i_crit_edge:               ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i

if.end.i.i34:                                     ; preds = %for.body.i33
  %src_addr.i.i = getelementptr inbounds %struct.dgram_sock, ptr %sk.063.i, i32 0, i32 1
  %29 = ptrtoint ptr %src_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %src_addr.i.i, align 8
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i8 %30, label %if.end.i.i34.for.inc.i_crit_edge [
    i8 3, label %land.lhs.true.i.i
    i8 2, label %land.lhs.true12.i.i
  ]

if.end.i.i34.for.inc.i_crit_edge:                 ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i34
  %32 = getelementptr inbounds %struct.dgram_sock, ptr %sk.063.i, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %32, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %26)
  %cmp3.i.i = icmp eq i64 %34, %26
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.if.then17.i_crit_edge, label %land.lhs.true.i.i.for.inc.i_crit_edge

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i.i.if.then17.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i

land.lhs.true12.i.i:                              ; preds = %if.end.i.i34
  %pan_id15.i.i = getelementptr inbounds %struct.dgram_sock, ptr %sk.063.i, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %pan_id15.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %pan_id15.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %22)
  %cmp17.i.i = icmp eq i16 %36, %22
  br i1 %cmp17.i.i, label %land.lhs.true19.i.i, label %land.lhs.true12.i.i.for.inc.i_crit_edge

land.lhs.true12.i.i.for.inc.i_crit_edge:          ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true19.i.i:                              ; preds = %land.lhs.true12.i.i
  %37 = getelementptr inbounds %struct.dgram_sock, ptr %sk.063.i, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %37, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %24)
  %cmp23.i.i = icmp eq i16 %39, %24
  br i1 %cmp23.i.i, label %land.lhs.true19.i.i.if.then17.i_crit_edge, label %land.lhs.true19.i.i.for.inc.i_crit_edge

land.lhs.true19.i.i.for.inc.i_crit_edge:          ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true19.i.i.if.then17.i_crit_edge:        ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i

if.then17.i:                                      ; preds = %land.lhs.true19.i.i.if.then17.i_crit_edge, %land.lhs.true.i.i.if.then17.i_crit_edge, %for.body.i33.if.then17.i_crit_edge
  %tobool18.not.i = icmp eq ptr %prev.061.i, null
  br i1 %tobool18.not.i, label %if.then17.i.for.inc.i_crit_edge, label %if.then19.i

if.then17.i.for.inc.i_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then19.i:                                      ; preds = %if.then17.i
  %call20.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #12
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %if.then19.i.for.inc.i_crit_edge, label %if.then22.i

if.then19.i.for.inc.i_crit_edge:                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then22.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dgram_rcv_skb(ptr noundef nonnull %prev.061.i, ptr noundef nonnull %call20.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then22.i, %if.then19.i.for.inc.i_crit_edge, %if.then17.i.for.inc.i_crit_edge, %land.lhs.true19.i.i.for.inc.i_crit_edge, %land.lhs.true12.i.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge, %if.end.i.i34.for.inc.i_crit_edge
  %prev.1.i = phi ptr [ %sk.063.i, %if.then19.i.for.inc.i_crit_edge ], [ %sk.063.i, %if.then22.i ], [ %sk.063.i, %if.then17.i.for.inc.i_crit_edge ], [ %prev.061.i, %if.end.i.i34.for.inc.i_crit_edge ], [ %prev.061.i, %land.lhs.true.i.i.for.inc.i_crit_edge ], [ %prev.061.i, %land.lhs.true12.i.i.for.inc.i_crit_edge ], [ %prev.061.i, %land.lhs.true19.i.i.for.inc.i_crit_edge ]
  %40 = getelementptr inbounds %struct.sock_common, ptr %sk.063.i, i32 0, i32 15
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %tobool29.not.i = icmp eq ptr %42, null
  %add.ptr33.i = getelementptr i8, ptr %42, i32 -84
  %tobool15.not68.i = icmp eq ptr %add.ptr33.i, null
  %tobool15.not.i35 = or i1 %tobool29.not.i, %tobool15.not68.i
  br i1 %tobool15.not.i35, label %for.end.i, label %for.inc.i.for.body.i33_crit_edge

for.inc.i.for.body.i33_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i33

for.end.i:                                        ; preds = %for.inc.i
  %tobool37.not.i = icmp eq ptr %prev.1.i, null
  br i1 %tobool37.not.i, label %for.end.i.if.else.i_crit_edge, label %if.then38.i

for.end.i.if.else.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then38.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dgram_rcv_skb(ptr noundef nonnull %prev.1.i, ptr noundef %skb) #12
  br label %ieee802154_dgram_deliver.exit

if.else.i:                                        ; preds = %for.end.i.if.else.i_crit_edge, %do.end8.i.if.else.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %ieee802154_dgram_deliver.exit

ieee802154_dgram_deliver.exit:                    ; preds = %if.else.i, %if.then38.i
  %ret.0.i = phi i32 [ 0, %if.then38.i ], [ 1, %if.else.i ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dgram_lock) #12
  br label %return

drop:                                             ; preds = %if.end15.drop_crit_edge, %ieee802154_raw_deliver.exit.drop_crit_edge, %do.end.drop_crit_edge, %entry.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %return

return:                                           ; preds = %drop, %ieee802154_dgram_deliver.exit
  %retval.0 = phi i32 [ 1, %drop ], [ %ret.0.i, %ieee802154_dgram_deliver.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dgram_rcv_skb(ptr noundef %sk, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #12
  %0 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %entry
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #12
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread3, !prof !93

skb_share_check.exit.thread3:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef %skb) #12
  br label %if.end

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %return

skb_share_check.exit:                             ; preds = %entry
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %skb_share_check.exit.return_crit_edge, label %skb_share_check.exit.if.end_crit_edge

skb_share_check.exit.if.end_crit_edge:            ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

skb_share_check.exit.return_crit_edge:            ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %skb_share_check.exit.if.end_crit_edge, %skb_share_check.exit.thread3
  %skb.addr.0.i6 = phi ptr [ %call7.i, %skb_share_check.exit.thread3 ], [ %skb, %skb_share_check.exit.if.end_crit_edge ]
  %call1 = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef nonnull %skb.addr.0.i6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i6, i32 noundef 0) #12
  br label %return

return:                                           ; preds = %if.then2, %if.end.return_crit_edge, %skb_share_check.exit.return_crit_edge, %skb_share_check.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dgram_close(ptr noundef %sk, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sk_common_release(ptr noundef %sk) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dgram_connect(ptr noundef %sk, ptr nocapture noundef readonly %uaddr, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %len)
  %cmp = icmp ult i32 %len, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %1)
  %cmp1.not = icmp eq i16 %1, 36
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #12
  %bound = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %bound to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %bound, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %if.end4.out_crit_edge, label %if.end6

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end6:                                          ; preds = %if.end4
  %dst_addr = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 2
  %addr7 = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %uaddr, i32 0, i32 1
  %3 = ptrtoint ptr %addr7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr7, align 4
  %conv.i = trunc i32 %4 to i8
  %5 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %dst_addr, align 8
  %pan_id.i = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %uaddr, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pan_id.i, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #12
  %pan_id1.i = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %pan_id1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %pan_id1.i, align 2
  %10 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %conv.i, label %if.end6.ieee802154_addr_from_sa.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb4.i
  ]

if.end6.ieee802154_addr_from_sa.exit_crit_edge:   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %ieee802154_addr_from_sa.exit

sw.bb.i:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %11 = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %uaddr, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #12
  %15 = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %14, ptr %15, align 8
  br label %ieee802154_addr_from_sa.exit

sw.bb4.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %17 = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %uaddr, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %temp.0.copyload.i.i = load i64, ptr %17, align 1
  %19 = tail call i64 @llvm.bswap.i64(i64 %temp.0.copyload.i.i) #12
  %20 = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %19, ptr %20, align 8
  br label %ieee802154_addr_from_sa.exit

ieee802154_addr_from_sa.exit:                     ; preds = %sw.bb4.i, %sw.bb.i, %if.end6.ieee802154_addr_from_sa.exit_crit_edge
  %bf.set = or i16 %bf.load, 16384
  %22 = ptrtoint ptr %bound to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %bf.set, ptr %bound, align 8
  br label %out

out:                                              ; preds = %ieee802154_addr_from_sa.exit, %if.end4.out_crit_edge
  %err.0 = phi i32 [ 0, %ieee802154_addr_from_sa.exit ], [ -101, %if.end4.out_crit_edge ]
  tail call void @release_sock(ptr noundef %sk) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dgram_disconnect(ptr noundef %sk, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #12
  %connected = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %connected to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %connected, align 8
  %bf.clear = and i16 %bf.load, -16385
  store i16 %bf.clear, ptr %connected, align 8
  tail call void @release_sock(ptr noundef %sk) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dgram_ioctl(ptr noundef %sk, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %hdr.i = alloca %struct.ieee802154_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 21521, label %sw.bb
    i32 21531, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #12
  %1 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = add i32 %2, -1
  %3 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 533) #12
  %4 = tail call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !94
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !96
  %7 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %sub.i, i32 -1226833921) #12, !srcloc !97
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #12, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !96
  br label %return

sw.bb3:                                           ; preds = %entry
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %8 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %9, %sk_receive_queue
  %tobool.not36 = icmp eq ptr %9, null
  %tobool.not = or i1 %cmp.i, %tobool.not36
  br i1 %tobool.not, label %sw.bb3.if.end_crit_edge, label %if.then

sw.bb3.if.end_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %sw.bb3
  %len = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %hdr.i) #12
  %12 = call ptr @memset(ptr %hdr.i, i32 255, i32 56)
  %call.i = call i32 @ieee802154_hdr_pull(ptr noundef nonnull %9, ptr noundef nonnull %hdr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i35 = icmp sgt i32 %call.i, 0
  br i1 %cmp.i35, label %if.then.i, label %if.then.ieee802154_hdr_length.exit_crit_edge

if.then.ieee802154_hdr_length.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %ieee802154_hdr_length.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = call ptr @skb_push(ptr noundef nonnull %9, i32 noundef %call.i) #12
  br label %ieee802154_hdr_length.exit

ieee802154_hdr_length.exit:                       ; preds = %if.then.i, %if.then.ieee802154_hdr_length.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hdr.i) #12
  %sub = sub i32 %11, %call.i
  br label %if.end

if.end:                                           ; preds = %ieee802154_hdr_length.exit, %sw.bb3.if.end_crit_edge
  %amount4.0 = phi i32 [ %sub, %ieee802154_hdr_length.exit ], [ 0, %sw.bb3.if.end_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %13 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 552) #12
  %14 = call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i.i31 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i31 to ptr
  %cpu_domain.i.i32 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i32) #6, !srcloc !94
  %and.i33 = and i32 %16, -13
  %or.i34 = or i32 %and.i33, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i34) #12, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !96
  %17 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %13, i32 %amount4.0, i32 -1226833921) #12, !srcloc !98
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #12, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !96
  br label %return

return:                                           ; preds = %if.end, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %17, %if.end ], [ %7, %sw.bb ], [ -515, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dgram_init(ptr nocapture noundef %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %want_ack = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %want_ack to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %want_ack, align 8
  %bf.set = and i16 %bf.load, -12289
  %bf.clear2 = or i16 %bf.set, 8192
  store i16 %bf.clear2, ptr %want_ack, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dgram_setsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp = icmp ult i32 %optlen, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %3 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #12
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i.i, label %if.then.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.if.then11.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #15, !srcloc !100
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i1.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i1.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !101

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #12
  %5 = call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #6, !srcloc !94
  %and.i.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #12, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !96
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %3, i32 noundef 4) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #12, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end4_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !101

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end4_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.03.i.i.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.03.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %val, i32 %sub.i.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.03.i.i.i.i)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %3, align 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end4_crit_edge
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #12
  %12 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %optname, label %if.end4.sw.epilog76_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb7
    i32 1, label %sw.bb19
    i32 2, label %sw.bb46
  ]

if.end4.sw.epilog76_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog76

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  %want_ack = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %15 = ptrtoint ptr %want_ack to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %want_ack, align 8
  %bf.shl = select i1 %tobool5.not, i16 0, i16 8192
  %bf.clear = and i16 %bf.load, -8193
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %want_ack, align 8
  br label %sw.epilog76

sw.bb7:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not = icmp eq i32 %17, 0
  %want_lqi = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %18 = ptrtoint ptr %want_lqi to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load13 = load i16, ptr %want_lqi, align 8
  %bf.shl15 = select i1 %tobool8.not, i16 0, i16 4096
  %bf.clear16 = and i16 %bf.load13, -4097
  %bf.set17 = or i16 %bf.clear16, %bf.shl15
  store i16 %bf.set17, ptr %want_lqi, align 8
  br label %sw.epilog76

sw.bb19:                                          ; preds = %if.end4
  %user_ns = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %user_ns, align 4
  %call20 = call zeroext i1 @ns_capable(ptr noundef %20, i32 noundef 12) #12
  br i1 %call20, label %sw.bb19.if.end24_crit_edge, label %land.lhs.true

sw.bb19.if.end24_crit_edge:                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

land.lhs.true:                                    ; preds = %sw.bb19
  %21 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %user_ns, align 4
  %call22 = call zeroext i1 @ns_capable(ptr noundef %22, i32 noundef 13) #12
  br i1 %call22, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.sw.epilog76_crit_edge

land.lhs.true.sw.epilog76_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog76

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %sw.bb19.if.end24_crit_edge
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %24, label %if.end24.sw.epilog76_crit_edge [
    i32 0, label %sw.bb25
    i32 2, label %sw.bb29
    i32 1, label %sw.bb37
  ]

if.end24.sw.epilog76_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog76

sw.bb25:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %secen_override = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %26 = ptrtoint ptr %secen_override to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load26 = load i16, ptr %secen_override, align 8
  %bf.clear27 = and i16 %bf.load26, -1025
  store i16 %bf.clear27, ptr %secen_override, align 8
  br label %sw.epilog76

sw.bb29:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %secen_override30 = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %27 = ptrtoint ptr %secen_override30 to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load31 = load i16, ptr %secen_override30, align 8
  %bf.set36 = or i16 %bf.load31, 3072
  store i16 %bf.set36, ptr %secen_override30, align 8
  br label %sw.epilog76

sw.bb37:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %secen_override38 = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %28 = ptrtoint ptr %secen_override38 to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load39 = load i16, ptr %secen_override38, align 8
  %bf.set41 = and i16 %bf.load39, -3073
  %bf.clear44 = or i16 %bf.set41, 1024
  store i16 %bf.clear44, ptr %secen_override38, align 8
  br label %sw.epilog76

sw.bb46:                                          ; preds = %if.end4
  %user_ns47 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %user_ns47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %user_ns47, align 4
  %call48 = call zeroext i1 @ns_capable(ptr noundef %30, i32 noundef 12) #12
  br i1 %call48, label %sw.bb46.if.end53_crit_edge, label %land.lhs.true49

sw.bb46.if.end53_crit_edge:                       ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

land.lhs.true49:                                  ; preds = %sw.bb46
  %31 = ptrtoint ptr %user_ns47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %user_ns47, align 4
  %call51 = call zeroext i1 @ns_capable(ptr noundef %32, i32 noundef 13) #12
  br i1 %call51, label %land.lhs.true49.if.end53_crit_edge, label %land.lhs.true49.sw.epilog76_crit_edge

land.lhs.true49.sw.epilog76_crit_edge:            ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog76

land.lhs.true49.if.end53_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true49.if.end53_crit_edge, %sw.bb46.if.end53_crit_edge
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  %35 = add i32 %34, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %35)
  %36 = icmp ult i32 %35, -9
  br i1 %36, label %if.end53.sw.epilog76_crit_edge, label %if.else

if.end53.sw.epilog76_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog76

if.else:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp57 = icmp eq i32 %34, -1
  %seclevel_override = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %37 = ptrtoint ptr %seclevel_override to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load59 = load i16, ptr %seclevel_override, align 8
  br i1 %cmp57, label %if.then58, label %if.else62

if.then58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear60 = and i16 %bf.load59, -65
  %38 = ptrtoint ptr %seclevel_override to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %bf.clear60, ptr %seclevel_override, align 8
  br label %sw.epilog76

if.else62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %39 = trunc i32 %34 to i16
  %bf.value68 = shl nuw nsw i16 %39, 7
  %bf.shl69 = and i16 %bf.value68, 896
  %bf.set66 = and i16 %bf.load59, -961
  %bf.clear70 = or i16 %bf.shl69, %bf.set66
  %bf.set71 = or i16 %bf.clear70, 64
  %40 = ptrtoint ptr %seclevel_override to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %bf.set71, ptr %seclevel_override, align 8
  br label %sw.epilog76

sw.epilog76:                                      ; preds = %if.else62, %if.then58, %if.end53.sw.epilog76_crit_edge, %land.lhs.true49.sw.epilog76_crit_edge, %sw.bb37, %sw.bb29, %sw.bb25, %if.end24.sw.epilog76_crit_edge, %land.lhs.true.sw.epilog76_crit_edge, %sw.bb7, %sw.bb, %if.end4.sw.epilog76_crit_edge
  %err.0 = phi i32 [ 0, %if.then58 ], [ 0, %if.else62 ], [ 0, %sw.bb37 ], [ 0, %sw.bb29 ], [ 0, %sw.bb25 ], [ 0, %sw.bb7 ], [ 0, %sw.bb ], [ -1, %land.lhs.true.sw.epilog76_crit_edge ], [ -22, %if.end24.sw.epilog76_crit_edge ], [ -1, %land.lhs.true49.sw.epilog76_crit_edge ], [ -22, %if.end53.sw.epilog76_crit_edge ], [ -92, %if.end4.sw.epilog76_crit_edge ]
  call void @release_sock(ptr noundef %sk) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog76, %if.then11.i.i.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %sw.epilog76 ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dgram_getsockopt(ptr nocapture noundef readonly %sk, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp.not = icmp eq i32 %level, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 836) #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !94
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !96
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #12, !srcloc !102
  %asmresult = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #12, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %asmresult2 = extractvalue { i32, i32 } %3, 1
  %4 = tail call i32 @llvm.umin.i32(i32 %asmresult2, i32 4)
  %5 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %optname, label %if.end5.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb8
    i32 1, label %sw.bb13
    i32 2, label %sw.bb29
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %want_ack = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %6 = ptrtoint ptr %want_ack to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %want_ack, align 8
  %bf.lshr = lshr i16 %bf.load, 13
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bf.cast, ptr %val, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %want_lqi = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %8 = ptrtoint ptr %want_lqi to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load9 = load i16, ptr %want_lqi, align 8
  %bf.lshr10 = lshr i16 %bf.load9, 12
  %bf.clear11 = and i16 %bf.lshr10, 1
  %bf.cast12 = zext i16 %bf.clear11 to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bf.cast12, ptr %val, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end5
  %secen_override = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %10 = ptrtoint ptr %secen_override to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load14 = load i16, ptr %secen_override, align 8
  %11 = and i16 %bf.load14, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool18.not = icmp eq i16 %11, 0
  br i1 %tobool18.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %val, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb13
  %13 = and i16 %bf.load14, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool24.not = icmp eq i16 %13, 0
  br i1 %tobool24.not, label %if.else26, label %if.then25

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %val, align 4
  br label %sw.epilog

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %val, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end5
  %seclevel_override = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %16 = ptrtoint ptr %seclevel_override to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load30 = load i16, ptr %seclevel_override, align 8
  %17 = and i16 %bf.load30, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool34.not = icmp eq i16 %17, 0
  br i1 %tobool34.not, label %if.then35, label %if.else36

if.then35:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val, align 4
  br label %sw.epilog

if.else36:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr38 = lshr i16 %bf.load30, 7
  %bf.clear39 = and i16 %bf.lshr38, 7
  %bf.cast40 = zext i16 %bf.clear39 to i32
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bf.cast40, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else36, %if.then35, %if.else26, %if.then25, %if.then19, %sw.bb8, %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 866) #12
  %20 = tail call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i.i70 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i70 to ptr
  %cpu_domain.i.i71 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i71) #6, !srcloc !94
  %and.i72 = and i32 %22, -13
  %or.i73 = or i32 %and.i72, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i73) #12, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !96
  %23 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %4, i32 -1226833921) #12, !srcloc !103
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #12, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool51.not = icmp eq i32 %23, 0
  br i1 %tobool51.not, label %if.then.i.i.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %sw.epilog
  call void @__check_object_size(ptr noundef nonnull %val, i32 noundef %4, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 174) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %24 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %4, i32 -1226833920) #15, !srcloc !104
  %asmresult.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef %4) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %val, i32 noundef %4) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %4, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %4, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool55.not = icmp eq i32 %n.addr.0.i, 0
  %. = select i1 %tobool55.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %sw.epilog.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -92, %if.end5.cleanup_crit_edge ], [ -14, %sw.epilog.cleanup_crit_edge ], [ %., %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dgram_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %size) #2 align 64 {
entry:
  %dst_addr = alloca %struct.ieee802154_addr, align 8
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dst_addr) #12
  %0 = call ptr @memset(ptr %dst_addr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %1 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %err, align 4, !annotation !99
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dgram_sendmsg.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dgram_sendmsg, %if.then5)) #12
          to label %cleanup [label %if.then5], !srcloc !92

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_flags, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dgram_sendmsg.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.11, i32 noundef %5) #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  %connected = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %6 = ptrtoint ptr %connected to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %connected, align 8
  %7 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool8.not = icmp eq i16 %7, 0
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msg, align 8
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %land.lhs.true, label %land.lhs.true17

land.lhs.true:                                    ; preds = %if.end7
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true17:                                  ; preds = %if.end7
  br i1 %tobool9.not, label %land.lhs.true17.if.end22_crit_edge, label %land.lhs.true17.cleanup_crit_edge

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true17.if.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true17.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool26.not = icmp sgt i16 %bf.load, -1
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %10 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skc_net.i, align 4
  br i1 %tobool26.not, label %if.then27, label %if.else30

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %call29 = tail call ptr @dev_getfirstbyhwtype(ptr noundef %11, i16 noundef zeroext 804) #12
  br label %if.end33

if.else30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %src_addr = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 1
  %call32 = tail call fastcc ptr @ieee802154_get_dev(ptr noundef %11, ptr noundef %src_addr)
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.then27
  %dev.0 = phi ptr [ %call32, %if.else30 ], [ %call29, %if.then27 ]
  %tobool34.not = icmp eq ptr %dev.0, null
  br i1 %tobool34.not, label %do.body36, label %if.end52

do.body36:                                        ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dgram_sendmsg.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dgram_sendmsg, %if.then48)) #12
          to label %do.end51 [label %if.then48], !srcloc !92

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dgram_sendmsg.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.12) #12
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.body36
  %12 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -6, ptr %err, align 4
  br label %out

if.end52:                                         ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dgram_sendmsg.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dgram_sendmsg, %if.then65)) #12
          to label %do.end68 [label %if.then65], !srcloc !92

if.then65:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dgram_sendmsg.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.13, ptr noundef nonnull %dev.0, i32 noundef 127) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %size)
  %cmp = icmp ugt i32 %size, 127
  br i1 %cmp, label %do.body70, label %if.end86

do.body70:                                        ; preds = %do.end68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dgram_sendmsg.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dgram_sendmsg, %if.then82)) #12
          to label %do.end85 [label %if.then82], !srcloc !92

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dgram_sendmsg.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.14, i32 noundef %size, i32 noundef 127) #12
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %do.body70
  %13 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -90, ptr %err, align 4
  br label %do.body1.i256

if.end86:                                         ; preds = %do.end68
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 19
  %14 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %15 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 21
  %16 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %needed_headroom, align 8
  %conv87 = zext i16 %17 to i32
  %add = add nuw nsw i32 %conv87, %conv
  %and88 = and i32 %add, 131056
  %add89 = add nuw nsw i32 %and88, 16
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 22
  %18 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %needed_tailroom, align 2
  %conv90 = zext i16 %19 to i32
  %add91 = add nuw nsw i32 %conv90, %size
  %add92 = add nuw nsw i32 %add91, %add89
  %20 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_flags, align 4
  %and94 = and i32 %21, 64
  %call95 = call ptr @sock_alloc_send_skb(ptr noundef %sk, i32 noundef %add92, i32 noundef %and94, ptr noundef nonnull %err) #12
  %tobool96.not = icmp eq ptr %call95, null
  br i1 %tobool96.not, label %if.end86.do.body1.i256_crit_edge, label %if.end98

if.end86.do.body1.i256_crit_edge:                 ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i256

if.end98:                                         ; preds = %if.end86
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 19
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 %add89
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %25, i32 %add89
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 18
  %26 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 15, i32 0, i32 20
  %28 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i, ptr %network_header.i, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 3
  %29 = call ptr @memset(ptr %cb.i, i32 0, i32 40)
  %type = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %type, align 1
  %31 = ptrtoint ptr %connected to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load100 = load i16, ptr %connected, align 8
  %ackreq = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 3, i32 2
  %32 = lshr i16 %bf.load100, 13
  %33 = trunc i16 %32 to i8
  %34 = and i8 %33, 1
  %35 = ptrtoint ptr %ackreq to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %ackreq, align 2
  %36 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %msg, align 8
  %tobool107.not = icmp eq ptr %37, null
  br i1 %tobool107.not, label %if.else114, label %if.then108

if.then108:                                       ; preds = %if.end98
  %addr = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr, align 4
  %conv.i246 = trunc i32 %39 to i8
  %40 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.i246, ptr %dst_addr, align 8
  %pan_id.i = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %37, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %pan_id.i, align 4
  %43 = call i16 @llvm.bswap.i16(i16 %42) #12
  %pan_id1.i = getelementptr inbounds %struct.ieee802154_addr, ptr %dst_addr, i32 0, i32 1
  %44 = ptrtoint ptr %pan_id1.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %pan_id1.i, align 2
  %45 = zext i8 %conv.i246 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %conv.i246, label %if.then108.if.end116_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb4.i
  ]

if.then108.if.end116_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

sw.bb.i:                                          ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #14
  %46 = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %37, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %46, align 2
  %49 = call i16 @llvm.bswap.i16(i16 %48) #12
  %50 = getelementptr inbounds %struct.ieee802154_addr, ptr %dst_addr, i32 0, i32 2
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %49, ptr %50, align 8
  br label %if.end116

sw.bb4.i:                                         ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #14
  %52 = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %37, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %temp.0.copyload.i.i = load i64, ptr %52, align 1
  %54 = call i64 @llvm.bswap.i64(i64 %temp.0.copyload.i.i) #12
  %55 = getelementptr inbounds %struct.ieee802154_addr, ptr %dst_addr, i32 0, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %54, ptr %55, align 8
  br label %if.end116

if.else114:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  %dst_addr115 = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 2
  %57 = call ptr @memcpy(ptr %dst_addr, ptr %dst_addr115, i32 16)
  br label %if.end116

if.end116:                                        ; preds = %if.else114, %sw.bb4.i, %sw.bb.i, %if.then108.if.end116_crit_edge
  %58 = ptrtoint ptr %connected to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load117 = load i16, ptr %connected, align 8
  %secen122 = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 3, i32 3
  %59 = lshr i16 %bf.load117, 11
  %60 = trunc i16 %59 to i8
  %61 = and i8 %60, 1
  %62 = ptrtoint ptr %secen122 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %secen122, align 1
  %bf.load124 = load i16, ptr %connected, align 8
  %secen_override129 = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 3, i32 4
  %63 = lshr i16 %bf.load124, 10
  %64 = trunc i16 %63 to i8
  %65 = and i8 %64, 1
  %66 = ptrtoint ptr %secen_override129 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %secen_override129, align 4
  %bf.load131 = load i16, ptr %connected, align 8
  %bf.lshr132 = lshr i16 %bf.load131, 7
  %67 = trunc i16 %bf.lshr132 to i8
  %conv135 = and i8 %67, 7
  %seclevel136 = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 3, i32 5
  %68 = ptrtoint ptr %seclevel136 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv135, ptr %seclevel136, align 1
  %bf.load137 = load i16, ptr %connected, align 8
  %seclevel_override142 = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 3, i32 6
  %69 = trunc i16 %bf.load137 to i8
  %70 = lshr i8 %69, 6
  %71 = and i8 %70, 1
  %72 = ptrtoint ptr %seclevel_override142 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %seclevel_override142, align 2
  %bf.load145 = load i16, ptr %connected, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load145)
  %tobool148.not = icmp sgt i16 %bf.load145, -1
  %src_addr149 = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 1
  %spec.select = select i1 %tobool148.not, ptr null, ptr %src_addr149
  %ieee802154_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 83
  %73 = ptrtoint ptr %ieee802154_ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ieee802154_ptr.i, align 4
  %header_ops.i = getelementptr inbounds %struct.wpan_dev, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %header_ops.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %call.i = call i32 %78(ptr noundef nonnull %call95, ptr noundef nonnull %dev.0, ptr noundef nonnull %dst_addr, ptr noundef %spec.select, i32 noundef %size) #12
  %79 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp151 = icmp slt i32 %call.i, 0
  br i1 %cmp151, label %if.end116.out_skb_crit_edge, label %if.end154

if.end116.out_skb_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_skb

if.end154:                                        ; preds = %if.end116
  %call155 = call ptr @skb_put(ptr noundef nonnull %call95, i32 noundef %size) #12
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__check_object_size(ptr noundef %call155, i32 noundef %size, i1 noundef zeroext false) #12
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %call155, i32 noundef %size, ptr noundef %msg_iter.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i.i, i32 %size)
  %cmp.i.i = icmp eq i32 %call3.i.i.i, %size
  br i1 %cmp.i.i, label %do.body1.i, label %memcpy_from_msg.exit.thread, !prof !101

memcpy_from_msg.exit.thread:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %call3.i.i.i) #12
  %80 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -14, ptr %err, align 4
  br label %out_skb

do.body1.i:                                       ; preds = %if.end154
  %81 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %err, align 4
  %82 = getelementptr inbounds %struct.anon.0, ptr %call95, i32 0, i32 2
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %dev.0, ptr %82, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 15, i32 0, i32 18
  %84 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 246, ptr %protocol, align 8
  %call161 = call i32 @dev_queue_xmit(ptr noundef nonnull %call95) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %cmp162 = icmp sgt i32 %call161, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call161)
  %cmp165.not = icmp eq i32 %call161, 2
  %cond167 = select i1 %cmp165.not, i32 0, i32 -105
  %storemerge = select i1 %cmp162, i32 %cond167, i32 %call161
  %85 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %storemerge, ptr %err, align 4
  %86 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !105
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 118
  %87 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pcpu_refcnt.i, align 4
  %89 = ptrtoint ptr %88 to i32
  %90 = call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %93
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %95, %89
  %96 = inttoptr i32 %add.i to ptr
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %add13.i = add i32 %98, -1
  store i32 %add13.i, ptr %96, align 4
  %99 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !106
  %and.i.i.i = and i32 %99, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !93

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %86) #12, !srcloc !107
  %100 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool169.not = icmp eq i32 %101, 0
  %cond173 = select i1 %tobool169.not, i32 %size, i32 %101
  br label %cleanup

out_skb:                                          ; preds = %memcpy_from_msg.exit.thread, %if.end116.out_skb_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call95, i32 noundef 0) #12
  br label %do.body1.i256

do.body1.i256:                                    ; preds = %out_skb, %if.end86.do.body1.i256_crit_edge, %do.end85
  %102 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !105
  %pcpu_refcnt.i248 = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 118
  %103 = ptrtoint ptr %pcpu_refcnt.i248 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pcpu_refcnt.i248, align 4
  %105 = ptrtoint ptr %104 to i32
  %106 = call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i249 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i249 to ptr
  %cpu.i250 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %cpu.i250 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cpu.i250, align 4
  %arrayidx.i251 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %109
  %110 = ptrtoint ptr %arrayidx.i251 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i251, align 4
  %add.i252 = add i32 %111, %105
  %112 = inttoptr i32 %add.i252 to ptr
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %add13.i253 = add i32 %114, -1
  store i32 %add13.i253, ptr %112, align 4
  %115 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !106
  %and.i.i.i254 = and i32 %115, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i254)
  %tobool24.not.i255 = icmp eq i32 %and.i.i.i254, 0
  br i1 %tobool24.not.i255, label %if.then28.i257, label %do.body1.i256.dev_put.exit259_crit_edge, !prof !93

do.body1.i256.dev_put.exit259_crit_edge:          ; preds = %do.body1.i256
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit259

if.then28.i257:                                   ; preds = %do.body1.i256
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %dev_put.exit259

dev_put.exit259:                                  ; preds = %if.then28.i257, %do.body1.i256.dev_put.exit259_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %102) #12, !srcloc !107
  br label %out

out:                                              ; preds = %dev_put.exit259, %do.end51
  %116 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %dev_put.exit, %land.lhs.true17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ %117, %out ], [ %cond173, %dev_put.exit ], [ -95, %if.then5 ], [ -89, %land.lhs.true.cleanup_crit_edge ], [ -106, %land.lhs.true17.cleanup_crit_edge ], [ -95, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst_addr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dgram_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %noblock, i32 noundef %flags, ptr nocapture noundef writeonly %addr_len) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -95, ptr %err, align 4
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %msg, align 8
  %call1 = call ptr @skb_recv_datagram(ptr noundef %sk, i32 noundef %flags, i32 noundef %noblock, ptr noundef nonnull %err) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 6
  %3 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %len)
  %cmp = icmp ugt i32 %4, %len
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %5 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_flags, align 4
  %or = or i32 %6, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %copied.0 = phi i32 [ %len, %if.then3 ], [ %4, %if.end.if.end4_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call1, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #12
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.done_crit_edge

if.end4.done_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end8:                                          ; preds = %if.end4
  %8 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %and.i = and i32 %10, 133120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end8.if.then.i_crit_edge

if.end8.if.then.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end8
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %11 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sk_tsflags.i, align 8
  %13 = and i16 %12, 80
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool2.not.i = icmp eq i16 %13, 0
  br i1 %tobool2.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end8.if.then.i_crit_edge
  call void @__sock_recv_ts_and_drops(ptr noundef %msg, ptr noundef %sk, ptr noundef nonnull %call1) #12
  br label %sock_recv_ts_and_drops.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %8, align 4
  %16 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %if.else6.i, label %if.then5.i, !prof !101

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %sk, i64 noundef %19) #12
  br label %sock_recv_ts_and_drops.exit

if.else6.i:                                       ; preds = %if.else.i
  %sk_stamp.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 63
  %20 = ptrtoint ptr %sk_stamp.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sk_stamp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1000000000, i64 %21)
  %cmp.i = icmp eq i64 %21, -1000000000
  br i1 %cmp.i, label %if.then14.i, label %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, !prof !93

if.else6.i.sock_recv_ts_and_drops.exit_crit_edge: ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_recv_ts_and_drops.exit

if.then14.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @sock_write_timestamp(ptr noundef %sk, i64 noundef 0) #12
  br label %sock_recv_ts_and_drops.exit

sock_recv_ts_and_drops.exit:                      ; preds = %if.then14.i, %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, %if.then5.i, %if.then.i
  %tobool9.not = icmp eq ptr %2, null
  br i1 %tobool9.not, label %sock_recv_ts_and_drops.exit.if.end12_crit_edge, label %if.then10

sock_recv_ts_and_drops.exit.if.end12_crit_edge:   ; preds = %sock_recv_ts_and_drops.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %sock_recv_ts_and_drops.exit
  %22 = call ptr @memset(ptr %2, i32 0, i32 20)
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 36, ptr %2, align 4
  %addr = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %2, i32 0, i32 1
  %source = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %source, align 8
  %conv.i = zext i8 %25 to i32
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv.i, ptr %addr, align 4
  %pan_id.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3, i32 10
  %27 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pan_id.i, align 2
  %29 = call i16 @llvm.bswap.i16(i16 %28) #12
  %pan_id1.i = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %2, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %pan_id1.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %pan_id1.i, align 4
  %31 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %source, align 8
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %32, label %if.then10.ieee802154_addr_to_sa.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb4.i
  ]

if.then10.ieee802154_addr_to_sa.exit_crit_edge:   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %ieee802154_addr_to_sa.exit

sw.bb.i:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %34 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3, i32 16
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 8
  %37 = call i16 @llvm.bswap.i16(i16 %36) #12
  %38 = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %2, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %37, ptr %38, align 2
  br label %ieee802154_addr_to_sa.exit

sw.bb4.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %40 = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %2, i32 0, i32 1, i32 2
  %41 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3, i32 16
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %41, align 8
  %44 = call i64 @llvm.bswap.i64(i64 %43) #12
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %40, align 1
  br label %ieee802154_addr_to_sa.exit

ieee802154_addr_to_sa.exit:                       ; preds = %sw.bb4.i, %sw.bb.i, %if.then10.ieee802154_addr_to_sa.exit_crit_edge
  %46 = ptrtoint ptr %addr_len to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 20, ptr %addr_len, align 4
  br label %if.end12

if.end12:                                         ; preds = %ieee802154_addr_to_sa.exit, %sock_recv_ts_and_drops.exit.if.end12_crit_edge
  %want_lqi = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %47 = ptrtoint ptr %want_lqi to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load = load i16, ptr %want_lqi, align 8
  %48 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool13.not = icmp eq i16 %48, 0
  br i1 %tobool13.not, label %if.end20, label %if.then14

if.then14:                                        ; preds = %if.end12
  %cb.i55 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3
  %call16 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 0, i32 noundef 3, i32 noundef 1, ptr noundef %cb.i55) #12
  %49 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call16, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp ne i32 %call16, 0
  %and = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool21.not, %tobool17.not
  br i1 %or.cond, label %if.then14.done_crit_edge, label %if.then14.if.then22_crit_edge

if.then14.if.then22_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.then14.done_crit_edge:                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end20:                                         ; preds = %if.end12
  %and.old = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.old)
  %tobool21.not.old = icmp eq i32 %and.old, 0
  br i1 %tobool21.not.old, label %if.end20.done_crit_edge, label %if.end20.if.then22_crit_edge

if.end20.if.then22_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end20.done_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then22:                                        ; preds = %if.end20.if.then22_crit_edge, %if.then14.if.then22_crit_edge
  %50 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len2, align 4
  br label %done

done:                                             ; preds = %if.then22, %if.end20.done_crit_edge, %if.then14.done_crit_edge, %if.end4.done_crit_edge
  %copied.1 = phi i32 [ %copied.0, %if.end4.done_crit_edge ], [ %copied.0, %if.then14.done_crit_edge ], [ %51, %if.then22 ], [ %copied.0, %if.end20.done_crit_edge ]
  call void @skb_free_datagram(ptr noundef %sk, ptr noundef nonnull %call1) #12
  br label %out

out:                                              ; preds = %done, %entry.out_crit_edge
  %copied.2 = phi i32 [ %copied.1, %done ], [ 0, %entry.out_crit_edge ]
  %52 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool25.not = icmp eq i32 %53, 0
  %copied.2. = select i1 %tobool25.not, i32 %copied.2, i32 %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret i32 %copied.2.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dgram_bind(ptr noundef %sk, ptr nocapture noundef readonly %uaddr, i32 noundef %len) #2 align 64 {
entry:
  %haddr = alloca %struct.ieee802154_addr, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %haddr) #12
  %0 = call ptr @memset(ptr %haddr, i32 255, i32 16)
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #12
  %bound = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 3
  %1 = ptrtoint ptr %bound to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %bound, align 8
  %bf.clear = and i16 %bf.load, 32767
  store i16 %bf.clear, ptr %bound, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %len)
  %cmp = icmp ult i32 %len, 20
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %3)
  %cmp1.not = icmp eq i16 %3, 36
  br i1 %cmp1.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %addr5 = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %uaddr, i32 0, i32 1
  %4 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr5, align 4
  %conv.i = trunc i32 %5 to i8
  %6 = ptrtoint ptr %haddr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %haddr, align 8
  %pan_id.i = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %uaddr, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pan_id.i, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #12
  %pan_id1.i = getelementptr inbounds %struct.ieee802154_addr, ptr %haddr, i32 0, i32 1
  %10 = ptrtoint ptr %pan_id1.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %pan_id1.i, align 2
  %11 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %conv.i, label %if.end4.ieee802154_addr_from_sa.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb4.i
  ]

if.end4.ieee802154_addr_from_sa.exit_crit_edge:   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %ieee802154_addr_from_sa.exit

sw.bb.i:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %12 = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %uaddr, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #12
  %16 = getelementptr inbounds %struct.ieee802154_addr, ptr %haddr, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %15, ptr %16, align 8
  br label %ieee802154_addr_from_sa.exit

sw.bb4.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %18 = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %uaddr, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %temp.0.copyload.i.i = load i64, ptr %18, align 1
  %20 = tail call i64 @llvm.bswap.i64(i64 %temp.0.copyload.i.i) #12
  %21 = getelementptr inbounds %struct.ieee802154_addr, ptr %haddr, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %20, ptr %21, align 8
  br label %ieee802154_addr_from_sa.exit

ieee802154_addr_from_sa.exit:                     ; preds = %sw.bb4.i, %sw.bb.i, %if.end4.ieee802154_addr_from_sa.exit_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %23 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skc_net.i, align 4
  %call7 = call fastcc ptr @ieee802154_get_dev(ptr noundef %24, ptr noundef nonnull %haddr)
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %ieee802154_addr_from_sa.exit.out_crit_edge, label %if.end9

ieee802154_addr_from_sa.exit.out_crit_edge:       ; preds = %ieee802154_addr_from_sa.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end9:                                          ; preds = %ieee802154_addr_from_sa.exit
  %type = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 32
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 804, i16 %26)
  %cmp11.not = icmp eq i16 %26, 804
  br i1 %cmp11.not, label %if.end14, label %if.end9.do.body1.i_crit_edge

if.end9.do.body1.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %src_addr = getelementptr inbounds %struct.dgram_sock, ptr %sk, i32 0, i32 1
  %27 = call ptr @memcpy(ptr %src_addr, ptr %haddr, i32 16)
  %28 = ptrtoint ptr %bound to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load16 = load i16, ptr %bound, align 8
  %bf.set18 = or i16 %bf.load16, -32768
  store i16 %bf.set18, ptr %bound, align 8
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end14, %if.end9.do.body1.i_crit_edge
  %err.0 = phi i32 [ 0, %if.end14 ], [ -19, %if.end9.do.body1.i_crit_edge ]
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !105
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 118
  %30 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcpu_refcnt.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %38, %32
  %39 = inttoptr i32 %add.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add13.i = add i32 %41, -1
  store i32 %add13.i, ptr %39, align 4
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !106
  %and.i.i.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !93

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #12, !srcloc !107
  br label %out

out:                                              ; preds = %dev_put.exit, %ieee802154_addr_from_sa.exit.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ -22, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ %err.0, %dev_put.exit ], [ -19, %ieee802154_addr_from_sa.exit.out_crit_edge ]
  tail call void @release_sock(ptr noundef %sk) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %haddr) #12
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dgram_hash(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @dgram_lock) #12
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #12, !srcloc !108
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !93

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !101

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = load ptr, ptr @dgram_head, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %2, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %sock_hold.exit.i.sk_add_node.exit_crit_edge, label %do.body12.i.i.i

sock_hold.exit.i.sk_add_node.exit_crit_edge:      ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_add_node.exit

do.body12.i.i.i:                                  ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %2, ptr %pprev.i.i.i, align 4
  br label %sk_add_node.exit

sk_add_node.exit:                                 ; preds = %do.body12.i.i.i, %sock_hold.exit.i.sk_add_node.exit_crit_edge
  store volatile ptr %2, ptr @dgram_head, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %6 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr @dgram_head, ptr %pprev34.i.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @dgram_lock) #12
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %9 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_prot, align 8
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !105
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 29, i32 2
  %12 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prot_inuse.i, align 8
  %inuse_idx.i = getelementptr inbounds %struct.proto, ptr %10, i32 0, i32 26
  %14 = ptrtoint ptr %inuse_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inuse_idx.i, align 4
  %arrayidx.i = getelementptr %struct.prot_inuse, ptr %13, i32 0, i32 1, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %22, %16
  %23 = inttoptr i32 %add.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add15.i = add i32 %25, 1
  store i32 %add15.i, ptr %23, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !106
  %and.i.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sk_add_node.exit.sock_prot_inuse_add.exit_crit_edge, !prof !93

sk_add_node.exit.sock_prot_inuse_add.exit_crit_edge: ; preds = %sk_add_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_prot_inuse_add.exit

if.then.i:                                        ; preds = %sk_add_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i, %sk_add_node.exit.sock_prot_inuse_add.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #12, !srcloc !107
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dgram_unhash(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @dgram_lock) #12
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i.i.not, label %entry.if.end_crit_edge, label %if.then.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i.i:                                      ; preds = %entry
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %1, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %1, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %7 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #12
  %8 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !93

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 729, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #12, !srcloc !110
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.if.then_crit_edge, !prof !93

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #12
  br label %if.then

if.then:                                          ; preds = %if.then3.i.i.i.i, %if.end.i.if.then_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %11 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_net.i, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %13 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_prot, align 8
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !105
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %12, i32 0, i32 29, i32 2
  %16 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prot_inuse.i, align 8
  %inuse_idx.i = getelementptr inbounds %struct.proto, ptr %14, i32 0, i32 26
  %18 = ptrtoint ptr %inuse_idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inuse_idx.i, align 4
  %arrayidx.i = getelementptr %struct.prot_inuse, ptr %17, i32 0, i32 1, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %26, %20
  %27 = inttoptr i32 %add.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add15.i = add i32 %29, -1
  store i32 %add15.i, ptr %27, align 4
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !106
  %and.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i4, label %if.then.sock_prot_inuse_add.exit_crit_edge, !prof !93

if.then.sock_prot_inuse_add.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_prot_inuse_add.exit

if.then.i4:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i4, %if.then.sock_prot_inuse_add.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #12, !srcloc !107
  br label %if.end

if.end:                                           ; preds = %sock_prot_inuse_add.exit, %entry.if.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @dgram_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_hdr_pull(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_getfirstbyhwtype(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee802154_get_dev(ptr noundef %net, ptr nocapture noundef readonly %addr) unnamed_addr #2 align 64 {
entry:
  %hwaddr = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hwaddr) #12
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %1, label %do.end [
    i8 3, label %sw.bb
    i8 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %3 = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #12
  %7 = ptrtoint ptr %hwaddr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %hwaddr, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %sw.bb.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.bb.rcu_read_lock.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.bb
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.bb.rcu_read_lock.exit_crit_edge
  %call = call ptr @dev_getbyhwaddr_rcu(ptr noundef %net, i16 noundef zeroext 804, ptr noundef nonnull %hwaddr) #12
  %tobool.not.i61 = icmp eq ptr %call, null
  br i1 %tobool.not.i61, label %rcu_read_lock.exit.dev_hold.exit_crit_edge, label %do.body1.i

rcu_read_lock.exit.dev_hold.exit_crit_edge:       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %rcu_read_lock.exit
  %12 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !105
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %13 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcpu_refcnt.i, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %21, %15
  %22 = inttoptr i32 %add.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add13.i = add i32 %24, 1
  store i32 %add13.i, ptr %22, align 4
  %25 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !106
  %and.i.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !93

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #12, !srcloc !107
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %rcu_read_lock.exit.dev_hold.exit_crit_edge
  %call.i62 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i62, label %dev_hold.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i65

dev_hold.exit.rcu_read_unlock.exit_crit_edge:     ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i65:                                ; preds = %dev_hold.exit
  %call1.i63 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit_crit_edge, %dev_hold.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  %26 = call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i.i.i.i69 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i70, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %pan_id3 = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 1
  %30 = ptrtoint ptr %pan_id3 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pan_id3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %31)
  %cmp = icmp eq i16 %31, -1
  br i1 %cmp, label %sw.bb2.sw.epilog_crit_edge, label %lor.lhs.false

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %sw.bb2
  %32 = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 8
  %35 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %34, label %if.end [
    i16 -257, label %lor.lhs.false.sw.epilog_crit_edge
    i16 -1, label %lor.lhs.false.sw.epilog_crit_edge94
  ]

lor.lhs.false.sw.epilog_crit_edge94:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end:                                           ; preds = %lor.lhs.false
  tail call void @rtnl_lock() #12
  %dev_base_head = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 16
  %36 = ptrtoint ptr %dev_base_head to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn86 = load ptr, ptr %dev_base_head, align 4
  %cmp15.not87 = icmp eq ptr %.pn86, %dev_base_head
  br i1 %cmp15.not87, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn88 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn86, %if.end.for.body_crit_edge ]
  %type = getelementptr i8, ptr %.pn88, i32 168
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 804, i16 %38)
  %cmp18.not = icmp eq i16 %38, 804
  br i1 %cmp18.not, label %if.end21, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %ieee802154_ptr = getelementptr i8, ptr %.pn88, i32 524
  %39 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ieee802154_ptr, align 4
  %pan_id22 = getelementptr inbounds %struct.wpan_dev, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %pan_id22 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %pan_id22, align 8
  %43 = ptrtoint ptr %pan_id3 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %pan_id3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %44)
  %cmp28 = icmp eq i16 %42, %44
  br i1 %cmp28, label %land.lhs.true, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end21
  %short_addr24 = getelementptr inbounds %struct.wpan_dev, ptr %40, i32 0, i32 8
  %45 = ptrtoint ptr %short_addr24 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %short_addr24, align 2
  %47 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %32, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %48)
  %cmp32 = icmp eq i16 %46, %48
  br i1 %cmp32, label %if.then34, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then34:                                        ; preds = %land.lhs.true
  %tmp.0.le = getelementptr i8, ptr %.pn88, i32 -40
  %tobool.not.i71 = icmp eq ptr %tmp.0.le, null
  br i1 %tobool.not.i71, label %if.then34.for.end_crit_edge, label %do.body1.i80

if.then34.for.end_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body1.i80:                                     ; preds = %if.then34
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !105
  %pcpu_refcnt.i72 = getelementptr i8, ptr %.pn88, i32 940
  %50 = ptrtoint ptr %pcpu_refcnt.i72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcpu_refcnt.i72, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i73 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i73 to ptr
  %cpu.i74 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu.i74 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu.i74, align 4
  %arrayidx.i75 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i75, align 4
  %add.i76 = add i32 %58, %52
  %59 = inttoptr i32 %add.i76 to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add13.i77 = add i32 %61, 1
  store i32 %add13.i77, ptr %59, align 4
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !106
  %and.i.i.i78 = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i78)
  %tobool24.not.i79 = icmp eq i32 %and.i.i.i78, 0
  br i1 %tobool24.not.i79, label %if.then28.i81, label %do.body1.i80.do.end30.i82_crit_edge, !prof !93

do.body1.i80.do.end30.i82_crit_edge:              ; preds = %do.body1.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i82

if.then28.i81:                                    ; preds = %do.body1.i80
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i82

do.end30.i82:                                     ; preds = %if.then28.i81, %do.body1.i80.do.end30.i82_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %49) #12, !srcloc !107
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %63 = ptrtoint ptr %.pn88 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn = load ptr, ptr %.pn88, align 4
  %cmp15.not = icmp eq ptr %.pn, %dev_base_head
  br i1 %cmp15.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end30.i82, %if.then34.for.end_crit_edge, %if.end.for.end_crit_edge
  %dev.0 = phi ptr [ null, %if.then34.for.end_crit_edge ], [ %tmp.0.le, %do.end30.i82 ], [ null, %if.end.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @rtnl_unlock() #12
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %1 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %for.end, %lor.lhs.false.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge94, %sw.bb2.sw.epilog_crit_edge, %rcu_read_unlock.exit
  %dev.1 = phi ptr [ null, %do.end ], [ null, %sw.bb2.sw.epilog_crit_edge ], [ null, %lor.lhs.false.sw.epilog_crit_edge ], [ %dev.0, %for.end ], [ %call, %rcu_read_unlock.exit ], [ null, %lor.lhs.false.sw.epilog_crit_edge94 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hwaddr) #12
  ret ptr %dev.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_getbyhwaddr_rcu(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
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
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_write_timestamp(ptr noundef %sk, i64 noundef %kt) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %sk_stamp_seq = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64
  %lock.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %0 = ptrtoint ptr %sk_stamp_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_stamp_seq, align 4
  %inc.i.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i.i, ptr %sk_stamp_seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 0, i32 0, i32 1
  %2 = tail call ptr @llvm.returnaddress(i32 0) #12
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %3) #12
  %sk_stamp = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 63
  %4 = ptrtoint ptr %sk_stamp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %kt, ptr %sk_stamp, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !114
  %5 = ptrtoint ptr %sk_stamp_seq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sk_stamp_seq, align 4
  %inc.i.i.i = add i32 %6, 1
  store i32 %inc.i.i.i, ptr %sk_stamp_seq, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raw_close(ptr noundef %sk, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sk_common_release(ptr noundef %sk) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @raw_connect(ptr nocapture noundef readnone %sk, ptr nocapture noundef readnone %uaddr, i32 noundef %addr_len) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @raw_disconnect(ptr nocapture noundef readnone %sk, i32 noundef %flags) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @raw_setsockopt(ptr nocapture noundef readnone %sk, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @raw_getsockopt(ptr nocapture noundef readnone %sk, i32 noundef %level, i32 noundef %optname, ptr nocapture noundef readnone %optval, ptr nocapture noundef readnone %optlen) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %size) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !99
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %1 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_flags, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_sendmsg.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@raw_sendmsg, %if.then4)) #12
          to label %cleanup [label %if.then4], !srcloc !92

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_flags, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @raw_sendmsg.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.11, i32 noundef %4) #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #12
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %5 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call ptr @dev_getfirstbyhwtype(ptr noundef %8, i16 noundef zeroext 804) #12
  br label %if.end15

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = tail call ptr @dev_get_by_index(ptr noundef %8, i32 noundef %6) #12
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then8
  %dev.0 = phi ptr [ %call14, %if.else ], [ %call10, %if.then8 ]
  tail call void @release_sock(ptr noundef %sk) #12
  %tobool16.not = icmp eq ptr %dev.0, null
  br i1 %tobool16.not, label %do.body18, label %if.end34

do.body18:                                        ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_sendmsg.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@raw_sendmsg, %if.then30)) #12
          to label %do.end33 [label %if.then30], !srcloc !92

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @raw_sendmsg.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.12) #12
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %do.body18
  %9 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -6, ptr %err, align 4
  br label %out

if.end34:                                         ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_sendmsg.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@raw_sendmsg, %if.then47)) #12
          to label %do.end50 [label %if.then47], !srcloc !92

if.then47:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @raw_sendmsg.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.13, ptr noundef nonnull %dev.0, i32 noundef 127) #12
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %size)
  %cmp = icmp ugt i32 %size, 127
  br i1 %cmp, label %do.body52, label %if.end68

do.body52:                                        ; preds = %do.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_sendmsg.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@raw_sendmsg, %if.then64)) #12
          to label %do.end67 [label %if.then64], !srcloc !92

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @raw_sendmsg.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.14, i32 noundef %size, i32 noundef 127) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %do.body52
  %10 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -90, ptr %err, align 4
  br label %do.body1.i159

if.end68:                                         ; preds = %do.end50
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 19
  %11 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %12 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 21
  %13 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %needed_headroom, align 8
  %conv69 = zext i16 %14 to i32
  %add = add nuw nsw i32 %conv69, %conv
  %and70 = and i32 %add, 131056
  %add71 = add nuw nsw i32 %and70, 16
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 22
  %15 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %needed_tailroom, align 2
  %conv72 = zext i16 %16 to i32
  %add73 = add nuw nsw i32 %conv72, %size
  %add74 = add nuw nsw i32 %add73, %add71
  %17 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_flags, align 4
  %and76 = and i32 %18, 64
  %call77 = call ptr @sock_alloc_send_skb(ptr noundef %sk, i32 noundef %add74, i32 noundef %and76, ptr noundef nonnull %err) #12
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %if.end68.do.body1.i159_crit_edge, label %if.end80

if.end68.do.body1.i159_crit_edge:                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i159

if.end80:                                         ; preds = %if.end68
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call77, i32 0, i32 19
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %add71
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call77, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %22, i32 %add71
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call77, i32 0, i32 18
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call77, i32 0, i32 15, i32 0, i32 21
  %25 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call77, i32 0, i32 15, i32 0, i32 20
  %26 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %network_header.i, align 4
  %call81 = call ptr @skb_put(ptr noundef nonnull %call77, i32 noundef %size) #12
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__check_object_size(ptr noundef %call81, i32 noundef %size, i1 noundef zeroext false) #12
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %call81, i32 noundef %size, ptr noundef %msg_iter.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i.i, i32 %size)
  %cmp.i.i = icmp eq i32 %call3.i.i.i, %size
  br i1 %cmp.i.i, label %do.body1.i, label %out_skb, !prof !101

do.body1.i:                                       ; preds = %if.end80
  %27 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %err, align 4
  %28 = getelementptr inbounds %struct.anon.0, ptr %call77, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev.0, ptr %28, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call77, i32 0, i32 15, i32 0, i32 18
  %30 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 246, ptr %protocol, align 8
  %call87 = call i32 @dev_queue_xmit(ptr noundef nonnull %call77) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp sgt i32 %call87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call87)
  %cmp91.not = icmp eq i32 %call87, 2
  %cond = select i1 %cmp91.not, i32 0, i32 -105
  %storemerge = select i1 %cmp88, i32 %cond, i32 %call87
  %31 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge, ptr %err, align 4
  %32 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !105
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 118
  %33 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcpu_refcnt.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %41, %35
  %42 = inttoptr i32 %add.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add13.i = add i32 %44, -1
  store i32 %add13.i, ptr %42, align 4
  %45 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !106
  %and.i.i.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !93

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #12, !srcloc !107
  %46 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool94.not = icmp eq i32 %47, 0
  %cond95 = select i1 %tobool94.not, i32 %size, i32 %47
  br label %cleanup

out_skb:                                          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %call3.i.i.i) #12
  %48 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -14, ptr %err, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call77, i32 noundef 0) #12
  br label %do.body1.i159

do.body1.i159:                                    ; preds = %out_skb, %if.end68.do.body1.i159_crit_edge, %do.end67
  %49 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !105
  %pcpu_refcnt.i151 = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 118
  %50 = ptrtoint ptr %pcpu_refcnt.i151 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcpu_refcnt.i151, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i152 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i152 to ptr
  %cpu.i153 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu.i153 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu.i153, align 4
  %arrayidx.i154 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx.i154 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i154, align 4
  %add.i155 = add i32 %58, %52
  %59 = inttoptr i32 %add.i155 to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add13.i156 = add i32 %61, -1
  store i32 %add13.i156, ptr %59, align 4
  %62 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !106
  %and.i.i.i157 = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i157)
  %tobool24.not.i158 = icmp eq i32 %and.i.i.i157, 0
  br i1 %tobool24.not.i158, label %if.then28.i160, label %do.body1.i159.dev_put.exit162_crit_edge, !prof !93

do.body1.i159.dev_put.exit162_crit_edge:          ; preds = %do.body1.i159
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit162

if.then28.i160:                                   ; preds = %do.body1.i159
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %dev_put.exit162

dev_put.exit162:                                  ; preds = %if.then28.i160, %do.body1.i159.dev_put.exit162_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %49) #12, !srcloc !107
  br label %out

out:                                              ; preds = %dev_put.exit162, %do.end33
  %63 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %dev_put.exit, %if.then4, %do.body
  %retval.0 = phi i32 [ %64, %out ], [ %cond95, %dev_put.exit ], [ -95, %if.then4 ], [ -95, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %noblock, i32 noundef %flags, ptr nocapture noundef readnone %addr_len) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -95, ptr %err, align 4
  %call = call ptr @skb_recv_datagram(ptr noundef %sk, i32 noundef %flags, i32 noundef %noblock, ptr noundef nonnull %err) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %len)
  %cmp = icmp ugt i32 %2, %len
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %3 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_flags, align 4
  %or = or i32 %4, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %copied.0 = phi i32 [ %len, %if.then2 ], [ %2, %if.end.if.end3_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #12
  %5 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.done_crit_edge

if.end3.done_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end7:                                          ; preds = %if.end3
  %6 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %and.i = and i32 %8, 133120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end7.if.then.i_crit_edge

if.end7.if.then.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end7
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %9 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sk_tsflags.i, align 8
  %11 = and i16 %10, 80
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool2.not.i = icmp eq i16 %11, 0
  br i1 %tobool2.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end7.if.then.i_crit_edge
  call void @__sock_recv_ts_and_drops(ptr noundef %msg, ptr noundef %sk, ptr noundef nonnull %call) #12
  br label %sock_recv_ts_and_drops.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %6, align 4
  %14 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %if.else6.i, label %if.then5.i, !prof !101

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %15, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %sk, i64 noundef %17) #12
  br label %sock_recv_ts_and_drops.exit

if.else6.i:                                       ; preds = %if.else.i
  %sk_stamp.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 63
  %18 = ptrtoint ptr %sk_stamp.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sk_stamp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1000000000, i64 %19)
  %cmp.i = icmp eq i64 %19, -1000000000
  br i1 %cmp.i, label %if.then14.i, label %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, !prof !93

if.else6.i.sock_recv_ts_and_drops.exit_crit_edge: ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_recv_ts_and_drops.exit

if.then14.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @sock_write_timestamp(ptr noundef %sk, i64 noundef 0) #12
  br label %sock_recv_ts_and_drops.exit

sock_recv_ts_and_drops.exit:                      ; preds = %if.then14.i, %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, %if.then5.i, %if.then.i
  %and = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %sock_recv_ts_and_drops.exit.done_crit_edge, label %if.then9

sock_recv_ts_and_drops.exit.done_crit_edge:       ; preds = %sock_recv_ts_and_drops.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then9:                                         ; preds = %sock_recv_ts_and_drops.exit
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len1, align 4
  br label %done

done:                                             ; preds = %if.then9, %sock_recv_ts_and_drops.exit.done_crit_edge, %if.end3.done_crit_edge
  %copied.1 = phi i32 [ %copied.0, %if.end3.done_crit_edge ], [ %21, %if.then9 ], [ %copied.0, %sock_recv_ts_and_drops.exit.done_crit_edge ]
  call void @skb_free_datagram(ptr noundef %sk, ptr noundef nonnull %call) #12
  br label %out

out:                                              ; preds = %done, %entry.out_crit_edge
  %copied.2 = phi i32 [ %copied.1, %done ], [ 0, %entry.out_crit_edge ]
  %22 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.not = icmp eq i32 %23, 0
  %copied.2. = select i1 %tobool12.not, i32 %copied.2, i32 %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret i32 %copied.2.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_bind(ptr noundef %sk, ptr nocapture noundef readonly %_uaddr, i32 noundef %len) #2 align 64 {
entry:
  %addr = alloca %struct.ieee802154_addr, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #12
  %0 = call ptr @memset(ptr %addr, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %len)
  %cmp = icmp ult i32 %len, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %_uaddr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %_uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %2)
  %cmp1.not = icmp eq i16 %2, 36
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #12
  %addr5 = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %_uaddr, i32 0, i32 1
  %3 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr5, align 4
  %conv.i = trunc i32 %4 to i8
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %addr, align 8
  %pan_id.i = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %_uaddr, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pan_id.i, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #12
  %pan_id1.i = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 1
  %9 = ptrtoint ptr %pan_id1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %pan_id1.i, align 2
  %10 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %conv.i, label %if.end4.ieee802154_addr_from_sa.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb4.i
  ]

if.end4.ieee802154_addr_from_sa.exit_crit_edge:   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %ieee802154_addr_from_sa.exit

sw.bb.i:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %11 = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %_uaddr, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #12
  %15 = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %14, ptr %15, align 8
  br label %ieee802154_addr_from_sa.exit

sw.bb4.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %17 = getelementptr inbounds %struct.sockaddr_ieee802154, ptr %_uaddr, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %temp.0.copyload.i.i = load i64, ptr %17, align 1
  %19 = tail call i64 @llvm.bswap.i64(i64 %temp.0.copyload.i.i) #12
  %20 = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %19, ptr %20, align 8
  br label %ieee802154_addr_from_sa.exit

ieee802154_addr_from_sa.exit:                     ; preds = %sw.bb4.i, %sw.bb.i, %if.end4.ieee802154_addr_from_sa.exit_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %22 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skc_net.i, align 4
  %call6 = call fastcc ptr @ieee802154_get_dev(ptr noundef %23, ptr noundef nonnull %addr)
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %ieee802154_addr_from_sa.exit.out_crit_edge, label %do.body1.i

ieee802154_addr_from_sa.exit.out_crit_edge:       ; preds = %ieee802154_addr_from_sa.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body1.i:                                       ; preds = %ieee802154_addr_from_sa.exit
  %ifindex = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 17
  %24 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ifindex, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %26 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %skc_bound_dev_if, align 4
  %skc_tx_queue_mapping.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 16
  %27 = ptrtoint ptr %skc_tx_queue_mapping.i.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i.i, align 4
  %sk_dst_pending_confirm.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %28 = ptrtoint ptr %sk_dst_pending_confirm.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %sk_dst_pending_confirm.i.i, align 8
  %sk_dst_cache.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_dst_cache.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %sk_dst_cache.i.i, i32 1, i32 3, i32 1) #12
  %29 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_dst_cache.i.i) #12, !srcloc !116
  %asmresult.i.i.i = extractvalue { i32, i32 } %29, 0
  %30 = inttoptr i32 %asmresult.i.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !117
  tail call void @dst_release(ptr noundef %30) #12
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !105
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 118
  %32 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcpu_refcnt.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %40, %34
  %41 = inttoptr i32 %add.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add13.i = add i32 %43, -1
  store i32 %add13.i, ptr %41, align 4
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !106
  %and.i.i.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !93

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #12, !srcloc !107
  br label %out

out:                                              ; preds = %dev_put.exit, %ieee802154_addr_from_sa.exit.out_crit_edge
  %err.0 = phi i32 [ 0, %dev_put.exit ], [ -19, %ieee802154_addr_from_sa.exit.out_crit_edge ]
  tail call void @release_sock(ptr noundef %sk) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_hash(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @raw_lock) #12
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #12, !srcloc !108
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !93

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !101

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = load ptr, ptr @raw_head, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %2, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %sock_hold.exit.i.sk_add_node.exit_crit_edge, label %do.body12.i.i.i

sock_hold.exit.i.sk_add_node.exit_crit_edge:      ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_add_node.exit

do.body12.i.i.i:                                  ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %2, ptr %pprev.i.i.i, align 4
  br label %sk_add_node.exit

sk_add_node.exit:                                 ; preds = %do.body12.i.i.i, %sock_hold.exit.i.sk_add_node.exit_crit_edge
  store volatile ptr %2, ptr @raw_head, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %6 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr @raw_head, ptr %pprev34.i.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @raw_lock) #12
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %9 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_prot, align 8
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !105
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 29, i32 2
  %12 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prot_inuse.i, align 8
  %inuse_idx.i = getelementptr inbounds %struct.proto, ptr %10, i32 0, i32 26
  %14 = ptrtoint ptr %inuse_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inuse_idx.i, align 4
  %arrayidx.i = getelementptr %struct.prot_inuse, ptr %13, i32 0, i32 1, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %22, %16
  %23 = inttoptr i32 %add.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add15.i = add i32 %25, 1
  store i32 %add15.i, ptr %23, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !106
  %and.i.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sk_add_node.exit.sock_prot_inuse_add.exit_crit_edge, !prof !93

sk_add_node.exit.sock_prot_inuse_add.exit_crit_edge: ; preds = %sk_add_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_prot_inuse_add.exit

if.then.i:                                        ; preds = %sk_add_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i, %sk_add_node.exit.sock_prot_inuse_add.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #12, !srcloc !107
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raw_unhash(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @raw_lock) #12
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i.i.not, label %entry.if.end_crit_edge, label %if.then.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i.i:                                      ; preds = %entry
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %1, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %1, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %7 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #12
  %8 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !93

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 729, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #12, !srcloc !110
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.if.then_crit_edge, !prof !93

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #12
  br label %if.then

if.then:                                          ; preds = %if.then3.i.i.i.i, %if.end.i.if.then_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %11 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_net.i, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %13 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_prot, align 8
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !105
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %12, i32 0, i32 29, i32 2
  %16 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prot_inuse.i, align 8
  %inuse_idx.i = getelementptr inbounds %struct.proto, ptr %14, i32 0, i32 26
  %18 = ptrtoint ptr %inuse_idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inuse_idx.i, align 4
  %arrayidx.i = getelementptr %struct.prot_inuse, ptr %17, i32 0, i32 1, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %26, %20
  %27 = inttoptr i32 %add.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add15.i = add i32 %29, -1
  store i32 %add15.i, ptr %27, align 4
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !106
  %and.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i4, label %if.then.sock_prot_inuse_add.exit_crit_edge, !prof !93

if.then.sock_prot_inuse_add.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_prot_inuse_add.exit

if.then.i4:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i4, %if.then.sock_prot_inuse_add.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #12, !srcloc !107
  br label %if.end

if.end:                                           ; preds = %sock_prot_inuse_add.exit, %entry.if.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @raw_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee802154_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  %conv = sext i16 %1 to i32
  %2 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %conv, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call1 = tail call zeroext i1 @capable(i32 noundef 13) #12
  br i1 %call1, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %proto.0 = phi ptr [ @ieee802154_raw_prot, %sw.bb.sw.epilog_crit_edge ], [ @ieee802154_dgram_prot, %if.end.sw.epilog_crit_edge ]
  %ops.0 = phi ptr [ @ieee802154_raw_ops, %sw.bb.sw.epilog_crit_edge ], [ @ieee802154_dgram_ops, %if.end.sw.epilog_crit_edge ]
  %call5 = tail call ptr @sk_alloc(ptr noundef nonnull @init_net, i32 noundef 36, i32 noundef 3264, ptr noundef nonnull %proto.0, i32 noundef %kern) #12
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %sw.epilog.cleanup_crit_edge, label %if.end8

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %sw.epilog
  %ops9 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %3 = ptrtoint ptr %ops9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ops.0, ptr %ops9, align 4
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call5) #12
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call5, i32 0, i32 82
  %4 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ieee802154_sock_destruct, ptr %sk_destruct, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %call5, i32 0, i32 3
  %5 = ptrtoint ptr %skc_family to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 36, ptr %skc_family, align 8
  %6 = getelementptr inbounds %struct.sock_common, ptr %call5, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %or.i.i = or i32 %8, 256
  store i32 %or.i.i, ptr %6, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %call5, i32 0, i32 8
  %9 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_prot, align 8
  %hash = getelementptr inbounds %struct.proto, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hash, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %if.end8.if.end20_crit_edge, label %if.then12

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then12:                                        ; preds = %if.end8
  %call16 = tail call i32 %12(ptr noundef nonnull %call5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then12.if.end20_crit_edge, label %if.then12.cleanup.sink.split_crit_edge

if.then12.cleanup.sink.split_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.end20:                                         ; preds = %if.then12.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %13 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_prot, align 8
  %init = getelementptr inbounds %struct.proto, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init, align 4
  %tobool23.not = icmp eq ptr %16, null
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.then24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then24:                                        ; preds = %if.end20
  %call28 = tail call i32 %16(ptr noundef nonnull %call5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then24.cleanup_crit_edge, label %if.then24.cleanup.sink.split_crit_edge

if.then24.cleanup.sink.split_crit_edge:           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then24.cleanup.sink.split_crit_edge, %if.then12.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call16, %if.then12.cleanup.sink.split_crit_edge ], [ %call28, %if.then24.cleanup.sink.split_crit_edge ]
  tail call void @sk_common_release(ptr noundef nonnull %call5) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -97, %entry.cleanup_crit_edge ], [ 0, %if.then24.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ], [ -1, %sw.bb.cleanup_crit_edge ], [ -94, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee802154_sock_destruct(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee802154_sock_release(ptr nocapture noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sk1, align 16
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_prot, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void %6(ptr noundef nonnull %1, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee802154_sock_bind(ptr noundef %sock, ptr noundef %uaddr, i32 noundef %addr_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_prot, align 8
  %bind = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %bind to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bind, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef %1, ptr noundef %uaddr, i32 noundef %addr_len) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 @sock_no_bind(ptr noundef %sock, ptr noundef %uaddr, i32 noundef %addr_len) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee802154_sock_connect(ptr nocapture noundef readonly %sock, ptr noundef %uaddr, i32 noundef %addr_len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp2 = icmp eq i16 %3, 0
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_prot, align 8
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %disconnect = getelementptr inbounds %struct.proto, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disconnect, align 4
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %flags) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %connect = getelementptr inbounds %struct.proto, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connect, align 4
  %call8 = tail call i32 %9(ptr noundef %1, ptr noundef %uaddr, i32 noundef %addr_len) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ %call8, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee802154_sock_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %ifr.i = alloca %struct.ifreq, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %cmd.off = add i32 %cmd, -35093
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd.off)
  %switch = icmp ult i32 %cmd.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %2 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ifr.i) #12
  %3 = call ptr @memset(ptr %ifr.i, i32 255, i32 32)
  %call.i = call i32 @get_user_ifreq(ptr noundef nonnull %ifr.i, ptr noundef null, ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.ieee802154_dev_ioctl.exit_crit_edge

sw.bb.ieee802154_dev_ioctl.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %ieee802154_dev_ioctl.exit

if.end.i:                                         ; preds = %sw.bb
  %arrayidx.i = getelementptr inbounds [16 x i8], ptr %ifr.i, i32 0, i32 15
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx.i, align 1
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i.i, align 4
  call void @dev_load(ptr noundef %6, ptr noundef nonnull %ifr.i) #12
  %7 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i.i, align 4
  %call6.i = call ptr @dev_get_by_name(ptr noundef %8, ptr noundef nonnull %ifr.i) #12
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end.i.ieee802154_dev_ioctl.exit_crit_edge, label %if.end9.i

if.end.i.ieee802154_dev_ioctl.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ieee802154_dev_ioctl.exit

if.end9.i:                                        ; preds = %if.end.i
  %type.i = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 32
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 804, i16 %10)
  %cmp.i = icmp eq i16 %10, 804
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end9.i.do.body1.i.i_crit_edge

if.end9.i.do.body1.i.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 16
  %11 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_do_ioctl.i = getelementptr inbounds %struct.net_device_ops, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %ndo_do_ioctl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndo_do_ioctl.i, align 4
  %tobool11.not.i = icmp eq ptr %14, null
  br i1 %tobool11.not.i, label %land.lhs.true.i.do.body1.i.i_crit_edge, label %if.end16.i

land.lhs.true.i.do.body1.i.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i.i

if.end16.i:                                       ; preds = %land.lhs.true.i
  %call15.i = call i32 %14(ptr noundef nonnull %call6.i, ptr noundef nonnull %ifr.i, i32 noundef %cmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool17.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true18.i, label %if.end16.i.do.body1.i.i_crit_edge

if.end16.i.do.body1.i.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i.i

land.lhs.true18.i:                                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %call19.i = call i32 @put_user_ifreq(ptr noundef nonnull %ifr.i, ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  %spec.select.i = select i1 %tobool20.not.i, i32 0, i32 -14
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %land.lhs.true18.i, %if.end16.i.do.body1.i.i_crit_edge, %land.lhs.true.i.do.body1.i.i_crit_edge, %if.end9.i.do.body1.i.i_crit_edge
  %ret.1.i = phi i32 [ %call15.i, %if.end16.i.do.body1.i.i_crit_edge ], [ %spec.select.i, %land.lhs.true18.i ], [ -515, %land.lhs.true.i.do.body1.i.i_crit_edge ], [ -515, %if.end9.i.do.body1.i.i_crit_edge ]
  %15 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !105
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 118
  %16 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = call i32 @llvm.read_register.i32(metadata !82) #12
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add13.i.i = add i32 %27, -1
  store i32 %add13.i.i, ptr %25, align 4
  %28 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !106
  %and.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !93

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #12, !srcloc !107
  br label %ieee802154_dev_ioctl.exit

ieee802154_dev_ioctl.exit:                        ; preds = %dev_put.exit.i, %if.end.i.ieee802154_dev_ioctl.exit_crit_edge, %sw.bb.ieee802154_dev_ioctl.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.1.i, %dev_put.exit.i ], [ -14, %sw.bb.ieee802154_dev_ioctl.exit_crit_edge ], [ -19, %if.end.i.ieee802154_dev_ioctl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ifr.i) #12
  br label %cleanup

sw.default:                                       ; preds = %entry
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skc_prot, align 8
  %ioctl = getelementptr inbounds %struct.proto, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioctl, align 4
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %sw.default.cleanup_crit_edge, label %if.end

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 %32(ptr noundef %1, i32 noundef %cmd, i32 noundef %arg) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.default.cleanup_crit_edge, %ieee802154_dev_ioctl.exit
  %retval.0 = phi i32 [ %call5, %if.end ], [ %retval.0.i, %ieee802154_dev_ioctl.exit ], [ -515, %sw.default.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee802154_sock_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_prot, align 8
  %sendmsg = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sendmsg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sendmsg, align 4
  %call = tail call i32 %5(ptr noundef %1, ptr noundef %msg, i32 noundef %len) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_ifreq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_load(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_user_ifreq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !22, !24, !26, !27, !29, !31, !33, !34, !36, !38, !40, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !65, !67, !69, !70, !72, !74, !76, !78, !80}
!llvm.named.register.sp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_ieee802154_socket__498_1129_af_ieee802154_init6, !1, !"__initcall__kmod_ieee802154_socket__498_1129_af_ieee802154_init6", i1 false, i1 false}
!1 = !{!"../net/ieee802154/socket.c", i32 1129, i32 1}
!2 = !{ptr @__exitcall_af_ieee802154_remove, !3, !"__exitcall_af_ieee802154_remove", i1 false, i1 false}
!3 = !{!"../net/ieee802154/socket.c", i32 1130, i32 1}
!4 = !{ptr @__UNIQUE_ID_file499, !5, !"__UNIQUE_ID_file499", i1 false, i1 false}
!5 = !{!"../net/ieee802154/socket.c", i32 1132, i32 1}
!6 = !{ptr @__UNIQUE_ID_license500, !5, !"__UNIQUE_ID_license500", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias501, !8, !"__UNIQUE_ID_alias501", i1 false, i1 false}
!8 = !{!"../net/ieee802154/socket.c", i32 1133, i32 1}
!9 = !{ptr @ieee802154_packet_type, !10, !"ieee802154_packet_type", i1 false, i1 false}
!10 = !{!"../net/ieee802154/socket.c", i32 1087, i32 27}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/ieee802154/socket.c", i32 1065, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ieee802154_rcv.__UNIQUE_ID_ddebug497, !12, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/ieee802154/socket.c", i32 171, i32 8}
!19 = !{ptr @raw_lock, !18, !"raw_lock", i1 false, i1 false}
!20 = !{ptr @raw_head, !21, !"raw_head", i1 false, i1 false}
!21 = !{!"../net/ieee802154/socket.c", i32 170, i32 8}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ieee802154/socket.c", i32 429, i32 8}
!26 = !{ptr @dgram_lock, !25, !"dgram_lock", i1 false, i1 false}
!27 = !{ptr @dgram_head, !28, !"dgram_head", i1 false, i1 false}
!28 = !{!"../net/ieee802154/socket.c", i32 428, i32 8}
!29 = !{ptr @ieee802154_dgram_prot, !30, !"ieee802154_dgram_prot", i1 false, i1 false}
!30 = !{!"../net/ieee802154/socket.c", i32 946, i32 21}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ieee802154/socket.c", i32 611, i32 3}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dgram_sendmsg.__UNIQUE_ID_ddebug489, !39, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/ieee802154/socket.c", i32 626, i32 3}
!44 = !{ptr @dgram_sendmsg.__UNIQUE_ID_ddebug490, !43, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/ieee802154/socket.c", i32 631, i32 2}
!47 = !{ptr @dgram_sendmsg.__UNIQUE_ID_ddebug491, !46, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/ieee802154/socket.c", i32 634, i32 3}
!50 = !{ptr @dgram_sendmsg.__UNIQUE_ID_ddebug492, !49, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/ieee802154/socket.c", i32 72, i32 3}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ieee802154_get_dev._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ieee802154_get_dev._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!58 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!62 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/net/sock.h", i32 729, i32 3}
!65 = !{ptr @ieee802154_raw_prot, !66, !"ieee802154_raw_prot", i1 false, i1 false}
!66 = !{!"../net/ieee802154/socket.c", i32 389, i32 21}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/ieee802154/socket.c", i32 249, i32 3}
!69 = !{ptr @raw_sendmsg.__UNIQUE_ID_ddebug485, !68, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!70 = !{ptr @raw_sendmsg.__UNIQUE_ID_ddebug486, !71, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!71 = !{!"../net/ieee802154/socket.c", i32 261, i32 3}
!72 = !{ptr @raw_sendmsg.__UNIQUE_ID_ddebug487, !73, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!73 = !{!"../net/ieee802154/socket.c", i32 267, i32 2}
!74 = !{ptr @raw_sendmsg.__UNIQUE_ID_ddebug488, !75, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!75 = !{!"../net/ieee802154/socket.c", i32 270, i32 3}
!76 = !{ptr @ieee802154_family_ops, !77, !"ieee802154_family_ops", i1 false, i1 false}
!77 = !{!"../net/ieee802154/socket.c", i32 1054, i32 38}
!78 = !{ptr @ieee802154_raw_ops, !79, !"ieee802154_raw_ops", i1 false, i1 false}
!79 = !{!"../net/ieee802154/socket.c", i32 405, i32 31}
!80 = !{ptr @ieee802154_dgram_ops, !81, !"ieee802154_dgram_ops", i1 false, i1 false}
!81 = !{!"../net/ieee802154/socket.c", i32 964, i32 31}
!82 = !{!"sp"}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148184528, i64 2148184533, i64 2148184546, i64 2148184590, i64 2148184624, i64 2148184645}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i64 4727507}
!95 = !{i64 4727704}
!96 = !{i64 2152212937}
!97 = !{i64 2157377643, i64 2157377923, i64 2157378257, i64 2157378591}
!98 = !{i64 2157386506, i64 2157386786, i64 2157387120, i64 2157387454}
!99 = !{!"auto-init"}
!100 = !{i64 2152231952, i64 2152231977}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2157416575, i64 2157416855, i64 2157417189, i64 2157417523}
!103 = !{i64 2157427949, i64 2157428229, i64 2157428563, i64 2157428897}
!104 = !{i64 2152232633, i64 2152232658}
!105 = !{i64 759163, i64 759224}
!106 = !{i64 761895}
!107 = !{i64 762180}
!108 = !{i64 2148366435, i64 2148366467, i64 2148366496, i64 2148366530, i64 2148366561, i64 2148366584}
!109 = !{i64 2148454436}
!110 = !{i64 2148368900, i64 2148368932, i64 2148368961, i64 2148368995, i64 2148369026, i64 2148369049}
!111 = !{i64 2149409711}
!112 = !{i64 2149409977}
!113 = !{i64 2150218617}
!114 = !{i64 2150218942}
!115 = !{i64 2156881809}
!116 = !{i64 871673, i64 871690, i64 871714, i64 871740, i64 871758}
!117 = !{i64 2156882154}
