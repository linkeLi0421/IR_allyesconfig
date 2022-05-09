; ModuleID = '/llk/IR_all_yes/net/can/bcm.c_pt.bc'
source_filename = "../net/can/bcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.can_proto = type { i32, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.70, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.70 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.bcm_sock = type { %struct.sock, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [32 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.bcm_op = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.bcm_timeval, %struct.bcm_timeval, %struct.hrtimer, %struct.hrtimer, i64, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, [4 x i8], %struct.canfd_frame, %struct.canfd_frame, ptr, ptr }
%struct.bcm_timeval = type { i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.144 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.89, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.89 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sockaddr_can = type { i16, i32, %union.anon.146 }
%union.anon.146 = type { %struct.anon.148 }
%struct.anon.148 = type { i64, i32, i8 }
%struct.bcm_msg_head = type { i32, i32, i32, %struct.bcm_timeval, %struct.bcm_timeval, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.145, i8, i8, i8, [8 x i8] }
%union.anon.145 = type { i8 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.126, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.127, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.128, ptr, %struct.address_space, %struct.list_head, %union.anon.129, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.126 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.127 = type { %struct.callback_head }
%union.anon.128 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.129 = type { ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.timerqueue_head = type { %struct.rb_root_cached }

@__UNIQUE_ID_description457 = internal constant [54 x i8] c"can_bcm.description=PF_CAN broadcast manager protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_file458 = internal constant [29 x i8] c"can_bcm.file=net/can/can-bcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license459 = internal constant [29 x i8] c"can_bcm.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author460 = internal constant [63 x i8] c"can_bcm.author=Oliver Hartkopp <oliver.hartkopp@volkswagen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias461 = internal constant [26 x i8] c"can_bcm.alias=can-proto-2\00", section ".modinfo", align 1
@bcm_can_proto = internal constant { %struct.can_proto, [16 x i8] } { %struct.can_proto { i32 2, i32 2, ptr @bcm_ops, ptr @bcm_proto }, [16 x i8] zeroinitializer }, align 32
@canbcm_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @bcm_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@canbcm_pernet_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @canbcm_pernet_init, ptr null, ptr @canbcm_pernet_exit, ptr null, ptr null, i32 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_can_bcm__465_1758_bcm_module_init6 = internal global ptr @bcm_module_init, section ".initcall6.init", align 4
@__exitcall_bcm_module_exit = internal global ptr @bcm_module_exit, section ".exitcall.exit", align 4
@bcm_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 29, ptr null, ptr @bcm_release, ptr @sock_no_bind, ptr @bcm_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @datagram_poll, ptr @bcm_sock_no_ioctlcmd, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @bcm_sendmsg, ptr @bcm_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bcm_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1032, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.70 zeroinitializer, ptr null, [32 x i8] c"CAN_BCM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, section ".data..read_mostly", align 4
@bcm_notifier_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@bcm_busy_notifier = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm_notifier_lock\00", [46 x i8] zeroinitializer }, align 32
@bcm_rx_unreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013can-bcm: bcm_rx_unreg: registered device mismatch %p %p\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm_rx_unreg\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/can/bcm.c\00", [18 x i8] zeroinitializer }, align 32
@bcm_rx_unreg._entry_ptr = internal global ptr @bcm_rx_unreg._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%lu\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c">>> socket %pK\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" / sk %pK\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" / bo %pK\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" / dropped %lu\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" / bound %s\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" <<<\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_op: %03X %-5s \00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"(%u)\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"[%u]\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%c \00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timeo=%lld \00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"thr=%lld \00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"# recv %ld (%ld) => reduction: \00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s%ld%%\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"near \00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_op: %03X %s \00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"(%u) \00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%u] \00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"t1=%lld \00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"t2=%lld \00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"# sent %ld\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"any\00", [28 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bcm\00", [28 x i8] zeroinitializer }, align 32
@bcm_notifier_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @bcm_notifier_list, ptr @bcm_notifier_list }, [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"can-bcm\00", [24 x i8] zeroinitializer }, align 32
@bcm_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 1738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016can: broadcast manager protocol\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm_module_init\00", [16 x i8] zeroinitializer }, align 32
@bcm_module_init._entry_ptr = internal global ptr @bcm_module_init._entry, section ".printk_index", align 4
@bcm_module_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 1742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013can: registration of bcm protocol failed\0A\00", [52 x i8] zeroinitializer }, align 32
@bcm_module_init._entry_ptr.40 = internal global ptr @bcm_module_init._entry.38, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"bcm_can_proto\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1699, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"canbcm_notifier\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1730, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant [8 x i8] c"bcm_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1673, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"bcm_notifier_lock\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"bcm_busy_notifier\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 138, i32 25 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 137, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 744, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1610, i32 25 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 200, i32 16 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 201, i32 16 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 202, i32 16 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 203, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 204, i32 16 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 205, i32 16 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 215, i32 17 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 219, i32 18 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 221, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 223, i32 17 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 226, i32 18 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 230, i32 18 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 233, i32 17 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 238, i32 17 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 239, i32 28 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 239, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 244, i32 17 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 248, i32 18 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 250, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 253, i32 18 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 257, i32 18 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 260, i32 17 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 179, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 695, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 723, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 230, i32 6 }
@___asan_gen_.159 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 214, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1205, i32 13 }
@___asan_gen_.164 = private unnamed_addr constant [18 x i8] c"bcm_notifier_list\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 136, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1710, i32 45 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1738, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private constant [17 x i8] c"../net/can/bcm.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1742, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_alias461, ptr @__UNIQUE_ID_author460, ptr @__UNIQUE_ID_description457, ptr @__UNIQUE_ID_file458, ptr @__UNIQUE_ID_license459, ptr @__exitcall_bcm_module_exit, ptr @__initcall__kmod_can_bcm__465_1758_bcm_module_init6, ptr @bcm_module_exit, ptr @bcm_module_init._entry, ptr @bcm_module_init._entry.38, ptr @bcm_module_init._entry_ptr, ptr @bcm_module_init._entry_ptr.40, ptr @bcm_rx_unreg._entry, ptr @bcm_rx_unreg._entry_ptr, ptr @bcm_can_proto, ptr @canbcm_notifier, ptr @bcm_ops, ptr @bcm_notifier_lock, ptr @bcm_busy_notifier, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @bcm_notifier_list, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_can_proto to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @canbcm_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_notifier_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_busy_notifier to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_rx_unreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_notifier_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_module_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @can_proto_unregister(ptr noundef nonnull @bcm_can_proto) #15
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @canbcm_notifier) #15
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @canbcm_pernet_ops) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #18
  %call1 = tail call i32 @can_proto_register(ptr noundef nonnull @bcm_can_proto) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @canbcm_pernet_ops) #15
  %call8 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @canbcm_notifier) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end4
  %retval.0 = phi i32 [ %call1, %do.end4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_release(ptr nocapture noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @bcm_notifier_lock) #15
  %4 = load ptr, ptr @bcm_busy_notifier, align 4
  %cmp160 = icmp eq ptr %4, %1
  br i1 %cmp160, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bcm_notifier_lock) #15
  %call3 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @bcm_notifier_lock) #15
  %5 = load ptr, ptr @bcm_busy_notifier, align 4
  %cmp = icmp eq ptr %5, %1
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %notifier = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %notifier) #15
  br i1 %call.i.i, label %if.end.i.i, label %while.end.list_del.exit_crit_edge

while.end.list_del.exit_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %notifier, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %notifier, align 4
  %prev.i = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bcm_notifier_lock) #15
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #15
  %tx_ops = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %tx_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_ops, align 8
  %cmp11.not161 = icmp eq ptr %15, %tx_ops
  br i1 %cmp11.not161, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %bcm_remove_op.exit.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %op.0162 = phi ptr [ %next.0, %bcm_remove_op.exit.for.body_crit_edge ], [ %15, %list_del.exit.for.body_crit_edge ]
  %16 = ptrtoint ptr %op.0162 to i32
  call void @__asan_load4_noabort(i32 %16)
  %next.0 = load ptr, ptr %op.0162, align 8
  %timer.i = getelementptr inbounds %struct.bcm_op, ptr %op.0162, i32 0, i32 8
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %timer.i) #15
  %thrtimer.i = getelementptr inbounds %struct.bcm_op, ptr %op.0162, i32 0, i32 9
  %call1.i = tail call i32 @hrtimer_cancel(ptr noundef %thrtimer.i) #15
  %frames.i = getelementptr inbounds %struct.bcm_op, ptr %op.0162, i32 0, i32 19
  %17 = ptrtoint ptr %frames.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %frames.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  %sframe.i = getelementptr inbounds %struct.bcm_op, ptr %op.0162, i32 0, i32 22
  %cmp.not.i = icmp eq ptr %18, %sframe.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %18) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %last_frames.i = getelementptr inbounds %struct.bcm_op, ptr %op.0162, i32 0, i32 20
  %19 = ptrtoint ptr %last_frames.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %last_frames.i, align 8
  %tobool4.not.i = icmp eq ptr %20, null
  %last_sframe.i = getelementptr inbounds %struct.bcm_op, ptr %op.0162, i32 0, i32 23
  %cmp7.not.i = icmp eq ptr %20, %last_sframe.i
  %or.cond22.i = select i1 %tobool4.not.i, i1 true, i1 %cmp7.not.i
  br i1 %or.cond22.i, label %if.end.i.bcm_remove_op.exit_crit_edge, label %if.then8.i

if.end.i.bcm_remove_op.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_remove_op.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %20) #15
  br label %bcm_remove_op.exit

bcm_remove_op.exit:                               ; preds = %if.then8.i, %if.end.i.bcm_remove_op.exit_crit_edge
  tail call void @kfree(ptr noundef %op.0162) #15
  %cmp11.not = icmp eq ptr %next.0, %tx_ops
  br i1 %cmp11.not, label %bcm_remove_op.exit.for.end_crit_edge, label %bcm_remove_op.exit.for.body_crit_edge

bcm_remove_op.exit.for.body_crit_edge:            ; preds = %bcm_remove_op.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

bcm_remove_op.exit.for.end_crit_edge:             ; preds = %bcm_remove_op.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %bcm_remove_op.exit.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  %rx_ops = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %rx_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_ops, align 8
  %cmp29.not164 = icmp eq ptr %22, %rx_ops
  br i1 %cmp29.not164, label %for.end.for.end51_crit_edge, label %for.end.for.body31_crit_edge

for.end.for.body31_crit_edge:                     ; preds = %for.end
  br label %for.body31

for.end.for.end51_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end51

for.body31:                                       ; preds = %for.inc45.for.body31_crit_edge, %for.end.for.body31_crit_edge
  %op.1165 = phi ptr [ %next.1166, %for.inc45.for.body31_crit_edge ], [ %22, %for.end.for.body31_crit_edge ]
  %23 = ptrtoint ptr %op.1165 to i32
  call void @__asan_load4_noabort(i32 %23)
  %next.1166 = load ptr, ptr %op.1165, align 8
  %ifindex = getelementptr inbounds %struct.bcm_op, ptr %op.1165, i32 0, i32 1
  %24 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ifindex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool32.not = icmp eq i32 %25, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %for.body31
  %rx_reg_dev = getelementptr inbounds %struct.bcm_op, ptr %op.1165, i32 0, i32 25
  %26 = ptrtoint ptr %rx_reg_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_reg_dev, align 4
  %tobool34.not = icmp eq ptr %27, null
  br i1 %tobool34.not, label %if.then33.for.inc45_crit_edge, label %if.then35

if.then33.for.inc45_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc45

if.then35:                                        ; preds = %if.then33
  %call37 = tail call ptr @dev_get_by_index(ptr noundef %3, i32 noundef %25) #15
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.then35.for.inc45_crit_edge, label %if.then39

if.then35.for.inc45_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc45

if.then39:                                        ; preds = %if.then35
  %28 = ptrtoint ptr %rx_reg_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_reg_dev, align 4
  %cmp.i = icmp eq ptr %29, %call37
  br i1 %cmp.i, label %if.then.i137, label %do.end.i

if.then.i137:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 127
  %30 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nd_net.i.i, align 4
  %can_id.i = getelementptr inbounds %struct.bcm_op, ptr %op.1165, i32 0, i32 2
  %32 = ptrtoint ptr %can_id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %can_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool.not.i136 = icmp sgt i32 %33, -1
  %cond.i = select i1 %tobool.not.i136, i32 -1073739777, i32 -536870913
  tail call void @can_rx_unregister(ptr noundef %31, ptr noundef nonnull %call37, i32 noundef %33, i32 noundef %cond.i, ptr noundef nonnull @bcm_rx_handler, ptr noundef %op.1165) #15
  %34 = ptrtoint ptr %rx_reg_dev to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %rx_reg_dev, align 4
  br label %do.body1.i

do.end.i:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %29, ptr noundef nonnull %call37) #18
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.end.i, %if.then.i137
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !121
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 118
  %36 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcpu_refcnt.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %44, %38
  %45 = inttoptr i32 %add.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add13.i = add i32 %47, -1
  store i32 %add13.i, ptr %45, align 4
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !122
  %and.i.i.i = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !123

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #15, !srcloc !124
  br label %for.inc45

if.else:                                          ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #17
  %can_id = getelementptr inbounds %struct.bcm_op, ptr %op.1165, i32 0, i32 2
  %49 = ptrtoint ptr %can_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %can_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %tobool43.not = icmp sgt i32 %50, -1
  %cond = select i1 %tobool43.not, i32 -1073739777, i32 -536870913
  tail call void @can_rx_unregister(ptr noundef %3, ptr noundef null, i32 noundef %50, i32 noundef %cond, ptr noundef nonnull @bcm_rx_handler, ptr noundef %op.1165) #15
  br label %for.inc45

for.inc45:                                        ; preds = %if.else, %dev_put.exit, %if.then35.for.inc45_crit_edge, %if.then33.for.inc45_crit_edge
  %cmp29.not = icmp eq ptr %next.1166, %rx_ops
  br i1 %cmp29.not, label %for.inc45.for.end51_crit_edge, label %for.inc45.for.body31_crit_edge

for.inc45.for.body31_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body31

for.inc45.for.end51_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end51

for.end51:                                        ; preds = %for.inc45.for.end51_crit_edge, %for.end.for.end51_crit_edge
  tail call void @synchronize_rcu() #15
  %51 = ptrtoint ptr %rx_ops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx_ops, align 8
  %cmp65.not167 = icmp eq ptr %52, %rx_ops
  br i1 %cmp65.not167, label %for.end51.for.end74_crit_edge, label %for.end51.for.body67_crit_edge

for.end51.for.body67_crit_edge:                   ; preds = %for.end51
  br label %for.body67

for.end51.for.end74_crit_edge:                    ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end74

for.body67:                                       ; preds = %bcm_remove_op.exit157.for.body67_crit_edge, %for.end51.for.body67_crit_edge
  %op.2168 = phi ptr [ %next.2, %bcm_remove_op.exit157.for.body67_crit_edge ], [ %52, %for.end51.for.body67_crit_edge ]
  %53 = ptrtoint ptr %op.2168 to i32
  call void @__asan_load4_noabort(i32 %53)
  %next.2 = load ptr, ptr %op.2168, align 8
  %timer.i140 = getelementptr inbounds %struct.bcm_op, ptr %op.2168, i32 0, i32 8
  %call.i141 = tail call i32 @hrtimer_cancel(ptr noundef %timer.i140) #15
  %thrtimer.i142 = getelementptr inbounds %struct.bcm_op, ptr %op.2168, i32 0, i32 9
  %call1.i143 = tail call i32 @hrtimer_cancel(ptr noundef %thrtimer.i142) #15
  %frames.i144 = getelementptr inbounds %struct.bcm_op, ptr %op.2168, i32 0, i32 19
  %54 = ptrtoint ptr %frames.i144 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %frames.i144, align 4
  %tobool.not.i145 = icmp eq ptr %55, null
  %sframe.i146 = getelementptr inbounds %struct.bcm_op, ptr %op.2168, i32 0, i32 22
  %cmp.not.i147 = icmp eq ptr %55, %sframe.i146
  %or.cond.i148 = select i1 %tobool.not.i145, i1 true, i1 %cmp.not.i147
  br i1 %or.cond.i148, label %for.body67.if.end.i155_crit_edge, label %if.then.i149

for.body67.if.end.i155_crit_edge:                 ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i155

if.then.i149:                                     ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %55) #15
  br label %if.end.i155

if.end.i155:                                      ; preds = %if.then.i149, %for.body67.if.end.i155_crit_edge
  %last_frames.i150 = getelementptr inbounds %struct.bcm_op, ptr %op.2168, i32 0, i32 20
  %56 = ptrtoint ptr %last_frames.i150 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %last_frames.i150, align 8
  %tobool4.not.i151 = icmp eq ptr %57, null
  %last_sframe.i152 = getelementptr inbounds %struct.bcm_op, ptr %op.2168, i32 0, i32 23
  %cmp7.not.i153 = icmp eq ptr %57, %last_sframe.i152
  %or.cond22.i154 = select i1 %tobool4.not.i151, i1 true, i1 %cmp7.not.i153
  br i1 %or.cond22.i154, label %if.end.i155.bcm_remove_op.exit157_crit_edge, label %if.then8.i156

if.end.i155.bcm_remove_op.exit157_crit_edge:      ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_remove_op.exit157

if.then8.i156:                                    ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %57) #15
  br label %bcm_remove_op.exit157

bcm_remove_op.exit157:                            ; preds = %if.then8.i156, %if.end.i155.bcm_remove_op.exit157_crit_edge
  tail call void @kfree(ptr noundef %op.2168) #15
  %cmp65.not = icmp eq ptr %next.2, %rx_ops
  br i1 %cmp65.not, label %bcm_remove_op.exit157.for.end74_crit_edge, label %bcm_remove_op.exit157.for.body67_crit_edge

bcm_remove_op.exit157.for.body67_crit_edge:       ; preds = %bcm_remove_op.exit157
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body67

bcm_remove_op.exit157.for.end74_crit_edge:        ; preds = %bcm_remove_op.exit157
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end74

for.end74:                                        ; preds = %bcm_remove_op.exit157.for.end74_crit_edge, %for.end51.for.end74_crit_edge
  %bcmproc_dir = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 50, i32 9
  %58 = ptrtoint ptr %bcmproc_dir to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bcmproc_dir, align 4
  %tobool75.not = icmp eq ptr %59, null
  br i1 %tobool75.not, label %for.end74.if.end80_crit_edge, label %land.lhs.true

for.end74.if.end80_crit_edge:                     ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

land.lhs.true:                                    ; preds = %for.end74
  %bcm_proc_read = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 7
  %60 = ptrtoint ptr %bcm_proc_read to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bcm_proc_read, align 4
  %tobool76.not = icmp eq ptr %61, null
  br i1 %tobool76.not, label %land.lhs.true.if.end80_crit_edge, label %if.then77

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

if.then77:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %procname = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 8
  tail call void @remove_proc_entry(ptr noundef %procname, ptr noundef nonnull %59) #15
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %land.lhs.true.if.end80_crit_edge, %for.end74.if.end80_crit_edge
  %bound = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %bound to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bound, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool81.not = icmp eq i32 %63, 0
  br i1 %tobool81.not, label %if.end80.if.end85_crit_edge, label %if.then82

if.end80.if.end85_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %bound to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %bound, align 8
  %ifindex84 = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 2
  %65 = ptrtoint ptr %ifindex84 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %ifindex84, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end80.if.end85_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #15
  %66 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %or.i.i.i = or i32 %68, 1
  store i32 %or.i.i.i, ptr %66, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %69 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %sk_socket.i.i, align 8
  %70 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %70, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #15
  %72 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %sk1, align 16
  tail call void @release_sock(ptr noundef nonnull %1) #15
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %73 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !126
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i158, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !127

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i158:                                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !128
  tail call void @sk_free(ptr noundef nonnull %1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i158, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_bind(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_connect(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %uaddr, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp = icmp ult i32 %len, 8
  br i1 %cmp, label %entry.cleanup34_crit_edge, label %if.end

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup34

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #15
  %bound = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bound to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bound, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end4, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end4:                                          ; preds = %if.end
  %can_ifindex = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 1
  %6 = ptrtoint ptr %can_ifindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %can_ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %call8 = tail call ptr @dev_get_by_index(ptr noundef %3, i32 noundef %7) #15
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then6.fail_crit_edge, label %if.end11

if.then6.fail_crit_edge:                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end11:                                         ; preds = %if.then6
  %type = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 32
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %9)
  %cmp12.not = icmp eq i16 %9, 280
  br i1 %cmp12.not, label %do.body1.i68, label %do.body1.i

do.body1.i:                                       ; preds = %if.end11
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !121
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i = add i32 %22, -1
  store i32 %add13.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !122
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !123

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #15, !srcloc !124
  br label %fail

do.body1.i68:                                     ; preds = %if.end11
  %ifindex = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 17
  %24 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ifindex, align 4
  %ifindex16 = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %ifindex16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ifindex16, align 4
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !121
  %pcpu_refcnt.i60 = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 118
  %28 = ptrtoint ptr %pcpu_refcnt.i60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcpu_refcnt.i60, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i61 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i61 to ptr
  %cpu.i62 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu.i62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i62, align 4
  %arrayidx.i63 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i63, align 4
  %add.i64 = add i32 %36, %30
  %37 = inttoptr i32 %add.i64 to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add13.i65 = add i32 %39, -1
  store i32 %add13.i65, ptr %37, align 4
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !122
  %and.i.i.i66 = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i66)
  %tobool24.not.i67 = icmp eq i32 %and.i.i.i66, 0
  br i1 %tobool24.not.i67, label %if.then28.i69, label %do.body1.i68.cleanup_crit_edge, !prof !123

do.body1.i68.cleanup_crit_edge:                   ; preds = %do.body1.i68
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then28.i69:                                    ; preds = %do.body1.i68
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %cleanup

cleanup:                                          ; preds = %if.then28.i69, %do.body1.i68.cleanup_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #15, !srcloc !124
  br label %if.end18

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %ifindex17 = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %ifindex17 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %ifindex17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %cleanup
  %bcmproc_dir = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 50, i32 9
  %42 = ptrtoint ptr %bcmproc_dir to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bcmproc_dir, align 4
  %tobool19.not = icmp eq ptr %43, null
  br i1 %tobool19.not, label %if.end18.if.end32_crit_edge, label %if.then20

if.end18.if.end32_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then20:                                        ; preds = %if.end18
  %procname = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 8
  %call21 = tail call i32 @sock_i_ino(ptr noundef %1) #15
  %call22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %procname, ptr noundef nonnull @.str.4, i32 noundef %call21)
  %44 = ptrtoint ptr %bcmproc_dir to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bcmproc_dir, align 4
  %call27 = tail call ptr @proc_create_net_single(ptr noundef %procname, i16 noundef zeroext 420, ptr noundef %45, ptr noundef nonnull @bcm_proc_show, ptr noundef %1) #15
  %bcm_proc_read = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 7
  %46 = ptrtoint ptr %bcm_proc_read to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call27, ptr %bcm_proc_read, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.then20.fail_crit_edge, label %if.then20.if.end32_crit_edge

if.then20.if.end32_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then20.fail_crit_edge:                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end32:                                         ; preds = %if.then20.if.end32_crit_edge, %if.end18.if.end32_crit_edge
  %47 = ptrtoint ptr %bound to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %bound, align 8
  br label %fail

fail:                                             ; preds = %if.end32, %if.then20.fail_crit_edge, %dev_put.exit, %if.then6.fail_crit_edge, %if.end.fail_crit_edge
  %ret.2 = phi i32 [ 0, %if.end32 ], [ -106, %if.end.fail_crit_edge ], [ -12, %if.then20.fail_crit_edge ], [ -19, %dev_put.exit ], [ -19, %if.then6.fail_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #15
  br label %cleanup34

cleanup34:                                        ; preds = %fail, %entry.cleanup34_crit_edge
  %retval.0 = phi i32 [ %ret.2, %fail ], [ -22, %entry.cleanup34_crit_edge ]
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm_sock_no_ioctlcmd(ptr nocapture noundef readnone %sock, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -515
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size) #2 align 64 {
entry:
  %msg_head = alloca %struct.bcm_msg_head, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %ifindex2 = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ifindex2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex2, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %msg_head) #15
  %4 = call ptr @memset(ptr %msg_head, i32 255, i32 40)
  %bound = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %bound to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bound, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup72_crit_edge, label %if.end

entry.cleanup72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %size)
  %cmp = icmp ult i32 %size, 40
  br i1 %cmp, label %if.end.cleanup72_crit_edge, label %if.end4

if.end.cleanup72_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

if.end4:                                          ; preds = %if.end
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef nonnull %msg_head, i32 noundef 40, ptr noundef %msg_iter.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %call3.i.i.i)
  %cmp.i.i = icmp eq i32 %call3.i.i.i, 40
  br i1 %cmp.i.i, label %if.end8, label %memcpy_from_msg.exit.thread, !prof !127

memcpy_from_msg.exit.thread:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %call3.i.i.i) #15
  br label %cleanup72

if.end8:                                          ; preds = %if.end4
  %flags = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool9.not, i32 16, i32 72
  %sub = add i32 %size, -40
  %rem = urem i32 %sub, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool10.not = icmp eq i32 %rem, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup72_crit_edge

if.end8.cleanup72_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool13.not = icmp eq i32 %3, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.end12.if.end40_crit_edge

if.end12.if.end40_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end12
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msg, align 8
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %land.lhs.true.if.end40_crit_edge, label %if.then15

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then15:                                        ; preds = %land.lhs.true
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp17 = icmp ult i32 %12, 8
  br i1 %cmp17, label %if.then15.cleanup72_crit_edge, label %if.end19

if.then15.cleanup72_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

if.end19:                                         ; preds = %if.then15
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %14)
  %cmp20.not = icmp eq i16 %14, 29
  br i1 %cmp20.not, label %if.end23, label %if.end19.cleanup72_crit_edge

if.end19.cleanup72_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

if.end23:                                         ; preds = %if.end19
  %can_ifindex = getelementptr inbounds %struct.sockaddr_can, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %can_ifindex to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %can_ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool24.not = icmp eq i32 %16, 0
  br i1 %tobool24.not, label %if.end23.if.end40_crit_edge, label %if.then25

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then25:                                        ; preds = %if.end23
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skc_net.i, align 4
  %call27 = call ptr @dev_get_by_index(ptr noundef %18, i32 noundef %16) #15
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then25.cleanup72_crit_edge, label %if.end30

if.then25.cleanup72_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

if.end30:                                         ; preds = %if.then25
  %type = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 32
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %20)
  %cmp32.not = icmp eq i16 %20, 280
  call fastcc void @dev_put(ptr noundef nonnull %call27)
  br i1 %cmp32.not, label %if.end30.if.end40_crit_edge, label %if.end30.cleanup72_crit_edge

if.end30.cleanup72_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.end40:                                         ; preds = %if.end30.if.end40_crit_edge, %if.end23.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %if.end12.if.end40_crit_edge
  %ifindex.1 = phi i32 [ %3, %if.end12.if.end40_crit_edge ], [ 0, %land.lhs.true.if.end40_crit_edge ], [ 0, %if.end23.if.end40_crit_edge ], [ %16, %if.end30.if.end40_crit_edge ]
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #15
  %21 = ptrtoint ptr %msg_head to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_head, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.end40.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %sw.bb42
    i32 2, label %sw.bb44
    i32 6, label %sw.bb49
    i32 3, label %sw.bb55
    i32 7, label %sw.bb59
    i32 4, label %sw.bb63
  ]

if.end40.sw.epilog_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %call41 = call fastcc i32 @bcm_tx_setup(ptr noundef nonnull %msg_head, ptr noundef %msg, i32 noundef %ifindex.1, ptr noundef %1)
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %call43 = call fastcc i32 @bcm_rx_setup(ptr noundef nonnull %msg_head, ptr noundef %msg, i32 noundef %ifindex.1, ptr noundef %1)
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %tx_ops = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 5
  %call45 = call fastcc i32 @bcm_delete_tx_op(ptr noundef %tx_ops, ptr noundef nonnull %msg_head, i32 noundef %ifindex.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  %. = select i1 %tobool46.not, i32 -22, i32 40
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %rx_ops = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 4
  %call50 = call fastcc i32 @bcm_delete_rx_op(ptr noundef %rx_ops, ptr noundef nonnull %msg_head, i32 noundef %ifindex.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  %.119 = select i1 %tobool51.not, i32 -22, i32 40
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %msg_head to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %msg_head, align 8
  %tx_ops57 = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 5
  %call58 = call fastcc i32 @bcm_read_op(ptr noundef %tx_ops57, ptr noundef nonnull %msg_head, i32 noundef %ifindex.1)
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %msg_head to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10, ptr %msg_head, align 8
  %rx_ops61 = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 4
  %call62 = call fastcc i32 @bcm_read_op(ptr noundef %rx_ops61, ptr noundef nonnull %msg_head, i32 noundef %ifindex.1)
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end40
  %nframes = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 6
  %26 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nframes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp64.not = icmp eq i32 %27, 1
  %add = add nuw nsw i32 %cond, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size)
  %cmp66.not = icmp eq i32 %add, %size
  %or.cond = select i1 %cmp64.not, i1 %cmp66.not, i1 false
  br i1 %or.cond, label %if.else69, label %sw.bb63.sw.epilog_crit_edge

sw.bb63.sw.epilog_crit_edge:                      ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.else69:                                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #17
  %call70 = call fastcc i32 @bcm_tx_send(ptr noundef %msg, i32 noundef %ifindex.1, ptr noundef %1, i32 noundef %cond)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else69, %sw.bb63.sw.epilog_crit_edge, %sw.bb59, %sw.bb55, %sw.bb49, %sw.bb44, %sw.bb42, %sw.bb, %if.end40.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call70, %if.else69 ], [ %call62, %sw.bb59 ], [ %call58, %sw.bb55 ], [ %call43, %sw.bb42 ], [ %call41, %sw.bb ], [ %., %sw.bb44 ], [ %.119, %sw.bb49 ], [ -22, %sw.bb63.sw.epilog_crit_edge ], [ -22, %if.end40.sw.epilog_crit_edge ]
  call void @release_sock(ptr noundef %1) #15
  br label %cleanup72

cleanup72:                                        ; preds = %sw.epilog, %if.end30.cleanup72_crit_edge, %if.then25.cleanup72_crit_edge, %if.end19.cleanup72_crit_edge, %if.then15.cleanup72_crit_edge, %if.end8.cleanup72_crit_edge, %memcpy_from_msg.exit.thread, %if.end.cleanup72_crit_edge, %entry.cleanup72_crit_edge
  %retval.3 = phi i32 [ %ret.0, %sw.epilog ], [ -107, %entry.cleanup72_crit_edge ], [ -22, %if.end.cleanup72_crit_edge ], [ -22, %if.end8.cleanup72_crit_edge ], [ -14, %memcpy_from_msg.exit.thread ], [ -19, %if.then25.cleanup72_crit_edge ], [ -22, %if.end19.cleanup72_crit_edge ], [ -22, %if.then15.cleanup72_crit_edge ], [ -19, %if.end30.cleanup72_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %msg_head) #15
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #2 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #15
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %error, align 4
  %and = and i32 %flags, 64
  %and2 = and i32 %flags, -65
  %call = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %and2, i32 noundef %and, ptr noundef nonnull %error) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9.i.i.i = icmp slt i32 %7, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge, label %if.then27.i.i.i, !prof !127

land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge:    ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %memcpy_to_msg.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %memcpy_to_msg.exit

if.then.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  call void @__check_object_size(ptr noundef %9, i32 noundef %7, i1 noundef zeroext true) #15
  %call3.i.i = call i32 @_copy_to_iter(ptr noundef %9, i32 noundef %7, ptr noundef %msg_iter.i) #15
  br label %memcpy_to_msg.exit

memcpy_to_msg.exit:                               ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %7)
  %cmp.i = icmp eq i32 %retval.0.i.i, %7
  br i1 %cmp.i, label %if.end9, label %if.then8

if.then8:                                         ; preds = %memcpy_to_msg.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call) #15
  br label %cleanup

if.end9:                                          ; preds = %memcpy_to_msg.exit
  %10 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %and.i = and i32 %12, 133120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end9.if.then.i_crit_edge

if.end9.if.then.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end9
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 65
  %13 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sk_tsflags.i, align 8
  %15 = and i16 %14, 80
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool2.not.i = icmp eq i16 %15, 0
  br i1 %tobool2.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end9.if.then.i_crit_edge
  call void @__sock_recv_ts_and_drops(ptr noundef %msg, ptr noundef %1, ptr noundef nonnull %call) #15
  br label %sock_recv_ts_and_drops.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %10, align 4
  %18 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %if.else6.i, label %if.then5.i, !prof !127

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %19, align 8
  %sk_stamp_seq.i41 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64
  %lock.i.i42 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i.i42) #15
  %22 = ptrtoint ptr %sk_stamp_seq.i41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sk_stamp_seq.i41, align 4
  %inc.i.i.i.i.i43 = add i32 %23, 1
  store i32 %inc.i.i.i.i.i43, ptr %sk_stamp_seq.i41, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !129
  %dep_map.i.i.i.i44 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64, i32 0, i32 0, i32 1
  %24 = call ptr @llvm.returnaddress(i32 0) #15
  %25 = ptrtoint ptr %24 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i44, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %25) #15
  %sk_stamp.i45 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 63
  %26 = ptrtoint ptr %sk_stamp.i45 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %21, ptr %sk_stamp.i45, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i44, i32 noundef %25) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !130
  %27 = ptrtoint ptr %sk_stamp_seq.i41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sk_stamp_seq.i41, align 4
  %inc.i.i.i.i46 = add i32 %28, 1
  store i32 %inc.i.i.i.i46, ptr %sk_stamp_seq.i41, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i42) #15
  br label %sock_recv_ts_and_drops.exit

if.else6.i:                                       ; preds = %if.else.i
  %sk_stamp.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 63
  %29 = ptrtoint ptr %sk_stamp.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %sk_stamp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1000000000, i64 %30)
  %cmp.i39 = icmp eq i64 %30, -1000000000
  br i1 %cmp.i39, label %if.then14.i, label %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, !prof !123

if.else6.i.sock_recv_ts_and_drops.exit_crit_edge: ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_recv_ts_and_drops.exit

if.then14.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #17
  %sk_stamp_seq.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64
  %lock.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #15
  %31 = ptrtoint ptr %sk_stamp_seq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sk_stamp_seq.i, align 4
  %inc.i.i.i.i.i = add i32 %32, 1
  store i32 %inc.i.i.i.i.i, ptr %sk_stamp_seq.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !129
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64, i32 0, i32 0, i32 1
  %33 = call ptr @llvm.returnaddress(i32 0) #15
  %34 = ptrtoint ptr %33 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %34) #15
  %35 = ptrtoint ptr %sk_stamp.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %sk_stamp.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %34) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !130
  %36 = ptrtoint ptr %sk_stamp_seq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sk_stamp_seq.i, align 4
  %inc.i.i.i.i = add i32 %37, 1
  store i32 %inc.i.i.i.i, ptr %sk_stamp_seq.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #15
  br label %sock_recv_ts_and_drops.exit

sock_recv_ts_and_drops.exit:                      ; preds = %if.then14.i, %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, %if.then5.i, %if.then.i
  %38 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msg, align 8
  %tobool10.not = icmp eq ptr %39, null
  br i1 %tobool10.not, label %sock_recv_ts_and_drops.exit.if.end14_crit_edge, label %do.end

sock_recv_ts_and_drops.exit.if.end14_crit_edge:   ; preds = %sock_recv_ts_and_drops.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

do.end:                                           ; preds = %sock_recv_ts_and_drops.exit
  call void @__sanitizer_cov_trace_pc() #17
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %40 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8, ptr %msg_namelen, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %41 = ptrtoint ptr %cb to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %cb, align 8
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %39, align 1
  br label %if.end14

if.end14:                                         ; preds = %do.end, %sock_recv_ts_and_drops.exit.if.end14_crit_edge
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then8, %if.then
  %retval.0 = phi i32 [ -14, %if.then8 ], [ %7, %if.end14 ], [ %4, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !121
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !122
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !123

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #15, !srcloc !124
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_unregister(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_rx_handler(ptr nocapture noundef readonly %skb, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %can_id = getelementptr inbounds %struct.bcm_op, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %can_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %can_id, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %cfsiz = getelementptr inbounds %struct.bcm_op, ptr %data, i32 0, i32 15
  %8 = ptrtoint ptr %cfsiz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfsiz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3.not = icmp eq i32 %7, %9
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %timer = getelementptr inbounds %struct.bcm_op, ptr %data, i32 0, i32 8
  %call = tail call i32 @hrtimer_cancel(ptr noundef %timer) #15
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  %rx_stamp = getelementptr inbounds %struct.bcm_op, ptr %data, i32 0, i32 10
  %13 = ptrtoint ptr %rx_stamp to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %rx_stamp, align 8
  %14 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifindex, align 4
  %rx_ifindex = getelementptr inbounds %struct.bcm_op, ptr %data, i32 0, i32 14
  %19 = ptrtoint ptr %rx_ifindex to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rx_ifindex, align 8
  %frames_abs = getelementptr inbounds %struct.bcm_op, ptr %data, i32 0, i32 4
  %20 = ptrtoint ptr %frames_abs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frames_abs, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %frames_abs, align 4
  %flags = getelementptr inbounds %struct.bcm_op, ptr %data, i32 0, i32 3
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %and = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @bcm_can_tx(ptr noundef %data)
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %and9 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %last_frames = getelementptr inbounds %struct.bcm_op, ptr %data, i32 0, i32 20
  %24 = ptrtoint ptr %last_frames to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %last_frames, align 8
  tail call fastcc void @bcm_rx_update_and_send(ptr noundef %data, ptr noundef %25, ptr noundef %1)
  br label %rx_starttimer

if.end12:                                         ; preds = %if.end7
  %nframes = getelementptr inbounds %struct.bcm_op, ptr %data, i32 0, i32 17
  %26 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nframes, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %27, label %for.body.lr.ph [
    i32 1, label %if.then14
    i32 0, label %if.end12.rx_starttimer_crit_edge
  ]

if.end12.rx_starttimer_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %rx_starttimer

for.body.lr.ph:                                   ; preds = %if.end12
  %frames = getelementptr inbounds %struct.bcm_op, ptr %data, i32 0, i32 19
  %29 = ptrtoint ptr %frames to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %frames, align 4
  %data.i = getelementptr inbounds %struct.canfd_frame, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %data.i, align 8
  %data.i67 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %data.i67 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %data.i67, align 8
  %35 = ptrtoint ptr %cfsiz to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cfsiz, align 4
  br label %for.body

if.then14:                                        ; preds = %if.end12
  %frames.i = getelementptr inbounds %struct.bcm_op, ptr %data, i32 0, i32 19
  %37 = ptrtoint ptr %frames.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %frames.i, align 4
  %last_frames.i = getelementptr inbounds %struct.bcm_op, ptr %data, i32 0, i32 20
  %39 = ptrtoint ptr %last_frames.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %last_frames.i, align 8
  %flags.i = getelementptr inbounds %struct.canfd_frame, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags.i, align 1
  %43 = and i8 %42, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %if.then14.cleanup.sink.split.i_crit_edge, label %for.cond.preheader.i

if.then14.cleanup.sink.split.i_crit_edge:         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

for.cond.preheader.i:                             ; preds = %if.then14
  %len.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %len.i, align 4
  %conv4.i = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp61.not.i = icmp eq i8 %45, 0
  br i1 %cmp61.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %data.i.i = getelementptr inbounds %struct.canfd_frame, ptr %38, i32 0, i32 5
  %data.i54.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 5
  %data.i58.i = getelementptr inbounds %struct.canfd_frame, ptr %40, i32 0, i32 5
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %add.i = add nuw nsw i32 %i.062.i, 8
  %cmp.i = icmp ult i32 %add.i, %conv4.i
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.062.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.cond.i.for.body.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %data.i.i, i32 %i.062.i
  %46 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr.i.i, align 8
  %add.ptr.i55.i = getelementptr i8, ptr %data.i54.i, i32 %i.062.i
  %48 = ptrtoint ptr %add.ptr.i55.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %add.ptr.i55.i, align 8
  %add.ptr.i59.i = getelementptr i8, ptr %data.i58.i, i32 %i.062.i
  %50 = ptrtoint ptr %add.ptr.i59.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %add.ptr.i59.i, align 8
  %52 = xor i64 %51, %49
  %53 = and i64 %52, %47
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %cmp11.not.i = icmp eq i64 %53, 0
  br i1 %cmp11.not.i, label %for.cond.i, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %and16.i = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %for.end.i.rx_starttimer_crit_edge, label %if.then18.i

for.end.i.rx_starttimer_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rx_starttimer

if.then18.i:                                      ; preds = %for.end.i
  %len21.i = getelementptr inbounds %struct.canfd_frame, ptr %40, i32 0, i32 1
  %54 = ptrtoint ptr %len21.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %len21.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %55)
  %cmp23.not.i = icmp eq i8 %45, %55
  br i1 %cmp23.not.i, label %if.then18.i.rx_starttimer_crit_edge, label %if.then18.i.cleanup.sink.split.i_crit_edge

if.then18.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.then18.i.rx_starttimer_crit_edge:              ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rx_starttimer

cleanup.sink.split.i:                             ; preds = %if.then18.i.cleanup.sink.split.i_crit_edge, %for.body.i.cleanup.sink.split.i_crit_edge, %if.then14.cleanup.sink.split.i_crit_edge
  tail call fastcc void @bcm_rx_update_and_send(ptr noundef %data, ptr noundef %40, ptr noundef %1) #15
  br label %rx_starttimer

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 1, %for.body.lr.ph ], [ %inc33, %for.inc.for.body_crit_edge ]
  %mul = mul i32 %36, %i.074
  %add.ptr = getelementptr i8, ptr %30, i32 %mul
  %data.i69 = getelementptr inbounds %struct.canfd_frame, ptr %add.ptr, i32 0, i32 5
  %56 = ptrtoint ptr %data.i69 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %data.i69, align 8
  %58 = xor i64 %57, %34
  %59 = and i64 %58, %32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %cmp30 = icmp eq i64 %59, 0
  br i1 %cmp30, label %if.then31, label %for.inc

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @bcm_rx_cmp_to_index(ptr noundef %data, i32 noundef %i.074, ptr noundef %1)
  br label %rx_starttimer

for.inc:                                          ; preds = %for.body
  %inc33 = add nuw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc33, %27
  br i1 %exitcond.not, label %for.inc.rx_starttimer_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.rx_starttimer_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %rx_starttimer

rx_starttimer:                                    ; preds = %for.inc.rx_starttimer_crit_edge, %if.then31, %cleanup.sink.split.i, %if.then18.i.rx_starttimer_crit_edge, %for.end.i.rx_starttimer_crit_edge, %if.end12.rx_starttimer_crit_edge, %if.then11
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags, align 8
  %and.i = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i71 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i71, label %if.end.i, label %rx_starttimer.cleanup_crit_edge

rx_starttimer.cleanup_crit_edge:                  ; preds = %rx_starttimer
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %rx_starttimer
  %kt_ival1.i = getelementptr inbounds %struct.bcm_op, ptr %data, i32 0, i32 11
  %62 = ptrtoint ptr %kt_ival1.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %kt_ival1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %tobool1.not.i = icmp eq i64 %63, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @hrtimer_start_range_ns(ptr noundef %timer, i64 noundef %63, i64 noundef 0, i32 noundef 5) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end.i.cleanup_crit_edge, %rx_starttimer.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_can_tx(ptr nocapture noundef %op) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frames = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 19
  %0 = ptrtoint ptr %frames to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frames, align 4
  %cfsiz = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 15
  %2 = ptrtoint ptr %cfsiz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfsiz, align 4
  %currframe = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 18
  %4 = ptrtoint ptr %currframe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %currframe, align 8
  %mul = mul i32 %5, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %ifindex = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 24
  %8 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk, align 8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skc_net.i, align 4
  %call2 = tail call ptr @dev_get_by_index(ptr noundef %11, i32 noundef %7) #15
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %12 = ptrtoint ptr %cfsiz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfsiz, align 4
  %add = add i32 %13, 16
  %14 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %17, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 3264, i32 2592
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef %cond.i, i32 noundef 0, i32 noundef -1) #15
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end5.do.body1.i_crit_edge, label %if.end11

if.end5.do.body1.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1.i

if.end11:                                         ; preds = %if.end5
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 16
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %21, i32 16
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %ifindex12 = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 17
  %22 = ptrtoint ptr %ifindex12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ifindex12, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %25, align 8
  %27 = load ptr, ptr %head.i, align 8
  %skbcnt = getelementptr inbounds %struct.can_skb_priv, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %skbcnt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %skbcnt, align 4
  %29 = ptrtoint ptr %cfsiz to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cfsiz, align 4
  %call.i52 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %30) #15
  %31 = call ptr @memcpy(ptr %call.i52, ptr %add.ptr, i32 %30)
  %32 = getelementptr inbounds %struct.anon.51, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call2, ptr %32, align 8
  %34 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sk, align 8
  %tobool.not.i53 = icmp eq ptr %35, null
  br i1 %tobool.not.i53, label %if.end11.can_skb_set_owner.exit_crit_edge, label %land.lhs.true.i

if.end11.can_skb_set_owner.exit_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %can_skb_set_owner.exit

land.lhs.true.i:                                  ; preds = %if.end11
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %35, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  %36 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %skc_refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true.i
  %38 = phi i32 [ %37, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %39 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %38, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #15
  %40 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %42 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 %41, i32 %add.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !131
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %42, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %42, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %41
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !127

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %43 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %44, 1
  %45 = or i32 %add5.i.i.i.i, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %.not.i.i.i.i = icmp sgt i32 %45, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !127

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 0) #15
  %46 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %47 = phi i32 [ %44, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool12.i.i.i.not.i = icmp eq i32 %47, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #15
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.can_skb_set_owner.exit_crit_edge, label %if.then.i

refcount_inc_not_zero.exit.i.can_skb_set_owner.exit_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %can_skb_set_owner.exit

if.then.i:                                        ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %48 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @sock_efree, ptr %destructor.i, align 4
  %49 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %35, ptr %49, align 4
  br label %can_skb_set_owner.exit

can_skb_set_owner.exit:                           ; preds = %if.then.i, %refcount_inc_not_zero.exit.i.can_skb_set_owner.exit_crit_edge, %if.end11.can_skb_set_owner.exit_crit_edge
  %call19 = call i32 @can_send(ptr noundef nonnull %call.i, i32 noundef 1) #15
  %51 = ptrtoint ptr %currframe to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %currframe, align 8
  %inc = add i32 %52, 1
  store i32 %inc, ptr %currframe, align 8
  %frames_abs = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 4
  %53 = ptrtoint ptr %frames_abs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %frames_abs, align 4
  %inc21 = add i32 %54, 1
  store i32 %inc21, ptr %frames_abs, align 4
  %nframes = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 17
  %55 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nframes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %56)
  %cmp.not = icmp ult i32 %inc, %56
  br i1 %cmp.not, label %can_skb_set_owner.exit.do.body1.i_crit_edge, label %if.then23

can_skb_set_owner.exit.do.body1.i_crit_edge:      ; preds = %can_skb_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1.i

if.then23:                                        ; preds = %can_skb_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #17
  %57 = ptrtoint ptr %currframe to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %currframe, align 8
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then23, %can_skb_set_owner.exit.do.body1.i_crit_edge, %if.end5.do.body1.i_crit_edge
  %58 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !121
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 118
  %59 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pcpu_refcnt.i, align 4
  %61 = ptrtoint ptr %60 to i32
  %62 = call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %67, %61
  %68 = inttoptr i32 %add.i to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add13.i = add i32 %70, -1
  store i32 %add13.i, ptr %68, align 4
  %71 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !122
  %and.i.i.i55 = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i55)
  %tobool24.not.i = icmp eq i32 %and.i.i.i55, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !123

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #15, !srcloc !124
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_rx_update_and_send(ptr noundef %op, ptr nocapture noundef %lastdata, ptr nocapture noundef readonly %rxdata) unnamed_addr #2 align 64 {
entry:
  %head.i34 = alloca %struct.bcm_msg_head, align 8
  %head.i = alloca %struct.bcm_msg_head, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cfsiz = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 15
  %0 = ptrtoint ptr %cfsiz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfsiz, align 4
  %2 = call ptr @memcpy(ptr %lastdata, ptr %rxdata, i32 %1)
  %flags = getelementptr inbounds %struct.canfd_frame, ptr %lastdata, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags, align 1
  %5 = or i8 %4, -64
  store i8 %5, ptr %flags, align 1
  %kt_ival2 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 12
  %6 = ptrtoint ptr %kt_ival2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %kt_ival2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %head.i) #15
  %frames_filtered.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 5
  %8 = ptrtoint ptr %frames_filtered.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frames_filtered.i, align 8
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %frames_filtered.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %inc.i)
  %cmp.i = icmp ugt i32 %inc.i, 42949672
  br i1 %cmp.i, label %if.then.i, label %if.then.bcm_rx_changed.exit_crit_edge

if.then.bcm_rx_changed.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_rx_changed.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %frames_abs.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 4
  %10 = ptrtoint ptr %frames_abs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %frames_abs.i, align 4
  %11 = ptrtoint ptr %frames_filtered.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %frames_filtered.i, align 8
  br label %bcm_rx_changed.exit

bcm_rx_changed.exit:                              ; preds = %if.then.i, %if.then.bcm_rx_changed.exit_crit_edge
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 1
  %14 = and i8 %13, 127
  store i8 %14, ptr %flags, align 1
  %15 = getelementptr inbounds i8, ptr %head.i, i32 32
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 4294967296, ptr %15, align 8
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 12, ptr %head.i, align 8
  %flags4.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 3
  %18 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags4.i, align 8
  %flags5.i = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %flags5.i, align 4
  %count.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 16
  %21 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i, align 8
  %count6.i = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i, i32 0, i32 2
  %23 = ptrtoint ptr %count6.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %count6.i, align 8
  %ival1.i = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i, i32 0, i32 3
  %ival17.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 6
  %24 = ptrtoint ptr %ival17.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %ival17.i, align 4
  %26 = ptrtoint ptr %ival1.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %ival1.i, align 4
  %ival2.i = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i, i32 0, i32 4
  %ival28.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 7
  %27 = ptrtoint ptr %ival28.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %ival28.i, align 4
  %29 = ptrtoint ptr %ival2.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %ival2.i, align 4
  %can_id.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 2
  %30 = ptrtoint ptr %can_id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %can_id.i, align 4
  %can_id9.i = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i, i32 0, i32 5
  %32 = ptrtoint ptr %can_id9.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %can_id9.i, align 4
  call fastcc void @bcm_send_to_user(ptr noundef %op, ptr noundef nonnull %head.i, ptr noundef %lastdata, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %head.i) #15
  br label %return

if.end:                                           ; preds = %entry
  %thrtimer = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 9
  %call = tail call zeroext i1 @hrtimer_active(ptr noundef %thrtimer) #15
  br i1 %call, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end3:                                          ; preds = %if.end
  %kt_lastmsg = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 13
  %33 = ptrtoint ptr %kt_lastmsg to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %kt_lastmsg, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool4.not = icmp eq i64 %34, 0
  br i1 %tobool4.not, label %if.end3.rx_changed_settime_crit_edge, label %if.end6

if.end3.rx_changed_settime_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %rx_changed_settime

if.end6:                                          ; preds = %if.end3
  %call7 = tail call i64 @ktime_get() #15
  %35 = ptrtoint ptr %kt_lastmsg to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %kt_lastmsg, align 8
  %sub.i = sub i64 %call7, %36
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %37 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #15
  %38 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %37, i32 0) #19, !srcloc !132
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %38, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %38, 1
  %39 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %37, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #19, !srcloc !133
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %39, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %40 = ptrtoint ptr %kt_ival2 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %kt_ival2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %cmp8.i.i = icmp slt i64 %41, 0
  %42 = tail call i64 @llvm.abs.i64(i64 %41, i1 false) #15
  %43 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %42, i32 0) #19, !srcloc !132
  %asmresult.i.i.i = extractvalue { i64, i32 } %43, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %43, 1
  %44 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %42, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #19, !srcloc !133
  %asmresult10.i.i.i = extractvalue { i64, i32 } %44, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i, i64 %cond213.i.i)
  %cmp = icmp slt i64 %cond213.i.i.i, %cond213.i.i
  br i1 %cmp, label %if.then13, label %if.end6.rx_changed_settime_crit_edge

if.end6.rx_changed_settime_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %rx_changed_settime

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %add = add i64 %41, %36
  tail call void @hrtimer_start_range_ns(ptr noundef %thrtimer, i64 noundef %add, i64 noundef 0, i32 noundef 4) #15
  br label %return

rx_changed_settime:                               ; preds = %if.end6.rx_changed_settime_crit_edge, %if.end3.rx_changed_settime_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %head.i34) #15
  %frames_filtered.i35 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 5
  %45 = ptrtoint ptr %frames_filtered.i35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %frames_filtered.i35, align 8
  %inc.i36 = add i32 %46, 1
  store i32 %inc.i36, ptr %frames_filtered.i35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %inc.i36)
  %cmp.i37 = icmp ugt i32 %inc.i36, 42949672
  br i1 %cmp.i37, label %if.then.i39, label %rx_changed_settime.bcm_rx_changed.exit52_crit_edge

rx_changed_settime.bcm_rx_changed.exit52_crit_edge: ; preds = %rx_changed_settime
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_rx_changed.exit52

if.then.i39:                                      ; preds = %rx_changed_settime
  call void @__sanitizer_cov_trace_pc() #17
  %frames_abs.i38 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 4
  %47 = ptrtoint ptr %frames_abs.i38 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %frames_abs.i38, align 4
  %48 = ptrtoint ptr %frames_filtered.i35 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %frames_filtered.i35, align 8
  br label %bcm_rx_changed.exit52

bcm_rx_changed.exit52:                            ; preds = %if.then.i39, %rx_changed_settime.bcm_rx_changed.exit52_crit_edge
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flags, align 1
  %51 = and i8 %50, 127
  store i8 %51, ptr %flags, align 1
  %52 = getelementptr inbounds i8, ptr %head.i34, i32 32
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 4294967296, ptr %52, align 8
  %54 = ptrtoint ptr %head.i34 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 12, ptr %head.i34, align 8
  %flags4.i41 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 3
  %55 = ptrtoint ptr %flags4.i41 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags4.i41, align 8
  %flags5.i42 = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i34, i32 0, i32 1
  %57 = ptrtoint ptr %flags5.i42 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %flags5.i42, align 4
  %count.i43 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 16
  %58 = ptrtoint ptr %count.i43 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count.i43, align 8
  %count6.i44 = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i34, i32 0, i32 2
  %60 = ptrtoint ptr %count6.i44 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %count6.i44, align 8
  %ival1.i45 = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i34, i32 0, i32 3
  %ival17.i46 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 6
  %61 = ptrtoint ptr %ival17.i46 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %ival17.i46, align 4
  %63 = ptrtoint ptr %ival1.i45 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %62, ptr %ival1.i45, align 4
  %ival2.i47 = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i34, i32 0, i32 4
  %ival28.i48 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 7
  %64 = ptrtoint ptr %ival28.i48 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 8)
  %65 = load i64, ptr %ival28.i48, align 4
  %66 = ptrtoint ptr %ival2.i47 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %65, ptr %ival2.i47, align 4
  %can_id.i49 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 2
  %67 = ptrtoint ptr %can_id.i49 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %can_id.i49, align 4
  %can_id9.i50 = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i34, i32 0, i32 5
  %69 = ptrtoint ptr %can_id9.i50 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %can_id9.i50, align 4
  call fastcc void @bcm_send_to_user(ptr noundef %op, ptr noundef nonnull %head.i34, ptr noundef %lastdata, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %head.i34) #15
  %call18 = tail call i64 @ktime_get() #15
  %70 = ptrtoint ptr %kt_lastmsg to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %call18, ptr %kt_lastmsg, align 8
  br label %return

return:                                           ; preds = %bcm_rx_changed.exit52, %if.then13, %if.end.return_crit_edge, %bcm_rx_changed.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_rx_cmp_to_index(ptr noundef %op, i32 noundef %index, ptr nocapture noundef readonly %rxdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frames = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 19
  %0 = ptrtoint ptr %frames to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frames, align 4
  %cfsiz = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 15
  %2 = ptrtoint ptr %cfsiz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfsiz, align 4
  %mul = mul i32 %3, %index
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %last_frames = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 20
  %4 = ptrtoint ptr %last_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %last_frames, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 %mul
  %flags = getelementptr inbounds %struct.canfd_frame, ptr %add.ptr3, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 1
  %8 = and i8 %7, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %for.cond.preheader

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %entry
  %len = getelementptr inbounds %struct.canfd_frame, ptr %rxdata, i32 0, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len, align 4
  %conv4 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp61.not = icmp eq i8 %10, 0
  br i1 %cmp61.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data.i = getelementptr inbounds %struct.canfd_frame, ptr %add.ptr, i32 0, i32 5
  %data.i54 = getelementptr inbounds %struct.canfd_frame, ptr %rxdata, i32 0, i32 5
  %data.i58 = getelementptr inbounds %struct.canfd_frame, ptr %add.ptr3, i32 0, i32 5
  br label %for.body

for.cond:                                         ; preds = %for.body
  %add = add nuw nsw i32 %i.062, 8
  %cmp = icmp ult i32 %add, %conv4
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.cond.for.body_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %i.062
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr.i, align 8
  %add.ptr.i55 = getelementptr i8, ptr %data.i54, i32 %i.062
  %13 = ptrtoint ptr %add.ptr.i55 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr.i55, align 8
  %add.ptr.i59 = getelementptr i8, ptr %data.i58, i32 %i.062
  %15 = ptrtoint ptr %add.ptr.i59 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr.i59, align 8
  %17 = xor i64 %16, %14
  %18 = and i64 %17, %12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp11.not = icmp eq i64 %18, 0
  br i1 %cmp11.not, label %for.cond, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %flags15 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 3
  %19 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags15, align 8
  %and16 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %for.end.cleanup_crit_edge, label %if.then18

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then18:                                        ; preds = %for.end
  %len21 = getelementptr inbounds %struct.canfd_frame, ptr %add.ptr3, i32 0, i32 1
  %21 = ptrtoint ptr %len21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %len21, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %22)
  %cmp23.not = icmp eq i8 %10, %22
  br i1 %cmp23.not, label %if.then18.cleanup_crit_edge, label %if.then18.cleanup.sink.split_crit_edge

if.then18.cleanup.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then18.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  tail call fastcc void @bcm_rx_update_and_send(ptr noundef %op, ptr noundef %add.ptr3, ptr noundef %rxdata)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then18.cleanup_crit_edge, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_send(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_send_to_user(ptr nocapture noundef readonly %op, ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %frames, i32 noundef %has_timestamp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 24
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 8
  %nframes = getelementptr inbounds %struct.bcm_msg_head, ptr %head, i32 0, i32 6
  %2 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nframes, align 8
  %cfsiz = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 15
  %4 = ptrtoint ptr %cfsiz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfsiz, align 4
  %mul = mul i32 %5, %3
  %add = add i32 %mul, 40
  %6 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %9, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 3264, i32 2592
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef %cond.i, i32 noundef 0, i32 noundef -1) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i45 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 40) #15
  %10 = call ptr @memcpy(ptr %call.i45, ptr %head, i32 40)
  %11 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nframes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i, align 8
  %call.i46 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %mul) #15
  %15 = call ptr @memcpy(ptr %call.i46, ptr %frames, i32 %mul)
  %16 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nframes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp eq i32 %17, 1
  br i1 %cmp, label %if.then10, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.canfd_frame, ptr %14, i32 0, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags, align 1
  %20 = and i8 %19, 63
  store i8 %20, ptr %flags, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then6.if.end13_crit_edge, %if.end.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %has_timestamp)
  %tobool14.not = icmp eq i32 %has_timestamp, 0
  br i1 %tobool14.not, label %if.end13.do.end_crit_edge, label %if.then15

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %rx_stamp = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 10
  %21 = ptrtoint ptr %rx_stamp to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rx_stamp, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %22, ptr %23, align 8
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.end13.do.end_crit_edge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %25 = call ptr @memset(ptr %cb, i32 0, i32 24)
  %26 = ptrtoint ptr %cb to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 29, ptr %cb, align 8
  %rx_ifindex = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 14
  %27 = ptrtoint ptr %rx_ifindex to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_ifindex, align 8
  %can_ifindex = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 4
  %29 = ptrtoint ptr %can_ifindex to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %can_ifindex, align 4
  %call17 = tail call i32 @sock_queue_rcv_skb(ptr noundef %1, ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #15
  %dropped_usr_msgs = getelementptr inbounds %struct.bcm_sock, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %dropped_usr_msgs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dropped_usr_msgs, align 8
  %inc = add i32 %31, 1
  store i32 %inc, ptr %dropped_usr_msgs, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_single(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  %ifname = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ifname) #15
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = call ptr @memset(ptr %ifname, i32 255, i32 16)
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private, align 8
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %3 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %file, align 4
  %f_inode = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 54
  %7 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_private.i, align 4
  %sk_socket = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 71
  %9 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_socket, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, ptr noundef %10) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef %8) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, ptr noundef %8) #15
  %dropped_usr_msgs = getelementptr inbounds %struct.bcm_sock, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %dropped_usr_msgs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dropped_usr_msgs, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef %12) #15
  %ifindex = getelementptr inbounds %struct.bcm_sock, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex, align 4
  %call2 = call fastcc ptr @bcm_proc_getifname(ptr noundef %2, ptr noundef nonnull %ifname, i32 noundef %14)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, ptr noundef %call2) #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10) #15
  %rx_ops = getelementptr inbounds %struct.bcm_sock, ptr %8, i32 0, i32 4
  %15 = ptrtoint ptr %rx_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %op.0166 = load ptr, ptr %rx_ops, align 8
  %cmp.not167 = icmp eq ptr %op.0166, %rx_ops
  br i1 %cmp.not167, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %op.0168 = phi ptr [ %op.0, %cleanup.for.body_crit_edge ], [ %op.0166, %entry.for.body_crit_edge ]
  %frames_abs = getelementptr inbounds %struct.bcm_op, ptr %op.0168, i32 0, i32 4
  %16 = ptrtoint ptr %frames_abs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frames_abs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %for.body
  %can_id = getelementptr inbounds %struct.bcm_op, ptr %op.0168, i32 0, i32 2
  %18 = ptrtoint ptr %can_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %can_id, align 4
  %ifindex5 = getelementptr inbounds %struct.bcm_op, ptr %op.0168, i32 0, i32 1
  %20 = ptrtoint ptr %ifindex5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ifindex5, align 8
  %call6 = call fastcc ptr @bcm_proc_getifname(ptr noundef %2, ptr noundef nonnull %ifname, i32 noundef %21)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %19, ptr noundef %call6) #15
  %flags = getelementptr inbounds %struct.bcm_op, ptr %op.0168, i32 0, i32 3
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %and = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %nframes9 = getelementptr inbounds %struct.bcm_op, ptr %op.0168, i32 0, i32 17
  %24 = ptrtoint ptr %nframes9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nframes9, align 4
  %.str.13..str.12 = select i1 %tobool7.not, ptr @.str.13, ptr @.str.12
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.13..str.12, i32 noundef %25) #15
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 8
  %and12 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %cond = select i1 %tobool13.not, i32 32, i32 100
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %cond) #15
  %kt_ival1 = getelementptr inbounds %struct.bcm_op, ptr %op.0168, i32 0, i32 11
  %28 = ptrtoint ptr %kt_ival1 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %kt_ival1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool14.not = icmp eq i64 %29, 0
  br i1 %tobool14.not, label %if.end.if.end18_crit_edge, label %if.then15

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp8.i.i = icmp slt i64 %29, 0
  %30 = call i64 @llvm.abs.i64(i64 %29, i1 false) #15
  %31 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %30, i32 0) #19, !srcloc !132
  %asmresult.i.i.i = extractvalue { i64, i32 } %31, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %31, 1
  %32 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %30, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #19, !srcloc !133
  %asmresult10.i.i.i = extractvalue { i64, i32 } %32, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i64 noundef %cond213.i.i) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end.if.end18_crit_edge
  %kt_ival2 = getelementptr inbounds %struct.bcm_op, ptr %op.0168, i32 0, i32 12
  %33 = ptrtoint ptr %kt_ival2 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %kt_ival2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool19.not = icmp eq i64 %34, 0
  br i1 %tobool19.not, label %if.end18.if.end23_crit_edge, label %if.then20

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %cmp8.i.i145 = icmp slt i64 %34, 0
  %35 = call i64 @llvm.abs.i64(i64 %34, i1 false) #15
  %36 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %35, i32 0) #19, !srcloc !132
  %asmresult.i.i.i146 = extractvalue { i64, i32 } %36, 0
  %asmresult4.i.i.i147 = extractvalue { i64, i32 } %36, 1
  %37 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %35, i64 %asmresult.i.i.i146, i32 %asmresult4.i.i.i147) #19, !srcloc !133
  %asmresult10.i.i.i148 = extractvalue { i64, i32 } %37, 0
  %div1811.i.i149 = lshr i64 %asmresult10.i.i.i148, 9
  %sub210.i.i150 = sub nsw i64 0, %div1811.i.i149
  %cond213.i.i151 = select i1 %cmp8.i.i145, i64 %sub210.i.i150, i64 %div1811.i.i149
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, i64 noundef %cond213.i.i151) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18.if.end23_crit_edge
  %frames_filtered = getelementptr inbounds %struct.bcm_op, ptr %op.0168, i32 0, i32 5
  %38 = ptrtoint ptr %frames_filtered to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %frames_filtered, align 8
  %40 = ptrtoint ptr %frames_abs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %frames_abs, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, i32 noundef %39, i32 noundef %41) #15
  %42 = ptrtoint ptr %frames_filtered to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %frames_filtered, align 8
  %mul = mul i32 %43, 100
  %44 = ptrtoint ptr %frames_abs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %frames_abs, align 4
  %div = udiv i32 %mul, %45
  %sub = sub i32 100, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %mul)
  %cmp27 = icmp ugt i32 %45, %mul
  %cond28 = select i1 %cmp27, ptr @.str.19, ptr @.str.20
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond28, i32 noundef %sub) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %for.body.cleanup_crit_edge
  %46 = ptrtoint ptr %op.0168 to i32
  call void @__asan_load4_noabort(i32 %46)
  %op.0 = load ptr, ptr %op.0168, align 8
  %cmp.not = icmp eq ptr %op.0, %rx_ops
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_ops = getelementptr inbounds %struct.bcm_sock, ptr %8, i32 0, i32 5
  %47 = ptrtoint ptr %tx_ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %op.1169 = load ptr, ptr %tx_ops, align 8
  %cmp41.not170 = icmp eq ptr %op.1169, %tx_ops
  br i1 %cmp41.not170, label %for.end.for.end75_crit_edge, label %for.end.for.body43_crit_edge

for.end.for.body43_crit_edge:                     ; preds = %for.end
  br label %for.body43

for.end.for.end75_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end75

for.body43:                                       ; preds = %if.end67.for.body43_crit_edge, %for.end.for.body43_crit_edge
  %op.1171 = phi ptr [ %op.1, %if.end67.for.body43_crit_edge ], [ %op.1169, %for.end.for.body43_crit_edge ]
  %can_id44 = getelementptr inbounds %struct.bcm_op, ptr %op.1171, i32 0, i32 2
  %48 = ptrtoint ptr %can_id44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %can_id44, align 4
  %ifindex46 = getelementptr inbounds %struct.bcm_op, ptr %op.1171, i32 0, i32 1
  %50 = ptrtoint ptr %ifindex46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ifindex46, align 8
  %call47 = call fastcc ptr @bcm_proc_getifname(ptr noundef %2, ptr noundef nonnull %ifname, i32 noundef %51)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef %49, ptr noundef %call47) #15
  %flags48 = getelementptr inbounds %struct.bcm_op, ptr %op.1171, i32 0, i32 3
  %52 = ptrtoint ptr %flags48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags48, align 8
  %and49 = and i32 %53, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %nframes54 = getelementptr inbounds %struct.bcm_op, ptr %op.1171, i32 0, i32 17
  %54 = ptrtoint ptr %nframes54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nframes54, align 4
  %.str.23..str.22 = select i1 %tobool50.not, ptr @.str.23, ptr @.str.22
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.23..str.22, i32 noundef %55) #15
  %kt_ival156 = getelementptr inbounds %struct.bcm_op, ptr %op.1171, i32 0, i32 11
  %56 = ptrtoint ptr %kt_ival156 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %kt_ival156, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %57)
  %tobool57.not = icmp eq i64 %57, 0
  br i1 %tobool57.not, label %for.body43.if.end61_crit_edge, label %if.then58

for.body43.if.end61_crit_edge:                    ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then58:                                        ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %57)
  %cmp8.i.i152 = icmp slt i64 %57, 0
  %58 = call i64 @llvm.abs.i64(i64 %57, i1 false) #15
  %59 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %58, i32 0) #19, !srcloc !132
  %asmresult.i.i.i153 = extractvalue { i64, i32 } %59, 0
  %asmresult4.i.i.i154 = extractvalue { i64, i32 } %59, 1
  %60 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %58, i64 %asmresult.i.i.i153, i32 %asmresult4.i.i.i154) #19, !srcloc !133
  %asmresult10.i.i.i155 = extractvalue { i64, i32 } %60, 0
  %div1811.i.i156 = lshr i64 %asmresult10.i.i.i155, 9
  %sub210.i.i157 = sub nsw i64 0, %div1811.i.i156
  %cond213.i.i158 = select i1 %cmp8.i.i152, i64 %sub210.i.i157, i64 %div1811.i.i156
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i64 noundef %cond213.i.i158) #15
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %for.body43.if.end61_crit_edge
  %kt_ival262 = getelementptr inbounds %struct.bcm_op, ptr %op.1171, i32 0, i32 12
  %61 = ptrtoint ptr %kt_ival262 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %kt_ival262, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %62)
  %tobool63.not = icmp eq i64 %62, 0
  br i1 %tobool63.not, label %if.end61.if.end67_crit_edge, label %if.then64

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %62)
  %cmp8.i.i159 = icmp slt i64 %62, 0
  %63 = call i64 @llvm.abs.i64(i64 %62, i1 false) #15
  %64 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %63, i32 0) #19, !srcloc !132
  %asmresult.i.i.i160 = extractvalue { i64, i32 } %64, 0
  %asmresult4.i.i.i161 = extractvalue { i64, i32 } %64, 1
  %65 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %63, i64 %asmresult.i.i.i160, i32 %asmresult4.i.i.i161) #19, !srcloc !133
  %asmresult10.i.i.i162 = extractvalue { i64, i32 } %65, 0
  %div1811.i.i163 = lshr i64 %asmresult10.i.i.i162, 9
  %sub210.i.i164 = sub nsw i64 0, %div1811.i.i163
  %cond213.i.i165 = select i1 %cmp8.i.i159, i64 %sub210.i.i164, i64 %div1811.i.i163
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, i64 noundef %cond213.i.i165) #15
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end61.if.end67_crit_edge
  %frames_abs68 = getelementptr inbounds %struct.bcm_op, ptr %op.1171, i32 0, i32 4
  %66 = ptrtoint ptr %frames_abs68 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %frames_abs68, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26, i32 noundef %67) #15
  %68 = ptrtoint ptr %op.1171 to i32
  call void @__asan_load4_noabort(i32 %68)
  %op.1 = load ptr, ptr %op.1171, align 8
  %cmp41.not = icmp eq ptr %op.1, %tx_ops
  br i1 %cmp41.not, label %if.end67.for.end75_crit_edge, label %if.end67.for.body43_crit_edge

if.end67.for.body43_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body43

if.end67.for.end75_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end75

for.end75:                                        ; preds = %if.end67.for.end75_crit_edge, %for.end.for.end75_crit_edge
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ifname) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bcm_proc_getifname(ptr noundef %net, ptr noundef %result, i32 noundef %ifindex) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifindex)
  %tobool.not = icmp eq i32 %ifindex, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !134
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 696, ptr noundef nonnull @.str.30) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @dev_get_by_index_rcu(ptr noundef %net, i32 noundef %ifindex) #15
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call ptr @strcpy(ptr noundef %result, ptr noundef nonnull %call) #20
  br label %if.end5

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %result to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 1061109504, ptr %result, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i10, label %if.end5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

if.end5.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %if.end5
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 724, ptr noundef nonnull @.str.31) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %if.end5.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !135
  %5 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i.i.i17 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %result, %rcu_read_unlock.exit ], [ @.str.27, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_tx_setup(ptr nocapture noundef readonly %msg_head, ptr noundef %msg, i32 noundef %ifindex, ptr noundef %sk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifindex)
  %tobool.not = icmp eq i32 %ifindex, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %nframes = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 6
  %0 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nframes, align 8
  %2 = add i32 %1, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %2)
  %3 = icmp ult i32 %2, -256
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %land.lhs.true

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %ival1.i = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 3
  %6 = ptrtoint ptr %ival1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ival1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34560000, i32 %7)
  %8 = icmp ugt i32 %7, 34560000
  br i1 %8, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false4.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false4.i:                                 ; preds = %land.lhs.true
  %tv_usec.i = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %tv_usec.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_usec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %10)
  %11 = icmp ugt i32 %10, 999999
  br i1 %11, label %lor.lhs.false4.i.cleanup_crit_edge, label %lor.lhs.false11.i

lor.lhs.false4.i.cleanup_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false11.i:                                ; preds = %lor.lhs.false4.i
  %ival2.i = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 4
  %12 = ptrtoint ptr %ival2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ival2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34560000, i32 %13)
  %14 = icmp ugt i32 %13, 34560000
  br i1 %14, label %lor.lhs.false11.i.cleanup_crit_edge, label %bcm_is_invalid_tv.exit

lor.lhs.false11.i.cleanup_crit_edge:              ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

bcm_is_invalid_tv.exit:                           ; preds = %lor.lhs.false11.i
  %tv_usec20.i = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %tv_usec20.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tv_usec20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %16)
  %17 = icmp ugt i32 %16, 999999
  br i1 %17, label %bcm_is_invalid_tv.exit.cleanup_crit_edge, label %bcm_is_invalid_tv.exit.if.end8_crit_edge

bcm_is_invalid_tv.exit.if.end8_crit_edge:         ; preds = %bcm_is_invalid_tv.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

bcm_is_invalid_tv.exit.cleanup_crit_edge:         ; preds = %bcm_is_invalid_tv.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %bcm_is_invalid_tv.exit.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %tx_ops = getelementptr inbounds %struct.bcm_sock, ptr %sk, i32 0, i32 5
  %18 = ptrtoint ptr %tx_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %op.021.i = load ptr, ptr %tx_ops, align 4
  %cmp.not22.i = icmp eq ptr %op.021.i, %tx_ops
  br i1 %cmp.not22.i, label %if.end8.if.else48_crit_edge, label %for.body.lr.ph.i

if.end8.if.else48_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else48

for.body.lr.ph.i:                                 ; preds = %if.end8
  %can_id1.i = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 5
  %19 = ptrtoint ptr %can_id1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %can_id1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %op.023.i = phi ptr [ %op.021.i, %for.body.lr.ph.i ], [ %op.0.i, %for.inc.i.for.body.i_crit_edge ]
  %can_id.i = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 2
  %21 = ptrtoint ptr %can_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %can_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp2.i = icmp eq i32 %22, %20
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ifindex3.i = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 1
  %23 = ptrtoint ptr %ifindex3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ifindex3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %ifindex)
  %cmp4.i = icmp eq i32 %24, %ifindex
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %flags.i = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 3
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 8
  %27 = xor i32 %26, %5
  %28 = and i32 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp8.i = icmp eq i32 %28, 0
  br i1 %cmp8.i, label %bcm_find_op.exit, label %land.lhs.true5.i.for.inc.i_crit_edge

land.lhs.true5.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true5.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %29 = ptrtoint ptr %op.023.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %op.0.i = load ptr, ptr %op.023.i, align 4
  %cmp.not.i = icmp eq ptr %op.0.i, %tx_ops
  br i1 %cmp.not.i, label %for.inc.i.if.else48_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.if.else48_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else48

bcm_find_op.exit:                                 ; preds = %land.lhs.true5.i
  %flags.i.le = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 3
  %tobool10.not = icmp eq ptr %op.023.i, null
  br i1 %tobool10.not, label %bcm_find_op.exit.if.else48_crit_edge, label %if.then11

bcm_find_op.exit.if.else48_crit_edge:             ; preds = %bcm_find_op.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else48

if.then11:                                        ; preds = %bcm_find_op.exit
  %nframes13 = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 17
  %30 = ptrtoint ptr %nframes13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nframes13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %31)
  %cmp14 = icmp ugt i32 %1, %31
  br i1 %cmp14, label %if.then11.cleanup_crit_edge, label %for.cond.preheader

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then11
  %32 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nframes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp18376.not = icmp eq i32 %33, 0
  br i1 %cmp18376.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %frames = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 19
  %cfsiz = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 15
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0377 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %34 = ptrtoint ptr %frames to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %frames, align 4
  %36 = ptrtoint ptr %cfsiz to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cfsiz, align 4
  %mul = mul i32 %37, %i.0377
  %add.ptr = getelementptr i8, ptr %35, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp9.i.i.i.i = icmp slt i32 %37, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %for.body
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !127

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %37, i1 noundef zeroext false) #15
  %call3.i.i.i = tail call i32 @_copy_from_iter(ptr noundef %add.ptr, i32 noundef %37, ptr noundef %msg_iter.i) #15
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %37)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %37
  br i1 %cmp.i.i, label %copy_from_iter.exit.i.i.memcpy_from_msg.exit_crit_edge, label %if.end.i.i, !prof !127

copy_from_iter.exit.i.i.memcpy_from_msg.exit_crit_edge: ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %memcpy_from_msg.exit

if.end.i.i:                                       ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #15
  br label %memcpy_from_msg.exit

memcpy_from_msg.exit:                             ; preds = %if.end.i.i, %copy_from_iter.exit.i.i.memcpy_from_msg.exit_crit_edge
  %cond.i = phi i32 [ 0, %copy_from_iter.exit.i.i.memcpy_from_msg.exit_crit_edge ], [ -14, %if.end.i.i ]
  %38 = ptrtoint ptr %flags.i.le to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i.le, align 8
  %and22 = and i32 %39, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %len29 = getelementptr inbounds %struct.canfd_frame, ptr %add.ptr, i32 0, i32 1
  %40 = ptrtoint ptr %len29 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %len29, align 4
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %memcpy_from_msg.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %41)
  %cmp25 = icmp ugt i8 %41, 64
  %cmp.i.i.not364 = xor i1 %cmp.i.i, true
  %brmerge365 = select i1 %cmp25, i1 true, i1 %cmp.i.i.not364
  br i1 %brmerge365, label %cleanup.loopexit.split.loop.exit373, label %if.then24.if.end39_crit_edge

if.then24.if.end39_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.else:                                          ; preds = %memcpy_from_msg.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %41)
  %cmp31 = icmp ugt i8 %41, 8
  %cmp.i.i.not = xor i1 %cmp.i.i, true
  %brmerge = select i1 %cmp31, i1 true, i1 %cmp.i.i.not
  br i1 %brmerge, label %cleanup.loopexit.split.loop.exit, label %if.else.if.end39_crit_edge

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.end39:                                         ; preds = %if.else.if.end39_crit_edge, %if.then24.if.end39_crit_edge
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %and41 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.for.inc_crit_edge, label %if.then43

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %can_id1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %can_id1.i, align 4
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %add.ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %if.end39.for.inc_crit_edge
  %inc = add nuw i32 %i.0377, 1
  %47 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nframes, align 8
  %cmp18 = icmp ult i32 %inc, %48
  br i1 %cmp18, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %51 = ptrtoint ptr %flags.i.le to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %flags.i.le, align 8
  br label %if.end130

if.else48:                                        ; preds = %bcm_find_op.exit.if.else48_crit_edge, %for.inc.i.if.else48_crit_edge, %if.end8.if.else48_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 360) #21
  %tobool50.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool50.not, label %if.else48.cleanup_crit_edge, label %if.end52

if.else48.cleanup_crit_edge:                      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end52:                                         ; preds = %if.else48
  %can_id53 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 5
  %53 = ptrtoint ptr %can_id53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %can_id53, align 4
  %can_id54 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %can_id54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %can_id54, align 4
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  %and56 = and i32 %57, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %cond = select i1 %tobool57.not, i32 16, i32 72
  %cfsiz58 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 15
  %58 = ptrtoint ptr %cfsiz58 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %cond, ptr %cfsiz58, align 4
  %flags60 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %flags60 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %57, ptr %flags60, align 8
  %60 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nframes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp62 = icmp ugt i32 %61, 1
  br i1 %cmp62, label %if.then64, label %if.end75.sink.split

if.then64:                                        ; preds = %if.end52
  %62 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %61, i32 %cond) #15
  %63 = extractvalue { i32, i1 } %62, 1
  br i1 %63, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !123

kmalloc_array.exit.thread:                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  %frames68353 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 19
  %64 = ptrtoint ptr %frames68353 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %frames68353, align 4
  br label %if.then71

if.end7.i:                                        ; preds = %if.then64
  %65 = extractvalue { i32, i1 } %62, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %65, i32 noundef 3264) #22
  %frames68 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 19
  %66 = ptrtoint ptr %frames68 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call8.i, ptr %frames68, align 4
  %tobool70.not = icmp eq ptr %call8.i, null
  br i1 %tobool70.not, label %if.end7.i.if.then71_crit_edge, label %if.end7.i.if.end75_crit_edge

if.end7.i.if.end75_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.end7.i.if.then71_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then71

if.then71:                                        ; preds = %if.end7.i.if.then71_crit_edge, %kmalloc_array.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end75.sink.split:                              ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  %sframe = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 22
  %frames68357 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 19
  %67 = ptrtoint ptr %frames68357 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %sframe, ptr %frames68357, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end75.sink.split, %if.end7.i.if.end75_crit_edge
  %68 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nframes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp78383.not = icmp eq i32 %69, 0
  br i1 %cmp78383.not, label %if.end75.for.end125_crit_edge, label %for.body80.lr.ph

if.end75.for.end125_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end125

for.body80.lr.ph:                                 ; preds = %if.end75
  %frames81 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 19
  %msg_iter.i315 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  br label %for.body80

for.body80:                                       ; preds = %for.inc123.for.body80_crit_edge, %for.body80.lr.ph
  %i.1384 = phi i32 [ 0, %for.body80.lr.ph ], [ %inc124, %for.inc123.for.body80_crit_edge ]
  %70 = ptrtoint ptr %frames81 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %frames81, align 4
  %72 = ptrtoint ptr %cfsiz58 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cfsiz58, align 4
  %mul83 = mul i32 %73, %i.1384
  %add.ptr84 = getelementptr i8, ptr %71, i32 %mul83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp9.i.i.i.i322 = icmp slt i32 %73, 0
  br i1 %cmp9.i.i.i.i322, label %land.rhs16.i.i.i.i325, label %if.then.i.i.i.i.i328

land.rhs16.i.i.i.i325:                            ; preds = %for.body80
  %.b71.i.i.i.i324 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i324, label %land.rhs16.i.i.i.i325.copy_from_iter.exit.i.i333_crit_edge, label %if.then27.i.i.i.i326, !prof !127

land.rhs16.i.i.i.i325.copy_from_iter.exit.i.i333_crit_edge: ; preds = %land.rhs16.i.i.i.i325
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_from_iter.exit.i.i333

if.then27.i.i.i.i326:                             ; preds = %land.rhs16.i.i.i.i325
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_from_iter.exit.i.i333

if.then.i.i.i.i.i328:                             ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__check_object_size(ptr noundef %add.ptr84, i32 noundef %73, i1 noundef zeroext false) #15
  %call3.i.i.i329 = tail call i32 @_copy_from_iter(ptr noundef %add.ptr84, i32 noundef %73, ptr noundef %msg_iter.i315) #15
  br label %copy_from_iter.exit.i.i333

copy_from_iter.exit.i.i333:                       ; preds = %if.then.i.i.i.i.i328, %if.then27.i.i.i.i326, %land.rhs16.i.i.i.i325.copy_from_iter.exit.i.i333_crit_edge
  %retval.0.i.i.i331 = phi i32 [ %call3.i.i.i329, %if.then.i.i.i.i.i328 ], [ 0, %if.then27.i.i.i.i326 ], [ 0, %land.rhs16.i.i.i.i325.copy_from_iter.exit.i.i333_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i331, i32 %73)
  %cmp.i.i332 = icmp eq i32 %retval.0.i.i.i331, %73
  br i1 %cmp.i.i332, label %copy_from_iter.exit.i.i333.memcpy_from_msg.exit336_crit_edge, label %if.end.i.i334, !prof !127

copy_from_iter.exit.i.i333.memcpy_from_msg.exit336_crit_edge: ; preds = %copy_from_iter.exit.i.i333
  call void @__sanitizer_cov_trace_pc() #17
  br label %memcpy_from_msg.exit336

if.end.i.i334:                                    ; preds = %copy_from_iter.exit.i.i333
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i315, i32 noundef %retval.0.i.i.i331) #15
  br label %memcpy_from_msg.exit336

memcpy_from_msg.exit336:                          ; preds = %if.end.i.i334, %copy_from_iter.exit.i.i333.memcpy_from_msg.exit336_crit_edge
  %cond.i335 = phi i32 [ 0, %copy_from_iter.exit.i.i333.memcpy_from_msg.exit336_crit_edge ], [ -14, %if.end.i.i334 ]
  %74 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags60, align 8
  %and88 = and i32 %75, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %len98 = getelementptr inbounds %struct.canfd_frame, ptr %add.ptr84, i32 0, i32 1
  %76 = ptrtoint ptr %len98 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %len98, align 4
  br i1 %tobool89.not, label %if.else97, label %if.then90

if.then90:                                        ; preds = %memcpy_from_msg.exit336
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %77)
  %cmp93 = icmp ugt i8 %77, 64
  %cmp.i.i332.not369 = xor i1 %cmp.i.i332, true
  %brmerge370 = select i1 %cmp93, i1 true, i1 %cmp.i.i332.not369
  br i1 %brmerge370, label %if.then90.if.then107_crit_edge, label %if.then90.if.end115_crit_edge

if.then90.if.end115_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end115

if.then90.if.then107_crit_edge:                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then107

if.else97:                                        ; preds = %memcpy_from_msg.exit336
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %77)
  %cmp100 = icmp ugt i8 %77, 8
  %cmp.i.i332.not = xor i1 %cmp.i.i332, true
  %brmerge367 = select i1 %cmp100, i1 true, i1 %cmp.i.i332.not
  br i1 %brmerge367, label %if.else97.if.then107_crit_edge, label %if.else97.if.end115_crit_edge

if.else97.if.end115_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end115

if.else97.if.then107_crit_edge:                   ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then107

if.then107:                                       ; preds = %if.else97.if.then107_crit_edge, %if.then90.if.then107_crit_edge
  %cmp100.sink = phi i1 [ %cmp93, %if.then90.if.then107_crit_edge ], [ %cmp100, %if.else97.if.then107_crit_edge ]
  %.mux368.le = select i1 %cmp100.sink, i32 -22, i32 %cond.i335
  %78 = ptrtoint ptr %frames81 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %frames81, align 4
  %sframe109 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 22
  %cmp110.not = icmp eq ptr %79, %sframe109
  br i1 %cmp110.not, label %if.then107.if.end114_crit_edge, label %if.then112

if.then107.if.end114_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end114

if.then112:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %79) #15
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.then107.if.end114_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end115:                                        ; preds = %if.else97.if.end115_crit_edge, %if.then90.if.end115_crit_edge
  %80 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags, align 4
  %and117 = and i32 %81, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end115.for.inc123_crit_edge, label %if.then119

if.end115.for.inc123_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc123

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #17
  %82 = ptrtoint ptr %can_id53 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %can_id53, align 4
  %84 = ptrtoint ptr %add.ptr84 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %add.ptr84, align 8
  br label %for.inc123

for.inc123:                                       ; preds = %if.then119, %if.end115.for.inc123_crit_edge
  %inc124 = add nuw i32 %i.1384, 1
  %85 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nframes, align 8
  %cmp78 = icmp ult i32 %inc124, %86
  br i1 %cmp78, label %for.inc123.for.body80_crit_edge, label %for.inc123.for.end125_crit_edge

for.inc123.for.end125_crit_edge:                  ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end125

for.inc123.for.body80_crit_edge:                  ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body80

for.end125:                                       ; preds = %for.inc123.for.end125_crit_edge, %if.end75.for.end125_crit_edge
  %last_frames = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 20
  %87 = ptrtoint ptr %last_frames to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %last_frames, align 8
  %sk126 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 24
  %88 = ptrtoint ptr %sk126 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %sk, ptr %sk126, align 8
  %ifindex127 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %ifindex127 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %ifindex, ptr %ifindex127, align 8
  %timer = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 8
  tail call void @hrtimer_init(ptr noundef %timer, i32 noundef 1, i32 noundef 5) #15
  %function = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 8, i32 2
  %90 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @bcm_tx_timeout_handler, ptr %function, align 8
  %thrtimer = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 9
  tail call void @hrtimer_init(ptr noundef %thrtimer, i32 noundef 1, i32 noundef 5) #15
  %91 = ptrtoint ptr %tx_ops to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tx_ops, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i, ptr noundef %tx_ops, ptr noundef %92) #15
  br i1 %call.i.i, label %if.end.i.i337, label %for.end125.if.end130_crit_edge

for.end125.if.end130_crit_edge:                   ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130

if.end.i.i337:                                    ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %94 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %92, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %tx_ops, ptr %prev3.i.i, align 4
  %96 = ptrtoint ptr %tx_ops to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %call7.i.i, ptr %tx_ops, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.end.i.i337, %for.end125.if.end130_crit_edge, %for.end
  %op.0 = phi ptr [ %op.023.i, %for.end ], [ %call7.i.i, %for.end125.if.end130_crit_edge ], [ %call7.i.i, %if.end.i.i337 ]
  %nframes131 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 17
  %97 = ptrtoint ptr %nframes131 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nframes131, align 4
  %99 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nframes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp133.not = icmp eq i32 %98, %100
  br i1 %cmp133.not, label %if.end130.if.end138_crit_edge, label %if.then135

if.end130.if.end138_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end138

if.then135:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  %101 = ptrtoint ptr %nframes131 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %nframes131, align 4
  %currframe = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 18
  %102 = ptrtoint ptr %currframe to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %currframe, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.then135, %if.end130.if.end138_crit_edge
  %flags139 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 3
  %103 = ptrtoint ptr %flags139 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags139, align 8
  %and140 = and i32 %104, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end138.if.end144_crit_edge, label %if.then142

if.end138.if.end144_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end144

if.then142:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #17
  %currframe143 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 18
  %105 = ptrtoint ptr %currframe143 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %currframe143, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %if.end138.if.end144_crit_edge
  %106 = ptrtoint ptr %flags139 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags139, align 8
  %and146 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end144.if.end165_crit_edge, label %if.then148

if.end144.if.end165_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end165

if.then148:                                       ; preds = %if.end144
  %count = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 2
  %108 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %count, align 8
  %count149 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 16
  %110 = ptrtoint ptr %count149 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %count149, align 8
  %ival1 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 6
  %ival1150 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 3
  %111 = ptrtoint ptr %ival1150 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 8)
  %112 = load i64, ptr %ival1150, align 4
  %113 = ptrtoint ptr %ival1 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 8)
  store i64 %112, ptr %ival1, align 4
  %ival2 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 7
  %ival2151 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 4
  %114 = ptrtoint ptr %ival2151 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 8)
  %115 = load i64, ptr %ival2151, align 4
  %116 = ptrtoint ptr %ival2 to i32
  call void @__asan_storeN_noabort(i32 %116, i32 8)
  store i64 %115, ptr %ival2, align 4
  %.unpack = load i32, ptr %ival1150, align 4
  %.elt300 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 3, i32 1
  %117 = ptrtoint ptr %.elt300 to i32
  call void @__asan_load4_noabort(i32 %117)
  %.unpack301 = load i32, ptr %.elt300, align 4
  %conv.i = sext i32 %.unpack to i64
  %mul.i = mul i32 %.unpack301, 1000
  %mul.i.i = mul nsw i64 %conv.i, 1000000000
  %conv.i.i = zext i32 %mul.i to i64
  %add.i.i = add nsw i64 %mul.i.i, %conv.i.i
  %kt_ival1 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 11
  %118 = ptrtoint ptr %kt_ival1 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %add.i.i, ptr %kt_ival1, align 8
  %.unpack302 = load i32, ptr %ival2151, align 4
  %.elt303 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 4, i32 1
  %119 = ptrtoint ptr %.elt303 to i32
  call void @__asan_load4_noabort(i32 %119)
  %.unpack304 = load i32, ptr %.elt303, align 4
  %conv.i338 = sext i32 %.unpack302 to i64
  %mul.i339 = mul i32 %.unpack304, 1000
  %mul.i.i340 = mul nsw i64 %conv.i338, 1000000000
  %conv.i.i341 = zext i32 %mul.i339 to i64
  %add.i.i342 = add nsw i64 %mul.i.i340, %conv.i.i341
  %kt_ival2 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 12
  %120 = ptrtoint ptr %kt_ival2 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %add.i.i342, ptr %kt_ival2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i.i)
  %tobool157.not = icmp eq i64 %add.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i.i342)
  %tobool160.not = icmp eq i64 %add.i.i342, 0
  %or.cond308 = select i1 %tobool157.not, i1 %tobool160.not, i1 false
  br i1 %or.cond308, label %if.then161, label %if.then148.if.end165_crit_edge

if.then148.if.end165_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end165

if.then161:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #17
  %timer162 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 8
  %call163 = tail call i32 @hrtimer_cancel(ptr noundef %timer162) #15
  br label %if.end165

if.end165:                                        ; preds = %if.then161, %if.then148.if.end165_crit_edge, %if.end144.if.end165_crit_edge
  %121 = ptrtoint ptr %flags139 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags139, align 8
  %and167 = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.end165.if.end173_crit_edge, label %if.then169

if.end165.if.end173_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end173

if.then169:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #17
  %timer170 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 8
  %call171 = tail call i32 @hrtimer_cancel(ptr noundef %timer170) #15
  %123 = ptrtoint ptr %flags139 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags139, align 8
  %or = or i32 %124, 8
  store i32 %or, ptr %flags139, align 8
  br label %if.end173

if.end173:                                        ; preds = %if.then169, %if.end165.if.end173_crit_edge
  %125 = ptrtoint ptr %flags139 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %flags139, align 8
  %and175 = and i32 %126, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end173.if.end183_crit_edge, label %if.then177

if.end173.if.end183_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end183

if.then177:                                       ; preds = %if.end173
  tail call fastcc void @bcm_can_tx(ptr noundef nonnull %op.0)
  %count178 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 16
  %127 = ptrtoint ptr %count178 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %count178, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool179.not = icmp eq i32 %128, 0
  br i1 %tobool179.not, label %if.then177.if.end183_crit_edge, label %if.then180

if.then177.if.end183_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end183

if.then180:                                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #17
  %dec = add i32 %128, -1
  %129 = ptrtoint ptr %count178 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %dec, ptr %count178, align 8
  br label %if.end183

if.end183:                                        ; preds = %if.then180, %if.then177.if.end183_crit_edge, %if.end173.if.end183_crit_edge
  %130 = ptrtoint ptr %flags139 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %flags139, align 8
  %and185 = and i32 %131, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.end183.if.end188_crit_edge, label %if.then187

if.end183.if.end188_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end188

if.then187:                                       ; preds = %if.end183
  %timer.i = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 8
  %kt_ival1.i.i = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 11
  %132 = ptrtoint ptr %kt_ival1.i.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %kt_ival1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %133)
  %tobool.not.i.i = icmp eq i64 %133, 0
  br i1 %tobool.not.i.i, label %if.then187.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.then187.if.else.i.i_crit_edge:                 ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.then187
  %count.i.i = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 16
  %134 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool1.not.i.i = icmp eq i32 %135, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i.if.then.i_crit_edge

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.then187.if.else.i.i_crit_edge
  %kt_ival2.i.i = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 12
  %136 = ptrtoint ptr %kt_ival2.i.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %kt_ival2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %137)
  %tobool3.not.i.i = icmp eq i64 %137, 0
  br i1 %tobool3.not.i.i, label %if.else.i.i.if.end188_crit_edge, label %if.else.i.i.if.then.i_crit_edge

if.else.i.i.if.then.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.else.i.i.if.end188_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end188

if.then.i:                                        ; preds = %if.else.i.i.if.then.i_crit_edge, %land.lhs.true.i.i.if.then.i_crit_edge
  %ival.0.i.i = phi i64 [ %133, %land.lhs.true.i.i.if.then.i_crit_edge ], [ %137, %if.else.i.i.if.then.i_crit_edge ]
  %call.i.i343 = tail call i64 @ktime_get() #15
  %add.i.i344 = add i64 %call.i.i343, %ival.0.i.i
  %expires.i.i.i = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 8, i32 0, i32 1
  %138 = ptrtoint ptr %expires.i.i.i to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %add.i.i344, ptr %expires.i.i.i, align 8
  %_softexpires.i.i.i = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 8, i32 1
  %139 = ptrtoint ptr %_softexpires.i.i.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %add.i.i344, ptr %_softexpires.i.i.i, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %timer.i, i64 noundef %add.i.i344, i64 noundef 0, i32 noundef 4) #15
  br label %if.end188

if.end188:                                        ; preds = %if.then.i, %if.else.i.i.if.end188_crit_edge, %if.end183.if.end188_crit_edge
  %140 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %nframes, align 8
  %cfsiz190 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 15
  %142 = ptrtoint ptr %cfsiz190 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cfsiz190, align 4
  %mul191 = mul i32 %143, %141
  %add = add i32 %mul191, 40
  br label %cleanup

cleanup.loopexit.split.loop.exit:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %.mux.le = select i1 %cmp31, i32 -22, i32 %cond.i
  br label %cleanup

cleanup.loopexit.split.loop.exit373:              ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  %.mux366.le = select i1 %cmp25, i32 -22, i32 %cond.i
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit373, %cleanup.loopexit.split.loop.exit, %if.end188, %if.end114, %if.then71, %if.else48.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %bcm_is_invalid_tv.exit.cleanup_crit_edge, %lor.lhs.false11.i.cleanup_crit_edge, %lor.lhs.false4.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end188 ], [ %.mux368.le, %if.end114 ], [ -12, %if.then71 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %bcm_is_invalid_tv.exit.cleanup_crit_edge ], [ -7, %if.then11.cleanup_crit_edge ], [ -12, %if.else48.cleanup_crit_edge ], [ -22, %lor.lhs.false11.i.cleanup_crit_edge ], [ -22, %lor.lhs.false4.i.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %.mux.le, %cleanup.loopexit.split.loop.exit ], [ %.mux366.le, %cleanup.loopexit.split.loop.exit373 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_rx_setup(ptr nocapture noundef %msg_head, ptr noundef %msg, i32 noundef %ifindex, ptr noundef %sk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %nframes = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 6
  %2 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nframes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %or = or i32 %1, 32
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %flags, align 4
  %nframes3 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 6
  %5 = ptrtoint ptr %nframes3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %nframes3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %nframes4 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 6
  %6 = ptrtoint ptr %nframes4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nframes4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %7)
  %cmp = icmp ugt i32 %7, 257
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and8 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end16_crit_edge, label %land.lhs.true

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp11.not = icmp eq i32 %7, 1
  br i1 %cmp11.not, label %lor.lhs.false12, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false12:                                  ; preds = %land.lhs.true
  %can_id = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 5
  %10 = ptrtoint ptr %can_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %can_id, align 4
  %and13 = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %lor.lhs.false12.cleanup_crit_edge, label %lor.lhs.false12.if.end16_crit_edge

lor.lhs.false12.if.end16_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false12.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %and18 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end23_crit_edge, label %land.lhs.true20

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

land.lhs.true20:                                  ; preds = %if.end16
  %ival1.i = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 3
  %12 = ptrtoint ptr %ival1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ival1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34560000, i32 %13)
  %14 = icmp ugt i32 %13, 34560000
  br i1 %14, label %land.lhs.true20.cleanup_crit_edge, label %lor.lhs.false4.i

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false4.i:                                 ; preds = %land.lhs.true20
  %tv_usec.i = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %tv_usec.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tv_usec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %16)
  %17 = icmp ugt i32 %16, 999999
  br i1 %17, label %lor.lhs.false4.i.cleanup_crit_edge, label %lor.lhs.false11.i

lor.lhs.false4.i.cleanup_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false11.i:                                ; preds = %lor.lhs.false4.i
  %ival2.i = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 4
  %18 = ptrtoint ptr %ival2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ival2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34560000, i32 %19)
  %20 = icmp ugt i32 %19, 34560000
  br i1 %20, label %lor.lhs.false11.i.cleanup_crit_edge, label %bcm_is_invalid_tv.exit

lor.lhs.false11.i.cleanup_crit_edge:              ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

bcm_is_invalid_tv.exit:                           ; preds = %lor.lhs.false11.i
  %tv_usec20.i = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %tv_usec20.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tv_usec20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %22)
  %23 = icmp ugt i32 %22, 999999
  br i1 %23, label %bcm_is_invalid_tv.exit.cleanup_crit_edge, label %bcm_is_invalid_tv.exit.if.end23_crit_edge

bcm_is_invalid_tv.exit.if.end23_crit_edge:        ; preds = %bcm_is_invalid_tv.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

bcm_is_invalid_tv.exit.cleanup_crit_edge:         ; preds = %bcm_is_invalid_tv.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end23:                                         ; preds = %bcm_is_invalid_tv.exit.if.end23_crit_edge, %if.end16.if.end23_crit_edge
  %rx_ops = getelementptr inbounds %struct.bcm_sock, ptr %sk, i32 0, i32 4
  %24 = ptrtoint ptr %rx_ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %op.021.i = load ptr, ptr %rx_ops, align 4
  %cmp.not22.i = icmp eq ptr %op.021.i, %rx_ops
  br i1 %cmp.not22.i, label %if.end23.if.else_crit_edge, label %for.body.lr.ph.i

if.end23.if.else_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

for.body.lr.ph.i:                                 ; preds = %if.end23
  %can_id1.i = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 5
  %25 = ptrtoint ptr %can_id1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %can_id1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %op.023.i = phi ptr [ %op.021.i, %for.body.lr.ph.i ], [ %op.0.i, %for.inc.i.for.body.i_crit_edge ]
  %can_id.i = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 2
  %27 = ptrtoint ptr %can_id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %can_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp2.i = icmp eq i32 %28, %26
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ifindex3.i = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 1
  %29 = ptrtoint ptr %ifindex3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ifindex3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %ifindex)
  %cmp4.i = icmp eq i32 %30, %ifindex
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %flags.i = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 3
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i, align 8
  %33 = xor i32 %32, %9
  %34 = and i32 %33, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp8.i = icmp eq i32 %34, 0
  br i1 %cmp8.i, label %bcm_find_op.exit, label %land.lhs.true5.i.for.inc.i_crit_edge

land.lhs.true5.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true5.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %35 = ptrtoint ptr %op.023.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %op.0.i = load ptr, ptr %op.023.i, align 4
  %cmp.not.i = icmp eq ptr %op.0.i, %rx_ops
  br i1 %cmp.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

bcm_find_op.exit:                                 ; preds = %land.lhs.true5.i
  %flags.i.le = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 3
  %tobool25.not = icmp eq ptr %op.023.i, null
  br i1 %tobool25.not, label %bcm_find_op.exit.if.else_crit_edge, label %if.then26

bcm_find_op.exit.if.else_crit_edge:               ; preds = %bcm_find_op.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then26:                                        ; preds = %bcm_find_op.exit
  %nframes28 = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 17
  %36 = ptrtoint ptr %nframes28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nframes28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %37)
  %cmp29 = icmp ugt i32 %7, %37
  br i1 %cmp29, label %if.then26.cleanup_crit_edge, label %if.end31

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end31:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool33.not = icmp eq i32 %7, 0
  br i1 %tobool33.not, label %if.end31.if.end43_crit_edge, label %if.then34

if.end31.if.end43_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then34:                                        ; preds = %if.end31
  %cfsiz = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 15
  %38 = ptrtoint ptr %cfsiz to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cfsiz, align 4
  %mul = mul i32 %39, %7
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.then34
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !127

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  %frames = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 19
  %40 = ptrtoint ptr %frames to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %frames, align 4
  tail call void @__check_object_size(ptr noundef %41, i32 noundef %mul, i1 noundef zeroext false) #15
  %call3.i.i.i = tail call i32 @_copy_from_iter(ptr noundef %41, i32 noundef %mul, ptr noundef %msg_iter.i) #15
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %mul)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %mul
  br i1 %cmp.i.i, label %if.end39, label %memcpy_from_msg.exit.thread, !prof !127

memcpy_from_msg.exit.thread:                      ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #15
  br label %cleanup

if.end39:                                         ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %last_frames = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 20
  %42 = ptrtoint ptr %last_frames to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %last_frames, align 8
  %44 = ptrtoint ptr %nframes4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nframes4, align 8
  %46 = ptrtoint ptr %cfsiz to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cfsiz, align 4
  %mul42 = mul i32 %47, %45
  %48 = call ptr @memset(ptr %43, i32 0, i32 %mul42)
  br label %if.end43

if.end43:                                         ; preds = %if.end39, %if.end31.if.end43_crit_edge
  %49 = ptrtoint ptr %nframes4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nframes4, align 8
  %51 = ptrtoint ptr %nframes28 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %nframes28, align 4
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %54 = ptrtoint ptr %flags.i.le to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %flags.i.le, align 8
  br label %if.end116

if.else:                                          ; preds = %bcm_find_op.exit.if.else_crit_edge, %for.inc.i.if.else_crit_edge, %if.end23.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3520, i32 noundef 360) #21
  %tobool49.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool49.not, label %if.else.cleanup_crit_edge, label %if.end51

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end51:                                         ; preds = %if.else
  %can_id52 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 5
  %56 = ptrtoint ptr %can_id52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %can_id52, align 4
  %can_id53 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %can_id53 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %can_id53, align 4
  %59 = ptrtoint ptr %nframes4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nframes4, align 8
  %nframes55 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 17
  %61 = ptrtoint ptr %nframes55 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %nframes55, align 4
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 4
  %and57 = and i32 %63, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %cond = select i1 %tobool58.not, i32 16, i32 72
  %cfsiz59 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 15
  %64 = ptrtoint ptr %cfsiz59 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %cond, ptr %cfsiz59, align 4
  %flags61 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %flags61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %63, ptr %flags61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp63 = icmp ugt i32 %60, 1
  br i1 %cmp63, label %if.then64, label %if.else82

if.then64:                                        ; preds = %if.end51
  %66 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %60, i32 %cond) #15
  %67 = extractvalue { i32, i1 } %66, 1
  br i1 %67, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !123

kmalloc_array.exit.thread:                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  %frames68396 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 19
  %68 = ptrtoint ptr %frames68396 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %frames68396, align 4
  br label %if.then71

if.end7.i:                                        ; preds = %if.then64
  %69 = extractvalue { i32, i1 } %66, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %69, i32 noundef 3264) #22
  %frames68 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 19
  %70 = ptrtoint ptr %frames68 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call8.i, ptr %frames68, align 4
  %tobool70.not = icmp eq ptr %call8.i, null
  br i1 %tobool70.not, label %if.end7.i.if.then71_crit_edge, label %if.end72

if.end7.i.if.then71_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then71

if.then71:                                        ; preds = %if.end7.i.if.then71_crit_edge, %kmalloc_array.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end72:                                         ; preds = %if.end7.i
  %71 = ptrtoint ptr %nframes4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nframes4, align 8
  %73 = ptrtoint ptr %cfsiz59 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cfsiz59, align 4
  %75 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %72, i32 %74) #15
  %76 = extractvalue { i32, i1 } %75, 1
  br i1 %76, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !123

kcalloc.exit.thread:                              ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  %last_frames76404 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 20
  %77 = ptrtoint ptr %last_frames76404 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %last_frames76404, align 8
  br label %if.then79

if.end7.i.i:                                      ; preds = %if.end72
  %78 = extractvalue { i32, i1 } %75, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %78, i32 noundef 3520) #22
  %last_frames76 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 20
  %79 = ptrtoint ptr %last_frames76 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call8.i.i, ptr %last_frames76, align 8
  %tobool78.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool78.not, label %if.end7.i.i.if.then79_crit_edge, label %if.end7.i.i.if.end85_crit_edge

if.end7.i.i.if.end85_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

if.end7.i.i.if.then79_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then79

if.then79:                                        ; preds = %if.end7.i.i.if.then79_crit_edge, %kcalloc.exit.thread
  %80 = ptrtoint ptr %frames68 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %frames68, align 4
  tail call void @kfree(ptr noundef %81) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.else82:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  %sframe = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 22
  %frames83 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 19
  %82 = ptrtoint ptr %frames83 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %sframe, ptr %frames83, align 4
  %last_sframe = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 23
  %last_frames76408 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 20
  %83 = ptrtoint ptr %last_frames76408 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %last_sframe, ptr %last_frames76408, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.end7.i.i.if.end85_crit_edge
  %84 = ptrtoint ptr %nframes4 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nframes4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool87.not = icmp eq i32 %85, 0
  br i1 %tobool87.not, label %if.end85.if.end109_crit_edge, label %if.then88

if.end85.if.end109_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end109

if.then88:                                        ; preds = %if.end85
  %frames89 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 19
  %86 = ptrtoint ptr %cfsiz59 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cfsiz59, align 4
  %mul92 = mul i32 %87, %85
  %msg_iter.i353 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul92)
  %cmp9.i.i.i.i360 = icmp slt i32 %mul92, 0
  br i1 %cmp9.i.i.i.i360, label %land.rhs16.i.i.i.i363, label %if.then.i.i.i.i.i366

land.rhs16.i.i.i.i363:                            ; preds = %if.then88
  %.b71.i.i.i.i362 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i362, label %land.rhs16.i.i.i.i363.copy_from_iter.exit.i.i371_crit_edge, label %if.then27.i.i.i.i364, !prof !127

land.rhs16.i.i.i.i363.copy_from_iter.exit.i.i371_crit_edge: ; preds = %land.rhs16.i.i.i.i363
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_from_iter.exit.i.i371

if.then27.i.i.i.i364:                             ; preds = %land.rhs16.i.i.i.i363
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_from_iter.exit.i.i371

if.then.i.i.i.i.i366:                             ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #17
  %88 = ptrtoint ptr %frames89 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %frames89, align 4
  tail call void @__check_object_size(ptr noundef %89, i32 noundef %mul92, i1 noundef zeroext false) #15
  %call3.i.i.i367 = tail call i32 @_copy_from_iter(ptr noundef %89, i32 noundef %mul92, ptr noundef %msg_iter.i353) #15
  br label %copy_from_iter.exit.i.i371

copy_from_iter.exit.i.i371:                       ; preds = %if.then.i.i.i.i.i366, %if.then27.i.i.i.i364, %land.rhs16.i.i.i.i363.copy_from_iter.exit.i.i371_crit_edge
  %retval.0.i.i.i369 = phi i32 [ %call3.i.i.i367, %if.then.i.i.i.i.i366 ], [ 0, %if.then27.i.i.i.i364 ], [ 0, %land.rhs16.i.i.i.i363.copy_from_iter.exit.i.i371_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i369, i32 %mul92)
  %cmp.i.i370 = icmp eq i32 %retval.0.i.i.i369, %mul92
  br i1 %cmp.i.i370, label %copy_from_iter.exit.i.i371.if.end109_crit_edge, label %if.then95, !prof !127

copy_from_iter.exit.i.i371.if.end109_crit_edge:   ; preds = %copy_from_iter.exit.i.i371
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end109

if.then95:                                        ; preds = %copy_from_iter.exit.i.i371
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i353, i32 noundef %retval.0.i.i.i369) #15
  %90 = ptrtoint ptr %frames89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %frames89, align 4
  %sframe97 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 22
  %cmp98.not = icmp eq ptr %91, %sframe97
  br i1 %cmp98.not, label %if.then95.if.end101_crit_edge, label %if.then99

if.then95.if.end101_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

if.then99:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %91) #15
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.then95.if.end101_crit_edge
  %last_frames102 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 20
  %92 = ptrtoint ptr %last_frames102 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %last_frames102, align 8
  %last_sframe103 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 23
  %cmp104.not = icmp eq ptr %93, %last_sframe103
  br i1 %cmp104.not, label %if.end101.if.end107_crit_edge, label %if.then105

if.end101.if.end107_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %93) #15
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end101.if.end107_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end109:                                        ; preds = %copy_from_iter.exit.i.i371.if.end109_crit_edge, %if.end85.if.end109_crit_edge
  %sk110 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 24
  %94 = ptrtoint ptr %sk110 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %sk, ptr %sk110, align 8
  %ifindex111 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %ifindex111 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %ifindex, ptr %ifindex111, align 8
  %rx_ifindex = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 14
  %96 = ptrtoint ptr %rx_ifindex to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %ifindex, ptr %rx_ifindex, align 8
  %timer = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 8
  tail call void @hrtimer_init(ptr noundef %timer, i32 noundef 1, i32 noundef 5) #15
  %function = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 8, i32 2
  %97 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @bcm_rx_timeout_handler, ptr %function, align 8
  %thrtimer = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 9
  tail call void @hrtimer_init(ptr noundef %thrtimer, i32 noundef 1, i32 noundef 5) #15
  %function114 = getelementptr inbounds %struct.bcm_op, ptr %call7.i.i, i32 0, i32 9, i32 2
  %98 = ptrtoint ptr %function114 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @bcm_rx_thr_handler, ptr %function114, align 8
  %99 = ptrtoint ptr %rx_ops to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rx_ops, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %rx_ops, ptr noundef %100) #15
  br i1 %call.i.i, label %if.end.i.i375, label %if.end109.if.end116_crit_edge

if.end109.if.end116_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end116

if.end.i.i375:                                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %102 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %100, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %rx_ops, ptr %prev3.i.i, align 4
  %104 = ptrtoint ptr %rx_ops to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %call7.i.i, ptr %rx_ops, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.end.i.i375, %if.end109.if.end116_crit_edge, %if.end43
  %tobool25.not391 = phi i1 [ false, %if.end43 ], [ true, %if.end109.if.end116_crit_edge ], [ true, %if.end.i.i375 ]
  %op.0 = phi ptr [ %op.023.i, %if.end43 ], [ %call7.i.i, %if.end109.if.end116_crit_edge ], [ %call7.i.i, %if.end.i.i375 ]
  %flags117 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 3
  %105 = ptrtoint ptr %flags117 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags117, align 8
  %and118 = and i32 %106, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.else138, label %if.then120

if.then120:                                       ; preds = %if.end116
  %frames121 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 19
  %107 = ptrtoint ptr %frames121 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %frames121, align 4
  %thrtimer122 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 9
  %call123 = tail call i32 @hrtimer_cancel(ptr noundef %thrtimer122) #15
  %timer124 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 8
  %call125 = tail call i32 @hrtimer_cancel(ptr noundef %timer124) #15
  %109 = ptrtoint ptr %flags117 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags117, align 8
  %and127 = and i32 %110, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %lor.lhs.false129, label %if.then120.if.then133_crit_edge

if.then120.if.then133_crit_edge:                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then133

lor.lhs.false129:                                 ; preds = %if.then120
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %108, align 8
  %can_id131 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 2
  %113 = ptrtoint ptr %can_id131 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %can_id131, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %114)
  %cmp132 = icmp eq i32 %112, %114
  br i1 %cmp132, label %lor.lhs.false129.if.then133_crit_edge, label %lor.lhs.false129.if.end169_crit_edge

lor.lhs.false129.if.end169_crit_edge:             ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end169

lor.lhs.false129.if.then133_crit_edge:            ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then133

if.then133:                                       ; preds = %lor.lhs.false129.if.then133_crit_edge, %if.then120.if.then133_crit_edge
  %can_id134 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 2
  %115 = ptrtoint ptr %can_id134 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %can_id134, align 4
  %and135 = and i32 %116, -1073741825
  %117 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %and135, ptr %108, align 8
  br label %if.end169

if.else138:                                       ; preds = %if.end116
  %and140 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.else138.if.end158_crit_edge, label %if.then142

if.else138.if.end158_crit_edge:                   ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end158

if.then142:                                       ; preds = %if.else138
  %ival1 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 6
  %ival1143 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 3
  %118 = ptrtoint ptr %ival1143 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 8)
  %119 = load i64, ptr %ival1143, align 4
  %120 = ptrtoint ptr %ival1 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 8)
  store i64 %119, ptr %ival1, align 4
  %ival2 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 7
  %ival2144 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 4
  %121 = ptrtoint ptr %ival2144 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 8)
  %122 = load i64, ptr %ival2144, align 4
  %123 = ptrtoint ptr %ival2 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 8)
  store i64 %122, ptr %ival2, align 4
  %.unpack = load i32, ptr %ival1143, align 4
  %.elt336 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 3, i32 1
  %124 = ptrtoint ptr %.elt336 to i32
  call void @__asan_load4_noabort(i32 %124)
  %.unpack337 = load i32, ptr %.elt336, align 4
  %conv.i = sext i32 %.unpack to i64
  %mul.i = mul i32 %.unpack337, 1000
  %mul.i.i = mul nsw i64 %conv.i, 1000000000
  %conv.i.i = zext i32 %mul.i to i64
  %add.i.i = add nsw i64 %mul.i.i, %conv.i.i
  %kt_ival1 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 11
  %125 = ptrtoint ptr %kt_ival1 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %add.i.i, ptr %kt_ival1, align 8
  %.unpack338 = load i32, ptr %ival2144, align 4
  %.elt339 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 4, i32 1
  %126 = ptrtoint ptr %.elt339 to i32
  call void @__asan_load4_noabort(i32 %126)
  %.unpack340 = load i32, ptr %.elt339, align 4
  %conv.i376 = sext i32 %.unpack338 to i64
  %mul.i377 = mul i32 %.unpack340, 1000
  %mul.i.i378 = mul nsw i64 %conv.i376, 1000000000
  %conv.i.i379 = zext i32 %mul.i377 to i64
  %add.i.i380 = add nsw i64 %mul.i.i378, %conv.i.i379
  %kt_ival2 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 12
  %127 = ptrtoint ptr %kt_ival2 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %add.i.i380, ptr %kt_ival2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i.i)
  %tobool150.not = icmp eq i64 %add.i.i, 0
  br i1 %tobool150.not, label %if.then151, label %if.then142.if.end154_crit_edge

if.then142.if.end154_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end154

if.then151:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #17
  %timer152 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 8
  %call153 = tail call i32 @hrtimer_cancel(ptr noundef %timer152) #15
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %if.then142.if.end154_crit_edge
  %kt_lastmsg = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 13
  %128 = ptrtoint ptr %kt_lastmsg to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 0, ptr %kt_lastmsg, align 8
  %thrtimer155 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 9
  %call156 = tail call i32 @hrtimer_cancel(ptr noundef %thrtimer155) #15
  %call157 = tail call fastcc i32 @bcm_rx_thr_flush(ptr noundef nonnull %op.0)
  br label %if.end158

if.end158:                                        ; preds = %if.end154, %if.else138.if.end158_crit_edge
  %129 = ptrtoint ptr %flags117 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags117, align 8
  %and160 = and i32 %130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end158.if.end169_crit_edge, label %land.lhs.true162

if.end158.if.end169_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end169

land.lhs.true162:                                 ; preds = %if.end158
  %kt_ival1163 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 11
  %131 = ptrtoint ptr %kt_ival1163 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %kt_ival1163, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %132)
  %tobool164.not = icmp eq i64 %132, 0
  br i1 %tobool164.not, label %land.lhs.true162.if.end169_crit_edge, label %if.then165

land.lhs.true162.if.end169_crit_edge:             ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end169

if.then165:                                       ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #17
  %timer166 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 8
  tail call void @hrtimer_start_range_ns(ptr noundef %timer166, i64 noundef %132, i64 noundef 0, i32 noundef 5) #15
  br label %if.end169

if.end169:                                        ; preds = %if.then165, %land.lhs.true162.if.end169_crit_edge, %if.end158.if.end169_crit_edge, %if.then133, %lor.lhs.false129.if.end169_crit_edge
  br i1 %tobool25.not391, label %if.then171, label %if.end169.if.end199_crit_edge

if.end169.if.end199_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end199

if.then171:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifindex)
  %tobool172.not = icmp eq i32 %ifindex, 0
  %skc_net.i382 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %133 = ptrtoint ptr %skc_net.i382 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %skc_net.i382, align 4
  br i1 %tobool172.not, label %if.else186, label %if.then173

if.then173:                                       ; preds = %if.then171
  %call175 = tail call ptr @dev_get_by_index(ptr noundef %134, i32 noundef %ifindex) #15
  %tobool176.not = icmp eq ptr %call175, null
  br i1 %tobool176.not, label %if.then173.if.end199_crit_edge, label %if.then177

if.then173.if.end199_crit_edge:                   ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end199

if.then177:                                       ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #17
  %135 = ptrtoint ptr %skc_net.i382 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %skc_net.i382, align 4
  %can_id179 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 2
  %137 = ptrtoint ptr %can_id179 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %can_id179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %138)
  %tobool182.not = icmp sgt i32 %138, -1
  %cond183 = select i1 %tobool182.not, i32 -1073739777, i32 -536870913
  %call184 = tail call i32 @can_rx_register(ptr noundef %136, ptr noundef nonnull %call175, i32 noundef %138, i32 noundef %cond183, ptr noundef nonnull @bcm_rx_handler, ptr noundef nonnull %op.0, ptr noundef nonnull @.str.34, ptr noundef %sk) #15
  %rx_reg_dev = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 25
  %139 = ptrtoint ptr %rx_reg_dev to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call175, ptr %rx_reg_dev, align 4
  tail call fastcc void @dev_put(ptr noundef nonnull %call175)
  br label %if.end194

if.else186:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #17
  %can_id188 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 2
  %140 = ptrtoint ptr %can_id188 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %can_id188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %141)
  %tobool191.not = icmp sgt i32 %141, -1
  %cond192 = select i1 %tobool191.not, i32 -1073739777, i32 -536870913
  %call193 = tail call i32 @can_rx_register(ptr noundef %134, ptr noundef null, i32 noundef %141, i32 noundef %cond192, ptr noundef nonnull @bcm_rx_handler, ptr noundef nonnull %op.0, ptr noundef nonnull @.str.34, ptr noundef %sk) #15
  br label %if.end194

if.end194:                                        ; preds = %if.else186, %if.then177
  %err.4 = phi i32 [ %call193, %if.else186 ], [ %call184, %if.then177 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %tobool195.not = icmp eq i32 %err.4, 0
  br i1 %tobool195.not, label %if.end194.if.end199_crit_edge, label %if.then196

if.end194.if.end199_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end199

if.then196:                                       ; preds = %if.end194
  %call.i.i383 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %op.0) #15
  br i1 %call.i.i383, label %if.end.i.i384, label %if.then196.list_del.exit_crit_edge

if.then196.list_del.exit_crit_edge:               ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i384:                                    ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %op.0, i32 0, i32 1
  %142 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev.i.i, align 4
  %144 = ptrtoint ptr %op.0 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %op.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %prev1.i.i.i, align 4
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %145, ptr %143, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i384, %if.then196.list_del.exit_crit_edge
  %148 = ptrtoint ptr %op.0 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr inttoptr (i32 256 to ptr), ptr %op.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %op.0, i32 0, i32 1
  %149 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %timer.i = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 8
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %timer.i) #15
  %thrtimer.i = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 9
  %call1.i = tail call i32 @hrtimer_cancel(ptr noundef %thrtimer.i) #15
  %frames.i = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 19
  %150 = ptrtoint ptr %frames.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %frames.i, align 4
  %tobool.not.i = icmp eq ptr %151, null
  %sframe.i = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 22
  %cmp.not.i385 = icmp eq ptr %151, %sframe.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i385
  br i1 %or.cond.i, label %list_del.exit.if.end.i386_crit_edge, label %if.then.i

list_del.exit.if.end.i386_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i386

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %151) #15
  br label %if.end.i386

if.end.i386:                                      ; preds = %if.then.i, %list_del.exit.if.end.i386_crit_edge
  %last_frames.i = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 20
  %152 = ptrtoint ptr %last_frames.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %last_frames.i, align 8
  %tobool4.not.i = icmp eq ptr %153, null
  %last_sframe.i = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 23
  %cmp7.not.i = icmp eq ptr %153, %last_sframe.i
  %or.cond22.i = select i1 %tobool4.not.i, i1 true, i1 %cmp7.not.i
  br i1 %or.cond22.i, label %if.end.i386.bcm_remove_op.exit_crit_edge, label %if.then8.i

if.end.i386.bcm_remove_op.exit_crit_edge:         ; preds = %if.end.i386
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_remove_op.exit

if.then8.i:                                       ; preds = %if.end.i386
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %153) #15
  br label %bcm_remove_op.exit

bcm_remove_op.exit:                               ; preds = %if.then8.i, %if.end.i386.bcm_remove_op.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %op.0) #15
  br label %cleanup

if.end199:                                        ; preds = %if.end194.if.end199_crit_edge, %if.then173.if.end199_crit_edge, %if.end169.if.end199_crit_edge
  %154 = ptrtoint ptr %nframes4 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %nframes4, align 8
  %cfsiz201 = getelementptr inbounds %struct.bcm_op, ptr %op.0, i32 0, i32 15
  %156 = ptrtoint ptr %cfsiz201 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %cfsiz201, align 4
  %mul202 = mul i32 %157, %155
  %add = add i32 %mul202, 40
  br label %cleanup

cleanup:                                          ; preds = %if.end199, %bcm_remove_op.exit, %if.end107, %if.then79, %if.then71, %if.else.cleanup_crit_edge, %memcpy_from_msg.exit.thread, %if.then26.cleanup_crit_edge, %bcm_is_invalid_tv.exit.cleanup_crit_edge, %lor.lhs.false11.i.cleanup_crit_edge, %lor.lhs.false4.i.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %bcm_remove_op.exit ], [ %add, %if.end199 ], [ -14, %if.end107 ], [ -12, %if.then79 ], [ -12, %if.then71 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %bcm_is_invalid_tv.exit.cleanup_crit_edge ], [ -7, %if.then26.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ], [ -14, %memcpy_from_msg.exit.thread ], [ -22, %lor.lhs.false11.i.cleanup_crit_edge ], [ -22, %lor.lhs.false4.i.cleanup_crit_edge ], [ -22, %land.lhs.true20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_delete_tx_op(ptr noundef readonly %ops, ptr nocapture noundef readonly %mh, i32 noundef %ifindex) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %cmp.not32 = icmp eq ptr %1, %ops
  br i1 %cmp.not32, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %can_id6 = getelementptr inbounds %struct.bcm_msg_head, ptr %mh, i32 0, i32 5
  %2 = ptrtoint ptr %can_id6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %can_id6, align 4
  %flags11 = getelementptr inbounds %struct.bcm_msg_head, ptr %mh, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %op.033 = phi ptr [ %1, %for.body.lr.ph ], [ %n.034, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %op.033 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.034 = load ptr, ptr %op.033, align 8
  %can_id = getelementptr inbounds %struct.bcm_op, ptr %op.033, i32 0, i32 2
  %5 = ptrtoint ptr %can_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %can_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp7 = icmp eq i32 %6, %3
  br i1 %cmp7, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ifindex8 = getelementptr inbounds %struct.bcm_op, ptr %op.033, i32 0, i32 1
  %7 = ptrtoint ptr %ifindex8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ifindex8, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %ifindex)
  %cmp9 = icmp eq i32 %8, %ifindex
  br i1 %cmp9, label %land.lhs.true10, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true10:                                  ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.bcm_op, ptr %op.033, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %11 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags11, align 4
  %13 = xor i32 %12, %10
  %14 = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13 = icmp eq i32 %14, 0
  br i1 %cmp13, label %if.then, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %op.033) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %op.033, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %op.033 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %op.033, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %21 = ptrtoint ptr %op.033 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %op.033, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %op.033, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %timer.i = getelementptr inbounds %struct.bcm_op, ptr %op.033, i32 0, i32 8
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %timer.i) #15
  %thrtimer.i = getelementptr inbounds %struct.bcm_op, ptr %op.033, i32 0, i32 9
  %call1.i = tail call i32 @hrtimer_cancel(ptr noundef %thrtimer.i) #15
  %frames.i = getelementptr inbounds %struct.bcm_op, ptr %op.033, i32 0, i32 19
  %23 = ptrtoint ptr %frames.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %frames.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  %sframe.i = getelementptr inbounds %struct.bcm_op, ptr %op.033, i32 0, i32 22
  %cmp.not.i = icmp eq ptr %24, %sframe.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %list_del.exit.if.end.i_crit_edge, label %if.then.i

list_del.exit.if.end.i_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %24) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del.exit.if.end.i_crit_edge
  %last_frames.i = getelementptr inbounds %struct.bcm_op, ptr %op.033, i32 0, i32 20
  %25 = ptrtoint ptr %last_frames.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %last_frames.i, align 8
  %tobool4.not.i = icmp eq ptr %26, null
  %last_sframe.i = getelementptr inbounds %struct.bcm_op, ptr %op.033, i32 0, i32 23
  %cmp7.not.i = icmp eq ptr %26, %last_sframe.i
  %or.cond22.i = select i1 %tobool4.not.i, i1 true, i1 %cmp7.not.i
  br i1 %or.cond22.i, label %if.end.i.bcm_remove_op.exit_crit_edge, label %if.then8.i

if.end.i.bcm_remove_op.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_remove_op.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %26) #15
  br label %bcm_remove_op.exit

bcm_remove_op.exit:                               ; preds = %if.then8.i, %if.end.i.bcm_remove_op.exit_crit_edge
  tail call void @kfree(ptr noundef %op.033) #15
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true10.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %n.034, %ops
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %bcm_remove_op.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %bcm_remove_op.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_delete_rx_op(ptr noundef readonly %ops, ptr nocapture noundef readonly %mh, i32 noundef %ifindex) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %cmp.not65 = icmp eq ptr %1, %ops
  br i1 %cmp.not65, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %can_id6 = getelementptr inbounds %struct.bcm_msg_head, ptr %mh, i32 0, i32 5
  %2 = ptrtoint ptr %can_id6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %can_id6, align 4
  %flags11 = getelementptr inbounds %struct.bcm_msg_head, ptr %mh, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %op.066 = phi ptr [ %1, %for.body.lr.ph ], [ %n.067, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %op.066 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.067 = load ptr, ptr %op.066, align 8
  %can_id = getelementptr inbounds %struct.bcm_op, ptr %op.066, i32 0, i32 2
  %5 = ptrtoint ptr %can_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %can_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp7 = icmp eq i32 %6, %3
  br i1 %cmp7, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ifindex8 = getelementptr inbounds %struct.bcm_op, ptr %op.066, i32 0, i32 1
  %7 = ptrtoint ptr %ifindex8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ifindex8, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %ifindex)
  %cmp9 = icmp eq i32 %8, %ifindex
  br i1 %cmp9, label %land.lhs.true10, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true10:                                  ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.bcm_op, ptr %op.066, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %11 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags11, align 4
  %13 = xor i32 %12, %10
  %14 = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13 = icmp eq i32 %14, 0
  br i1 %cmp13, label %if.then, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true10
  %can_id.le = getelementptr inbounds %struct.bcm_op, ptr %op.066, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifindex)
  %tobool.not = icmp eq i32 %ifindex, 0
  br i1 %tobool.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then
  %rx_reg_dev = getelementptr inbounds %struct.bcm_op, ptr %op.066, i32 0, i32 25
  %15 = ptrtoint ptr %rx_reg_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_reg_dev, align 4
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %if.then15.if.end29_crit_edge, label %if.then17

if.then15.if.end29_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then17:                                        ; preds = %if.then15
  %sk = getelementptr inbounds %struct.bcm_op, ptr %op.066, i32 0, i32 24
  %17 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk, align 8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skc_net.i, align 4
  %call19 = tail call ptr @dev_get_by_index(ptr noundef %20, i32 noundef %ifindex) #15
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then17.if.end29_crit_edge, label %if.then21

if.then17.if.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then21:                                        ; preds = %if.then17
  %21 = ptrtoint ptr %rx_reg_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_reg_dev, align 4
  %cmp.i = icmp eq ptr %22, %call19
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %call19, i32 0, i32 127
  %23 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nd_net.i.i, align 4
  %25 = ptrtoint ptr %can_id.le to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %can_id.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %tobool.not.i = icmp sgt i32 %26, -1
  %cond.i = select i1 %tobool.not.i, i32 -1073739777, i32 -536870913
  tail call void @can_rx_unregister(ptr noundef %24, ptr noundef nonnull %call19, i32 noundef %26, i32 noundef %cond.i, ptr noundef nonnull @bcm_rx_handler, ptr noundef %op.066) #15
  %27 = ptrtoint ptr %rx_reg_dev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rx_reg_dev, align 4
  br label %do.body1.i

do.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %22, ptr noundef nonnull %call19) #18
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.end.i, %if.then.i
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !121
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call19, i32 0, i32 118
  %29 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcpu_refcnt.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %37, %31
  %38 = inttoptr i32 %add.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add13.i = add i32 %40, -1
  store i32 %add13.i, ptr %38, align 4
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !122
  %and.i.i.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !123

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #15, !srcloc !124
  br label %if.end29

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %sk23 = getelementptr inbounds %struct.bcm_op, ptr %op.066, i32 0, i32 24
  %42 = ptrtoint ptr %sk23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sk23, align 8
  %skc_net.i59 = getelementptr inbounds %struct.sock_common, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %skc_net.i59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skc_net.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool28.not = icmp sgt i32 %3, -1
  %cond = select i1 %tobool28.not, i32 -1073739777, i32 -536870913
  tail call void @can_rx_unregister(ptr noundef %45, ptr noundef null, i32 noundef %3, i32 noundef %cond, ptr noundef nonnull @bcm_rx_handler, ptr noundef %op.066) #15
  br label %if.end29

if.end29:                                         ; preds = %if.else, %dev_put.exit, %if.then17.if.end29_crit_edge, %if.then15.if.end29_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %op.066) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.list_del.exit_crit_edge

if.end29.list_del.exit_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %op.066, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i, align 4
  %48 = ptrtoint ptr %op.066 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %op.066, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end29.list_del.exit_crit_edge
  %52 = ptrtoint ptr %op.066 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %op.066, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %op.066, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @synchronize_rcu() #15
  %timer.i = getelementptr inbounds %struct.bcm_op, ptr %op.066, i32 0, i32 8
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %timer.i) #15
  %thrtimer.i = getelementptr inbounds %struct.bcm_op, ptr %op.066, i32 0, i32 9
  %call1.i = tail call i32 @hrtimer_cancel(ptr noundef %thrtimer.i) #15
  %frames.i = getelementptr inbounds %struct.bcm_op, ptr %op.066, i32 0, i32 19
  %54 = ptrtoint ptr %frames.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %frames.i, align 4
  %tobool.not.i60 = icmp eq ptr %55, null
  %sframe.i = getelementptr inbounds %struct.bcm_op, ptr %op.066, i32 0, i32 22
  %cmp.not.i = icmp eq ptr %55, %sframe.i
  %or.cond.i = select i1 %tobool.not.i60, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %list_del.exit.if.end.i_crit_edge, label %if.then.i61

list_del.exit.if.end.i_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i61:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %55) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i61, %list_del.exit.if.end.i_crit_edge
  %last_frames.i = getelementptr inbounds %struct.bcm_op, ptr %op.066, i32 0, i32 20
  %56 = ptrtoint ptr %last_frames.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %last_frames.i, align 8
  %tobool4.not.i = icmp eq ptr %57, null
  %last_sframe.i = getelementptr inbounds %struct.bcm_op, ptr %op.066, i32 0, i32 23
  %cmp7.not.i = icmp eq ptr %57, %last_sframe.i
  %or.cond22.i = select i1 %tobool4.not.i, i1 true, i1 %cmp7.not.i
  br i1 %or.cond22.i, label %if.end.i.bcm_remove_op.exit_crit_edge, label %if.then8.i

if.end.i.bcm_remove_op.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_remove_op.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %57) #15
  br label %bcm_remove_op.exit

bcm_remove_op.exit:                               ; preds = %if.then8.i, %if.end.i.bcm_remove_op.exit_crit_edge
  tail call void @kfree(ptr noundef %op.066) #15
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true10.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %n.067, %ops
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %bcm_remove_op.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %bcm_remove_op.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_read_op(ptr noundef readonly %ops, ptr nocapture noundef %msg_head, i32 noundef %ifindex) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %op.021.i = load ptr, ptr %ops, align 4
  %cmp.not22.i = icmp eq ptr %op.021.i, %ops
  br i1 %cmp.not22.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %can_id1.i = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 5
  %1 = ptrtoint ptr %can_id1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %can_id1.i, align 4
  %flags6.i = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %op.023.i = phi ptr [ %op.021.i, %for.body.lr.ph.i ], [ %op.0.i, %for.inc.i.for.body.i_crit_edge ]
  %can_id.i = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 2
  %3 = ptrtoint ptr %can_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %can_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp2.i = icmp eq i32 %4, %2
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ifindex3.i = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 1
  %5 = ptrtoint ptr %ifindex3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %ifindex)
  %cmp4.i = icmp eq i32 %6, %ifindex
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %flags.i = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 8
  %9 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags6.i, align 4
  %11 = xor i32 %10, %8
  %12 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp8.i = icmp eq i32 %12, 0
  br i1 %cmp8.i, label %bcm_find_op.exit, label %land.lhs.true5.i.for.inc.i_crit_edge

land.lhs.true5.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true5.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %op.023.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %op.0.i = load ptr, ptr %op.023.i, align 4
  %cmp.not.i = icmp eq ptr %op.0.i, %ops
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

bcm_find_op.exit:                                 ; preds = %land.lhs.true5.i
  %tobool.not = icmp eq ptr %op.023.i, null
  br i1 %tobool.not, label %bcm_find_op.exit.cleanup_crit_edge, label %if.end

bcm_find_op.exit.cleanup_crit_edge:               ; preds = %bcm_find_op.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %bcm_find_op.exit
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i.le = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 3
  %14 = ptrtoint ptr %flags.i.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.le, align 8
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %flags6.i, align 4
  %count = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 16
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 8
  %count2 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 2
  %19 = ptrtoint ptr %count2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %count2, align 8
  %ival1 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 3
  %ival13 = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 6
  %20 = ptrtoint ptr %ival13 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %ival13, align 4
  %22 = ptrtoint ptr %ival1 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %ival1, align 4
  %ival2 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 4
  %ival24 = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 7
  %23 = ptrtoint ptr %ival24 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %ival24, align 4
  %25 = ptrtoint ptr %ival2 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %ival2, align 4
  %nframes = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 17
  %26 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nframes, align 4
  %nframes5 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 6
  %28 = ptrtoint ptr %nframes5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %nframes5, align 8
  %frames = getelementptr inbounds %struct.bcm_op, ptr %op.023.i, i32 0, i32 19
  %29 = ptrtoint ptr %frames to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %frames, align 4
  tail call fastcc void @bcm_send_to_user(ptr noundef nonnull %op.023.i, ptr noundef %msg_head, ptr noundef %30, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %bcm_find_op.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 40, %if.end ], [ -22, %bcm_find_op.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_tx_send(ptr noundef %msg, i32 noundef %ifindex, ptr noundef %sk, i32 noundef %cfsiz) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifindex)
  %tobool.not = icmp eq i32 %ifindex, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %cfsiz, 16
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #15
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 16
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %cfsiz) #15
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cfsiz)
  %cmp9.i.i.i.i = icmp slt i32 %cfsiz, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end3
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !127

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__check_object_size(ptr noundef %call4, i32 noundef %cfsiz, i1 noundef zeroext false) #15
  %call3.i.i.i = tail call i32 @_copy_from_iter(ptr noundef %call4, i32 noundef %cfsiz, ptr noundef %msg_iter.i) #15
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %cfsiz)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %cfsiz
  br i1 %cmp.i.i, label %if.end7, label %if.then6, !prof !127

if.then6:                                         ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #15
  br label %cleanup

if.end7:                                          ; preds = %copy_from_iter.exit.i.i
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %call9 = tail call ptr @dev_get_by_index(ptr noundef %5, i32 noundef %ifindex) #15
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #15
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %ifindex13 = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 17
  %6 = ptrtoint ptr %ifindex13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex13, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %9, align 8
  %11 = load ptr, ptr %head.i, align 8
  %skbcnt = getelementptr inbounds %struct.can_skb_priv, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %skbcnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %skbcnt, align 4
  %13 = getelementptr inbounds %struct.anon.51, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9, ptr %13, align 8
  %tobool.not.i = icmp eq ptr %sk, null
  br i1 %tobool.not.i, label %if.end12.do.body1.i_crit_edge, label %land.lhs.true.i

if.end12.do.body1.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1.i

land.lhs.true.i:                                  ; preds = %if.end12
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  %15 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %skc_refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true.i
  %17 = phi i32 [ %16, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %17, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #15
  %19 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %21 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 %20, i32 %add.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !131
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %20
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !127

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %22 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %23, 1
  %24 = or i32 %add5.i.i.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !127

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 0) #15
  %25 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %26 = phi i32 [ %23, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool12.i.i.i.not.i = icmp eq i32 %26, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #15
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.do.body1.i_crit_edge, label %if.then.i

refcount_inc_not_zero.exit.i.do.body1.i_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1.i

if.then.i:                                        ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @sock_efree, ptr %destructor.i, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %sk, ptr %28, align 4
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then.i, %refcount_inc_not_zero.exit.i.do.body1.i_crit_edge, %if.end12.do.body1.i_crit_edge
  %call17 = call i32 @can_send(ptr noundef nonnull %call.i, i32 noundef 1) #15
  %30 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !121
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 118
  %31 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcpu_refcnt.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %39, %33
  %40 = inttoptr i32 %add.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %add13.i = add i32 %42, -1
  store i32 %add13.i, ptr %40, align 4
  %43 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !122
  %and.i.i.i = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !123

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #15, !srcloc !124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %add21 = add i32 %cfsiz, 40
  %spec.select = select i1 %tobool18.not, i32 %add21, i32 %call17
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %if.then11, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then6 ], [ -19, %if.then11 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %spec.select, %dev_put.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_tx_timeout_handler(ptr nocapture noundef %hrtimer) #2 align 64 {
entry:
  %msg_head = alloca %struct.bcm_msg_head, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hrtimer, i32 -48
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %msg_head) #15
  %kt_ival1 = getelementptr i8, ptr %hrtimer, i32 104
  %0 = ptrtoint ptr %kt_ival1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %kt_ival1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %count = getelementptr i8, ptr %hrtimer, i32 136
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %dec = add i32 %3, -1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %if.then.if.end17.sink.split_crit_edge

if.then.if.end17.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.sink.split

land.lhs.true4:                                   ; preds = %if.then
  %flags = getelementptr i8, ptr %hrtimer, i32 -32
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true4.if.end17.sink.split_crit_edge, label %if.then6

land.lhs.true4.if.end17.sink.split_crit_edge:     ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.sink.split

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  %7 = getelementptr inbounds i8, ptr %msg_head, i32 32
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %7, align 8
  %9 = ptrtoint ptr %msg_head to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9, ptr %msg_head, align 8
  %flags8 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 1
  %10 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %6, ptr %flags8, align 4
  %count10 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 2
  %11 = ptrtoint ptr %count10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %count10, align 8
  %ival1 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 3
  %ival111 = getelementptr i8, ptr %hrtimer, i32 -20
  %12 = ptrtoint ptr %ival111 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %ival111, align 4
  %14 = ptrtoint ptr %ival1 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %ival1, align 4
  %ival2 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 4
  %ival212 = getelementptr i8, ptr %hrtimer, i32 -12
  %15 = ptrtoint ptr %ival212 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %ival212, align 4
  %17 = ptrtoint ptr %ival2 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %ival2, align 4
  %can_id = getelementptr i8, ptr %hrtimer, i32 -36
  %18 = ptrtoint ptr %can_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %can_id, align 4
  %can_id13 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 5
  %20 = ptrtoint ptr %can_id13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %can_id13, align 4
  call fastcc void @bcm_send_to_user(ptr noundef %add.ptr, ptr noundef nonnull %msg_head, ptr noundef null, i32 noundef 0)
  br label %if.end17.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %kt_ival2 = getelementptr i8, ptr %hrtimer, i32 112
  %21 = ptrtoint ptr %kt_ival2 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %kt_ival2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool14.not = icmp eq i64 %22, 0
  br i1 %tobool14.not, label %if.else.if.end17_crit_edge, label %if.else.if.end17.sink.split_crit_edge

if.else.if.end17.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.sink.split

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.end17.sink.split:                              ; preds = %if.else.if.end17.sink.split_crit_edge, %if.then6, %land.lhs.true4.if.end17.sink.split_crit_edge, %if.then.if.end17.sink.split_crit_edge
  tail call fastcc void @bcm_can_tx(ptr noundef %add.ptr)
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else.if.end17_crit_edge
  %23 = ptrtoint ptr %kt_ival1 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %kt_ival1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool.not.i = icmp eq i64 %24, 0
  br i1 %tobool.not.i, label %if.end17.if.else.i_crit_edge, label %land.lhs.true.i

if.end17.if.else.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end17
  %count.i = getelementptr i8, ptr %hrtimer, i32 136
  %25 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool1.not.i = icmp eq i32 %26, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end17.if.else.i_crit_edge
  %kt_ival2.i = getelementptr i8, ptr %hrtimer, i32 112
  %27 = ptrtoint ptr %kt_ival2.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %kt_ival2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool3.not.i = icmp eq i64 %28, 0
  br i1 %tobool3.not.i, label %if.else.i.bcm_tx_set_expiry.exit_crit_edge, label %if.else.i.if.end7.i_crit_edge

if.else.i.if.end7.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.else.i.bcm_tx_set_expiry.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_tx_set_expiry.exit

if.end7.i:                                        ; preds = %if.else.i.if.end7.i_crit_edge, %land.lhs.true.i.if.end7.i_crit_edge
  %ival.0.i = phi i64 [ %24, %land.lhs.true.i.if.end7.i_crit_edge ], [ %28, %if.else.i.if.end7.i_crit_edge ]
  %call.i = tail call i64 @ktime_get() #15
  %add.i = add i64 %call.i, %ival.0.i
  %expires.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %hrtimer, i32 0, i32 1
  %29 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %add.i, ptr %expires.i.i, align 8
  %_softexpires.i.i = getelementptr inbounds %struct.hrtimer, ptr %hrtimer, i32 0, i32 1
  %30 = ptrtoint ptr %_softexpires.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add.i, ptr %_softexpires.i.i, align 8
  br label %bcm_tx_set_expiry.exit

bcm_tx_set_expiry.exit:                           ; preds = %if.end7.i, %if.else.i.bcm_tx_set_expiry.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end7.i ], [ 0, %if.else.i.bcm_tx_set_expiry.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %msg_head) #15
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_rx_timeout_handler(ptr nocapture noundef readonly %hrtimer) #2 align 64 {
entry:
  %msg_head = alloca %struct.bcm_msg_head, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %msg_head) #15
  %flags = getelementptr i8, ptr %hrtimer, i32 -32
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %last_frames = getelementptr i8, ptr %hrtimer, i32 152
  %2 = ptrtoint ptr %last_frames to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %last_frames, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %nframes = getelementptr i8, ptr %hrtimer, i32 140
  %4 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nframes, align 4
  %cfsiz = getelementptr i8, ptr %hrtimer, i32 132
  %6 = ptrtoint ptr %cfsiz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cfsiz, align 4
  %mul = mul i32 %7, %5
  %8 = call ptr @memset(ptr %3, i32 0, i32 %mul)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %hrtimer, i32 -48
  %9 = getelementptr inbounds i8, ptr %msg_head, i32 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %9, align 8
  %11 = ptrtoint ptr %msg_head to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 11, ptr %msg_head, align 8
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %flags4 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 1
  %14 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %flags4, align 4
  %count = getelementptr i8, ptr %hrtimer, i32 136
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 8
  %count5 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 2
  %17 = ptrtoint ptr %count5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %count5, align 8
  %ival1 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 3
  %ival16 = getelementptr i8, ptr %hrtimer, i32 -20
  %18 = ptrtoint ptr %ival16 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %ival16, align 4
  %20 = ptrtoint ptr %ival1 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %ival1, align 4
  %ival2 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 4
  %ival27 = getelementptr i8, ptr %hrtimer, i32 -12
  %21 = ptrtoint ptr %ival27 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %ival27, align 4
  %23 = ptrtoint ptr %ival2 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %ival2, align 4
  %can_id = getelementptr i8, ptr %hrtimer, i32 -36
  %24 = ptrtoint ptr %can_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %can_id, align 4
  %can_id8 = getelementptr inbounds %struct.bcm_msg_head, ptr %msg_head, i32 0, i32 5
  %26 = ptrtoint ptr %can_id8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %can_id8, align 4
  call fastcc void @bcm_send_to_user(ptr noundef %add.ptr, ptr noundef nonnull %msg_head, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %msg_head) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_rx_thr_handler(ptr noundef %hrtimer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hrtimer, i32 -96
  %call = tail call fastcc i32 @bcm_rx_thr_flush(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %kt_ival2 = getelementptr i8, ptr %hrtimer, i32 64
  %0 = ptrtoint ptr %kt_ival2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %kt_ival2, align 8
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %hrtimer, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %5() #15
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %hrtimer, i64 noundef %call.i, i64 noundef %1) #15
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %kt_lastmsg = getelementptr i8, ptr %hrtimer, i32 72
  %6 = ptrtoint ptr %kt_lastmsg to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %kt_lastmsg, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_rx_thr_flush(ptr noundef %op) unnamed_addr #2 align 64 {
entry:
  %head.i.i12 = alloca %struct.bcm_msg_head, align 8
  %head.i.i = alloca %struct.bcm_msg_head, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nframes = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 17
  %0 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nframes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nframes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp238 = icmp ugt i32 %3, 1
  br i1 %cmp238, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %last_frames.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 20
  %cfsiz.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 15
  %frames_filtered.i.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 5
  %frames_abs.i.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 4
  %4 = getelementptr inbounds i8, ptr %head.i.i, i32 32
  %flags4.i.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 3
  %flags5.i.i = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i.i, i32 0, i32 1
  %count.i.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 16
  %count6.i.i = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i.i, i32 0, i32 2
  %ival1.i.i = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i.i, i32 0, i32 3
  %ival17.i.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 6
  %ival2.i.i = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i.i, i32 0, i32 4
  %ival28.i.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 7
  %can_id.i.i = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 2
  %can_id9.i.i = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %bcm_rx_do_flush.exit.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %bcm_rx_do_flush.exit.for.body_crit_edge ]
  %updated.039 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %bcm_rx_do_flush.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %last_frames.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %last_frames.i, align 8
  %7 = ptrtoint ptr %cfsiz.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cfsiz.i, align 4
  %mul.i = mul i32 %8, %i.040
  %add.ptr.i = getelementptr i8, ptr %6, i32 %mul.i
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.bcm_rx_do_flush.exit_crit_edge, label %land.lhs.true.i

for.body.bcm_rx_do_flush.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_rx_do_flush.exit

land.lhs.true.i:                                  ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.canfd_frame, ptr %add.ptr.i, i32 0, i32 2
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool2.not.i = icmp sgt i8 %10, -1
  br i1 %tobool2.not.i, label %land.lhs.true.i.bcm_rx_do_flush.exit_crit_edge, label %if.then.i

land.lhs.true.i.bcm_rx_do_flush.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_rx_do_flush.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %head.i.i) #15
  %11 = ptrtoint ptr %frames_filtered.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frames_filtered.i.i, align 8
  %inc.i.i = add i32 %12, 1
  store i32 %inc.i.i, ptr %frames_filtered.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %inc.i.i)
  %cmp.i.i = icmp ugt i32 %inc.i.i, 42949672
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.bcm_rx_changed.exit.i_crit_edge

if.then.i.bcm_rx_changed.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_rx_changed.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %frames_abs.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %frames_abs.i.i, align 4
  %14 = ptrtoint ptr %frames_filtered.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %frames_filtered.i.i, align 8
  br label %bcm_rx_changed.exit.i

bcm_rx_changed.exit.i:                            ; preds = %if.then.i.i, %if.then.i.bcm_rx_changed.exit.i_crit_edge
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags.i, align 1
  %17 = and i8 %16, 127
  store i8 %17, ptr %flags.i, align 1
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 4294967296, ptr %4, align 8
  %19 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 12, ptr %head.i.i, align 8
  %20 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags4.i.i, align 8
  %22 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %flags5.i.i, align 4
  %23 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count.i.i, align 8
  %25 = ptrtoint ptr %count6.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %count6.i.i, align 8
  %26 = ptrtoint ptr %ival17.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %ival17.i.i, align 4
  %28 = ptrtoint ptr %ival1.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %ival1.i.i, align 4
  %29 = ptrtoint ptr %ival28.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %ival28.i.i, align 4
  %31 = ptrtoint ptr %ival2.i.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %ival2.i.i, align 4
  %32 = ptrtoint ptr %can_id.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %can_id.i.i, align 4
  %34 = ptrtoint ptr %can_id9.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %can_id9.i.i, align 4
  call fastcc void @bcm_send_to_user(ptr noundef %op, ptr noundef nonnull %head.i.i, ptr noundef %add.ptr.i, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %head.i.i) #15
  br label %bcm_rx_do_flush.exit

bcm_rx_do_flush.exit:                             ; preds = %bcm_rx_changed.exit.i, %land.lhs.true.i.bcm_rx_do_flush.exit_crit_edge, %for.body.bcm_rx_do_flush.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %bcm_rx_changed.exit.i ], [ 0, %land.lhs.true.i.bcm_rx_do_flush.exit_crit_edge ], [ 0, %for.body.bcm_rx_do_flush.exit_crit_edge ]
  %add = add i32 %retval.0.i, %updated.039
  %inc = add nuw i32 %i.040, 1
  %35 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nframes, align 4
  %cmp2 = icmp ult i32 %inc, %36
  br i1 %cmp2, label %bcm_rx_do_flush.exit.for.body_crit_edge, label %bcm_rx_do_flush.exit.if.end_crit_edge

bcm_rx_do_flush.exit.if.end_crit_edge:            ; preds = %bcm_rx_do_flush.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

bcm_rx_do_flush.exit.for.body_crit_edge:          ; preds = %bcm_rx_do_flush.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.else:                                          ; preds = %entry
  %last_frames.i13 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 20
  %37 = ptrtoint ptr %last_frames.i13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %last_frames.i13, align 8
  %tobool.not.i15 = icmp eq ptr %38, null
  br i1 %tobool.not.i15, label %if.else.if.end_crit_edge, label %land.lhs.true.i18

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.i18:                                ; preds = %if.else
  %flags.i16 = getelementptr inbounds %struct.canfd_frame, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %flags.i16 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %40)
  %tobool2.not.i17 = icmp sgt i8 %40, -1
  br i1 %tobool2.not.i17, label %land.lhs.true.i18.if.end_crit_edge, label %if.then.i22

land.lhs.true.i18.if.end_crit_edge:               ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i22:                                      ; preds = %land.lhs.true.i18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %head.i.i12) #15
  %frames_filtered.i.i19 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 5
  %41 = ptrtoint ptr %frames_filtered.i.i19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %frames_filtered.i.i19, align 8
  %inc.i.i20 = add i32 %42, 1
  store i32 %inc.i.i20, ptr %frames_filtered.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %inc.i.i20)
  %cmp.i.i21 = icmp ugt i32 %inc.i.i20, 42949672
  br i1 %cmp.i.i21, label %if.then.i.i24, label %if.then.i22.bcm_rx_changed.exit.i35_crit_edge

if.then.i22.bcm_rx_changed.exit.i35_crit_edge:    ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_rx_changed.exit.i35

if.then.i.i24:                                    ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #17
  %frames_abs.i.i23 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 4
  %43 = ptrtoint ptr %frames_abs.i.i23 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %frames_abs.i.i23, align 4
  %44 = ptrtoint ptr %frames_filtered.i.i19 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %frames_filtered.i.i19, align 8
  br label %bcm_rx_changed.exit.i35

bcm_rx_changed.exit.i35:                          ; preds = %if.then.i.i24, %if.then.i22.bcm_rx_changed.exit.i35_crit_edge
  %45 = ptrtoint ptr %flags.i16 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %flags.i16, align 1
  %47 = and i8 %46, 127
  store i8 %47, ptr %flags.i16, align 1
  %48 = getelementptr inbounds i8, ptr %head.i.i12, i32 32
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 4294967296, ptr %48, align 8
  %50 = ptrtoint ptr %head.i.i12 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 12, ptr %head.i.i12, align 8
  %flags4.i.i25 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 3
  %51 = ptrtoint ptr %flags4.i.i25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags4.i.i25, align 8
  %flags5.i.i26 = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i.i12, i32 0, i32 1
  %53 = ptrtoint ptr %flags5.i.i26 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %flags5.i.i26, align 4
  %count.i.i27 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 16
  %54 = ptrtoint ptr %count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count.i.i27, align 8
  %count6.i.i28 = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i.i12, i32 0, i32 2
  %56 = ptrtoint ptr %count6.i.i28 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %count6.i.i28, align 8
  %ival1.i.i29 = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i.i12, i32 0, i32 3
  %ival17.i.i30 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 6
  %57 = ptrtoint ptr %ival17.i.i30 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %ival17.i.i30, align 4
  %59 = ptrtoint ptr %ival1.i.i29 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %ival1.i.i29, align 4
  %ival2.i.i31 = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i.i12, i32 0, i32 4
  %ival28.i.i32 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 7
  %60 = ptrtoint ptr %ival28.i.i32 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %ival28.i.i32, align 4
  %62 = ptrtoint ptr %ival2.i.i31 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %61, ptr %ival2.i.i31, align 4
  %can_id.i.i33 = getelementptr inbounds %struct.bcm_op, ptr %op, i32 0, i32 2
  %63 = ptrtoint ptr %can_id.i.i33 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %can_id.i.i33, align 4
  %can_id9.i.i34 = getelementptr inbounds %struct.bcm_msg_head, ptr %head.i.i12, i32 0, i32 5
  %65 = ptrtoint ptr %can_id9.i.i34 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %can_id9.i.i34, align 4
  call fastcc void @bcm_send_to_user(ptr noundef %op, ptr noundef nonnull %head.i.i12, ptr noundef nonnull %38, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %head.i.i12) #15
  br label %if.end

if.end:                                           ; preds = %bcm_rx_changed.exit.i35, %land.lhs.true.i18.if.end_crit_edge, %if.else.if.end_crit_edge, %bcm_rx_do_flush.exit.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  %updated.1 = phi i32 [ 1, %bcm_rx_changed.exit.i35 ], [ 0, %land.lhs.true.i18.if.end_crit_edge ], [ 0, %if.else.if.end_crit_edge ], [ 0, %for.cond.preheader.if.end_crit_edge ], [ %add, %bcm_rx_do_flush.exit.if.end_crit_edge ]
  ret i32 %updated.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_init(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bound = getelementptr inbounds %struct.bcm_sock, ptr %sk, i32 0, i32 1
  %0 = ptrtoint ptr %bound to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bound, align 8
  %ifindex = getelementptr inbounds %struct.bcm_sock, ptr %sk, i32 0, i32 2
  %1 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ifindex, align 4
  %dropped_usr_msgs = getelementptr inbounds %struct.bcm_sock, ptr %sk, i32 0, i32 6
  %2 = ptrtoint ptr %dropped_usr_msgs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dropped_usr_msgs, align 8
  %bcm_proc_read = getelementptr inbounds %struct.bcm_sock, ptr %sk, i32 0, i32 7
  %3 = ptrtoint ptr %bcm_proc_read to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bcm_proc_read, align 4
  %tx_ops = getelementptr inbounds %struct.bcm_sock, ptr %sk, i32 0, i32 5
  %4 = ptrtoint ptr %tx_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %tx_ops, ptr %tx_ops, align 4
  %prev.i = getelementptr inbounds %struct.bcm_sock, ptr %sk, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tx_ops, ptr %prev.i, align 4
  %rx_ops = getelementptr inbounds %struct.bcm_sock, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %rx_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %rx_ops, ptr %rx_ops, align 4
  %prev.i7 = getelementptr inbounds %struct.bcm_sock, ptr %sk, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rx_ops, ptr %prev.i7, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @bcm_notifier_lock) #15
  %notifier = getelementptr inbounds %struct.bcm_sock, ptr %sk, i32 0, i32 3
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @bcm_notifier_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %notifier, ptr noundef %8, ptr noundef nonnull @bcm_notifier_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %notifier, ptr getelementptr inbounds (%struct.list_head, ptr @bcm_notifier_list, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @bcm_notifier_list, ptr %notifier, align 4
  %prev3.i.i = getelementptr inbounds %struct.bcm_sock, ptr %sk, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %notifier, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bcm_notifier_lock) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_notifier(ptr nocapture noundef readnone %nb, i32 noundef %msg, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %3)
  %cmp.not = icmp eq i16 %3, 280
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %msg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %msg, label %if.end.cleanup_crit_edge [
    i32 6, label %if.end.if.end7_crit_edge
    i32 2, label %if.end.if.end7_crit_edge26
  ]

if.end.if.end7_crit_edge26:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge26
  %5 = load ptr, ptr @bcm_busy_notifier, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end11, label %if.end7.cleanup_crit_edge, !prof !127

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  tail call void @_raw_spin_lock(ptr noundef nonnull @bcm_notifier_lock) #15
  %.pn23 = load ptr, ptr @bcm_notifier_list, align 4
  %storemerge24 = getelementptr i8, ptr %.pn23, i32 -968
  store ptr %storemerge24, ptr @bcm_busy_notifier, align 4
  %cmp12.not25 = icmp eq ptr %.pn23, @bcm_notifier_list
  br i1 %cmp12.not25, label %if.end11.for.end_crit_edge, label %for.body.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %ifindex31.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %bcm_notify.exit.for.body_crit_edge, %for.body.lr.ph
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bcm_notifier_lock) #15
  %6 = load ptr, ptr @bcm_busy_notifier, align 4
  %7 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i.i, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 9
  %9 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %10
  br i1 %cmp.i.not.i, label %if.end.i, label %for.body.bcm_notify.exit_crit_edge

for.body.bcm_notify.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_notify.exit

if.end.i:                                         ; preds = %for.body
  %11 = zext i32 %msg to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %msg, label %if.end.i.bcm_notify.exit_crit_edge [
    i32 6, label %sw.bb.i
    i32 2, label %sw.bb26.i
  ]

if.end.i.bcm_notify.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_notify.exit

sw.bb.i:                                          ; preds = %if.end.i
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #15
  %rx_ops.i = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 4
  %12 = ptrtoint ptr %rx_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %op.066.i = load ptr, ptr %rx_ops.i, align 8
  %cmp.not67.i = icmp eq ptr %op.066.i, %rx_ops.i
  br i1 %cmp.not67.i, label %sw.bb.i.for.end.i_crit_edge, label %sw.bb.i.for.body.i_crit_edge

sw.bb.i.for.body.i_crit_edge:                     ; preds = %sw.bb.i
  br label %for.body.i

sw.bb.i.for.end.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.i.for.body.i_crit_edge
  %op.068.i = phi ptr [ %op.0.i, %for.inc.i.for.body.i_crit_edge ], [ %op.066.i, %sw.bb.i.for.body.i_crit_edge ]
  %rx_reg_dev.i = getelementptr inbounds %struct.bcm_op, ptr %op.068.i, i32 0, i32 25
  %13 = ptrtoint ptr %rx_reg_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_reg_dev.i, align 4
  %cmp5.i = icmp eq ptr %14, %1
  br i1 %cmp5.i, label %bcm_rx_unreg.exit.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

bcm_rx_unreg.exit.i:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nd_net.i.i, align 4
  %can_id.i.i = getelementptr inbounds %struct.bcm_op, ptr %op.068.i, i32 0, i32 2
  %17 = ptrtoint ptr %can_id.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %can_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool.not.i.i = icmp sgt i32 %18, -1
  %cond.i.i = select i1 %tobool.not.i.i, i32 -1073739777, i32 -536870913
  tail call void @can_rx_unregister(ptr noundef %16, ptr noundef %1, i32 noundef %18, i32 noundef %cond.i.i, ptr noundef nonnull @bcm_rx_handler, ptr noundef %op.068.i) #15
  %19 = ptrtoint ptr %rx_reg_dev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rx_reg_dev.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %bcm_rx_unreg.exit.i, %for.body.i.for.inc.i_crit_edge
  %20 = ptrtoint ptr %op.068.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %op.0.i = load ptr, ptr %op.068.i, align 8
  %cmp.not.i = icmp eq ptr %op.0.i, %rx_ops.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %sw.bb.i.for.end.i_crit_edge
  %bound.i = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 1
  %21 = ptrtoint ptr %bound.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bound.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool13.not.i = icmp eq i32 %22, 0
  br i1 %tobool13.not.i, label %for.end.i.if.end19.i_crit_edge, label %land.lhs.true.i

for.end.i.if.end19.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %ifindex.i = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 2
  %23 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ifindex.i, align 4
  %25 = ptrtoint ptr %ifindex31.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ifindex31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp15.i = icmp eq i32 %24, %26
  br i1 %cmp15.i, label %if.then16.i, label %land.lhs.true.i.if.end19.i_crit_edge

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  %27 = ptrtoint ptr %bound.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %bound.i, align 8
  %28 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ifindex.i, align 4
  tail call void @release_sock(ptr noundef %6) #15
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 51
  %29 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 19, ptr %sk_err.i, align 4
  %30 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 13
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %33 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not.i = icmp eq i32 %33, 0
  br i1 %tobool.i.not.i, label %if.then23.i, label %if.then16.i.bcm_notify.exit_crit_edge

if.then16.i.bcm_notify.exit_crit_edge:            ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_notify.exit

if.end19.i:                                       ; preds = %land.lhs.true.i.if.end19.i_crit_edge, %for.end.i.if.end19.i_crit_edge
  tail call void @release_sock(ptr noundef %6) #15
  br label %bcm_notify.exit

if.then23.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sk_error_report(ptr noundef %6) #15
  br label %bcm_notify.exit

sw.bb26.i:                                        ; preds = %if.end.i
  %bound27.i = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 1
  %34 = ptrtoint ptr %bound27.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bound27.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool28.not.i = icmp eq i32 %35, 0
  br i1 %tobool28.not.i, label %sw.bb26.i.bcm_notify.exit_crit_edge, label %land.lhs.true29.i

sw.bb26.i.bcm_notify.exit_crit_edge:              ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_notify.exit

land.lhs.true29.i:                                ; preds = %sw.bb26.i
  %ifindex30.i = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 2
  %36 = ptrtoint ptr %ifindex30.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ifindex30.i, align 4
  %38 = ptrtoint ptr %ifindex31.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ifindex31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp32.i = icmp eq i32 %37, %39
  br i1 %cmp32.i, label %if.then33.i, label %land.lhs.true29.i.bcm_notify.exit_crit_edge

land.lhs.true29.i.bcm_notify.exit_crit_edge:      ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_notify.exit

if.then33.i:                                      ; preds = %land.lhs.true29.i
  %sk_err34.i = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 51
  %40 = ptrtoint ptr %sk_err34.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 100, ptr %sk_err34.i, align 4
  %41 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 13
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %44 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i65.not.i = icmp eq i32 %44, 0
  br i1 %tobool.i65.not.i, label %if.then36.i, label %if.then33.i.bcm_notify.exit_crit_edge

if.then33.i.bcm_notify.exit_crit_edge:            ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_notify.exit

if.then36.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sk_error_report(ptr noundef %6) #15
  br label %bcm_notify.exit

bcm_notify.exit:                                  ; preds = %if.then36.i, %if.then33.i.bcm_notify.exit_crit_edge, %land.lhs.true29.i.bcm_notify.exit_crit_edge, %sw.bb26.i.bcm_notify.exit_crit_edge, %if.then23.i, %if.end19.i, %if.then16.i.bcm_notify.exit_crit_edge, %if.end.i.bcm_notify.exit_crit_edge, %for.body.bcm_notify.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @bcm_notifier_lock) #15
  %45 = load ptr, ptr @bcm_busy_notifier, align 4
  %notifier17 = getelementptr inbounds %struct.bcm_sock, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %notifier17 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn = load ptr, ptr %notifier17, align 4
  %storemerge = getelementptr i8, ptr %.pn, i32 -968
  store ptr %storemerge, ptr @bcm_busy_notifier, align 4
  %cmp12.not = icmp eq ptr %.pn, @bcm_notifier_list
  br i1 %cmp12.not, label %bcm_notify.exit.for.end_crit_edge, label %bcm_notify.exit.for.body_crit_edge

bcm_notify.exit.for.body_crit_edge:               ; preds = %bcm_notify.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

bcm_notify.exit.for.end_crit_edge:                ; preds = %bcm_notify.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %bcm_notify.exit.for.end_crit_edge, %if.end11.for.end_crit_edge
  store ptr null, ptr @bcm_busy_notifier, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bcm_notifier_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @canbcm_pernet_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call.i = tail call ptr @_proc_mkdir(ptr noundef nonnull @.str.35, i16 noundef zeroext 0, ptr noundef %1, ptr noundef %net, i1 noundef zeroext true) #15
  %bcmproc_dir = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 9
  %2 = ptrtoint ptr %bcmproc_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %bcmproc_dir, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @canbcm_pernet_exit(ptr nocapture noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmproc_dir = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 9
  %0 = ptrtoint ptr %bcmproc_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bcmproc_dir, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %2 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.35, ptr noundef %3) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_proc_mkdir(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_proto_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !84, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !107, !109, !110}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__UNIQUE_ID_description457, !1, !"__UNIQUE_ID_description457", i1 false, i1 false}
!1 = !{!"../net/can/bcm.c", i32 84, i32 1}
!2 = !{ptr @__UNIQUE_ID_file458, !3, !"__UNIQUE_ID_file458", i1 false, i1 false}
!3 = !{!"../net/can/bcm.c", i32 85, i32 1}
!4 = !{ptr @__UNIQUE_ID_license459, !3, !"__UNIQUE_ID_license459", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author460, !6, !"__UNIQUE_ID_author460", i1 false, i1 false}
!6 = !{!"../net/can/bcm.c", i32 86, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias461, !8, !"__UNIQUE_ID_alias461", i1 false, i1 false}
!8 = !{!"../net/can/bcm.c", i32 87, i32 1}
!9 = !{ptr @__initcall__kmod_can_bcm__465_1758_bcm_module_init6, !10, !"__initcall__kmod_can_bcm__465_1758_bcm_module_init6", i1 false, i1 false}
!10 = !{!"../net/can/bcm.c", i32 1758, i32 1}
!11 = !{ptr @__exitcall_bcm_module_exit, !12, !"__exitcall_bcm_module_exit", i1 false, i1 false}
!12 = !{!"../net/can/bcm.c", i32 1759, i32 1}
!13 = !{ptr @bcm_can_proto, !14, !"bcm_can_proto", i1 false, i1 false}
!14 = !{!"../net/can/bcm.c", i32 1699, i32 31}
!15 = !{ptr @bcm_ops, !16, !"bcm_ops", i1 false, i1 false}
!16 = !{!"../net/can/bcm.c", i32 1673, i32 31}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/can/bcm.c", i32 137, i32 8}
!19 = !{ptr @bcm_notifier_lock, !18, !"bcm_notifier_lock", i1 false, i1 false}
!20 = !{ptr @bcm_busy_notifier, !21, !"bcm_busy_notifier", i1 false, i1 false}
!21 = !{!"../net/can/bcm.c", i32 138, i32 25}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/can/bcm.c", i32 744, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @bcm_rx_unreg._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @bcm_rx_unreg._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/can/bcm.c", i32 1610, i32 25}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/can/bcm.c", i32 200, i32 16}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/can/bcm.c", i32 201, i32 16}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/can/bcm.c", i32 202, i32 16}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/can/bcm.c", i32 203, i32 16}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/can/bcm.c", i32 204, i32 16}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/can/bcm.c", i32 205, i32 16}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/can/bcm.c", i32 215, i32 17}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/can/bcm.c", i32 219, i32 18}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/can/bcm.c", i32 221, i32 18}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/can/bcm.c", i32 223, i32 17}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/can/bcm.c", i32 226, i32 18}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/can/bcm.c", i32 230, i32 18}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/can/bcm.c", i32 233, i32 17}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/can/bcm.c", i32 238, i32 17}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/can/bcm.c", i32 239, i32 28}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/can/bcm.c", i32 239, i32 38}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/can/bcm.c", i32 244, i32 17}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/can/bcm.c", i32 248, i32 18}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/can/bcm.c", i32 250, i32 18}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/can/bcm.c", i32 253, i32 18}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/can/bcm.c", i32 257, i32 18}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/can/bcm.c", i32 260, i32 17}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/can/bcm.c", i32 179, i32 10}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/can/bcm.c", i32 186, i32 18}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!80 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!84 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/can/bcm.c", i32 1205, i32 13}
!92 = !{ptr @bcm_proto, !93, !"bcm_proto", i1 false, i1 false}
!93 = !{!"../net/can/bcm.c", i32 1692, i32 21}
!94 = !{ptr @bcm_notifier_list, !95, !"bcm_notifier_list", i1 false, i1 false}
!95 = !{!"../net/can/bcm.c", i32 136, i32 8}
!96 = !{ptr @canbcm_notifier, !97, !"canbcm_notifier", i1 false, i1 false}
!97 = !{!"../net/can/bcm.c", i32 1730, i32 30}
!98 = !{ptr @canbcm_pernet_ops, !99, !"canbcm_pernet_ops", i1 false, i1 false}
!99 = !{!"../net/can/bcm.c", i32 1725, i32 33}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/can/bcm.c", i32 1710, i32 45}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/can/bcm.c", i32 1738, i32 2}
!104 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @bcm_module_init._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @bcm_module_init._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/can/bcm.c", i32 1742, i32 3}
!109 = !{ptr @bcm_module_init._entry.38, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @bcm_module_init._entry_ptr.40, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 785272, i64 785333}
!122 = !{i64 788004}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i64 788289}
!125 = !{i64 2148471127}
!126 = !{i64 2148385567, i64 2148385599, i64 2148385628, i64 2148385662, i64 2148385693, i64 2148385716}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 2149347241}
!129 = !{i64 2150013723}
!130 = !{i64 2150014048}
!131 = !{i64 866105, i64 866129, i64 866150, i64 866167, i64 866184}
!132 = !{i64 742452, i64 742479, i64 742501, i64 742529}
!133 = !{i64 742860, i64 742887, i64 742920, i64 742941, i64 742968, i64 742994}
!134 = !{i64 2149397731}
!135 = !{i64 2149397997}
