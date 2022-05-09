; ModuleID = '/llk/IR_all_yes/net/dccp/ipv6.c_pt.bc'
source_filename = "../net/dccp/ipv6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [92 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.21 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.21 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timewait_sock_ops = type { ptr, ptr, i32, ptr, ptr }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.static_key_false_deferred = type { %struct.static_key_false, i32, %struct.delayed_work }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.94 }
%union.anon.94 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.180, %union.anon.181, [48 x i8], %union.anon.182, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.184, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.180 = type { ptr }
%union.anon.181 = type { i64 }
%union.anon.182 = type { %struct.anon.183 }
%struct.anon.183 = type { i32, ptr }
%union.anon.184 = type { %struct.anon.185 }
%struct.anon.185 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.186, i32, i32, i32, i16, i16, %union.anon.188, i32, %union.anon.189, %union.anon.190, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.186 = type { i32 }
%union.anon.188 = type { i32 }
%union.anon.189 = type { i32 }
%union.anon.190 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.dccp_hdr = type { i16, i16, i8, i8, i16, i8, i8, i16 }
%struct.dccp_hdr_ack_bits = type { i16, i16, i32 }
%struct.sock_common = type { %union.anon.147, %union.anon.149, %union.anon.150, i16, i8, i8, i32, %union.anon.152, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon.147 = type { i64 }
%union.anon.149 = type { i32 }
%union.anon.150 = type { i32 }
%union.anon.152 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.179, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.179 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.dccp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i16, i16, i48, i64, i48, i32, %struct.list_head, ptr, ptr, ptr, %struct.dccp_options_received, i8, i32, i8, %struct.tasklet_struct, %struct.timer_list }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.205, %struct.anon.206, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.23 }
%union.anon.23 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.205 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.206 = type { i32, i32, i32, i32 }
%struct.dccp_options_received = type { i48, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.207, i32 }
%union.anon.207 = type { ptr }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
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
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.106, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.106 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.202, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.202 = type { %struct.anon.203 }
%struct.anon.203 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.anon.24 = type { i16, i16 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.ip6_flowlabel = type { ptr, i32, %struct.atomic_t, %struct.in6_addr, ptr, i32, %struct.callback_head, i8, %union.anon.204, i32, i32, ptr }
%union.anon.204 = type { ptr }
%struct.anon.148 = type { i32, i32 }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.98, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.98 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.101, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.101 = type { %struct.in6_addr }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.dccp_service_list = type { i32, [0 x i32] }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.209 }
%union.anon.209 = type { %struct.anon.210 }
%struct.anon.210 = type { ptr, ptr }
%struct.dccp_request_sock = type { %struct.inet_request_sock, i64, i64, i64, i64, i32, %struct.spinlock, %struct.list_head, i32, i32 }
%struct.dccp6_sock = type { %struct.dccp_sock, %struct.ipv6_pinfo }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.102, i32, %struct.list_head, ptr }
%union.anon.102 = type { %struct.in6_addr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.anon.151 = type { i16, i16 }

@dccp_v6_protocol = internal constant { %struct.inet6_protocol, [44 x i8] } { %struct.inet6_protocol { ptr null, ptr null, ptr @dccp_v6_rcv, ptr @dccp_v6_err, i32 3 }, [44 x i8] zeroinitializer }, align 32
@dccp_v6_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @dccp_v6_init_net, ptr null, ptr @dccp_v6_exit_net, ptr @dccp_v6_exit_batch, ptr @dccp_v6_pernet_id, i32 4 }, [32 x i8] zeroinitializer }, align 32
@dccp_v6_protosw = internal global { %struct.inet_protosw, [40 x i8] } { %struct.inet_protosw { %struct.list_head zeroinitializer, i16 6, i16 33, ptr @dccp_v6_prot, ptr @inet6_dccp_ops, i8 4 }, [40 x i8] zeroinitializer }, align 32
@dccp_v6_prot = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr @dccp_close, ptr null, ptr @dccp_v6_connect, ptr @dccp_disconnect, ptr @inet_csk_accept, ptr @dccp_ioctl, ptr @dccp_v6_init_sock, ptr @dccp_v6_destroy_sock, ptr @dccp_shutdown, ptr @dccp_setsockopt, ptr @dccp_getsockopt, ptr null, ptr @dccp_sendmsg, ptr @dccp_recvmsg, ptr null, ptr null, ptr null, ptr @dccp_v6_do_rcv, ptr null, ptr null, ptr @inet6_hash, ptr @inet_unhash, ptr null, ptr @inet_csk_get_port, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 1196, i8 0, ptr null, i32 1960, i32 524288, i32 0, i32 0, ptr @dccp_orphan_count, ptr @dccp6_request_sock_ops, ptr @dccp6_timewait_sock_ops, %union.anon.154 { ptr @dccp_hashinfo }, ptr null, [32 x i8] c"DCCPv6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_dccp_ipv6__679_1166_dccp_v6_init6 = internal global ptr @dccp_v6_init, section ".initcall6.init", align 4
@__exitcall_dccp_v6_exit = internal global ptr @dccp_v6_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias680 = internal constant [42 x i8] c"dccp_ipv6.alias=net-pf-10-proto-33-type-6\00", section ".modinfo", align 1
@__UNIQUE_ID_alias681 = internal constant [41 x i8] c"dccp_ipv6.alias=net-pf-10-proto-0-type-6\00", section ".modinfo", align 1
@__UNIQUE_ID_file682 = internal constant [34 x i8] c"dccp_ipv6.file=net/dccp/dccp_ipv6\00", section ".modinfo", align 1
@__UNIQUE_ID_license683 = internal constant [22 x i8] c"dccp_ipv6.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author684 = internal constant [62 x i8] c"dccp_ipv6.author=Arnaldo Carvalho de Melo <acme@mandriva.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description685 = internal constant [71 x i8] c"dccp_ipv6.description=DCCPv6 - Datagram Congestion Controlled Protocol\00", section ".modinfo", align 1
@dccp_v6_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: dropped packet with invalid checksum\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dccp_v6_rcv\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/dccp/ipv6.c\00", [16 x i8] zeroinitializer }, align 32
@dccp_v6_rcv._entry_ptr = internal global ptr @dccp_v6_rcv._entry, section ".printk_index", align 4
@dccp_hashinfo = external dso_local global %struct.inet_hashinfo, align 128
@dccp_debug = external dso_local local_unnamed_addr global i8, align 1
@dccp_v6_rcv._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017%s: failed to look up flow ID in table and get corresponding socket\0A\00", [57 x i8] zeroinitializer }, align 32
@dccp_v6_rcv._entry_ptr.5 = internal global ptr @dccp_v6_rcv._entry.3, section ".printk_index", align 4
@dccp_v6_rcv._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: sk->sk_state == DCCP_TIME_WAIT: do_time_wait\0A\00", [44 x i8] zeroinitializer }, align 32
@dccp_v6_rcv._entry_ptr.8 = internal global ptr @dccp_v6_rcv._entry.6, section ".printk_index", align 4
@dccp_v6_rcv._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: Packet CsCov %d does not satisfy MinCsCov %d\0A\00", [44 x i8] zeroinitializer }, align 32
@dccp_v6_rcv._entry_ptr.11 = internal global ptr @dccp_v6_rcv._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@reqsk_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/request_sock.h\00", [37 x i8] zeroinitializer }, align 32
@dccp_v6_pernet_id = internal global i32 0, section ".data..read_mostly", align 4
@dccp_statistics = external dso_local local_unnamed_addr global ptr, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@inet6_dccp_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 10, ptr null, ptr @inet6_release, ptr @inet6_bind, ptr @inet_stream_connect, ptr @sock_no_socketpair, ptr @inet_accept, ptr @inet6_getname, ptr @dccp_poll, ptr @inet6_ioctl, ptr @sock_gettstamp, ptr @inet_dccp_listen, ptr @inet_shutdown, ptr @sock_common_setsockopt, ptr @sock_common_getsockopt, ptr null, ptr @inet_sendmsg, ptr @sock_common_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dccp_orphan_count = external dso_local global i32, section ".data..percpu", align 4
@dccp6_request_sock_ops = internal global { %struct.request_sock_ops, [60 x i8] } { %struct.request_sock_ops { i32 10, i32 304, ptr null, ptr null, ptr @dccp_v6_send_response, ptr @dccp_reqsk_send_ack, ptr @dccp_v6_ctl_send_reset, ptr @dccp_v6_reqsk_destructor, ptr @dccp_syn_ack_timeout }, [60 x i8] zeroinitializer }, align 32
@dccp6_timewait_sock_ops = internal global { %struct.timewait_sock_ops, [44 x i8] } { %struct.timewait_sock_ops { ptr null, ptr null, i32 184, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@dccp_v6_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017connect: ipv4 mapped\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dccp_v6_connect\00", [16 x i8] zeroinitializer }, align 32
@dccp_v6_connect._entry_ptr = internal global ptr @dccp_v6_connect._entry, section ".printk_index", align 4
@dccp_ipv6_mapped = internal constant { %struct.inet_connection_sock_af_ops, [48 x i8] } { %struct.inet_connection_sock_af_ops { ptr @ip_queue_xmit, ptr @dccp_v4_send_check, ptr @inet_sk_rebuild_header, ptr null, ptr @dccp_v6_conn_request, ptr @dccp_v6_request_recv_sock, i16 20, i16 0, i16 28, ptr @ipv6_setsockopt, ptr @ipv6_getsockopt, ptr @inet6_csk_addr2sockaddr, ptr null }, [48 x i8] zeroinitializer }, align 32
@dccp_ipv6_af_ops = internal constant { %struct.inet_connection_sock_af_ops, [48 x i8] } { %struct.inet_connection_sock_af_ops { ptr @inet6_csk_xmit, ptr @dccp_v6_send_check, ptr @inet6_sk_rebuild_header, ptr null, ptr @dccp_v6_conn_request, ptr @dccp_v6_request_recv_sock, i16 40, i16 0, i16 28, ptr @ipv6_setsockopt, ptr @ipv6_getsockopt, ptr @inet6_csk_addr2sockaddr, ptr null }, [48 x i8] zeroinitializer }, align 32
@dccp_v6_connect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@dccp_death_row = external dso_local global %struct.inet_timewait_death_row, align 4
@ipv6_flowlabel_exclusive = external dso_local global %struct.static_key_false_deferred, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@dccp_v6_send_response.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dccp_v6_send_response.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dccp_v6_request_recv_sock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rt6_get_cookie.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/ip6_fib.h\00", [42 x i8] zeroinitializer }, align 32
@fib6_get_cookie_safe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sk_dst_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dccp_v6_init_sock.dccp_v6_ctl_sock_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@switch.table.dccp_v6_rcv = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 8, i32 8, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 4, i32 12, i32 0, i32 8, i32 8, i32 8, i32 8], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 137]
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"dccp_v6_protocol\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1061, i32 36 }
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"dccp_v6_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1123, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"dccp_v6_protosw\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1092, i32 28 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"dccp_v6_prot\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1033, i32 21 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 712, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 731, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 743, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 781, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 1011, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [30 x i8] c"../include/net/request_sock.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 126, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 45, i32 7 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 695, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 723, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 313, i32 9 }
@___asan_gen_.95 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1750, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"inet6_dccp_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1067, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant [23 x i8] c"dccp6_request_sock_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 307, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant [24 x i8] c"dccp6_timewait_sock_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1029, i32 33 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 893, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"dccp_ipv6_mapped\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 993, i32 49 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"dccp_ipv6_af_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 977, i32 49 }
@___asan_gen_.122 = private constant [19 x i8] c"../net/dccp/ipv6.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 927, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 271, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [25 x i8] c"../include/net/ip6_fib.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 306, i32 9 }
@___asan_gen_.130 = private unnamed_addr constant [47 x i8] c"dccp_v6_init_sock.dccp_v6_ctl_sock_initialized\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [25 x i8] c"switch.table.dccp_v6_rcv\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_alias680, ptr @__UNIQUE_ID_alias681, ptr @__UNIQUE_ID_author684, ptr @__UNIQUE_ID_description685, ptr @__UNIQUE_ID_file682, ptr @__UNIQUE_ID_license683, ptr @__exitcall_dccp_v6_exit, ptr @__initcall__kmod_dccp_ipv6__679_1166_dccp_v6_init6, ptr @dccp_v6_connect._entry, ptr @dccp_v6_connect._entry_ptr, ptr @dccp_v6_exit, ptr @dccp_v6_rcv._entry, ptr @dccp_v6_rcv._entry.3, ptr @dccp_v6_rcv._entry.6, ptr @dccp_v6_rcv._entry.9, ptr @dccp_v6_rcv._entry_ptr, ptr @dccp_v6_rcv._entry_ptr.11, ptr @dccp_v6_rcv._entry_ptr.5, ptr @dccp_v6_rcv._entry_ptr.8, ptr @dccp_v6_protocol, ptr @dccp_v6_ops, ptr @dccp_v6_protosw, ptr @dccp_v6_prot, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @inet6_dccp_ops, ptr @dccp6_request_sock_ops, ptr @dccp6_timewait_sock_ops, ptr @.str.22, ptr @.str.23, ptr @dccp_ipv6_mapped, ptr @dccp_ipv6_af_ops, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @dccp_v6_init_sock.dccp_v6_ctl_sock_initialized, ptr @switch.table.dccp_v6_rcv], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_v6_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_v6_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_v6_protosw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_v6_prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_v6_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_v6_rcv._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_v6_rcv._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_v6_rcv._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet6_dccp_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp6_request_sock_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp6_timewait_sock_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_v6_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_ipv6_mapped to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_ipv6_af_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_v6_init_sock.dccp_v6_ctl_sock_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dccp_v6_rcv to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dccp_v6_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @inet6_del_protocol(ptr noundef nonnull @dccp_v6_protocol, i8 noundef zeroext 33) #10
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @dccp_v6_ops) #10
  tail call void @inet6_unregister_protosw(ptr noundef nonnull @dccp_v6_protosw) #10
  tail call void @proto_unregister(ptr noundef nonnull @dccp_v6_prot) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_unregister_protosw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_v6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @dccp_v6_prot, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @inet6_register_protosw(ptr noundef nonnull @dccp_v6_protosw) #10
  %call2 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @dccp_v6_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_destroy_ctl_sock_crit_edge

if.end.out_destroy_ctl_sock_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_destroy_ctl_sock

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @dccp_v6_protocol, i8 noundef zeroext 33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.out_crit_edge, label %out_unregister_proto

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %out_destroy_ctl_sock, %if.end5.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %err.1, %out_destroy_ctl_sock ], [ 0, %if.end5.out_crit_edge ]
  ret i32 %err.0

out_unregister_proto:                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @dccp_v6_ops) #10
  br label %out_destroy_ctl_sock

out_destroy_ctl_sock:                             ; preds = %out_unregister_proto, %if.end.out_destroy_ctl_sock_crit_edge
  %err.1 = phi i32 [ %call2, %if.end.out_destroy_ctl_sock_crit_edge ], [ %call6, %out_unregister_proto ]
  tail call void @inet6_unregister_protosw(ptr noundef nonnull @dccp_v6_protosw) #10
  tail call void @proto_unregister(ptr noundef nonnull @dccp_v6_prot) #10
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_v6_rcv(ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dccp_invalid_packet(ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.discard_it_crit_edge

entry.discard_it_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard_it

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %5, i32 noundef 33, i32 noundef %8) #10
  %9 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #13, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %9)
  %tobool4.not = icmp ugt i32 %9, -65537
  br i1 %tobool4.not, label %if.end14, label %do.body

do.body:                                          ; preds = %if.end
  %call6 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body.discard_it_crit_edge, label %do.end

do.body.discard_it_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard_it

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  br label %discard_it

if.end14:                                         ; preds = %if.end
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %12 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i218 = zext i16 %13 to i32
  %add.ptr.i.i219 = getelementptr i8, ptr %11, i32 %conv.i.i218
  %dccph_seq.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i219, i32 0, i32 7
  %14 = ptrtoint ptr %dccph_seq.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dccph_seq.i, align 2
  %conv.i = zext i16 %15 to i64
  %dccph_x.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i219, i32 0, i32 5
  %16 = ptrtoint ptr %dccph_x.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %dccph_x.i, align 2
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %cmp.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %add.ptr.i.i220 = getelementptr i8, ptr %add.ptr.i.i219, i32 12
  %17 = ptrtoint ptr %add.ptr.i.i220 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i220, align 4
  %conv3.i = zext i32 %18 to i64
  br label %dccp_hdr_seq.exit

if.else.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %dccph_seq2.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i219, i32 0, i32 6
  %19 = ptrtoint ptr %dccph_seq2.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dccph_seq2.i, align 1
  %conv4.i = zext i8 %20 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  %conv6.i = zext i32 %shl5.i to i64
  br label %dccp_hdr_seq.exit

dccp_hdr_seq.exit:                                ; preds = %if.else.i, %if.then.i
  %conv.sink.i = phi i64 [ %conv.i, %if.else.i ], [ %conv3.i, %if.then.i ]
  %conv6.sink.i = phi i64 [ %conv6.i, %if.else.i ], [ %shl.i, %if.then.i ]
  %add7.i = or i64 %conv6.sink.i, %conv.sink.i
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %21 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %add7.i, ptr %dccpd_seq, align 8
  %22 = ptrtoint ptr %dccph_x.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %dccph_x.i, align 2
  %dccpd_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %23 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load19 = load i8, ptr %dccpd_type, align 8
  %24 = shl i8 %bf.load, 3
  %bf.shl = and i8 %24, -16
  %bf.clear20 = and i8 %bf.load19, 15
  %bf.set = or i8 %bf.clear20, %bf.shl
  store i8 %bf.set, ptr %dccpd_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.shl)
  %cmp.i = icmp ne i8 %bf.shl, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %bf.set)
  %cmp3.i = icmp ugt i8 %bf.set, 15
  %tobool22.not = and i1 %cmp.i, %cmp3.i
  br i1 %tobool22.not, label %if.else, label %dccp_hdr_seq.exit.if.end30_crit_edge

dccp_hdr_seq.exit.if.end30_crit_edge:             ; preds = %dccp_hdr_seq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.else:                                          ; preds = %dccp_hdr_seq.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %dccph_x.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i.i.i.i = load i8, ptr %dccph_x.i, align 2
  %bf.clear.i.i.i.i = shl i8 %bf.load.i.i.i.i, 2
  %26 = and i8 %bf.clear.i.i.i.i, 4
  %narrow.i.i.i.i = add nuw nsw i8 %26, 12
  %add.i.i.i.i223 = zext i8 %narrow.i.i.i.i to i32
  %add.ptr.i.i224 = getelementptr i8, ptr %add.ptr.i.i219, i32 %add.i.i.i.i223
  %dccph_ack_nr_high.i = getelementptr inbounds %struct.dccp_hdr_ack_bits, ptr %add.ptr.i.i224, i32 0, i32 1
  %27 = ptrtoint ptr %dccph_ack_nr_high.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dccph_ack_nr_high.i, align 2
  %conv.i225 = zext i16 %28 to i64
  %shl.i226 = shl nuw nsw i64 %conv.i225, 32
  %dccph_ack_nr_low.i = getelementptr inbounds %struct.dccp_hdr_ack_bits, ptr %add.ptr.i.i224, i32 0, i32 2
  %29 = ptrtoint ptr %dccph_ack_nr_low.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dccph_ack_nr_low.i, align 4
  %conv1.i = zext i32 %30 to i64
  %add.i = or i64 %shl.i226, %conv1.i
  br label %if.end30

if.end30:                                         ; preds = %if.else, %dccp_hdr_seq.exit.if.end30_crit_edge
  %.sink = phi i64 [ %add.i, %if.else ], [ 1125899906842620, %dccp_hdr_seq.exit.if.end30_crit_edge ]
  %31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %.sink, ptr %31, align 8
  %dccph_dport = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i219, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  br label %lookup

lookup:                                           ; preds = %cleanup, %if.end30
  %35 = ptrtoint ptr %dccph_x.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i.i = load i8, ptr %dccph_x.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i.i, 1
  %trunc.i = trunc i8 %bf.lshr.i to i4
  %switch.tableidx = xor i4 %trunc.i, -8
  %36 = sext i4 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %.not = icmp eq i4 %switch.tableidx, -1
  br i1 %.not, label %lookup.__dccp_hdr_len.exit_crit_edge, label %switch.lookup

lookup.__dccp_hdr_len.exit_crit_edge:             ; preds = %lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dccp_hdr_len.exit

switch.lookup:                                    ; preds = %lookup
  call void @__sanitizer_cov_trace_pc() #12
  %37 = zext i4 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.dccp_v6_rcv, i32 0, i32 %37
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %__dccp_hdr_len.exit

__dccp_hdr_len.exit:                              ; preds = %switch.lookup, %lookup.__dccp_hdr_len.exit_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 12, %lookup.__dccp_hdr_len.exit_crit_edge ]
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %39 = and i8 %bf.clear.i.i, 4
  %narrow.i.i = add nuw nsw i8 %39, 12
  %add.i.i = zext i8 %narrow.i.i to i32
  %add.i227 = add nuw nsw i32 %retval.0.i.i, %add.i.i
  %40 = ptrtoint ptr %add.ptr.i.i219 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.i.i219, align 2
  %42 = ptrtoint ptr %dccph_dport to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %dccph_dport, align 2
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %flags.i, align 8
  %46 = and i16 %45, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.i.not.i = icmp eq i16 %46, 0
  %cond.in.i = select i1 %tobool.i.not.i, ptr %cb.i, ptr %skb_iif.i
  %47 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %cond.i = load i32, ptr %cond.in.i, align 8
  %48 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %33, align 4
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %if.end.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %__dccp_hdr_len.exit
  %50 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %destructor.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %51, @sock_pfree
  br i1 %cmp.i.i.i, label %if.then1.i.i, label %if.then.i.i.skb_steal_sock.exit.i_crit_edge

if.then.i.i.skb_steal_sock.exit.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_steal_sock.exit.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  %skc_state.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %49, i32 0, i32 4
  %52 = ptrtoint ptr %skc_state.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load volatile i8, ptr %skc_state.i.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %53 to i32
  %shl.i.i.i.i = shl nuw i32 1, %conv.i.i.i.i
  %and.i.i.i.i = and i32 %shl.i.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.then1.i.i.sk_is_refcounted.exit.i.i_crit_edge, label %lor.rhs.i.i.i

if.then1.i.i.sk_is_refcounted.exit.i.i_crit_edge: ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_is_refcounted.exit.i.i

lor.rhs.i.i.i:                                    ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = getelementptr inbounds %struct.sock_common, ptr %49, i32 0, i32 13
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  %57 = and i32 %56, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.i3.not.i.i.i = icmp eq i32 %57, 0
  br label %sk_is_refcounted.exit.i.i

sk_is_refcounted.exit.i.i:                        ; preds = %lor.rhs.i.i.i, %if.then1.i.i.sk_is_refcounted.exit.i.i_crit_edge
  %58 = phi i1 [ true, %if.then1.i.i.sk_is_refcounted.exit.i.i_crit_edge ], [ %tobool.i3.not.i.i.i, %lor.rhs.i.i.i ]
  %frombool.i.i = zext i1 %58 to i8
  br label %skb_steal_sock.exit.i

skb_steal_sock.exit.i:                            ; preds = %sk_is_refcounted.exit.i.i, %if.then.i.i.skb_steal_sock.exit.i_crit_edge
  %refcounted.0 = phi i8 [ %frombool.i.i, %sk_is_refcounted.exit.i.i ], [ 1, %if.then.i.i.skb_steal_sock.exit.i_crit_edge ]
  %59 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %destructor.i.i.i, align 4
  %60 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %33, align 4
  br label %if.end47

if.end.i:                                         ; preds = %__dccp_hdr_len.exit
  %61 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %34, align 8
  %and.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %if.end.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.skb_dst.exit.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call.i.i228 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i228)
  %tobool1.not.i.i = icmp eq i32 %call.i.i228, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !114

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.end.i.skb_dst.exit.i_crit_edge
  %63 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %34, align 8
  %and25.i.i = and i32 %64, -2
  %65 = inttoptr i32 %and25.i.i to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 127
  %68 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %nd_net.i.i, align 4
  %70 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %head.i.i, align 8
  %72 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i230 = zext i16 %73 to i32
  %add.ptr.i.i.i231 = getelementptr i8, ptr %71, i32 %conv.i.i.i230
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i231, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i231, i32 0, i32 6
  %call.i7.i = tail call ptr @__inet6_lookup_established(ptr noundef %69, ptr noundef nonnull @dccp_hashinfo, ptr noundef %saddr.i, i16 noundef zeroext %41, ptr noundef %daddr.i, i16 noundef zeroext %43, i32 noundef %cond.i, i32 noundef 0) #10
  %tobool.not.i8.i = icmp eq ptr %call.i7.i, null
  br i1 %tobool.not.i8.i, label %__inet6_lookup_skb.exit, label %skb_dst.exit.i.if.end47_crit_edge

skb_dst.exit.i.if.end47_crit_edge:                ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

__inet6_lookup_skb.exit:                          ; preds = %skb_dst.exit.i
  %call1.i.i = tail call ptr @inet6_lookup_listener(ptr noundef %69, ptr noundef nonnull @dccp_hashinfo, ptr noundef %skb, i32 noundef %add.i227, ptr noundef %saddr.i, i16 noundef zeroext %41, ptr noundef %daddr.i, i16 noundef zeroext %43, i32 noundef %cond.i, i32 noundef 0) #10
  %tobool34.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool34.not, label %do.body36, label %__inet6_lookup_skb.exit.if.end47_crit_edge

__inet6_lookup_skb.exit.if.end47_crit_edge:       ; preds = %__inet6_lookup_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

do.body36:                                        ; preds = %__inet6_lookup_skb.exit
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %74 = load i8, ptr @dccp_debug, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool37.not = icmp eq i8 %74, 0
  br i1 %tobool37.not, label %do.body36.no_dccp_socket_crit_edge, label %do.end41

do.body36.no_dccp_socket_crit_edge:               ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_dccp_socket

do.end41:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #14
  br label %no_dccp_socket

if.end47:                                         ; preds = %__inet6_lookup_skb.exit.if.end47_crit_edge, %skb_dst.exit.i.if.end47_crit_edge, %skb_steal_sock.exit.i
  %retval.0.i272 = phi ptr [ %call1.i.i, %__inet6_lookup_skb.exit.if.end47_crit_edge ], [ %call.i7.i, %skb_dst.exit.i.if.end47_crit_edge ], [ %49, %skb_steal_sock.exit.i ]
  %refcounted.1270 = phi i8 [ 0, %__inet6_lookup_skb.exit.if.end47_crit_edge ], [ 1, %skb_dst.exit.i.if.end47_crit_edge ], [ %refcounted.0, %skb_steal_sock.exit.i ]
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %retval.0.i272, i32 0, i32 4
  %75 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %76)
  %cmp = icmp eq i8 %76, 6
  br i1 %cmp, label %do.body50, label %if.end62

do.body50:                                        ; preds = %if.end47
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %77 = load i8, ptr @dccp_debug, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool51.not = icmp eq i8 %77, 0
  br i1 %tobool51.not, label %do.body50.do.end60_crit_edge, label %do.end55

do.body50.do.end60_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

do.end55:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #14
  br label %do.end60

do.end60:                                         ; preds = %do.end55, %do.body50.do.end60_crit_edge
  tail call void @inet_twsk_put(ptr noundef nonnull %retval.0.i272) #10
  br label %no_dccp_socket

if.end62:                                         ; preds = %if.end47
  %78 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %79)
  %cmp66 = icmp eq i8 %79, 12
  br i1 %cmp66, label %if.then68, label %if.end62.if.end93_crit_edge

if.end62.if.end93_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then68:                                        ; preds = %if.end62
  %80 = getelementptr inbounds %struct.sock_common, ptr %retval.0.i272, i32 0, i32 13
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 8
  %skc_state71 = getelementptr inbounds %struct.sock_common, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %skc_state71 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load volatile i8, ptr %skc_state71, align 2
  %cmp73.not = icmp eq i8 %84, 10
  br i1 %cmp73.not, label %if.end78, label %cleanup, !prof !116

if.end78:                                         ; preds = %if.then68
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %82, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !117
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end78.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !114

if.end78.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end78
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %86 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %.not.i.i.i.i = icmp sgt i32 %86, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !116

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end78.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end78.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %call79 = tail call ptr @dccp_check_req(ptr noundef %82, ptr noundef %skb, ptr noundef nonnull %retval.0.i272) #10
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %if.then81, label %if.end82

if.then81:                                        ; preds = %sock_hold.exit
  %skc_refcnt.i232 = getelementptr inbounds %struct.sock_common, ptr %retval.0.i272, i32 0, i32 19
  %call.i.i.i.i.i.i233 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i232, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i232, i32 1, i32 3, i32 1) #10
  %87 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i232, ptr %skc_refcnt.i232, i32 1, ptr elementtype(i32) %skc_refcnt.i232) #10, !srcloc !119
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i235, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i234 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i234, label %if.end5.i.i.i.i.if.then152_crit_edge, label %if.then10.i.i.i.i, !prof !116

if.end5.i.i.i.i.if.then152_crit_edge:             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then152

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i232, i32 noundef 3) #10
  br label %if.then152

if.then.i235:                                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call fastcc void @reqsk_free(ptr noundef nonnull %retval.0.i272) #10
  br label %if.then152

if.end82:                                         ; preds = %sock_hold.exit
  %cmp83 = icmp eq ptr %call79, %82
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %if.end82
  %skc_refcnt.i237 = getelementptr inbounds %struct.sock_common, ptr %retval.0.i272, i32 0, i32 19
  %call.i.i.i.i.i.i238 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i237, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i237, i32 1, i32 3, i32 1) #10
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i237, ptr %skc_refcnt.i237, i32 1, ptr elementtype(i32) %skc_refcnt.i237) #10, !srcloc !119
  %asmresult.i.i.i.i.i.i.i239 = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i239)
  %cmp.i.i.i.i240 = icmp eq i32 %asmresult.i.i.i.i.i.i.i239, 1
  br i1 %cmp.i.i.i.i240, label %if.then.i244, label %if.end5.i.i.i.i242

if.end5.i.i.i.i242:                               ; preds = %if.then85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i239)
  %.not.i.i.i.i241 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i239, 0
  br i1 %.not.i.i.i.i241, label %if.end5.i.i.i.i242.if.end93_crit_edge, label %if.then10.i.i.i.i243, !prof !116

if.end5.i.i.i.i242.if.end93_crit_edge:            ; preds = %if.end5.i.i.i.i242
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then10.i.i.i.i243:                             ; preds = %if.end5.i.i.i.i242
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i237, i32 noundef 3) #10
  br label %if.end93

if.then.i244:                                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call fastcc void @reqsk_free(ptr noundef nonnull %retval.0.i272) #10
  br label %if.end93

if.else86:                                        ; preds = %if.end82
  %call87 = tail call i32 @dccp_child_process(ptr noundef %82, ptr noundef nonnull %call79, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.else90, label %if.then89

if.then89:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dccp_v6_ctl_send_reset(ptr noundef %82, ptr noundef %skb)
  br label %if.then152

if.else90:                                        ; preds = %if.else86
  %call.i.i.i.i.i.i248 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %89 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !119
  %asmresult.i.i.i.i.i.i.i249 = extractvalue { i32, i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i249)
  %cmp.i.i.i.i250 = icmp eq i32 %asmresult.i.i.i.i.i.i.i249, 1
  br i1 %cmp.i.i.i.i250, label %if.then.i254, label %if.end5.i.i.i.i252

if.end5.i.i.i.i252:                               ; preds = %if.else90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i249)
  %.not.i.i.i.i251 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i249, 0
  br i1 %.not.i.i.i.i251, label %if.end5.i.i.i.i252.cleanup154_crit_edge, label %if.then10.i.i.i.i253, !prof !116

if.end5.i.i.i.i252.cleanup154_crit_edge:          ; preds = %if.end5.i.i.i.i252
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup154

if.then10.i.i.i.i253:                             ; preds = %if.end5.i.i.i.i252
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %cleanup154

if.then.i254:                                     ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call void @sk_free(ptr noundef %82) #10
  br label %cleanup154

cleanup:                                          ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @inet_csk_reqsk_queue_drop_and_put(ptr noundef %82, ptr noundef nonnull %retval.0.i272) #10
  br label %lookup

if.end93:                                         ; preds = %if.then.i244, %if.then10.i.i.i.i243, %if.end5.i.i.i.i242.if.end93_crit_edge, %if.end62.if.end93_crit_edge
  %refcounted.3 = phi i8 [ 1, %if.end5.i.i.i.i242.if.end93_crit_edge ], [ 1, %if.then10.i.i.i.i243 ], [ 1, %if.then.i244 ], [ %refcounted.1270, %if.end62.if.end93_crit_edge ]
  %sk.0 = phi ptr [ %82, %if.end5.i.i.i.i242.if.end93_crit_edge ], [ %82, %if.then10.i.i.i.i243 ], [ %82, %if.then.i244 ], [ %retval.0.i272, %if.end62.if.end93_crit_edge ]
  %dccps_pcrlen = getelementptr inbounds %struct.dccp_sock, ptr %sk.0, i32 0, i32 19
  %90 = ptrtoint ptr %dccps_pcrlen to i32
  call void @__asan_load8_noabort(i32 %90)
  %bf.load95 = load i64, ptr %dccps_pcrlen, align 8
  %91 = trunc i64 %bf.load95 to i32
  %92 = lshr i32 %91, 8
  %bf.cast = and i32 %92, 15
  %dccph_cscov = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i219, i32 0, i32 3
  %93 = ptrtoint ptr %dccph_cscov to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load99 = load i8, ptr %dccph_cscov, align 1
  %bf.clear100 = and i8 %bf.load99, 15
  %conv101 = zext i8 %bf.clear100 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear100)
  %tobool102.not = icmp eq i8 %bf.clear100, 0
  br i1 %tobool102.not, label %if.end93.if.end127_crit_edge, label %land.lhs.true

if.end93.if.end127_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

land.lhs.true:                                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %cmp103 = icmp eq i32 %bf.cast, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast, i32 %conv101)
  %cmp109 = icmp ugt i32 %bf.cast, %conv101
  %or.cond = select i1 %cmp103, i1 true, i1 %cmp109
  br i1 %or.cond, label %do.body112, label %land.lhs.true.if.end127_crit_edge

land.lhs.true.if.end127_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

do.body112:                                       ; preds = %land.lhs.true
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %94 = load i8, ptr @dccp_debug, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool113.not = icmp eq i8 %94, 0
  br i1 %tobool113.not, label %do.body112.discard_and_relse_crit_edge, label %do.end117

do.body112.discard_and_relse_crit_edge:           ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard_and_relse

do.end117:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #12
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %conv101, i32 noundef %bf.cast) #14
  br label %discard_and_relse

if.end127:                                        ; preds = %land.lhs.true.if.end127_crit_edge, %if.end93.if.end127_crit_edge
  %call128 = tail call fastcc i32 @xfrm6_policy_check(ptr noundef %sk.0, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end127.discard_and_relse_crit_edge, label %if.end131

if.end127.discard_and_relse_crit_edge:            ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard_and_relse

if.end131:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  %dccph_doff = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i219, i32 0, i32 2
  %95 = ptrtoint ptr %dccph_doff to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %dccph_doff, align 2
  %conv132 = zext i8 %96 to i32
  %mul = shl nuw nsw i32 %conv132, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %refcounted.3)
  %tobool133 = icmp ne i8 %refcounted.3, 0
  %call134 = tail call i32 @__sk_receive_skb(ptr noundef %sk.0, ptr noundef %skb, i32 noundef 1, i32 noundef %mul, i1 noundef zeroext %tobool133) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp ne i32 %call134, 0
  %cond = sext i1 %tobool135.not to i32
  br label %cleanup154

no_dccp_socket:                                   ; preds = %do.end60, %do.end41, %do.body36.no_dccp_socket_crit_edge
  %retval.0.i271 = phi ptr [ null, %do.body36.no_dccp_socket_crit_edge ], [ null, %do.end41 ], [ %retval.0.i272, %do.end60 ]
  %call136 = tail call fastcc i32 @xfrm6_policy_check(ptr noundef null, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %no_dccp_socket.discard_it_crit_edge, label %if.end139

no_dccp_socket.discard_it_crit_edge:              ; preds = %no_dccp_socket
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard_it

if.end139:                                        ; preds = %no_dccp_socket
  %97 = ptrtoint ptr %dccph_x.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %bf.load141 = load i8, ptr %dccph_x.i, align 2
  %98 = and i8 %bf.load141, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %98)
  %cmp145.not = icmp eq i8 %98, 14
  br i1 %cmp145.not, label %if.end139.discard_it_crit_edge, label %if.then147

if.end139.discard_it_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard_it

if.then147:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  %dccpd_reset_code = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 25
  %99 = ptrtoint ptr %dccpd_reset_code to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 3, ptr %dccpd_reset_code, align 1
  tail call void @dccp_v6_ctl_send_reset(ptr noundef %retval.0.i271, ptr noundef %skb)
  br label %discard_it

discard_it:                                       ; preds = %if.then.i263, %if.then10.i.i.i.i262, %if.end5.i.i.i.i261.discard_it_crit_edge, %discard_and_relse.discard_it_crit_edge, %if.then147, %if.end139.discard_it_crit_edge, %no_dccp_socket.discard_it_crit_edge, %do.end, %do.body.discard_it_crit_edge, %entry.discard_it_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup154

discard_and_relse:                                ; preds = %if.end127.discard_and_relse_crit_edge, %do.end117, %do.body112.discard_and_relse_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %refcounted.3)
  %tobool151.not = icmp eq i8 %refcounted.3, 0
  br i1 %tobool151.not, label %discard_and_relse.discard_it_crit_edge, label %discard_and_relse.if.then152_crit_edge

discard_and_relse.if.then152_crit_edge:           ; preds = %discard_and_relse
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then152

discard_and_relse.discard_it_crit_edge:           ; preds = %discard_and_relse
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard_it

if.then152:                                       ; preds = %discard_and_relse.if.then152_crit_edge, %if.then89, %if.then.i235, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.then152_crit_edge
  %sk.1286 = phi ptr [ %sk.0, %discard_and_relse.if.then152_crit_edge ], [ %82, %if.then.i235 ], [ %82, %if.then10.i.i.i.i ], [ %82, %if.end5.i.i.i.i.if.then152_crit_edge ], [ %82, %if.then89 ]
  %skc_refcnt.i256 = getelementptr inbounds %struct.sock_common, ptr %sk.1286, i32 0, i32 19
  %call.i.i.i.i.i.i257 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i256, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i256, i32 1, i32 3, i32 1) #10
  %100 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i256, ptr %skc_refcnt.i256, i32 1, ptr elementtype(i32) %skc_refcnt.i256) #10, !srcloc !119
  %asmresult.i.i.i.i.i.i.i258 = extractvalue { i32, i32, i32 } %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i258)
  %cmp.i.i.i.i259 = icmp eq i32 %asmresult.i.i.i.i.i.i.i258, 1
  br i1 %cmp.i.i.i.i259, label %if.then.i263, label %if.end5.i.i.i.i261

if.end5.i.i.i.i261:                               ; preds = %if.then152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i258)
  %.not.i.i.i.i260 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i258, 0
  br i1 %.not.i.i.i.i260, label %if.end5.i.i.i.i261.discard_it_crit_edge, label %if.then10.i.i.i.i262, !prof !116

if.end5.i.i.i.i261.discard_it_crit_edge:          ; preds = %if.end5.i.i.i.i261
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard_it

if.then10.i.i.i.i262:                             ; preds = %if.end5.i.i.i.i261
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i256, i32 noundef 3) #10
  br label %discard_it

if.then.i263:                                     ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call void @sk_free(ptr noundef %sk.1286) #10
  br label %discard_it

cleanup154:                                       ; preds = %discard_it, %if.end131, %if.then.i254, %if.then10.i.i.i.i253, %if.end5.i.i.i.i252.cleanup154_crit_edge
  %retval.2 = phi i32 [ 0, %discard_it ], [ %cond, %if.end131 ], [ 0, %if.end5.i.i.i.i252.cleanup154_crit_edge ], [ 0, %if.then10.i.i.i.i253 ], [ 0, %if.then.i254 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_v6_err(ptr noundef %skb, ptr nocapture noundef readnone %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %err, align 4, !annotation !121
  %3 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 127
  %6 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nd_net.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %1, i32 0, i32 6
  %dccph_dport = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr, i32 0, i32 1
  %8 = ptrtoint ptr %dccph_dport to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dccph_dport, align 2
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr, align 2
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags.i, align 8
  %14 = and i16 %13, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.i.not.i = icmp eq i16 %14, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cond.in.i = select i1 %tobool.i.not.i, ptr %cb.i, ptr %skb_iif.i
  %15 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond.i = load i32, ptr %cond.in.i, align 8
  %call6 = tail call ptr @__inet6_lookup_established(ptr noundef %7, ptr noundef nonnull @dccp_hashinfo, ptr noundef %daddr, i16 noundef zeroext %9, ptr noundef %saddr, i16 noundef zeroext %11, i32 noundef %cond.i, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.then, label %if.end30

if.then:                                          ; preds = %entry
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 80
  %18 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i, label %if.then.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.then.__in6_dev_get.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %call2.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 313, ptr noundef nonnull @.str.15) #10
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %if.then.__in6_dev_get.exit_crit_edge
  %cmp.not = icmp eq ptr %19, null
  br i1 %cmp.not, label %__in6_dev_get.exit.if.end_crit_edge, label %if.then10, !prof !114

__in6_dev_get.exit.if.end_crit_edge:              ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10:                                        ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %icmpv6dev = getelementptr inbounds %struct.inet6_dev, ptr %19, i32 0, i32 33, i32 2
  %20 = ptrtoint ptr %icmpv6dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %icmpv6dev, align 4
  %arrayidx = getelementptr [6 x %struct.atomic_t], ptr %21, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #10, !srcloc !122
  br label %if.end

if.end:                                           ; preds = %if.then10, %__in6_dev_get.exit.if.end_crit_edge
  %icmpv6_statistics = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 30, i32 13
  %23 = ptrtoint ptr %icmpv6_statistics to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %icmpv6_statistics, align 4
  %arrayidx21 = getelementptr [6 x i32], ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx21 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu, align 4
  %arrayidx24 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx24, align 4
  %add = add i32 %31, %25
  %32 = inttoptr i32 %add to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add25 = add i32 %34, 1
  store i32 %add25, ptr %32, align 4
  br label %cleanup201

if.end30:                                         ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call6, i32 0, i32 4
  %35 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %36)
  %cmp31 = icmp eq i8 %36, 6
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @inet_twsk_put(ptr noundef nonnull %call6) #10
  br label %cleanup201

if.end35:                                         ; preds = %if.end30
  %dccph_seq.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr, i32 0, i32 7
  %37 = ptrtoint ptr %dccph_seq.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dccph_seq.i, align 2
  %conv.i = zext i16 %38 to i64
  %dccph_x.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr, i32 0, i32 5
  %39 = ptrtoint ptr %dccph_x.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i = load i8, ptr %dccph_x.i, align 2
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %cmp.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i261

if.then.i261:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 12
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i, align 4
  %conv3.i = zext i32 %41 to i64
  br label %dccp_hdr_seq.exit

if.else.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %dccph_seq2.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr, i32 0, i32 6
  %42 = ptrtoint ptr %dccph_seq2.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dccph_seq2.i, align 1
  %conv4.i = zext i8 %43 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  %conv6.i = zext i32 %shl5.i to i64
  br label %dccp_hdr_seq.exit

dccp_hdr_seq.exit:                                ; preds = %if.else.i, %if.then.i261
  %conv.sink.i = phi i64 [ %conv.i, %if.else.i ], [ %conv3.i, %if.then.i261 ]
  %conv6.sink.i = phi i64 [ %conv6.i, %if.else.i ], [ %shl.i, %if.then.i261 ]
  %add7.i = or i64 %conv6.sink.i, %conv.sink.i
  %44 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %45)
  %cmp40 = icmp eq i8 %45, 12
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %dccp_hdr_seq.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dccp_req_err(ptr noundef nonnull %call6, i64 noundef %add7.i) #10
  br label %cleanup201

if.end43:                                         ; preds = %dccp_hdr_seq.exit
  %sk_lock = getelementptr inbounds %struct.sock, ptr %call6, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #10
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %call6, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %if.end43.sock_owned_by_user.exit_crit_edge

if.end43.sock_owned_by_user.exit_crit_edge:       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %if.end43
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %call6, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %46 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !116

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1750, i32 noundef 9, ptr noundef null) #10
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %if.end43.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %call6, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not = icmp eq i32 %48, 0
  br i1 %tobool.i.not, label %sock_owned_by_user.exit.if.end71_crit_edge, label %if.then45

sock_owned_by_user.exit.if.end71_crit_edge:       ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then45:                                        ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  %net_statistics = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 30, i32 3
  %49 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_statistics, align 4
  %arrayidx60 = getelementptr [126 x i32], ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %arrayidx60 to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i262 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i262 to ptr
  %cpu63 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu63 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu63, align 4
  %arrayidx64 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx64, align 4
  %add65 = add i32 %57, %51
  %58 = inttoptr i32 %add65 to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %add66 = add i32 %60, 1
  store i32 %add66, ptr %58, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then45, %sock_owned_by_user.exit.if.end71_crit_edge
  %61 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %62)
  %cmp75 = icmp eq i8 %62, 7
  br i1 %cmp75, label %if.end71.out_crit_edge, label %if.end78

if.end71.out_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end78:                                         ; preds = %if.end71
  %63 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load volatile i8, ptr %skc_state, align 2
  %conv82 = zext i8 %64 to i32
  %shl = shl nuw i32 1, %conv82
  %and = and i32 %shl, -1029
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool83.not = icmp eq i32 %and, 0
  br i1 %tobool83.not, label %if.end78.if.end113_crit_edge, label %land.lhs.true

if.end78.if.end113_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

land.lhs.true:                                    ; preds = %if.end78
  %dccps_awl = getelementptr inbounds %struct.dccp_sock, ptr %call6, i32 0, i32 3
  %65 = ptrtoint ptr %dccps_awl to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %dccps_awl, align 8
  %dccps_awh = getelementptr inbounds %struct.dccp_sock, ptr %call6, i32 0, i32 4
  %67 = ptrtoint ptr %dccps_awh to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %dccps_awh, align 8
  %69 = sub i64 %68, %66
  %sub.i = shl i64 %69, 16
  %70 = sub i64 %add7.i, %66
  %sub4.i = shl i64 %70, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %sub4.i)
  %cmp.i.not = icmp ult i64 %sub.i, %sub4.i
  br i1 %cmp.i.not, label %if.then86, label %land.lhs.true.if.end113_crit_edge

land.lhs.true.if.end113_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then86:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %net_statistics100 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 30, i32 3
  %71 = ptrtoint ptr %net_statistics100 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %net_statistics100, align 4
  %arrayidx102 = getelementptr [126 x i32], ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %arrayidx102 to i32
  %74 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i264 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i264 to ptr
  %cpu105 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %cpu105 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cpu105, align 4
  %arrayidx106 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx106, align 4
  %add107 = add i32 %79, %73
  %80 = inttoptr i32 %add107 to ptr
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %add108 = add i32 %82, 1
  store i32 %add108, ptr %80, align 4
  br label %out

if.end113:                                        ; preds = %land.lhs.true.if.end113_crit_edge, %if.end78.if.end113_crit_edge
  %83 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load volatile i8, ptr %skc_state, align 2
  %conv.i.i = zext i8 %84 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i265 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i265, label %if.end113.inet6_sk.exit_crit_edge, label %cond.true.i

if.end113.inet6_sk.exit_crit_edge:                ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %call6, i32 0, i32 1
  %85 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %if.end113.inet6_sk.exit_crit_edge
  %cond.i266 = phi ptr [ %86, %cond.true.i ], [ null, %if.end113.inet6_sk.exit_crit_edge ]
  %87 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %if.end158 [
    i8 -119, label %if.then118
    i8 2, label %if.then130
  ]

if.then118:                                       ; preds = %inet6_sk.exit
  %call.i.i.i.i268 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i268)
  %tobool.not.i.i.i269 = icmp eq i32 %call.i.i.i.i268, 0
  br i1 %tobool.not.i.i.i269, label %lockdep_sock_is_held.exit.i.i273, label %if.then118.sock_owned_by_user.exit281_crit_edge

if.then118.sock_owned_by_user.exit281_crit_edge:  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit281

lockdep_sock_is_held.exit.i.i273:                 ; preds = %if.then118
  %dep_map2.i.i.i270 = getelementptr inbounds %struct.sock, ptr %call6, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i271 = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i270, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i271)
  %tobool4.i.not.i.i272 = icmp eq i32 %call.i6.i.i.i271, 0
  br i1 %tobool4.i.not.i.i272, label %land.rhs.i.i275, label %lockdep_sock_is_held.exit.i.i273.sock_owned_by_user.exit281_crit_edge

lockdep_sock_is_held.exit.i.i273.sock_owned_by_user.exit281_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i273
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit281

land.rhs.i.i275:                                  ; preds = %lockdep_sock_is_held.exit.i.i273
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %88 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i.i274 = icmp eq i32 %88, 0
  br i1 %tobool.not.i.i274, label %land.rhs.i.i275.sock_owned_by_user.exit281_crit_edge, label %land.rhs3.i.i277

land.rhs.i.i275.sock_owned_by_user.exit281_crit_edge: ; preds = %land.rhs.i.i275
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit281

land.rhs3.i.i277:                                 ; preds = %land.rhs.i.i275
  %.b40.i.i276 = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i276, label %land.rhs3.i.i277.sock_owned_by_user.exit281_crit_edge, label %if.then.i.i278, !prof !116

land.rhs3.i.i277.sock_owned_by_user.exit281_crit_edge: ; preds = %land.rhs3.i.i277
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit281

if.then.i.i278:                                   ; preds = %land.rhs3.i.i277
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1750, i32 noundef 9, ptr noundef null) #10
  br label %sock_owned_by_user.exit281

sock_owned_by_user.exit281:                       ; preds = %if.then.i.i278, %land.rhs3.i.i277.sock_owned_by_user.exit281_crit_edge, %land.rhs.i.i275.sock_owned_by_user.exit281_crit_edge, %lockdep_sock_is_held.exit.i.i273.sock_owned_by_user.exit281_crit_edge, %if.then118.sock_owned_by_user.exit281_crit_edge
  %89 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.i280.not = icmp eq i32 %90, 0
  br i1 %tobool.i280.not, label %if.then120, label %sock_owned_by_user.exit281.out_crit_edge

sock_owned_by_user.exit281.out_crit_edge:         ; preds = %sock_owned_by_user.exit281
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then120:                                       ; preds = %sock_owned_by_user.exit281
  %dst_cookie = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i266, i32 0, i32 14
  %91 = ptrtoint ptr %dst_cookie to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dst_cookie, align 4
  %call121 = tail call ptr @__sk_dst_check(ptr noundef nonnull %call6, i32 noundef %92) #10
  %tobool122.not = icmp eq ptr %call121, null
  br i1 %tobool122.not, label %if.then120.out_crit_edge, label %if.then123

if.then120.out_crit_edge:                         ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then123:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  %ops = getelementptr inbounds %struct.dst_entry, ptr %call121, i32 0, i32 1
  %93 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops, align 4
  %redirect = getelementptr inbounds %struct.dst_ops, ptr %94, i32 0, i32 12
  %95 = ptrtoint ptr %redirect to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %redirect, align 16
  tail call void %96(ptr noundef nonnull %call121, ptr noundef nonnull %call6, ptr noundef %skb) #10
  br label %out

if.then130:                                       ; preds = %inet6_sk.exit
  %97 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load volatile i8, ptr %skc_state, align 2
  %conv.i.i.i = zext i8 %98 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then130.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

if.then130.inet6_sk.exit.i_crit_edge:             ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %call6, i32 0, i32 1
  %99 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %if.then130.inet6_sk.exit.i_crit_edge
  %cond.i.i = phi ptr [ %100, %cond.true.i.i ], [ null, %if.then130.inet6_sk.exit.i_crit_edge ]
  %pmtudisc.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %101 = ptrtoint ptr %pmtudisc.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %bf.load.i282 = load i16, ptr %pmtudisc.i, align 2
  %102 = and i16 %bf.load.i282, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %102)
  %cmp.not.i283 = icmp eq i16 %102, 4096
  br i1 %cmp.not.i283, label %inet6_sk.exit.i.out_crit_edge, label %land.rhs.i

inet6_sk.exit.i.out_crit_edge:                    ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.rhs.i:                                       ; preds = %inet6_sk.exit.i
  %103 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load volatile i8, ptr %skc_state, align 2
  %conv.i.i12.i = zext i8 %104 to i32
  %shl.i.i13.i = shl nuw i32 1, %conv.i.i12.i
  %and.i.i14.i = and i32 %shl.i.i13.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i14.i)
  %tobool.i.not.i15.i = icmp eq i32 %and.i.i14.i, 0
  br i1 %tobool.i.not.i15.i, label %land.rhs.i.ip6_sk_accept_pmtu.exit_crit_edge, label %cond.true.i17.i

land.rhs.i.ip6_sk_accept_pmtu.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip6_sk_accept_pmtu.exit

cond.true.i17.i:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i16.i = getelementptr inbounds %struct.inet_sock, ptr %call6, i32 0, i32 1
  %105 = ptrtoint ptr %pinet6.i16.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pinet6.i16.i, align 8
  br label %ip6_sk_accept_pmtu.exit

ip6_sk_accept_pmtu.exit:                          ; preds = %cond.true.i17.i, %land.rhs.i.ip6_sk_accept_pmtu.exit_crit_edge
  %cond.i18.i = phi ptr [ %106, %cond.true.i17.i ], [ null, %land.rhs.i.ip6_sk_accept_pmtu.exit_crit_edge ]
  %pmtudisc3.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i18.i, i32 0, i32 10
  %107 = ptrtoint ptr %pmtudisc3.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %bf.load4.i = load i16, ptr %pmtudisc3.i, align 2
  %108 = and i16 %bf.load4.i, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 5120, i16 %108)
  %cmp8.i.not = icmp eq i16 %108, 5120
  br i1 %cmp8.i.not, label %ip6_sk_accept_pmtu.exit.out_crit_edge, label %if.end134

ip6_sk_accept_pmtu.exit.out_crit_edge:            ; preds = %ip6_sk_accept_pmtu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end134:                                        ; preds = %ip6_sk_accept_pmtu.exit
  %call135 = tail call fastcc zeroext i1 @sock_owned_by_user(ptr noundef nonnull %call6)
  br i1 %call135, label %if.end134.out_crit_edge, label %if.end137

if.end134.out_crit_edge:                          ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end137:                                        ; preds = %if.end134
  %109 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load volatile i8, ptr %skc_state, align 2
  %conv140 = zext i8 %110 to i32
  %shl141 = shl nuw i32 1, %conv140
  %and142 = and i32 %shl141, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end145, label %if.end137.out_crit_edge

if.end137.out_crit_edge:                          ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end145:                                        ; preds = %if.end137
  %call146 = tail call ptr @inet6_csk_update_pmtu(ptr noundef nonnull %call6, i32 noundef %info) #10
  %tobool147.not = icmp eq ptr %call146, null
  br i1 %tobool147.not, label %if.end145.out_crit_edge, label %if.end149

if.end145.out_crit_edge:                          ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end149:                                        ; preds = %if.end145
  %icsk_pmtu_cookie = getelementptr inbounds %struct.inet_connection_sock, ptr %call6, i32 0, i32 9
  %111 = ptrtoint ptr %icsk_pmtu_cookie to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %icsk_pmtu_cookie, align 8
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call146, i32 0, i32 1
  %113 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mtu.i, align 4
  %call.i284 = tail call i32 %116(ptr noundef nonnull %call146) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %call.i284)
  %cmp152 = icmp ugt i32 %112, %call.i284
  br i1 %cmp152, label %if.then154, label %if.end149.out_crit_edge

if.end149.out_crit_edge:                          ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then154:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops.i, align 4
  %mtu.i286 = getelementptr inbounds %struct.dst_ops, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %mtu.i286 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mtu.i286, align 4
  %call.i287 = tail call i32 %120(ptr noundef nonnull %call146) #10
  %call156 = tail call i32 @dccp_sync_mss(ptr noundef nonnull %call6, i32 noundef %call.i287) #10
  br label %out

if.end158:                                        ; preds = %inet6_sk.exit
  %call159 = call i32 @icmpv6_err_convert(i8 noundef zeroext %type, i8 noundef zeroext %code, ptr noundef nonnull %err) #10
  %121 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load volatile i8, ptr %skc_state, align 2
  %123 = and i8 %122, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %123)
  %switch = icmp eq i8 %123, 2
  %call163 = call fastcc zeroext i1 @sock_owned_by_user(ptr noundef nonnull %call6)
  br i1 %switch, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %if.end158
  br i1 %call163, label %if.else, label %if.then164

if.then164:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dccp_statistics to i32))
  %124 = load ptr, ptr @dccp_statistics, align 4
  %arrayidx178 = getelementptr [15 x i32], ptr %124, i32 0, i32 10
  %125 = ptrtoint ptr %arrayidx178 to i32
  %126 = call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i288 = and i32 %126, -16384
  %127 = inttoptr i32 %and.i288 to ptr
  %cpu181 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %cpu181 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cpu181, align 4
  %arrayidx182 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %129
  %130 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx182, align 4
  %add183 = add i32 %131, %125
  %132 = inttoptr i32 %add183 to ptr
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 4
  %add184 = add i32 %134, 1
  store i32 %add184, ptr %132, align 4
  %135 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %err, align 4
  %sk_err = getelementptr inbounds %struct.sock, ptr %call6, i32 0, i32 51
  %137 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %sk_err, align 4
  call void @sk_error_report(ptr noundef nonnull %call6) #10
  call void @dccp_done(ptr noundef nonnull %call6) #10
  br label %out

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %err, align 4
  %sk_err_soft = getelementptr inbounds %struct.sock, ptr %call6, i32 0, i32 52
  %140 = ptrtoint ptr %sk_err_soft to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %sk_err_soft, align 8
  br label %out

sw.epilog:                                        ; preds = %if.end158
  br i1 %call163, label %sw.epilog.if.else196_crit_edge, label %land.lhs.true191

sw.epilog.if.else196_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else196

land.lhs.true191:                                 ; preds = %sw.epilog
  %recverr = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i266, i32 0, i32 10
  %141 = ptrtoint ptr %recverr to i32
  call void @__asan_load2_noabort(i32 %141)
  %bf.load = load i16, ptr %recverr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool193.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool193.not, label %land.lhs.true191.if.else196_crit_edge, label %if.then194

land.lhs.true191.if.else196_crit_edge:            ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else196

if.then194:                                       ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %err, align 4
  %sk_err195 = getelementptr inbounds %struct.sock, ptr %call6, i32 0, i32 51
  %144 = ptrtoint ptr %sk_err195 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %sk_err195, align 4
  call void @sk_error_report(ptr noundef nonnull %call6) #10
  br label %out

if.else196:                                       ; preds = %land.lhs.true191.if.else196_crit_edge, %sw.epilog.if.else196_crit_edge
  %145 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %err, align 4
  %sk_err_soft197 = getelementptr inbounds %struct.sock, ptr %call6, i32 0, i32 52
  %147 = ptrtoint ptr %sk_err_soft197 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %sk_err_soft197, align 8
  br label %out

out:                                              ; preds = %if.else196, %if.then194, %if.else, %if.then164, %if.then154, %if.end149.out_crit_edge, %if.end145.out_crit_edge, %if.end137.out_crit_edge, %if.end134.out_crit_edge, %ip6_sk_accept_pmtu.exit.out_crit_edge, %inet6_sk.exit.i.out_crit_edge, %if.then123, %if.then120.out_crit_edge, %sock_owned_by_user.exit281.out_crit_edge, %if.then86, %if.end71.out_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sk_lock) #10
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call6, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %148 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !119
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %148, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i289, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup201_crit_edge, label %if.then10.i.i.i.i, !prof !116

if.end5.i.i.i.i.cleanup201_crit_edge:             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup201

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %cleanup201

if.then.i289:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !120
  call void @sk_free(ptr noundef nonnull %call6) #10
  br label %cleanup201

cleanup201:                                       ; preds = %if.then.i289, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup201_crit_edge, %if.then42, %if.then33, %if.end
  %retval.0 = phi i32 [ 0, %if.then33 ], [ 0, %if.then42 ], [ -2, %if.end ], [ 0, %if.end5.i.i.i.i.cleanup201_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i289 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_invalid_packet(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_reqsk_queue_drop_and_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dccp_check_req(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reqsk_put(ptr noundef %req) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #10, !srcloc !119
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !116

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call fastcc void @reqsk_free(ptr noundef %req)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_child_process(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dccp_v6_ctl_send_reset(ptr nocapture noundef readnone %sk, ptr noundef %rxskb) #2 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #10
  %0 = getelementptr inbounds %struct.sk_buff, ptr %rxskb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !114

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 127
  %8 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_net.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %rxskb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %rxskb, i32 0, i32 15, i32 0, i32 19
  %12 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %dccph_type = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %dccph_type, align 2
  %15 = and i8 %bf.load, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %15)
  %cmp = icmp eq i8 %15, 14
  br i1 %cmp, label %skb_dst.exit.cleanup_crit_edge, label %if.end

skb_dst.exit.cleanup_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %skb_dst.exit
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.ipv6_unicast_destination.exit_crit_edge, label %land.lhs.true.i.i

if.end.ipv6_unicast_destination.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_unicast_destination.exit

land.lhs.true.i.i:                                ; preds = %if.end
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge

land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_unicast_destination.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge, !prof !114

land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_unicast_destination.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %ipv6_unicast_destination.exit

ipv6_unicast_destination.exit:                    ; preds = %do.end.i.i, %land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge, %land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge, %if.end.ipv6_unicast_destination.exit_crit_edge
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %17, -2
  %18 = inttoptr i32 %and25.i.i to ptr
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rt6i_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i = icmp slt i32 %20, 0
  br i1 %tobool.i, label %if.end6, label %ipv6_unicast_destination.exit.cleanup_crit_edge

ipv6_unicast_destination.exit.cleanup_crit_edge:  ; preds = %ipv6_unicast_destination.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %ipv6_unicast_destination.exit
  %21 = load i32, ptr @dccp_v6_pernet_id, align 4
  %call7 = tail call fastcc ptr @net_generic(ptr noundef %9, i32 noundef %21)
  %22 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7, align 4
  %call8 = tail call ptr @dccp_ctl_make_reset(ptr noundef %23, ptr noundef %rxskb) #10
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %24 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %rxskb, i32 0, i32 15, i32 0, i32 20
  %26 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i160 = zext i16 %27 to i32
  %add.ptr.i.i161 = getelementptr i8, ptr %25, i32 %conv.i.i160
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i161, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i161, i32 0, i32 6
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 6
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 15, i32 0, i32 5
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %call.i.i162 = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %29, i32 noundef 33, i32 noundef %32) #10
  %33 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i162) #13, !srcloc !113
  %neg.i.i.i = xor i32 %33, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %head.i.i163 = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 18
  %34 = ptrtoint ptr %head.i.i163 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i163, align 8
  %transport_header.i.i164 = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 15, i32 0, i32 19
  %36 = ptrtoint ptr %transport_header.i.i164 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %transport_header.i.i164, align 2
  %conv.i.i165 = zext i16 %37 to i32
  %add.ptr.i.i166 = getelementptr i8, ptr %35, i32 %conv.i.i165
  %dccph_checksum = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i166, i32 0, i32 4
  %38 = ptrtoint ptr %dccph_checksum to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i.i.i, ptr %dccph_checksum, align 2
  %39 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %daddr16 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %40 = call ptr @memcpy(ptr %daddr16, ptr %saddr, i32 16)
  %saddr18 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %41 = call ptr @memcpy(ptr %saddr18, ptr %daddr, i32 16)
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %42 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 33, ptr %flowic_proto, align 2
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %rxskb, i32 0, i32 3, i32 16
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %flags.i, align 8
  %45 = and i16 %44, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.i.not.i = icmp eq i16 %45, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %rxskb, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %rxskb, i32 0, i32 3
  %cond.in.i = select i1 %tobool.i.not.i, ptr %cb.i, ptr %skb_iif.i
  %46 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %cond.i = load i32, ptr %cond.in.i, align 8
  %47 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cond.i, ptr %fl6, align 8
  %48 = ptrtoint ptr %head.i.i163 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i163, align 8
  %50 = ptrtoint ptr %transport_header.i.i164 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %transport_header.i.i164, align 2
  %conv.i.i169 = zext i16 %51 to i32
  %add.ptr.i.i170 = getelementptr i8, ptr %49, i32 %conv.i.i169
  %dccph_dport = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i170, i32 0, i32 1
  %52 = ptrtoint ptr %dccph_dport to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %dccph_dport, align 2
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %54 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %uli, align 4
  %55 = ptrtoint ptr %add.ptr.i.i170 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr.i.i170, align 2
  %sport = getelementptr inbounds %struct.anon.24, ptr %uli, i32 0, i32 1
  %57 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %sport, align 2
  call void @security_skb_classify_flow(ptr noundef %rxskb, ptr noundef nonnull %fl6) #10
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 9
  %58 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %skc_net.i, align 4
  %call27 = call ptr @ip6_dst_lookup_flow(ptr noundef %59, ptr noundef %23, ptr noundef nonnull %fl6, ptr noundef null) #10
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end132, label %if.then29

if.then29:                                        ; preds = %if.end12
  %tobool.not.i175 = icmp eq ptr %call27, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 15, i32 0, i32 3
  %60 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i175, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %61 = ptrtoint ptr %call27 to i32
  %62 = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %61, ptr %62, align 8
  %call30 = call i32 @ip6_xmit(ptr noundef %23, ptr noundef nonnull %call8, ptr noundef nonnull %fl6, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %64 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !123
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dccp_statistics to i32))
  %65 = load ptr, ptr @dccp_statistics, align 4
  %arrayidx = getelementptr [15 x i32], ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %arrayidx to i32
  %67 = call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i176 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i176 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cpu, align 4
  %arrayidx47 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %70
  %71 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx47, align 4
  %add = add i32 %72, %66
  %73 = inttoptr i32 %add to ptr
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %add48 = add i32 %75, 1
  store i32 %add48, ptr %73, align 4
  %76 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !124
  %and.i.i177 = and i32 %76, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i177)
  %tobool.not = icmp eq i32 %and.i.i177, 0
  br i1 %tobool.not, label %if.then62, label %if.then29.do.end65_crit_edge, !prof !114

if.then29.do.end65_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

if.then62:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %if.then29.do.end65_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %64) #10, !srcloc !125
  %77 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !123
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dccp_statistics to i32))
  %78 = load ptr, ptr @dccp_statistics, align 4
  %arrayidx96 = getelementptr [15 x i32], ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %arrayidx96 to i32
  %80 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cpu, align 4
  %arrayidx100 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx100, align 4
  %add101 = add i32 %83, %79
  %84 = inttoptr i32 %add101 to ptr
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %add102 = add i32 %86, 1
  store i32 %add102, ptr %84, align 4
  %87 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !124
  %and.i.i178 = and i32 %87, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i178)
  %tobool113.not = icmp eq i32 %and.i.i178, 0
  br i1 %tobool113.not, label %if.then122, label %do.end65.do.end125_crit_edge, !prof !114

do.end65.do.end125_crit_edge:                     ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end125

if.then122:                                       ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %do.end125

do.end125:                                        ; preds = %if.then122, %do.end65.do.end125_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %77) #10, !srcloc !125
  br label %cleanup

if.end132:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef nonnull %call8, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %do.end125, %if.end6.cleanup_crit_edge, %ipv6_unicast_destination.exit.cleanup_crit_edge, %skb_dst.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfrm6_policy_check(ptr noundef %sk, ptr noundef %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %sk, null
  br i1 %tobool1.not.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %sk_policy.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 18
  %5 = ptrtoint ptr %sk_policy.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_policy.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %sk, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #10
  br label %xfrm_policy_check.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %policy_default.i.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %7 = ptrtoint ptr %policy_default.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %policy_default.i.i.i, align 16
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.i.i.i = icmp eq i8 %9, 0
  br i1 %tobool1.i.i.i, label %if.then5.i.i, label %if.else.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %policy_count.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 13
  %10 = ptrtoint ptr %policy_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %policy_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true8.i.i, label %if.then5.i.i.lor.lhs.false.i.i_crit_edge

if.then5.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i

land.lhs.true8.i.i:                               ; preds = %if.then5.i.i
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %12 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge, label %land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge:   ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i

land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfrm_policy_check.exit

lor.lhs.false.i.i:                                ; preds = %land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge, %if.then5.i.i.lor.lhs.false.i.i_crit_edge
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %and.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exitthread-pre-split.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, !prof !114

land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exitthread-pre-split.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exitthread-pre-split.i.i

skb_dst.exitthread-pre-split.i.i:                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i.i = load i32, ptr %15, align 8
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %skb_dst.exitthread-pre-split.i.i, %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge
  %19 = phi i32 [ %.pr.i.i, %skb_dst.exitthread-pre-split.i.i ], [ %17, %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %tobool12.not.i.i = icmp ult i32 %19, 2
  br i1 %tobool12.not.i.i, label %skb_dst.exit.i.i.lor.rhs.i.i_crit_edge, label %land.lhs.true13.i.i

skb_dst.exit.i.i.lor.rhs.i.i_crit_edge:           ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i.i

land.lhs.true13.i.i:                              ; preds = %skb_dst.exit.i.i
  %and.i2.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge, label %land.lhs.true.i6.i.i

land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit12.i.i

land.lhs.true.i6.i.i:                             ; preds = %land.lhs.true13.i.i
  %call.i4.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %tobool1.not.i5.i.i = icmp eq i32 %call.i4.i.i, 0
  br i1 %tobool1.not.i5.i.i, label %land.rhs.i9.i.i, label %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge

land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit12.i.i

land.rhs.i9.i.i:                                  ; preds = %land.lhs.true.i6.i.i
  %call2.i7.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i)
  %tobool3.not.i8.i.i = icmp eq i32 %call2.i7.i.i, 0
  br i1 %tobool3.not.i8.i.i, label %do.end.i10.i.i, label %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, !prof !114

land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge:     ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit12.i.i

do.end.i10.i.i:                                   ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit12.i.i

skb_dst.exit12.i.i:                               ; preds = %do.end.i10.i.i, %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge, %land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %15, align 8
  %and25.i11.i.i = and i32 %21, -2
  %22 = inttoptr i32 %and25.i11.i.i to ptr
  %flags.i.i = getelementptr inbounds %struct.dst_entry, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags.i.i, align 4
  %25 = and i16 %24, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool16.not.i.i = icmp eq i16 %25, 0
  br i1 %tobool16.not.i.i, label %skb_dst.exit12.i.i.lor.rhs.i.i_crit_edge, label %skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge

skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfrm_policy_check.exit

skb_dst.exit12.i.i.lor.rhs.i.i_crit_edge:         ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %skb_dst.exit12.i.i.lor.rhs.i.i_crit_edge, %skb_dst.exit.i.i.lor.rhs.i.i_crit_edge
  %call18.i.i = tail call i32 @__xfrm_policy_check(ptr noundef %sk, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.i.i = icmp ne i32 %call18.i.i, 0
  %phi.cast1.i.i = zext i1 %tobool19.i.i to i32
  br label %xfrm_policy_check.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  %26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %and.i13.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool.not.i14.i.i = icmp eq i32 %and.i13.i.i, 0
  br i1 %tobool.not.i14.i.i, label %if.else.i.i.skb_dst.exit23.i.i_crit_edge, label %land.lhs.true.i17.i.i

if.else.i.i.skb_dst.exit23.i.i_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit23.i.i

land.lhs.true.i17.i.i:                            ; preds = %if.else.i.i
  %call.i15.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i)
  %tobool1.not.i16.i.i = icmp eq i32 %call.i15.i.i, 0
  br i1 %tobool1.not.i16.i.i, label %land.rhs.i20.i.i, label %land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge

land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit23thread-pre-split.i.i

land.rhs.i20.i.i:                                 ; preds = %land.lhs.true.i17.i.i
  %call2.i18.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i.i)
  %tobool3.not.i19.i.i = icmp eq i32 %call2.i18.i.i, 0
  br i1 %tobool3.not.i19.i.i, label %do.end.i21.i.i, label %land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge, !prof !114

land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit23thread-pre-split.i.i

do.end.i21.i.i:                                   ; preds = %land.rhs.i20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit23thread-pre-split.i.i

skb_dst.exit23thread-pre-split.i.i:               ; preds = %do.end.i21.i.i, %land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge, %land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr35.i.i = load i32, ptr %26, align 8
  br label %skb_dst.exit23.i.i

skb_dst.exit23.i.i:                               ; preds = %skb_dst.exit23thread-pre-split.i.i, %if.else.i.i.skb_dst.exit23.i.i_crit_edge
  %30 = phi i32 [ %.pr35.i.i, %skb_dst.exit23thread-pre-split.i.i ], [ %28, %if.else.i.i.skb_dst.exit23.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %tobool21.not.i.i = icmp ult i32 %30, 2
  br i1 %tobool21.not.i.i, label %skb_dst.exit23.i.i.lor.rhs28.i.i_crit_edge, label %land.lhs.true22.i.i

skb_dst.exit23.i.i.lor.rhs28.i.i_crit_edge:       ; preds = %skb_dst.exit23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs28.i.i

land.lhs.true22.i.i:                              ; preds = %skb_dst.exit23.i.i
  %and.i24.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i)
  %tobool.not.i25.i.i = icmp eq i32 %and.i24.i.i, 0
  br i1 %tobool.not.i25.i.i, label %land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge, label %land.lhs.true.i28.i.i

land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit34.i.i

land.lhs.true.i28.i.i:                            ; preds = %land.lhs.true22.i.i
  %call.i26.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i)
  %tobool1.not.i27.i.i = icmp eq i32 %call.i26.i.i, 0
  br i1 %tobool1.not.i27.i.i, label %land.rhs.i31.i.i, label %land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge

land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge: ; preds = %land.lhs.true.i28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit34.i.i

land.rhs.i31.i.i:                                 ; preds = %land.lhs.true.i28.i.i
  %call2.i29.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i.i)
  %tobool3.not.i30.i.i = icmp eq i32 %call2.i29.i.i, 0
  br i1 %tobool3.not.i30.i.i, label %do.end.i32.i.i, label %land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge, !prof !114

land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge:    ; preds = %land.rhs.i31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit34.i.i

do.end.i32.i.i:                                   ; preds = %land.rhs.i31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit34.i.i

skb_dst.exit34.i.i:                               ; preds = %do.end.i32.i.i, %land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge, %land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge, %land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %26, align 8
  %and25.i33.i.i = and i32 %32, -2
  %33 = inttoptr i32 %and25.i33.i.i to ptr
  %flags24.i.i = getelementptr inbounds %struct.dst_entry, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %flags24.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags24.i.i, align 4
  %36 = and i16 %35, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool27.not.i.i = icmp eq i16 %36, 0
  br i1 %tobool27.not.i.i, label %skb_dst.exit34.i.i.lor.rhs28.i.i_crit_edge, label %skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge

skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %skb_dst.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfrm_policy_check.exit

skb_dst.exit34.i.i.lor.rhs28.i.i_crit_edge:       ; preds = %skb_dst.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs28.i.i

lor.rhs28.i.i:                                    ; preds = %skb_dst.exit34.i.i.lor.rhs28.i.i_crit_edge, %skb_dst.exit23.i.i.lor.rhs28.i.i_crit_edge
  %call30.i.i = tail call i32 @__xfrm_policy_check(ptr noundef %sk, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.i.i = icmp ne i32 %call30.i.i, 0
  %phi.cast.i.i = zext i1 %tobool31.i.i to i32
  br label %xfrm_policy_check.exit

xfrm_policy_check.exit:                           ; preds = %lor.rhs28.i.i, %skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge, %lor.rhs.i.i, %skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge, %land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i ], [ 1, %skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge ], [ 1, %land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge ], [ %phi.cast1.i.i, %lor.rhs.i.i ], [ 1, %skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge ], [ %phi.cast.i.i, %lor.rhs28.i.i ]
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_receive_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_pfree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet6_lookup_established(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet6_lookup_listener(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %r) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #10, !srcloc !117
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !114

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !116

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i.i) #10
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reqsk_free(ptr noundef %req) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #10
  %0 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %skc_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end27_crit_edge, label %land.rhs

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b38 = load i1, ptr @reqsk_free.__already_done, align 1
  br i1 %.b38, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !116

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @reqsk_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 126, i32 noundef 9, ptr noundef null) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %rsk_ops.i = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 7
  %2 = ptrtoint ptr %rsk_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsk_ops.i, align 4
  %destructor.i = getelementptr inbounds %struct.request_sock_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destructor.i, align 4
  tail call void %5(ptr noundef %req) #10
  %6 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end27.__reqsk_free.exit_crit_edge, label %if.then.i

if.end27.__reqsk_free.exit_crit_edge:             ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %__reqsk_free.exit

if.then.i:                                        ; preds = %if.end27
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #10, !srcloc !119
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.__reqsk_free.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !116

if.end5.i.i.i.i.i.__reqsk_free.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__reqsk_free.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #10
  br label %__reqsk_free.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call void @sk_free(ptr noundef nonnull %8) #10
  br label %__reqsk_free.exit

__reqsk_free.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.__reqsk_free.exit_crit_edge, %if.end27.__reqsk_free.exit_crit_edge
  %saved_syn.i = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 9
  %10 = ptrtoint ptr %saved_syn.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %saved_syn.i, align 4
  tail call void @kfree(ptr noundef %11) #10
  %12 = ptrtoint ptr %rsk_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rsk_ops.i, align 4
  %slab.i = getelementptr inbounds %struct.request_sock_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %slab.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slab.i, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef %req) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 45, ptr noundef nonnull @.str.15) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !127
  %8 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dccp_ctl_make_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_skb_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_xmit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
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
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_req_err(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sock_owned_by_user(ptr noundef %sk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %entry.sock_owned_by_me.exit_crit_edge

entry.sock_owned_by_me.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_me.exit

lockdep_sock_is_held.exit.i:                      ; preds = %entry
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %land.rhs.i, label %lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge

lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_me.exit

land.rhs.i:                                       ; preds = %lockdep_sock_is_held.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %land.rhs.i.sock_owned_by_me.exit_crit_edge, label %land.rhs3.i

land.rhs.i.sock_owned_by_me.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_me.exit

land.rhs3.i:                                      ; preds = %land.rhs.i
  %.b40.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i, label %land.rhs3.i.sock_owned_by_me.exit_crit_edge, label %if.then.i, !prof !116

land.rhs3.i.sock_owned_by_me.exit_crit_edge:      ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_me.exit

if.then.i:                                        ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1750, i32 noundef 9, ptr noundef null) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet6_csk_update_pmtu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_sync_mss(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icmpv6_err_convert(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_v6_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dccp_v6_pernet_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @dccp_hashinfo, i32 0, i32 5) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @dccp_hashinfo, i32 0, i32 5), align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @inet_ctl_sock_create(ptr noundef %call, i16 noundef zeroext 10, i16 noundef zeroext 6, i8 noundef zeroext 33, ptr noundef %net) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -94, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dccp_v6_exit_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dccp_v6_pernet_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.inet_ctl_sock_destroy.exit_crit_edge, label %if.then.i

entry.inet_ctl_sock_destroy.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet_ctl_sock_destroy.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 71
  %3 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_socket.i, align 8
  tail call void @sock_release(ptr noundef %4) #10
  br label %inet_ctl_sock_destroy.exit

inet_ctl_sock_destroy.exit:                       ; preds = %if.then.i, %entry.inet_ctl_sock_destroy.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dccp_v6_exit_batch(ptr nocapture noundef readnone %net_exit_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inet_twsk_purge(ptr noundef nonnull @dccp_hashinfo, i32 noundef 10) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ctl_sock_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_purge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_bind(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_stream_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_getname(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_dccp_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_sendmsg(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_close(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_v6_connect(ptr noundef %sk, ptr noundef %uaddr, i32 noundef %addr_len) #2 align 64 {
entry:
  %final = alloca %struct.in6_addr, align 4
  %fl6 = alloca %struct.flowi6, align 8
  %sin = alloca %struct.sockaddr_in, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %final) #10
  %4 = call ptr @memset(ptr %final, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #10
  %dccps_role = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %5 = ptrtoint ptr %dccps_role to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %dccps_role, align 8
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, -128
  store i8 %bf.set, ptr %dccps_role, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %addr_len)
  %cmp = icmp slt i32 %addr_len, 24
  br i1 %cmp, label %inet6_sk.exit.cleanup186_crit_edge, label %if.end

inet6_sk.exit.cleanup186_crit_edge:               ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup186

if.end:                                           ; preds = %inet6_sk.exit
  %6 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %7)
  %cmp4.not = icmp eq i16 %7, 10
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup186_crit_edge

if.end.cleanup186_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup186

if.end7:                                          ; preds = %if.end
  %8 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %sndflow = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %9 = ptrtoint ptr %sndflow to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load8 = load i16, ptr %sndflow, align 2
  %10 = and i16 %bf.load8, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %if.end7.if.end24_crit_edge, label %if.then10

if.end7.if.end24_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then10:                                        ; preds = %if.end7
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 2
  %11 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sin6_flowinfo, align 4
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %and12 = and i32 %12, 265289727
  %13 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and12, ptr %flowlabel, align 8
  %and14 = and i32 %12, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then10.if.end24_crit_edge, label %if.then16

if.then10.if.end24_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then16:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ipv6_flowlabel_exclusive, ptr blockaddress(@dccp_v6_connect, %do.end.i)) #10
          to label %if.end24 [label %do.end.i], !srcloc !128

do.end.i:                                         ; preds = %if.then16
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %14 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skc_net.i.i, align 4
  %flowlabel_has_excl.i = getelementptr inbounds %struct.net, ptr %15, i32 0, i32 36, i32 17
  %16 = ptrtoint ptr %flowlabel_has_excl.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %flowlabel_has_excl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not.i = icmp eq i8 %17, 0
  br i1 %tobool5.not.i, label %do.end.i.if.end24_crit_edge, label %if.then.i

do.end.i.if.end24_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then.i:                                        ; preds = %do.end.i
  %call6.i = tail call ptr @__fl6_sock_lookup(ptr noundef %sk, i32 noundef %and12) #10
  %tobool7.not.i = icmp eq ptr %call6.i, null
  %cmp.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  %or.cond311 = or i1 %tobool7.not.i, %cmp.i
  br i1 %or.cond311, label %if.then.i.cleanup186_crit_edge, label %if.then.i283

if.then.i.cleanup186_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup186

if.then.i283:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %users.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call6.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #10, !srcloc !129
  br label %if.end24

if.end24:                                         ; preds = %if.then.i283, %do.end.i.if.end24_crit_edge, %if.then16, %if.then10.if.end24_crit_edge, %if.end7.if.end24_crit_edge
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3
  %19 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sin6_addr, align 4
  %arrayidx2.i = getelementptr %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %22, %20
  %arrayidx4.i = getelementptr %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3, i32 0, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %24
  %arrayidx7.i = getelementptr %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3, i32 0, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i284 = icmp eq i32 %or8.i, 0
  br i1 %cmp.i284, label %if.then26, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [16 x i8], ptr %sin6_addr, i32 0, i32 15
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %arrayidx, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #10
  %and.i = and i32 %call.i, 65535
  %and31 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end28.cleanup186_crit_edge

if.end28.cleanup186_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup186

if.end34:                                         ; preds = %if.end28
  %and35 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end60_crit_edge, label %if.then37

if.end34.if.end60_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %addr_len)
  %cmp38 = icmp ugt i32 %addr_len, 27
  br i1 %cmp38, label %land.lhs.true, label %if.then37.if.end54_crit_edge

if.then37.if.end54_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true:                                    ; preds = %if.then37
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 4
  %28 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sin6_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool40.not = icmp eq i32 %29, 0
  br i1 %tobool40.not, label %land.lhs.true.if.end54_crit_edge, label %if.then41

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then41:                                        ; preds = %land.lhs.true
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %30 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool42.not = icmp eq i32 %31, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp47.not = icmp eq i32 %31, %29
  %or.cond = select i1 %tobool42.not, i1 true, i1 %cmp47.not
  br i1 %or.cond, label %if.end50, label %if.then41.cleanup186_crit_edge

if.then41.cleanup186_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup186

if.end50:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %skc_bound_dev_if, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end50, %land.lhs.true.if.end54_crit_edge, %if.then37.if.end54_crit_edge
  %skc_bound_dev_if56 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %33 = ptrtoint ptr %skc_bound_dev_if56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %skc_bound_dev_if56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool57.not = icmp eq i32 %34, 0
  br i1 %tobool57.not, label %if.end54.cleanup186_crit_edge, label %if.end54.if.end60_crit_edge

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.end54.cleanup186_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup186

if.end60:                                         ; preds = %if.end54.if.end60_crit_edge, %if.end34.if.end60_crit_edge
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %35 = call ptr @memcpy(ptr %skc_v6_daddr, ptr %sin6_addr, i32 16)
  %flowlabel63 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %36 = ptrtoint ptr %flowlabel63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flowlabel63, align 8
  %flow_label = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 4
  %38 = ptrtoint ptr %flow_label to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %flow_label, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and.i)
  %cmp64 = icmp eq i32 %and.i, 4096
  br i1 %cmp64, label %if.then66, label %if.end103

if.then66:                                        ; preds = %if.end60
  %icsk_ext_hdr_len = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 23
  %39 = ptrtoint ptr %icsk_ext_hdr_len to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %icsk_ext_hdr_len, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin) #10
  %41 = getelementptr inbounds %struct.sockaddr_in, ptr %sin, i32 0, i32 1
  %42 = getelementptr inbounds %struct.sockaddr_in, ptr %sin, i32 0, i32 2
  %tobool69.not = icmp eq ptr %sk, null
  %43 = getelementptr inbounds i8, ptr %sin, i32 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 -1, ptr %43, align 4
  br i1 %tobool69.not, label %if.then66.do.end80_crit_edge, label %land.lhs.true70

if.then66.do.end80_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end80

land.lhs.true70:                                  ; preds = %if.then66
  %45 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %48 = and i32 %47, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not = icmp eq i32 %48, 0
  br i1 %tobool.i.not, label %land.lhs.true70.do.end80_crit_edge, label %do.end76

land.lhs.true70.do.end80_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end80

do.end76:                                         ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  br label %do.end80

do.end80:                                         ; preds = %do.end76, %land.lhs.true70.do.end80_crit_edge, %if.then66.do.end80_crit_edge
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %49 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load82 = load i8, ptr %skc_ipv6only, align 1
  %50 = and i8 %bf.load82, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool85.not = icmp eq i8 %50, 0
  br i1 %tobool85.not, label %if.end87, label %do.end80.cleanup101.thread_crit_edge

do.end80.cleanup101.thread_crit_edge:             ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup101.thread

if.end87:                                         ; preds = %do.end80
  %51 = ptrtoint ptr %sin to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 2, ptr %sin, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 1
  %52 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %sin6_port, align 2
  %54 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %41, align 2
  %55 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx7.i, align 4
  %57 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %42, align 4
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %58 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @dccp_ipv6_mapped, ptr %icsk_af_ops, align 8
  %sk_backlog_rcv = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 80
  %59 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @dccp_v4_do_rcv, ptr %sk_backlog_rcv, align 4
  %call91 = call i32 @dccp_v4_connect(ptr noundef %sk, ptr noundef nonnull %sin, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end98, label %cleanup101

if.end98:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %60 = call ptr @memcpy(ptr %cond.i, ptr %skc_v6_rcv_saddr, i32 16)
  br label %cleanup101.thread

cleanup101.thread:                                ; preds = %if.end98, %do.end80.cleanup101.thread_crit_edge
  %retval.2.ph = phi i32 [ -101, %do.end80.cleanup101.thread_crit_edge ], [ 0, %if.end98 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin) #10
  br label %cleanup186

cleanup101:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %icsk_ext_hdr_len to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %40, ptr %icsk_ext_hdr_len, align 2
  %62 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @dccp_ipv6_af_ops, ptr %icsk_af_ops, align 8
  %63 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @dccp_v6_do_rcv, ptr %sk_backlog_rcv, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin) #10
  br label %failure

if.end103:                                        ; preds = %if.end60
  %skc_v6_rcv_saddr105 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %64 = ptrtoint ptr %skc_v6_rcv_saddr105 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %skc_v6_rcv_saddr105, align 4
  %arrayidx2.i285 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx2.i285 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx2.i285, align 4
  %or.i286 = or i32 %67, %65
  %arrayidx4.i287 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 2
  %68 = ptrtoint ptr %arrayidx4.i287 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx4.i287, align 4
  %or5.i288 = or i32 %or.i286, %69
  %arrayidx7.i289 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 3
  %70 = ptrtoint ptr %arrayidx7.i289 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx7.i289, align 4
  %or8.i290 = or i32 %or5.i288, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i290)
  %cmp.i291 = icmp eq i32 %or8.i290, 0
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %72 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 33, ptr %flowic_proto, align 2
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %73 = call ptr @memcpy(ptr %daddr, ptr %skc_v6_daddr, i32 16)
  %saddr113 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %tobool114.not305 = icmp eq ptr %skc_v6_rcv_saddr105, null
  %tobool114.not = or i1 %tobool114.not305, %cmp.i291
  br i1 %tobool114.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  %74 = call ptr @memcpy(ptr %saddr113, ptr %skc_v6_rcv_saddr105, i32 16)
  br label %cond.end

cond.false:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  %75 = call ptr @memcpy(ptr %saddr113, ptr %cond.i, i32 16)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %skc_bound_dev_if117 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %76 = ptrtoint ptr %skc_bound_dev_if117 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %skc_bound_dev_if117, align 4
  %78 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %fl6, align 8
  %sin6_port119 = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 1
  %79 = ptrtoint ptr %sin6_port119 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %sin6_port119, align 2
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %81 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %uli, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %82 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %inet_sport, align 8
  %sport = getelementptr inbounds %struct.anon.24, ptr %uli, i32 0, i32 1
  %84 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %sport, align 2
  call void @security_sk_classify_flow(ptr noundef %sk, ptr noundef nonnull %fl6) #10
  %dep_map.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i292 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i292, label %lockdep_sock_is_held.exit, label %cond.end.do.end132_crit_edge

cond.end.do.end132_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end132

lockdep_sock_is_held.exit:                        ; preds = %cond.end
  %dep_map2.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i = call i32 @lock_is_held_type(ptr noundef %dep_map2.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool4.i.not = icmp eq i32 %call.i6.i, 0
  br i1 %tobool4.i.not, label %land.lhs.true124, label %lockdep_sock_is_held.exit.do.end132_crit_edge

lockdep_sock_is_held.exit.do.end132_crit_edge:    ; preds = %lockdep_sock_is_held.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end132

land.lhs.true124:                                 ; preds = %lockdep_sock_is_held.exit
  %call125 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %land.lhs.true124.do.end132_crit_edge, label %land.lhs.true127

land.lhs.true124.do.end132_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end132

land.lhs.true127:                                 ; preds = %land.lhs.true124
  %.b282 = load i1, ptr @dccp_v6_connect.__warned, align 1
  br i1 %.b282, label %land.lhs.true127.do.end132_crit_edge, label %if.then129

land.lhs.true127.do.end132_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end132

if.then129:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dccp_v6_connect.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 927, ptr noundef nonnull @.str.24) #10
  br label %do.end132

do.end132:                                        ; preds = %if.then129, %land.lhs.true127.do.end132_crit_edge, %land.lhs.true124.do.end132_crit_edge, %lockdep_sock_is_held.exit.do.end132_crit_edge, %cond.end.do.end132_crit_edge
  %opt134 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 18
  %85 = ptrtoint ptr %opt134 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %opt134, align 4
  %call135 = call ptr @fl6_update_dst(ptr noundef nonnull %fl6, ptr noundef %86, ptr noundef nonnull %final) #10
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %87 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %skc_net.i, align 4
  %call137 = call ptr @ip6_dst_lookup_flow(ptr noundef %88, ptr noundef %sk, ptr noundef nonnull %fl6, ptr noundef %call135) #10
  %cmp.i293 = icmp ugt ptr %call137, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i293, label %if.then139, label %if.end141

if.then139:                                       ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %call137 to i32
  br label %failure

if.end141:                                        ; preds = %do.end132
  br i1 %tobool114.not, label %if.then144, label %if.end141.if.end148_crit_edge

if.end141.if.end148_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.then144:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  %90 = call ptr @memcpy(ptr %skc_v6_rcv_saddr105, ptr %saddr113, i32 16)
  br label %if.end148

if.end148:                                        ; preds = %if.then144, %if.end141.if.end148_crit_edge
  %saddr.1 = phi ptr [ %saddr113, %if.then144 ], [ %skc_v6_rcv_saddr105, %if.end141.if.end148_crit_edge ]
  %91 = call ptr @memcpy(ptr %cond.i, ptr %saddr.1, i32 16)
  %skc_rcv_saddr = getelementptr inbounds %struct.anon.148, ptr %sk, i32 0, i32 1
  %92 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2130706438, ptr %skc_rcv_saddr, align 4
  call fastcc void @ip6_dst_store(ptr noundef %sk, ptr noundef %call137)
  %icsk_ext_hdr_len152 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 23
  %93 = ptrtoint ptr %icsk_ext_hdr_len152 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %icsk_ext_hdr_len152, align 2
  %tobool153.not = icmp eq ptr %86, null
  br i1 %tobool153.not, label %if.end148.if.end159_crit_edge, label %if.then154

if.end148.if.end159_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then154:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %86, i32 0, i32 2
  %94 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %opt_flen, align 4
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %86, i32 0, i32 3
  %96 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %opt_nflen, align 2
  %add = add i16 %97, %95
  %98 = ptrtoint ptr %icsk_ext_hdr_len152 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %add, ptr %icsk_ext_hdr_len152, align 2
  br label %if.end159

if.end159:                                        ; preds = %if.then154, %if.end148.if.end159_crit_edge
  %99 = ptrtoint ptr %sin6_port119 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %sin6_port119, align 2
  %101 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %100, ptr %101, align 4
  call void @dccp_set_state(ptr noundef %sk, i32 noundef 2) #10
  %call163 = call i32 @inet6_hash_connect(ptr noundef nonnull @dccp_death_row, ptr noundef %sk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end166, label %if.end159.late_failure_crit_edge

if.end159.late_failure_crit_edge:                 ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %late_failure

if.end166:                                        ; preds = %if.end159
  %103 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %inet_sport, align 8
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %101, align 4
  %call177 = call i64 @secure_dccpv6_sequence_number(ptr noundef %cond.i, ptr noundef %skc_v6_daddr, i16 noundef zeroext %104, i16 noundef zeroext %106) #10
  %dccps_iss = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 5
  %107 = ptrtoint ptr %dccps_iss to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %call177, ptr %dccps_iss, align 8
  %call178 = call i32 @dccp_connect(ptr noundef %sk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end166.cleanup186_crit_edge, label %if.end166.late_failure_crit_edge

if.end166.late_failure_crit_edge:                 ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %late_failure

if.end166.cleanup186_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup186

late_failure:                                     ; preds = %if.end166.late_failure_crit_edge, %if.end159.late_failure_crit_edge
  %err.1 = phi i32 [ %call163, %if.end159.late_failure_crit_edge ], [ %call178, %if.end166.late_failure_crit_edge ]
  call void @dccp_set_state(ptr noundef %sk, i32 noundef 7) #10
  call fastcc void @__sk_dst_reset(ptr noundef %sk)
  br label %failure

failure:                                          ; preds = %late_failure, %if.then139, %cleanup101
  %err.2 = phi i32 [ %call91, %cleanup101 ], [ %89, %if.then139 ], [ %err.1, %late_failure ]
  %108 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %108, align 4
  %sk_route_caps = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 38
  %110 = ptrtoint ptr %sk_route_caps to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 0, ptr %sk_route_caps, align 8
  br label %cleanup186

cleanup186:                                       ; preds = %failure, %if.end166.cleanup186_crit_edge, %cleanup101.thread, %if.end54.cleanup186_crit_edge, %if.then41.cleanup186_crit_edge, %if.end28.cleanup186_crit_edge, %if.then.i.cleanup186_crit_edge, %if.end.cleanup186_crit_edge, %inet6_sk.exit.cleanup186_crit_edge
  %retval.3 = phi i32 [ %err.2, %failure ], [ -22, %inet6_sk.exit.cleanup186_crit_edge ], [ -97, %if.end.cleanup186_crit_edge ], [ -101, %if.end28.cleanup186_crit_edge ], [ -22, %if.then41.cleanup186_crit_edge ], [ -22, %if.end54.cleanup186_crit_edge ], [ 0, %if.end166.cleanup186_crit_edge ], [ %retval.2.ph, %cleanup101.thread ], [ -22, %if.then.i.cleanup186_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %final) #10
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_disconnect(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_csk_accept(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_v6_init_sock(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b9 = load i1, ptr @dccp_v6_init_sock.dccp_v6_ctl_sock_initialized, align 1
  %0 = zext i1 %.b9 to i8
  %call = tail call i32 @dccp_init_sock(ptr noundef %sk, i8 noundef zeroext %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %.b = load i1, ptr @dccp_v6_init_sock.dccp_v6_ctl_sock_initialized, align 1
  br i1 %.b, label %if.then.if.end_crit_edge, label %if.then4, !prof !116

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dccp_v6_init_sock.dccp_v6_ctl_sock_initialized, align 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %1 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dccp_ipv6_af_ops, ptr %icsk_af_ops, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dccp_v6_destroy_sock(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dccp_destroy_sock(ptr noundef %sk) #10
  tail call void @inet6_destroy_sock(ptr noundef %sk) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_sendmsg(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_v6_do_rcv(ptr noundef %sk, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %5)
  %cmp = icmp eq i16 %5, 2048
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @dccp_v4_do_rcv(ptr noundef %sk, ptr noundef %skb) #10
  br label %cleanup

if.end:                                           ; preds = %inet6_sk.exit
  %call.i196 = tail call i32 @sk_filter_trim_cap(ptr noundef %sk, ptr noundef %skb, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %tobool.not = icmp eq i32 %call.i196, 0
  br i1 %tobool.not, label %if.end5, label %if.end.if.end35_crit_edge

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end5:                                          ; preds = %if.end
  %rxopt = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 9
  %6 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rxopt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool6.not = icmp eq i16 %7, 0
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %opt_skb.0 = phi ptr [ %call8, %if.then7 ], [ null, %if.end5.if.end9_crit_edge ]
  %8 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp11 = icmp eq i8 %9, 1
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %12 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i197 = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i197
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  br i1 %cmp11, label %if.then13, label %if.end22

if.then13:                                        ; preds = %if.end9
  %call15 = tail call i32 @dccp_rcv_established(ptr noundef %sk, ptr noundef %skb, ptr noundef %add.ptr.i.i, i32 noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then13.discard_crit_edge

if.then13.discard_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end18:                                         ; preds = %if.then13
  %tobool19.not = icmp eq ptr %opt_skb.0, null
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %if.end18.ipv6_pktoptions_crit_edge

if.end18.ipv6_pktoptions_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_pktoptions

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end9
  %call25 = tail call i32 @dccp_rcv_state_process(ptr noundef %sk, ptr noundef %skb, ptr noundef %add.ptr.i.i, i32 noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end22.discard_crit_edge

if.end22.discard_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end28:                                         ; preds = %if.end22
  %tobool29.not = icmp eq ptr %opt_skb.0, null
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %if.end28.ipv6_pktoptions_crit_edge

if.end28.ipv6_pktoptions_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_pktoptions

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

discard:                                          ; preds = %if.end22.discard_crit_edge, %if.then13.discard_crit_edge
  tail call void @dccp_v6_ctl_send_reset(ptr noundef %sk, ptr noundef %skb)
  %cmp32.not = icmp eq ptr %opt_skb.0, null
  br i1 %cmp32.not, label %discard.if.end35_crit_edge, label %if.then34

discard.if.end35_crit_edge:                       ; preds = %discard
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %discard
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__kfree_skb(ptr noundef nonnull %opt_skb.0) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %discard.if.end35_crit_edge, %if.end.if.end35_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

ipv6_pktoptions:                                  ; preds = %if.end28.ipv6_pktoptions_crit_edge, %if.end18.ipv6_pktoptions_crit_edge
  %16 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv38 = zext i8 %17 to i32
  %shl = shl nuw i32 1, %conv38
  %and = and i32 %shl, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.then40, label %ipv6_pktoptions.if.end141_crit_edge

ipv6_pktoptions.if.end141_crit_edge:              ; preds = %ipv6_pktoptions
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then40:                                        ; preds = %ipv6_pktoptions
  %18 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %rxopt, align 4
  %19 = and i16 %bf.load, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %if.then40.if.end52_crit_edge, label %if.then50

if.then40.if.end52_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then50:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 3, i32 16
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags.i, align 8
  %23 = and i16 %22, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.i.not.i202 = icmp eq i16 %23, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 3
  %cond.in.i = select i1 %tobool.i.not.i202, ptr %cb.i, ptr %skb_iif.i
  %24 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %cond.i203 = load i32, ptr %cond.in.i, align 8
  %mcast_oif = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 8
  %25 = ptrtoint ptr %mcast_oif to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond.i203, ptr %mcast_oif, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.then40.if.end52_crit_edge
  %26 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load54 = load i16, ptr %rxopt, align 4
  %27 = and i16 %bf.load54, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %if.end52.if.end71_crit_edge, label %if.then66

if.end52.if.end71_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then66:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i204 = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 18
  %29 = ptrtoint ptr %head.i.i204 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i204, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i205 = zext i16 %32 to i32
  %add.ptr.i.i206 = getelementptr i8, ptr %30, i32 %conv.i.i205
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i206, i32 0, i32 4
  %33 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hop_limit, align 1
  %mcast_hops = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 6
  %35 = zext i8 %34 to i32
  %36 = ptrtoint ptr %mcast_hops to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load69 = load i32, ptr %mcast_hops, align 4
  %bf.shl = shl nuw nsw i32 %35, 7
  %bf.clear70 = and i32 %bf.load69, -65409
  %bf.set = or i32 %bf.clear70, %bf.shl
  store i32 %bf.set, ptr %mcast_hops, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.end52.if.end71_crit_edge
  %37 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load73 = load i16, ptr %rxopt, align 4
  %38 = and i16 %bf.load73, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %if.end71.if.end88_crit_edge, label %if.then85

if.end71.if.end88_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then85:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i207 = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 18
  %40 = ptrtoint ptr %head.i.i207 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i207, align 8
  %network_header.i.i208 = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 15, i32 0, i32 20
  %42 = ptrtoint ptr %network_header.i.i208 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %network_header.i.i208, align 4
  %conv.i.i209 = zext i16 %43 to i32
  %add.ptr.i.i210 = getelementptr i8, ptr %41, i32 %conv.i.i209
  %44 = ptrtoint ptr %add.ptr.i.i210 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i210, align 4
  %and.i = and i32 %45, 268435455
  %rcv_flowinfo = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 13
  %46 = ptrtoint ptr %rcv_flowinfo to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and.i, ptr %rcv_flowinfo, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end71.if.end88_crit_edge
  %repflow = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %47 = ptrtoint ptr %repflow to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load89 = load i16, ptr %repflow, align 2
  %48 = and i16 %bf.load89, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool92.not = icmp eq i16 %48, 0
  br i1 %tobool92.not, label %if.end88.if.end96_crit_edge, label %if.then93

if.end88.if.end96_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i211 = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 18
  %49 = ptrtoint ptr %head.i.i211 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %head.i.i211, align 8
  %network_header.i.i212 = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 15, i32 0, i32 20
  %51 = ptrtoint ptr %network_header.i.i212 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %network_header.i.i212, align 4
  %conv.i.i213 = zext i16 %52 to i32
  %add.ptr.i.i214 = getelementptr i8, ptr %50, i32 %conv.i.i213
  %53 = ptrtoint ptr %add.ptr.i.i214 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i214, align 4
  %and.i215 = and i32 %54, 1048575
  %flow_label = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 4
  %55 = ptrtoint ptr %flow_label to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and.i215, ptr %flow_label, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end88.if.end96_crit_edge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 3
  %call97 = tail call zeroext i1 @ipv6_opt_accepted(ptr noundef %sk, ptr noundef nonnull %opt_skb.0, ptr noundef %cb) #10
  br i1 %call97, label %if.then98, label %if.else

if.then98:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @skb_set_owner_r(ptr noundef nonnull %opt_skb.0, ptr noundef %sk)
  %pktoptions = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 19
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pktoptions, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !130
  %56 = ptrtoint ptr %opt_skb.0 to i32
  tail call void @llvm.prefetch.p0(ptr %pktoptions, i32 1, i32 3, i32 1) #10
  %57 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %56, ptr %pktoptions) #10, !srcloc !131
  %asmresult.i = extractvalue { i32, i32 } %57, 0
  %58 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !132
  br label %if.end141

if.else:                                          ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__kfree_skb(ptr noundef nonnull %opt_skb.0) #10
  %pktoptions119 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 19
  %call.i195 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pktoptions119, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %pktoptions119, i32 1, i32 3, i32 1) #10
  %59 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %pktoptions119) #10, !srcloc !131
  %asmresult.i216 = extractvalue { i32, i32 } %59, 0
  %60 = inttoptr i32 %asmresult.i216 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !134
  br label %if.end141

if.end141:                                        ; preds = %if.else, %if.then98, %ipv6_pktoptions.if.end141_crit_edge
  %opt_skb.2 = phi ptr [ %opt_skb.0, %ipv6_pktoptions.if.end141_crit_edge ], [ %58, %if.then98 ], [ %60, %if.else ]
  tail call void @kfree_skb_reason(ptr noundef %opt_skb.2, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end141, %if.end35, %if.end28.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %if.end35 ], [ 0, %if.end141 ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_hash(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_unhash(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_csk_get_port(ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_v4_do_rcv(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_v4_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_update_dst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6_dst_store(ptr noundef %sk, ptr noundef %dst) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %sernum.i = getelementptr inbounds %struct.rt6_info, ptr %dst, i32 0, i32 2
  %4 = ptrtoint ptr %sernum.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sernum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %inet6_sk.exit.rt6_get_cookie.exit_crit_edge

inet6_sk.exit.rt6_get_cookie.exit_crit_edge:      ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rt6_get_cookie.exit

if.end.i:                                         ; preds = %inet6_sk.exit
  %6 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %from2.i = getelementptr inbounds %struct.rt6_info, ptr %dst, i32 0, i32 1
  %10 = ptrtoint ptr %from2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %from2.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b23.i = load i1, ptr @rt6_get_cookie.__warned, align 1
  br i1 %.b23.i, label %land.lhs.true7.i.do.end12.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rt6_get_cookie.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 306, ptr noundef nonnull @.str.15) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then9.i, %land.lhs.true7.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %tobool14.not.i = icmp eq ptr %11, null
  br i1 %tobool14.not.i, label %do.end12.i.if.end17.i_crit_edge, label %if.then15.i

do.end12.i.if.end17.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.then15.i:                                      ; preds = %do.end12.i
  %fib6_node.i.i = getelementptr inbounds %struct.fib6_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %fib6_node.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %fib6_node.i.i, align 4
  %call.i24.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool.not.i25.i = icmp eq i32 %call.i24.i, 0
  br i1 %tobool.not.i25.i, label %land.lhs.true.i26.i, label %if.then15.i.do.end7.i.i_crit_edge

if.then15.i.do.end7.i.i_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true.i26.i:                              ; preds = %if.then15.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i26.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i26.i.do.end7.i.i_crit_edge:        ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i26.i
  %.b1.i.i = load i1, ptr @fib6_get_cookie_safe.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i27.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

if.then.i27.i:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @fib6_get_cookie_safe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 284, ptr noundef nonnull @.str.15) #10
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i27.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i26.i.do.end7.i.i_crit_edge, %if.then15.i.do.end7.i.i_crit_edge
  %tobool9.not.i.i = icmp eq ptr %13, null
  br i1 %tobool9.not.i.i, label %do.end7.i.i.if.end17.i_crit_edge, label %do.end13.i.i

do.end7.i.i.if.end17.i_crit_edge:                 ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

do.end13.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %fn_sernum.i.i = getelementptr inbounds %struct.fib6_node, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %fn_sernum.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %fn_sernum.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end13.i.i, %do.end7.i.i.if.end17.i_crit_edge, %do.end12.i.if.end17.i_crit_edge
  %cookie.1.i = phi i32 [ 0, %do.end12.i.if.end17.i_crit_edge ], [ 0, %do.end7.i.i.if.end17.i_crit_edge ], [ %15, %do.end13.i.i ]
  %call.i28.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i28.i, label %if.end17.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i31.i

if.end17.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i31.i:                              ; preds = %if.end17.i
  %call1.i29.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call1.i29.i, 0
  br i1 %tobool.not.i30.i, label %land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i33.i

land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i33.i:                             ; preds = %land.lhs.true.i31.i
  %.b4.i32.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32.i, label %land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i34.i

land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i34.i:                                    ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i34.i, %land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge, %if.end17.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !127
  %16 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i.i35.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i35.i to ptr
  %preempt_count.i.i.i.i36.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i36.i, align 4
  %sub.i.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i36.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %rt6_get_cookie.exit

rt6_get_cookie.exit:                              ; preds = %rcu_read_unlock.exit.i, %inet6_sk.exit.rt6_get_cookie.exit_crit_edge
  %retval.0.i = phi i32 [ %cookie.1.i, %rcu_read_unlock.exit.i ], [ %5, %inet6_sk.exit.rt6_get_cookie.exit_crit_edge ]
  %dst_cookie = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 14
  %20 = ptrtoint ptr %dst_cookie to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i, ptr %dst_cookie, align 4
  tail call void @sk_setup_caps(ptr noundef %sk, ptr noundef %dst) #10
  %daddr_cache = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 2
  %21 = ptrtoint ptr %daddr_cache to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %daddr_cache, align 4
  %saddr_cache = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 3
  %22 = ptrtoint ptr %saddr_cache to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %saddr_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_hash_connect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @secure_dccpv6_sequence_number(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__sk_dst_reset(ptr noundef %sk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %skc_tx_queue_mapping.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 16
  %0 = ptrtoint ptr %skc_tx_queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i, align 4
  %sk_dst_pending_confirm.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %1 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sk_dst_pending_confirm.i, align 8
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %entry.__sk_dst_set.exit_crit_edge

entry.__sk_dst_set.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_set.exit

lockdep_sock_is_held.exit.i:                      ; preds = %entry
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %land.lhs.true.i, label %lockdep_sock_is_held.exit.i.__sk_dst_set.exit_crit_edge

lockdep_sock_is_held.exit.i.__sk_dst_set.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_set.exit

land.lhs.true.i:                                  ; preds = %lockdep_sock_is_held.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.__sk_dst_set.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__sk_dst_set.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_set.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @__sk_dst_set.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true2.i.__sk_dst_set.exit_crit_edge, label %if.then.i

land.lhs.true2.i.__sk_dst_set.exit_crit_edge:     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_set.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__sk_dst_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 2113, ptr noundef nonnull @.str.24) #10
  br label %__sk_dst_set.exit

__sk_dst_set.exit:                                ; preds = %if.then.i, %land.lhs.true2.i.__sk_dst_set.exit_crit_edge, %land.lhs.true.i.__sk_dst_set.exit_crit_edge, %lockdep_sock_is_held.exit.i.__sk_dst_set.exit_crit_edge, %entry.__sk_dst_set.exit_crit_edge
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %2 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_dst_cache.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  %4 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %sk_dst_cache.i, align 4
  tail call void @dst_release(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fl6_sock_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_queue_xmit(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_v4_send_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_sk_rebuild_header(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_v6_conn_request(ptr noundef %sk, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i240 = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i240
  %dccph_x.i.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %dccph_x.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i.i.i = load i8, ptr %dccph_x.i.i.i, align 2
  %bf.clear.i.i.i = shl i8 %bf.load.i.i.i, 2
  %9 = and i8 %bf.clear.i.i.i, 4
  %narrow.i.i.i = add nuw nsw i8 %9, 12
  %add.i.i.i = zext i8 %narrow.i.i.i to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %add.i.i.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %13)
  %cmp = icmp eq i16 %13, 2048
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @dccp_v4_conn_request(ptr noundef %sk, ptr noundef %skb) #10
  br label %cleanup

if.end:                                           ; preds = %inet6_sk.exit
  %14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %and.i.i241 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i241)
  %tobool.not.i.i = icmp eq i32 %and.i.i241, 0
  br i1 %tobool.not.i.i, label %if.end.ipv6_unicast_destination.exit_crit_edge, label %land.lhs.true.i.i

if.end.ipv6_unicast_destination.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_unicast_destination.exit

land.lhs.true.i.i:                                ; preds = %if.end
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge

land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_unicast_destination.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge, !prof !114

land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_unicast_destination.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %ipv6_unicast_destination.exit

ipv6_unicast_destination.exit:                    ; preds = %do.end.i.i, %land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge, %land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge, %if.end.ipv6_unicast_destination.exit_crit_edge
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 8
  %and25.i.i = and i32 %18, -2
  %19 = inttoptr i32 %and25.i.i to ptr
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rt6i_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i = icmp slt i32 %21, 0
  br i1 %tobool.i, label %if.end6, label %ipv6_unicast_destination.exit.cleanup_crit_edge

ipv6_unicast_destination.exit.cleanup_crit_edge:  ; preds = %ipv6_unicast_destination.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %ipv6_unicast_destination.exit
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %24 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i243 = zext i16 %25 to i32
  %add.ptr.i.i244 = getelementptr i8, ptr %23, i32 %conv.i.i243
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i244, i32 0, i32 5
  %26 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %saddr, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %29, %27
  %arrayidx4.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %31, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  br i1 %cmp.i, label %do.body27, label %if.end51

do.body27:                                        ; preds = %if.end6
  tail call fastcc void @local_bh_disable()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %32 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skc_net.i, align 4
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %33, i32 0, i32 30, i32 1
  %34 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ipv6_statistics, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i to ptr
  %cpu39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu39, align 4
  %arrayidx40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx40, align 4
  %add41 = add i32 %42, %36
  %43 = inttoptr i32 %add41 to ptr
  %syncp42 = getelementptr inbounds %struct.ipstats_mib, ptr %43, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %44 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i245 = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i245, label %do.body27.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i247

do.body27.u64_stats_update_begin.exit_crit_edge:  ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i247:                             ; preds = %do.body27
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i246 = add i32 %46, 1
  store volatile i32 %add.i.i.i246, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !137
  %47 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %52, ptrtoint (ptr @lockdep_recursion to i32)
  %53 = inttoptr i32 %add.i.i to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !138
  %56 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i7.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool20.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i248, label %land.lhs.true.i.i247.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i247.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i247
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs.i.i248:                                  ; preds = %land.lhs.true.i.i247
  %60 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i.i = icmp eq i32 %63, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i248.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i248.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i248
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i248
  %64 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i9.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %67, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !139
  %68 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %71, ptrtoint (ptr @hardirqs_enabled to i32)
  %72 = inttoptr i32 %add47.i.i to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !140
  %75 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i12.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %78, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool54.not.i.i = icmp eq i32 %74, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !116

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i248.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i247.u64_stats_update_begin.exit_crit_edge, %do.body27.u64_stats_update_begin.exit_crit_edge
  %79 = ptrtoint ptr %syncp42 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %syncp42, align 4
  %inc.i.i.i.i = add i32 %80, 1
  store i32 %inc.i.i.i.i, ptr %syncp42, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !141
  %dep_map.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %43, i32 0, i32 1, i32 0, i32 1
  %81 = tail call ptr @llvm.returnaddress(i32 0) #10
  %82 = ptrtoint ptr %81 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %82) #10
  %arrayidx44 = getelementptr [37 x i64], ptr %43, i32 0, i32 7
  %83 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx44, align 8
  %add45 = add i64 %84, 1
  store i64 %add45, ptr %arrayidx44, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %82) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !142
  %85 = ptrtoint ptr %syncp42 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %syncp42, align 4
  %inc.i.i.i = add i32 %86, 1
  store i32 %inc.i.i.i, ptr %syncp42, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup

if.end51:                                         ; preds = %if.end6
  %dccps_service.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 11
  %87 = ptrtoint ptr %dccps_service.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dccps_service.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %11)
  %cmp.i249 = icmp eq i32 %88, %11
  br i1 %cmp.i249, label %if.end51.if.end54_crit_edge, label %if.end.i

if.end51.if.end54_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end.i:                                         ; preds = %if.end51
  %dccps_service_list.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 13
  %89 = ptrtoint ptr %dccps_service_list.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dccps_service_list.i, align 8
  %cmp.not.i.i = icmp eq ptr %90, null
  br i1 %cmp.not.i.i, label %if.end.i.if.then53_crit_edge, label %if.then.i.i250, !prof !114

if.end.i.if.then53_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then53

if.then.i.i250:                                   ; preds = %if.end.i
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then.i.i250
  %i.0.i.i = phi i32 [ %92, %if.then.i.i250 ], [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i)
  %tobool2.not.i.i = icmp eq i32 %i.0.i.i, 0
  br i1 %tobool2.not.i.i, label %while.cond.i.i.if.then53_crit_edge, label %while.body.i.i

while.cond.i.i.if.then53_crit_edge:               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then53

while.body.i.i:                                   ; preds = %while.cond.i.i
  %dec.i.i = add i32 %i.0.i.i, -1
  %arrayidx.i.i251 = getelementptr %struct.dccp_service_list, ptr %90, i32 0, i32 1, i32 %dec.i.i
  %93 = ptrtoint ptr %arrayidx.i.i251 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i.i251, align 4
  %cmp3.i.i = icmp eq i32 %94, %11
  br i1 %cmp3.i.i, label %while.body.i.i.if.end54_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

while.body.i.i.if.end54_crit_edge:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then53:                                        ; preds = %while.cond.i.i.if.then53_crit_edge, %if.end.i.if.then53_crit_edge
  %dccpd_reset_code = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 25
  %95 = ptrtoint ptr %dccpd_reset_code to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 8, ptr %dccpd_reset_code, align 1
  br label %drop

if.end54:                                         ; preds = %while.body.i.i.if.end54_crit_edge, %if.end51.if.end54_crit_edge
  %dccpd_reset_code55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 25
  %96 = ptrtoint ptr %dccpd_reset_code55 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 9, ptr %dccpd_reset_code55, align 1
  %qlen.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %qlen.i.i.i, i32 noundef 4) #10
  %97 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %qlen.i.i.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 54
  %99 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp.i252.not = icmp ult i32 %98, %100
  br i1 %cmp.i252.not, label %if.end59, label %if.end54.drop_crit_edge

if.end54.drop_crit_edge:                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end59:                                         ; preds = %if.end54
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 53
  %101 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %sk_ack_backlog.i, align 4
  %103 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp.i254 = icmp ugt i32 %102, %104
  br i1 %cmp.i254, label %if.end59.drop_crit_edge, label %if.end62

if.end59.drop_crit_edge:                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end62:                                         ; preds = %if.end59
  %call63 = tail call ptr @inet_reqsk_alloc(ptr noundef nonnull @dccp6_request_sock_ops, ptr noundef %sk, i1 noundef zeroext true) #10
  %cmp64 = icmp eq ptr %call63, null
  br i1 %cmp64, label %if.end62.drop_crit_edge, label %if.end67

if.end62.drop_crit_edge:                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end67:                                         ; preds = %if.end62
  %call69 = tail call i32 @dccp_reqsk_init(ptr noundef nonnull %call63, ptr noundef %sk, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end67.drop_and_free_crit_edge

if.end67.drop_and_free_crit_edge:                 ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop_and_free

if.end72:                                         ; preds = %if.end67
  %call74 = tail call i32 @dccp_parse_options(ptr noundef %sk, ptr noundef nonnull %call63, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end72.drop_and_free_crit_edge

if.end72.drop_and_free_crit_edge:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop_and_free

if.end77:                                         ; preds = %if.end72
  %call78 = tail call i32 @security_inet_conn_request(ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull %call63) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.drop_and_free_crit_edge

if.end77.drop_and_free_crit_edge:                 ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop_and_free

if.end81:                                         ; preds = %if.end77
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %call63, i32 0, i32 10
  %105 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %head.i.i, align 8
  %107 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i257 = zext i16 %108 to i32
  %add.ptr.i.i258 = getelementptr i8, ptr %106, i32 %conv.i.i257
  %saddr85 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i258, i32 0, i32 5
  %109 = call ptr @memcpy(ptr %skc_v6_daddr, ptr %saddr85, i32 16)
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %call63, i32 0, i32 11
  %110 = load ptr, ptr %head.i.i, align 8
  %111 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i261 = zext i16 %111 to i32
  %add.ptr.i.i262 = getelementptr i8, ptr %110, i32 %conv.i.i261
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i262, i32 0, i32 6
  %112 = call ptr @memcpy(ptr %skc_v6_rcv_saddr, ptr %daddr, i32 16)
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %call63, i32 0, i32 3
  %113 = ptrtoint ptr %skc_family to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 10, ptr %skc_family, align 8
  %sk_mark.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %114 = ptrtoint ptr %sk_mark.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sk_mark.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i = icmp eq i32 %115, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end81.inet_request_mark.exit_crit_edge

if.end81.inet_request_mark.exit_crit_edge:        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet_request_mark.exit

land.lhs.true.i:                                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %116 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %skc_net.i.i, align 4
  %sysctl_tcp_fwmark_accept.i = getelementptr inbounds %struct.net, ptr %117, i32 0, i32 35, i32 50
  %118 = ptrtoint ptr %sysctl_tcp_fwmark_accept.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %sysctl_tcp_fwmark_accept.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool1.not.i = icmp eq i8 %119, 0
  %120 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %spec.select.i = select i1 %tobool1.not.i, ptr %sk_mark.i, ptr %120
  br label %inet_request_mark.exit

inet_request_mark.exit:                           ; preds = %land.lhs.true.i, %if.end81.inet_request_mark.exit_crit_edge
  %retval.0.in.i = phi ptr [ %sk_mark.i, %if.end81.inet_request_mark.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %121 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %retval.0.i263 = load i32, ptr %retval.0.in.i, align 4
  %ir_mark = getelementptr inbounds %struct.inet_request_sock, ptr %call63, i32 0, i32 2
  %122 = ptrtoint ptr %ir_mark to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %retval.0.i263, ptr %ir_mark, align 4
  %call93 = tail call zeroext i1 @ipv6_opt_accepted(ptr noundef %sk, ptr noundef %skb, ptr noundef %cb) #10
  br i1 %call93, label %inet_request_mark.exit.if.then118_crit_edge, label %lor.lhs.false

inet_request_mark.exit.if.then118_crit_edge:      ; preds = %inet_request_mark.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then118

lor.lhs.false:                                    ; preds = %inet_request_mark.exit
  %rxopt = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 9
  %123 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %123)
  %bf.load = load i16, ptr %rxopt, align 4
  %124 = and i16 %bf.load, 15360
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %lor.lhs.false.if.end119_crit_edge, label %lor.lhs.false.if.then118_crit_edge

lor.lhs.false.if.then118_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then118

lor.lhs.false.if.end119_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then118:                                       ; preds = %lor.lhs.false.if.then118_crit_edge, %inet_request_mark.exit.if.then118_crit_edge
  %users = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  tail call fastcc void @refcount_inc(ptr noundef %users)
  %pktopts = getelementptr inbounds %struct.inet_request_sock, ptr %call63, i32 0, i32 3, i32 0, i32 1
  %126 = ptrtoint ptr %pktopts to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %skb, ptr %pktopts, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %lor.lhs.false.if.end119_crit_edge
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %127 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %skc_bound_dev_if, align 4
  %skc_bound_dev_if122 = getelementptr inbounds %struct.sock_common, ptr %call63, i32 0, i32 6
  %129 = ptrtoint ptr %skc_bound_dev_if122 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %skc_bound_dev_if122, align 4
  %130 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool125.not = icmp eq i32 %130, 0
  br i1 %tobool125.not, label %land.lhs.true, label %if.end119.if.end136_crit_edge

if.end119.if.end136_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

land.lhs.true:                                    ; preds = %if.end119
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %skc_v6_daddr) #10
  %and = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool130.not = icmp eq i32 %and, 0
  br i1 %tobool130.not, label %land.lhs.true.if.end136_crit_edge, label %if.then131

land.lhs.true.if.end136_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

if.then131:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %131 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %flags.i, align 8
  %133 = and i16 %132, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool.i.not.i265 = icmp eq i16 %133, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cond.in.i = select i1 %tobool.i.not.i265, ptr %cb, ptr %skb_iif.i
  %134 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %cond.i266 = load i32, ptr %cond.in.i, align 8
  %135 = ptrtoint ptr %skc_bound_dev_if122 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %cond.i266, ptr %skc_bound_dev_if122, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then131, %land.lhs.true.if.end136_crit_edge, %if.end119.if.end136_crit_edge
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %136 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %dccpd_seq, align 8
  %dreq_isr = getelementptr inbounds %struct.dccp_request_sock, ptr %call63, i32 0, i32 3
  %138 = ptrtoint ptr %dreq_isr to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %dreq_isr, align 8
  %dreq_gsr = getelementptr inbounds %struct.dccp_request_sock, ptr %call63, i32 0, i32 4
  %139 = ptrtoint ptr %dreq_gsr to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %137, ptr %dreq_gsr, align 8
  %140 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %head.i.i, align 8
  %142 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %143 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %141, i32 %conv.i.i.i
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %144 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i15.i = zext i16 %145 to i32
  %add.ptr.i.i16.i = getelementptr i8, ptr %141, i32 %conv.i.i15.i
  %dccph_dport.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i16.i, i32 0, i32 1
  %146 = ptrtoint ptr %dccph_dport.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %dccph_dport.i, align 2
  %148 = ptrtoint ptr %add.ptr.i.i16.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %add.ptr.i.i16.i, align 2
  %call6.i = tail call i64 @secure_dccpv6_sequence_number(ptr noundef %daddr.i, ptr noundef %saddr.i, i16 noundef zeroext %147, i16 noundef zeroext %149) #10
  %dreq_iss = getelementptr inbounds %struct.dccp_request_sock, ptr %call63, i32 0, i32 1
  %150 = ptrtoint ptr %dreq_iss to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %call6.i, ptr %dreq_iss, align 8
  %dreq_gss = getelementptr inbounds %struct.dccp_request_sock, ptr %call63, i32 0, i32 2
  %151 = ptrtoint ptr %dreq_gss to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %call6.i, ptr %dreq_gss, align 8
  %dreq_service = getelementptr inbounds %struct.dccp_request_sock, ptr %call63, i32 0, i32 5
  %152 = ptrtoint ptr %dreq_service to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %11, ptr %dreq_service, align 8
  %call140 = tail call i32 @dccp_v6_send_response(ptr noundef %sk, ptr noundef nonnull %call63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.end136.drop_and_free_crit_edge

if.end136.drop_and_free_crit_edge:                ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop_and_free

if.end143:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @inet_csk_reqsk_queue_hash_add(ptr noundef %sk, ptr noundef nonnull %call63, i32 noundef 300) #10
  tail call fastcc void @reqsk_put(ptr noundef nonnull %call63)
  br label %cleanup

drop_and_free:                                    ; preds = %if.end136.drop_and_free_crit_edge, %if.end77.drop_and_free_crit_edge, %if.end72.drop_and_free_crit_edge, %if.end67.drop_and_free_crit_edge
  tail call fastcc void @reqsk_free(ptr noundef nonnull %call63)
  br label %drop

drop:                                             ; preds = %drop_and_free, %if.end62.drop_crit_edge, %if.end59.drop_crit_edge, %if.end54.drop_crit_edge, %if.then53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dccp_statistics to i32))
  %153 = load ptr, ptr @dccp_statistics, align 4
  %arrayidx157 = getelementptr [15 x i32], ptr %153, i32 0, i32 10
  %154 = ptrtoint ptr %arrayidx157 to i32
  %155 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i267 = and i32 %155, -16384
  %156 = inttoptr i32 %and.i267 to ptr
  %cpu160 = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 3
  %157 = ptrtoint ptr %cpu160 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cpu160, align 4
  %arrayidx161 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %158
  %159 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx161, align 4
  %add162 = add i32 %160, %154
  %161 = inttoptr i32 %add162 to ptr
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %161, align 4
  %add163 = add i32 %163, 1
  store i32 %add163, ptr %161, align 4
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end143, %u64_stats_update_begin.exit, %ipv6_unicast_destination.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %u64_stats_update_begin.exit ], [ -1, %drop ], [ 0, %if.end143 ], [ 0, %ipv6_unicast_destination.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dccp_v6_request_recv_sock(ptr noundef %sk, ptr noundef %skb, ptr noundef %req, ptr noundef %dst, ptr noundef %req_unhash, ptr noundef %own_req) #2 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %5)
  %cmp = icmp eq i16 %5, 2048
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %inet6_sk.exit
  %call3 = tail call ptr @dccp_v4_request_recv_sock(ptr noundef %sk, ptr noundef %skb, ptr noundef %req, ptr noundef %dst, ptr noundef %req_unhash, ptr noundef %own_req) #10
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.then.cleanup188_crit_edge, label %if.end

if.then.cleanup188_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

if.end:                                           ; preds = %if.then
  %inet6 = getelementptr inbounds %struct.dccp6_sock, ptr %call3, i32 0, i32 1
  %pinet6 = getelementptr inbounds %struct.inet_sock, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %pinet6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %inet6, ptr %pinet6, align 8
  %skc_state.i.i296 = getelementptr inbounds %struct.sock_common, ptr %call3, i32 0, i32 4
  %7 = ptrtoint ptr %skc_state.i.i296 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state.i.i296, align 2
  %conv.i.i297 = zext i8 %8 to i32
  %shl.i.i298 = shl nuw i32 1, %conv.i.i297
  %and.i.i299 = and i32 %shl.i.i298, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i299)
  %tobool.i.not.i300 = icmp eq i32 %and.i.i299, 0
  %spec.select = select i1 %tobool.i.not.i300, ptr null, ptr %inet6
  %9 = call ptr @memcpy(ptr %spec.select, ptr %cond.i, i32 112)
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %call3, i32 0, i32 11
  %10 = call ptr @memcpy(ptr %spec.select, ptr %skc_v6_rcv_saddr, i32 16)
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %call3, i32 0, i32 11
  %11 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dccp_ipv6_mapped, ptr %icsk_af_ops, align 8
  %sk_backlog_rcv = getelementptr inbounds %struct.sock, ptr %call3, i32 0, i32 80
  %12 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dccp_v4_do_rcv, ptr %sk_backlog_rcv, align 4
  %ipv6_mc_list = getelementptr inbounds %struct.ipv6_pinfo, ptr %spec.select, i32 0, i32 15
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %14 = call ptr @memset(ptr %ipv6_mc_list, i32 0, i32 20)
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %13, align 8
  %and.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.skb_rtable.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end.skb_rtable.exit.i_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge

land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_rtable.exit.i_crit_edge, !prof !114

land.rhs.i.i.i.skb_rtable.exit.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_rtable.exit.i

skb_rtable.exit.i:                                ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_rtable.exit.i_crit_edge, %land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge, %if.end.skb_rtable.exit.i_crit_edge
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %13, align 8
  %and25.i.i.i = and i32 %18, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i, label %skb_rtable.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

skb_rtable.exit.i.if.end.i_crit_edge:             ; preds = %skb_rtable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %skb_rtable.exit.i
  %19 = inttoptr i32 %and25.i.i.i to ptr
  %rt_iif.i = getelementptr inbounds %struct.rtable, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %rt_iif.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rt_iif.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not.i = icmp eq i32 %21, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.inet_iif.exit_crit_edge

land.lhs.true.i.inet_iif.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet_iif.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %skb_rtable.exit.i.if.end.i_crit_edge
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %22 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %skb_iif.i, align 8
  br label %inet_iif.exit

inet_iif.exit:                                    ; preds = %if.end.i, %land.lhs.true.i.inet_iif.exit_crit_edge
  %retval.0.i = phi i32 [ %23, %if.end.i ], [ %21, %land.lhs.true.i.inet_iif.exit_crit_edge ]
  %mcast_oif = getelementptr inbounds %struct.ipv6_pinfo, ptr %spec.select, i32 0, i32 8
  %24 = ptrtoint ptr %mcast_oif to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i, ptr %mcast_oif, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %27 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i305 = zext i16 %28 to i32
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %conv.i.i305
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ttl, align 4
  %mcast_hops = getelementptr inbounds %struct.ipv6_pinfo, ptr %spec.select, i32 0, i32 6
  %31 = zext i8 %30 to i32
  %32 = ptrtoint ptr %mcast_hops to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load = load i32, ptr %mcast_hops, align 4
  %bf.shl = shl nuw nsw i32 %31, 7
  %bf.clear = and i32 %bf.load, -65409
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %mcast_hops, align 4
  %icsk_pmtu_cookie = getelementptr inbounds %struct.inet_connection_sock, ptr %call3, i32 0, i32 9
  %33 = ptrtoint ptr %icsk_pmtu_cookie to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %icsk_pmtu_cookie, align 8
  %call15 = tail call i32 @dccp_sync_mss(ptr noundef nonnull %call3, i32 noundef %34) #10
  br label %cleanup188

if.end16:                                         ; preds = %inet6_sk.exit
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 53
  %35 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %sk_ack_backlog.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 54
  %37 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp.i = icmp ugt i32 %36, %38
  br i1 %cmp.i, label %out_overflow, label %if.end19

if.end19:                                         ; preds = %if.end16
  %tobool.not = icmp eq ptr %dst, null
  br i1 %tobool.not, label %if.then20, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then20:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #10
  %39 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  %call21 = call ptr @inet6_csk_route_req(ptr noundef %sk, ptr noundef nonnull %fl6, ptr noundef %req, i8 noundef zeroext 33) #10
  %tobool22.not = icmp eq ptr %call21, null
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #10
  br i1 %tobool22.not, label %if.then20.out_crit_edge, label %if.then20.if.end25_crit_edge

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then20.out_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end25:                                         ; preds = %if.then20.if.end25_crit_edge, %if.end19.if.end25_crit_edge
  %dst.addr.0 = phi ptr [ %dst, %if.end19.if.end25_crit_edge ], [ %call21, %if.then20.if.end25_crit_edge ]
  %call26 = call ptr @dccp_create_openreq_child(ptr noundef %sk, ptr noundef %req, ptr noundef %skb) #10
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %if.end25.out_nonewsk_crit_edge, label %if.end30

if.end25.out_nonewsk_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_nonewsk

if.end30:                                         ; preds = %if.end25
  call fastcc void @ip6_dst_store(ptr noundef nonnull %call26, ptr noundef nonnull %dst.addr.0)
  %40 = ptrtoint ptr %dst.addr.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dst.addr.0, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 23
  %42 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %features, align 16
  %and = and i64 %43, -65539
  %sk_route_caps = getelementptr inbounds %struct.sock, ptr %call26, i32 0, i32 38
  %44 = ptrtoint ptr %sk_route_caps to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %and, ptr %sk_route_caps, align 8
  %inet632 = getelementptr inbounds %struct.dccp6_sock, ptr %call26, i32 0, i32 1
  %pinet633 = getelementptr inbounds %struct.inet_sock, ptr %call26, i32 0, i32 1
  %45 = ptrtoint ptr %pinet633 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %inet632, ptr %pinet633, align 8
  %skc_state.i.i306 = getelementptr inbounds %struct.sock_common, ptr %call26, i32 0, i32 4
  %46 = ptrtoint ptr %skc_state.i.i306 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load volatile i8, ptr %skc_state.i.i306, align 2
  %conv.i.i307 = zext i8 %47 to i32
  %shl.i.i308 = shl nuw i32 1, %conv.i.i307
  %and.i.i309 = and i32 %shl.i.i308, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i309)
  %tobool.i.not.i310 = icmp eq i32 %and.i.i309, 0
  %spec.select330 = select i1 %tobool.i.not.i310, ptr null, ptr %inet632
  %48 = call ptr @memcpy(ptr %spec.select330, ptr %cond.i, i32 112)
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %call26, i32 0, i32 10
  %skc_v6_daddr37 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 10
  %49 = call ptr @memcpy(ptr %skc_v6_daddr, ptr %skc_v6_daddr37, i32 16)
  %skc_v6_rcv_saddr41 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 11
  %50 = call ptr @memcpy(ptr %spec.select330, ptr %skc_v6_rcv_saddr41, i32 16)
  %skc_v6_rcv_saddr43 = getelementptr inbounds %struct.sock_common, ptr %call26, i32 0, i32 11
  %51 = call ptr @memcpy(ptr %skc_v6_rcv_saddr43, ptr %skc_v6_rcv_saddr41, i32 16)
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 6
  %52 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %skc_bound_dev_if, align 4
  %skc_bound_dev_if50 = getelementptr inbounds %struct.sock_common, ptr %call26, i32 0, i32 6
  %54 = ptrtoint ptr %skc_bound_dev_if50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %skc_bound_dev_if50, align 4
  %inet_opt = getelementptr inbounds %struct.inet_sock, ptr %call26, i32 0, i32 5
  %55 = ptrtoint ptr %inet_opt to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %inet_opt, align 4
  %rxopt = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 9
  %56 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %rxopt, align 4
  %rxopt51 = getelementptr inbounds %struct.ipv6_pinfo, ptr %spec.select330, i32 0, i32 9
  %58 = ptrtoint ptr %rxopt51 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %rxopt51, align 4
  %ipv6_mc_list52 = getelementptr inbounds %struct.ipv6_pinfo, ptr %spec.select330, i32 0, i32 15
  %pktoptions55 = getelementptr inbounds %struct.ipv6_pinfo, ptr %spec.select330, i32 0, i32 19
  %opt56 = getelementptr inbounds %struct.ipv6_pinfo, ptr %spec.select330, i32 0, i32 18
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %59 = call ptr @memset(ptr %ipv6_mc_list52, i32 0, i32 20)
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %flags.i, align 8
  %62 = and i16 %61, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool.i.not.i315 = icmp eq i16 %62, 0
  %skb_iif.i316 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cond.in.i = select i1 %tobool.i.not.i315, ptr %cb.i, ptr %skb_iif.i316
  %63 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %cond.i317 = load i32, ptr %cond.in.i, align 8
  %mcast_oif58 = getelementptr inbounds %struct.ipv6_pinfo, ptr %spec.select330, i32 0, i32 8
  %64 = ptrtoint ptr %mcast_oif58 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %cond.i317, ptr %mcast_oif58, align 4
  %head.i.i318 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %65 = ptrtoint ptr %head.i.i318 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i.i318, align 8
  %network_header.i.i319 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %67 = ptrtoint ptr %network_header.i.i319 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %network_header.i.i319, align 4
  %conv.i.i320 = zext i16 %68 to i32
  %add.ptr.i.i321 = getelementptr i8, ptr %66, i32 %conv.i.i320
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i321, i32 0, i32 4
  %69 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %hop_limit, align 1
  %mcast_hops61 = getelementptr inbounds %struct.ipv6_pinfo, ptr %spec.select330, i32 0, i32 6
  %71 = zext i8 %70 to i32
  %72 = ptrtoint ptr %mcast_hops61 to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load62 = load i32, ptr %mcast_hops61, align 4
  %bf.shl64 = shl nuw nsw i32 %71, 7
  %bf.clear65 = and i32 %bf.load62, -65409
  %bf.set66 = or i32 %bf.clear65, %bf.shl64
  store i32 %bf.set66, ptr %mcast_hops61, align 4
  %73 = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %tobool70.not = icmp eq ptr %75, null
  br i1 %tobool70.not, label %if.then71, label %if.end30.if.end102_crit_edge

if.end30.if.end102_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then71:                                        ; preds = %if.end30
  %opt72 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 18
  %76 = ptrtoint ptr %opt72 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %opt72, align 4
  %call74 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true, label %if.then71.if.end85_crit_edge

if.then71.if.end85_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

land.lhs.true:                                    ; preds = %if.then71
  %call76 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %land.lhs.true.if.end85_crit_edge, label %land.lhs.true78

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

land.lhs.true78:                                  ; preds = %land.lhs.true
  %.b295 = load i1, ptr @dccp_v6_request_recv_sock.__warned, align 1
  br i1 %.b295, label %land.lhs.true78.if.end85_crit_edge, label %if.then80

land.lhs.true78.if.end85_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then80:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dccp_v6_request_recv_sock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 531, ptr noundef nonnull @.str.15) #10
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %land.lhs.true78.if.end85_crit_edge, %land.lhs.true.if.end85_crit_edge, %if.then71.if.end85_crit_edge
  %tobool86.not = icmp eq ptr %77, null
  br i1 %tobool86.not, label %if.end102.thread, label %if.end85.if.end102_crit_edge

if.end85.if.end102_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.end102.thread:                                 ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %icsk_ext_hdr_len328 = getelementptr inbounds %struct.inet_connection_sock, ptr %call26, i32 0, i32 23
  %78 = ptrtoint ptr %icsk_ext_hdr_len328 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %icsk_ext_hdr_len328, align 2
  br label %if.end111

if.end102:                                        ; preds = %if.end85.if.end102_crit_edge, %if.end30.if.end102_crit_edge
  %opt.0326 = phi ptr [ %77, %if.end85.if.end102_crit_edge ], [ %75, %if.end30.if.end102_crit_edge ]
  %call88 = call ptr @ipv6_dup_options(ptr noundef nonnull %call26, ptr noundef nonnull %opt.0326) #10
  %79 = ptrtoint ptr %opt56 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %call88, ptr %opt56, align 4
  %icsk_ext_hdr_len = getelementptr inbounds %struct.inet_connection_sock, ptr %call26, i32 0, i32 23
  %80 = ptrtoint ptr %icsk_ext_hdr_len to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %icsk_ext_hdr_len, align 2
  %tobool104.not = icmp eq ptr %call88, null
  br i1 %tobool104.not, label %if.end102.if.end111_crit_edge, label %if.then105

if.end102.if.end111_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %call88, i32 0, i32 3
  %81 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %opt_nflen, align 2
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %call88, i32 0, i32 2
  %83 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %opt_flen, align 4
  %add = add i16 %84, %82
  %85 = ptrtoint ptr %icsk_ext_hdr_len to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %add, ptr %icsk_ext_hdr_len, align 2
  br label %if.end111

if.end111:                                        ; preds = %if.then105, %if.end102.if.end111_crit_edge, %if.end102.thread
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %dst.addr.0, i32 0, i32 1
  %86 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mtu.i, align 4
  %call.i = call i32 %89(ptr noundef nonnull %dst.addr.0) #10
  %call113 = call i32 @dccp_sync_mss(ptr noundef nonnull %call26, i32 noundef %call.i) #10
  %inet_saddr = getelementptr inbounds %struct.inet_sock, ptr %call26, i32 0, i32 2
  %90 = ptrtoint ptr %inet_saddr to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 2130706438, ptr %inet_saddr, align 4
  %91 = ptrtoint ptr %call26 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2130706438, ptr %call26, align 8
  %skc_rcv_saddr = getelementptr inbounds %struct.anon.148, ptr %call26, i32 0, i32 1
  %92 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2130706438, ptr %skc_rcv_saddr, align 4
  %call118 = call i32 @__inet_inherit_port(ptr noundef %sk, ptr noundef nonnull %call26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  call void @inet_csk_prepare_forced_close(ptr noundef nonnull %call26) #10
  call void @dccp_done(ptr noundef nonnull %call26) #10
  br label %out

if.end122:                                        ; preds = %if.end111
  %call124 = call zeroext i1 @inet_ehash_nolisten(ptr noundef nonnull %call26, ptr noundef %req_unhash, ptr noundef null) #10
  %frombool = zext i1 %call124 to i8
  %93 = ptrtoint ptr %own_req to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %frombool, ptr %own_req, align 1
  br i1 %call124, label %land.lhs.true127, label %if.end122.cleanup188_crit_edge

if.end122.cleanup188_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

land.lhs.true127:                                 ; preds = %if.end122
  %pktopts = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3, i32 0, i32 1
  %94 = ptrtoint ptr %pktopts to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pktopts, align 4
  %tobool128.not = icmp eq ptr %95, null
  br i1 %tobool128.not, label %land.lhs.true127.cleanup188_crit_edge, label %if.then129

land.lhs.true127.cleanup188_crit_edge:            ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

if.then129:                                       ; preds = %land.lhs.true127
  %call131 = call ptr @skb_clone(ptr noundef nonnull %95, i32 noundef 2592) #10
  %96 = ptrtoint ptr %pktoptions55 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call131, ptr %pktoptions55, align 4
  %97 = ptrtoint ptr %pktopts to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pktopts, align 4
  call void @consume_skb(ptr noundef %98) #10
  %99 = ptrtoint ptr %pktopts to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %pktopts, align 4
  %100 = ptrtoint ptr %pktoptions55 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pktoptions55, align 4
  %tobool136.not = icmp eq ptr %101, null
  br i1 %tobool136.not, label %if.then129.cleanup188_crit_edge, label %if.then137

if.then129.cleanup188_crit_edge:                  ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

if.then137:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @skb_set_owner_r(ptr noundef nonnull %101, ptr noundef nonnull %call26)
  br label %cleanup188

out_overflow:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %102 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %skc_net.i, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %103, i32 0, i32 30, i32 3
  %104 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %105, i32 0, i32 19
  %106 = ptrtoint ptr %arrayidx to i32
  %107 = tail call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i = and i32 %107, -16384
  %108 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cpu, align 4
  %arrayidx154 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %110
  %111 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx154, align 4
  %add155 = add i32 %112, %106
  %113 = inttoptr i32 %add155 to ptr
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  %add156 = add i32 %115, 1
  store i32 %add156, ptr %113, align 4
  br label %out_nonewsk

out_nonewsk:                                      ; preds = %out_overflow, %if.end25.out_nonewsk_crit_edge
  %dst.addr.1 = phi ptr [ %dst, %out_overflow ], [ %dst.addr.0, %if.end25.out_nonewsk_crit_edge ]
  call void @dst_release(ptr noundef %dst.addr.1) #10
  br label %out

out:                                              ; preds = %out_nonewsk, %if.then121, %if.then20.out_crit_edge
  %skc_net.i322 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %116 = ptrtoint ptr %skc_net.i322 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %skc_net.i322, align 4
  %net_statistics175 = getelementptr inbounds %struct.net, ptr %117, i32 0, i32 30, i32 3
  %118 = ptrtoint ptr %net_statistics175 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %net_statistics175, align 4
  %arrayidx177 = getelementptr [126 x i32], ptr %119, i32 0, i32 20
  %120 = ptrtoint ptr %arrayidx177 to i32
  %121 = call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i323 = and i32 %121, -16384
  %122 = inttoptr i32 %and.i323 to ptr
  %cpu180 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %cpu180 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cpu180, align 4
  %arrayidx181 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %124
  %125 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx181, align 4
  %add182 = add i32 %126, %120
  %127 = inttoptr i32 %add182 to ptr
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %add183 = add i32 %129, 1
  store i32 %add183, ptr %127, align 4
  br label %cleanup188

cleanup188:                                       ; preds = %out, %if.then137, %if.then129.cleanup188_crit_edge, %land.lhs.true127.cleanup188_crit_edge, %if.end122.cleanup188_crit_edge, %inet_iif.exit, %if.then.cleanup188_crit_edge
  %retval.0 = phi ptr [ %call3, %inet_iif.exit ], [ null, %out ], [ null, %if.then.cleanup188_crit_edge ], [ %call26, %if.then129.cleanup188_crit_edge ], [ %call26, %if.then137 ], [ %call26, %land.lhs.true127.cleanup188_crit_edge ], [ %call26, %if.end122.cleanup188_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_csk_addr2sockaddr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_v4_conn_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_reqsk_alloc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_reqsk_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_parse_options(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inet_conn_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_opt_accepted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_v6_send_response(ptr noundef %sk, ptr noundef %req) #2 align 64 {
entry:
  %final = alloca %struct.in6_addr, align 4
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %final) #10
  %4 = call ptr @memset(ptr %final, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #10
  %5 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %6 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 33, ptr %flowic_proto, align 2
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 10
  %7 = call ptr @memcpy(ptr %daddr, ptr %skc_v6_daddr, i32 16)
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 11
  %8 = call ptr @memcpy(ptr %saddr, ptr %skc_v6_rcv_saddr, i32 16)
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 6
  %9 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %skc_bound_dev_if, align 4
  %11 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fl6, align 8
  %12 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 4
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %15 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %uli, align 4
  %skc_num = getelementptr inbounds %struct.anon.151, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %skc_num, align 2
  %sport = getelementptr inbounds %struct.anon.24, ptr %uli, i32 0, i32 1
  %18 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %sport, align 2
  call void @security_req_classify_flow(ptr noundef %req, ptr noundef nonnull %fl6) #10
  %19 = call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !126
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %inet6_sk.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

inet6_sk.exit.rcu_read_lock.exit_crit_edge:       ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %inet6_sk.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %inet6_sk.exit.rcu_read_lock.exit_crit_edge
  %opt = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 18
  %23 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %opt, align 4
  %call15 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end21_crit_edge

rcu_read_lock.exit.do.end21_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call16 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end21_crit_edge, label %land.lhs.true18

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

land.lhs.true18:                                  ; preds = %land.lhs.true
  %.b99 = load i1, ptr @dccp_v6_send_response.__warned, align 1
  br i1 %.b99, label %land.lhs.true18.do.end21_crit_edge, label %if.then

land.lhs.true18.do.end21_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

if.then:                                          ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dccp_v6_send_response.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 217, ptr noundef nonnull @.str.15) #10
  br label %do.end21

do.end21:                                         ; preds = %if.then, %land.lhs.true18.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge, %rcu_read_lock.exit.do.end21_crit_edge
  %call23 = call ptr @fl6_update_dst(ptr noundef nonnull %fl6, ptr noundef %24, ptr noundef nonnull %final) #10
  %call.i111 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i111, label %do.end21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i114

do.end21.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i114:                               ; preds = %do.end21
  %call1.i112 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i112)
  %tobool.not.i113 = icmp eq i32 %call1.i112, 0
  br i1 %tobool.not.i113, label %land.lhs.true.i114.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i116

land.lhs.true.i114.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i116:                              ; preds = %land.lhs.true.i114
  %.b4.i115 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i115, label %land.lhs.true2.i116.rcu_read_unlock.exit_crit_edge, label %if.then.i117

land.lhs.true2.i116.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i117:                                     ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i117, %land.lhs.true2.i116.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i114.rcu_read_unlock.exit_crit_edge, %do.end21.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !127
  %25 = call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i.i118 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i118 to ptr
  %preempt_count.i.i.i.i119 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i119, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i119, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %29 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skc_net.i, align 4
  %call25 = call ptr @ip6_dst_lookup_flow(ptr noundef %30, ptr noundef %sk, ptr noundef nonnull %fl6, ptr noundef %call23) #10
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end29

if.then27:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %call25 to i32
  br label %done

if.end29:                                         ; preds = %rcu_read_unlock.exit
  %call30 = call ptr @dccp_make_response(ptr noundef %sk, ptr noundef %call25, ptr noundef %req) #10
  %cmp.not = icmp eq ptr %call30, null
  br i1 %cmp.not, label %if.end29.done_crit_edge, label %if.then31

if.end29.done_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then31:                                        ; preds = %if.end29
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 15, i32 0, i32 19
  %34 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i120 = zext i16 %35 to i32
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %conv.i.i120
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 6
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %38 = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 15, i32 0, i32 5
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %call.i.i = call i32 @__csum_ipv6_magic(ptr noundef %skc_v6_rcv_saddr, ptr noundef %skc_v6_daddr, i32 noundef %37, i32 noundef 33, i32 noundef %40) #10
  %41 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #13, !srcloc !113
  %neg.i.i.i = xor i32 %41, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %dccph_checksum = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %dccph_checksum to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i.i.i, ptr %dccph_checksum, align 2
  %43 = call ptr @memcpy(ptr %daddr, ptr %skc_v6_daddr, i32 16)
  %44 = call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i.i100 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i100 to ptr
  %preempt_count.i.i.i.i101 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i101, align 4
  %add.i.i.i102 = add i32 %47, 1
  store volatile i32 %add.i.i.i102, ptr %preempt_count.i.i.i.i101, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !126
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i103 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i103, label %if.then31.rcu_read_lock.exit110_crit_edge, label %land.lhs.true.i106

if.then31.rcu_read_lock.exit110_crit_edge:        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit110

land.lhs.true.i106:                               ; preds = %if.then31
  %call1.i104 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i104)
  %tobool.not.i105 = icmp eq i32 %call1.i104, 0
  br i1 %tobool.not.i105, label %land.lhs.true.i106.rcu_read_lock.exit110_crit_edge, label %land.lhs.true2.i108

land.lhs.true.i106.rcu_read_lock.exit110_crit_edge: ; preds = %land.lhs.true.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit110

land.lhs.true2.i108:                              ; preds = %land.lhs.true.i106
  %.b4.i107 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i107, label %land.lhs.true2.i108.rcu_read_lock.exit110_crit_edge, label %if.then.i109

land.lhs.true2.i108.rcu_read_lock.exit110_crit_edge: ; preds = %land.lhs.true2.i108
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit110

if.then.i109:                                     ; preds = %land.lhs.true2.i108
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #10
  br label %rcu_read_lock.exit110

rcu_read_lock.exit110:                            ; preds = %if.then.i109, %land.lhs.true2.i108.rcu_read_lock.exit110_crit_edge, %land.lhs.true.i106.rcu_read_lock.exit110_crit_edge, %if.then31.rcu_read_lock.exit110_crit_edge
  %48 = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %tobool45.not = icmp eq ptr %50, null
  br i1 %tobool45.not, label %if.then46, label %rcu_read_lock.exit110.if.end65_crit_edge

rcu_read_lock.exit110.if.end65_crit_edge:         ; preds = %rcu_read_lock.exit110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then46:                                        ; preds = %rcu_read_lock.exit110
  %51 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %opt, align 4
  %call53 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true55, label %if.then46.if.end65_crit_edge

if.then46.if.end65_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true55:                                  ; preds = %if.then46
  %call56 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.lhs.true55.if.end65_crit_edge, label %land.lhs.true58

land.lhs.true55.if.end65_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %.b9798 = load i1, ptr @dccp_v6_send_response.__warned.26, align 1
  br i1 %.b9798, label %land.lhs.true58.if.end65_crit_edge, label %if.then60

land.lhs.true58.if.end65_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then60:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dccp_v6_send_response.__warned.26, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 239, ptr noundef nonnull @.str.15) #10
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %land.lhs.true58.if.end65_crit_edge, %land.lhs.true55.if.end65_crit_edge, %if.then46.if.end65_crit_edge, %rcu_read_lock.exit110.if.end65_crit_edge
  %opt33.0 = phi ptr [ %50, %rcu_read_lock.exit110.if.end65_crit_edge ], [ %52, %if.then60 ], [ %52, %land.lhs.true58.if.end65_crit_edge ], [ %52, %land.lhs.true55.if.end65_crit_edge ], [ %52, %if.then46.if.end65_crit_edge ]
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %53 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sk_mark, align 8
  %tclass = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 12
  %55 = ptrtoint ptr %tclass to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %tclass, align 1
  %conv = zext i8 %56 to i32
  %sk_priority = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 33
  %57 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sk_priority, align 4
  %call66 = call i32 @ip6_xmit(ptr noundef %sk, ptr noundef nonnull %call30, ptr noundef nonnull %fl6, i32 noundef %54, ptr noundef %opt33.0, i32 noundef %conv, i32 noundef %58) #10
  %call.i121 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i121, label %if.end65.rcu_read_unlock.exit131_crit_edge, label %land.lhs.true.i124

if.end65.rcu_read_unlock.exit131_crit_edge:       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit131

land.lhs.true.i124:                               ; preds = %if.end65
  %call1.i122 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i122)
  %tobool.not.i123 = icmp eq i32 %call1.i122, 0
  br i1 %tobool.not.i123, label %land.lhs.true.i124.rcu_read_unlock.exit131_crit_edge, label %land.lhs.true2.i126

land.lhs.true.i124.rcu_read_unlock.exit131_crit_edge: ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit131

land.lhs.true2.i126:                              ; preds = %land.lhs.true.i124
  %.b4.i125 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i125, label %land.lhs.true2.i126.rcu_read_unlock.exit131_crit_edge, label %if.then.i127

land.lhs.true2.i126.rcu_read_unlock.exit131_crit_edge: ; preds = %land.lhs.true2.i126
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit131

if.then.i127:                                     ; preds = %land.lhs.true2.i126
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %rcu_read_unlock.exit131

rcu_read_unlock.exit131:                          ; preds = %if.then.i127, %land.lhs.true2.i126.rcu_read_unlock.exit131_crit_edge, %land.lhs.true.i124.rcu_read_unlock.exit131_crit_edge, %if.end65.rcu_read_unlock.exit131_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !127
  %59 = call i32 @llvm.read_register.i32(metadata !103) #10
  %and.i.i.i.i.i128 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i128 to ptr
  %preempt_count.i.i.i.i129 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i129, align 4
  %sub.i.i.i130 = add i32 %62, -1
  store volatile i32 %sub.i.i.i130, ptr %preempt_count.i.i.i.i129, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call66)
  %cmp67 = icmp eq i32 %call66, 2
  %spec.select = select i1 %cmp67, i32 0, i32 %call66
  br label %done

done:                                             ; preds = %rcu_read_unlock.exit131, %if.end29.done_crit_edge, %if.then27
  %dst.0 = phi ptr [ null, %if.then27 ], [ %call25, %rcu_read_unlock.exit131 ], [ %call25, %if.end29.done_crit_edge ]
  %err.0 = phi i32 [ %31, %if.then27 ], [ %spec.select, %rcu_read_unlock.exit131 ], [ -1, %if.end29.done_crit_edge ]
  call void @dst_release(ptr noundef %dst.0) #10
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %final) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_reqsk_queue_hash_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_req_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dccp_make_response(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dccp_v4_request_recv_sock(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet6_csk_route_req(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dccp_create_openreq_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_dup_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__inet_inherit_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_prepare_forced_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_ehash_nolisten(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_set_owner_r(ptr noundef %skb, ptr noundef %sk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %1(ptr noundef %skb) #10
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool3.not.i = icmp eq ptr %4, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !116

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #10, !srcloc !143
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sk, ptr %5, align 4
  %7 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sock_rfree, ptr %destructor.i, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %8 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %truesize, align 8
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %sk_backlog, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog, ptr %sk_backlog, i32 %9, ptr elementtype(i32) %sk_backlog) #10, !srcloc !122
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %11 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %12, i32 0, i32 32
  %13 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %14, null
  br i1 %tobool.i.not.i, label %skb_orphan.exit.sk_mem_charge.exit_crit_edge, label %if.end.i

skb_orphan.exit.sk_mem_charge.exit_crit_edge:     ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_mem_charge.exit

if.end.i:                                         ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %truesize, align 8
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %17 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_forward_alloc.i, align 8
  %sub.i = sub i32 %18, %16
  store i32 %sub.i, ptr %sk_forward_alloc.i, align 8
  br label %sk_mem_charge.exit

sk_mem_charge.exit:                               ; preds = %if.end.i, %skb_orphan.exit.sk_mem_charge.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_csk_xmit(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dccp_v6_send_check(ptr noundef %sk, ptr noundef %skb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i6 = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i6
  %dccph_cscov.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %dccph_cscov.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i.i = load i8, ptr %dccph_cscov.i.i, align 1
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i.i)
  %cmp.i.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  br label %dccp_csum_coverage.exit.i

if.end.i.i:                                       ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i7 = zext i8 %bf.clear.i.i to i32
  %dccph_doff.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %dccph_doff.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dccph_doff.i.i, align 2
  %conv2.i.i = zext i8 %12 to i32
  %add.i.i = add nuw nsw i32 %conv2.i.i, %conv.i.i7
  %sub.i.i = shl nuw nsw i32 %add.i.i, 2
  %mul.i.i = add nsw i32 %sub.i.i, -4
  br label %dccp_csum_coverage.exit.i

dccp_csum_coverage.exit.i:                        ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %10, %if.then.i.i ], [ %mul.i.i, %if.end.i.i ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %14)
  %cmp.not.i = icmp ult i32 %retval.0.i.i, %14
  br i1 %cmp.not.i, label %dccp_csum_coverage.exit.i.dccp_csum_outgoing.exit_crit_edge, label %if.then.i

dccp_csum_coverage.exit.i.dccp_csum_outgoing.exit_crit_edge: ; preds = %dccp_csum_coverage.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dccp_csum_outgoing.exit

if.then.i:                                        ; preds = %dccp_csum_coverage.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear.i = and i8 %bf.load.i.i, -16
  %15 = ptrtoint ptr %dccph_cscov.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %bf.clear.i, ptr %dccph_cscov.i.i, align 1
  br label %dccp_csum_outgoing.exit

dccp_csum_outgoing.exit:                          ; preds = %if.then.i, %dccp_csum_coverage.exit.i.dccp_csum_outgoing.exit_crit_edge
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %retval.0.i.i, i32 %17) #10
  %call5.i = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef 0, i32 noundef %18, i32 noundef 0) #10
  %19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call5.i, ptr %19, align 8
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %cond.i, ptr noundef %skc_v6_daddr, i32 noundef %22, i32 noundef 33, i32 noundef %call5.i) #10
  %23 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #13, !srcloc !113
  %neg.i.i.i = xor i32 %23, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %dccph_checksum = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %dccph_checksum to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i.i.i, ptr %dccph_checksum, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_sk_rebuild_header(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_init_sock(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_destroy_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_destroy_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_rcv_established(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_rcv_state_process(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_reqsk_send_ack(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dccp_v6_reqsk_destructor(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dreq_featneg = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 7
  tail call void @dccp_feat_list_purge(ptr noundef %dreq_featneg) #10
  %0 = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  tail call void @kfree(ptr noundef %2) #10
  %pktopts = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3, i32 0, i32 1
  %3 = ptrtoint ptr %pktopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pktopts, align 4
  tail call void @kfree_skb_reason(ptr noundef %4, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_syn_ack_timeout(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_feat_list_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_register_protosw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !57, !58, !60, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !79, !81, !82, !84, !86, !88, !90, !92, !93, !95, !97, !99, !101}
!llvm.named.register.sp = !{!103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_dccp_ipv6__679_1166_dccp_v6_init6, !1, !"__initcall__kmod_dccp_ipv6__679_1166_dccp_v6_init6", i1 false, i1 false}
!1 = !{!"../net/dccp/ipv6.c", i32 1166, i32 1}
!2 = !{ptr @__exitcall_dccp_v6_exit, !3, !"__exitcall_dccp_v6_exit", i1 false, i1 false}
!3 = !{!"../net/dccp/ipv6.c", i32 1167, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias680, !5, !"__UNIQUE_ID_alias680", i1 false, i1 false}
!5 = !{!"../net/dccp/ipv6.c", i32 1174, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias681, !7, !"__UNIQUE_ID_alias681", i1 false, i1 false}
!7 = !{!"../net/dccp/ipv6.c", i32 1175, i32 1}
!8 = !{ptr @__UNIQUE_ID_file682, !9, !"__UNIQUE_ID_file682", i1 false, i1 false}
!9 = !{!"../net/dccp/ipv6.c", i32 1176, i32 1}
!10 = !{ptr @__UNIQUE_ID_license683, !9, !"__UNIQUE_ID_license683", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author684, !12, !"__UNIQUE_ID_author684", i1 false, i1 false}
!12 = !{!"../net/dccp/ipv6.c", i32 1177, i32 1}
!13 = !{ptr @__UNIQUE_ID_description685, !14, !"__UNIQUE_ID_description685", i1 false, i1 false}
!14 = !{!"../net/dccp/ipv6.c", i32 1178, i32 1}
!15 = !{ptr @dccp_v6_protocol, !16, !"dccp_v6_protocol", i1 false, i1 false}
!16 = !{!"../net/dccp/ipv6.c", i32 1061, i32 36}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/dccp/ipv6.c", i32 712, i32 3}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @dccp_v6_rcv._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @dccp_v6_rcv._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/dccp/ipv6.c", i32 731, i32 3}
!25 = !{ptr @dccp_v6_rcv._entry.3, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @dccp_v6_rcv._entry_ptr.5, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/dccp/ipv6.c", i32 743, i32 3}
!29 = !{ptr @dccp_v6_rcv._entry.6, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @dccp_v6_rcv._entry_ptr.8, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/dccp/ipv6.c", i32 781, i32 3}
!33 = !{ptr @dccp_v6_rcv._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @dccp_v6_rcv._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/net/request_sock.h", i32 126, i32 2}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dccp_v6_pernet_id, !52, !"dccp_v6_pernet_id", i1 false, i1 false}
!52 = !{!"../net/dccp/ipv6.c", i32 41, i32 21}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/dccp/ipv6.c", i32 100, i32 3}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/net/sock.h", i32 1750, i32 2}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @dccp_v6_ops, !62, !"dccp_v6_ops", i1 false, i1 false}
!62 = !{!"../net/dccp/ipv6.c", i32 1123, i32 33}
!63 = !{ptr @dccp_v6_protosw, !64, !"dccp_v6_protosw", i1 false, i1 false}
!64 = !{!"../net/dccp/ipv6.c", i32 1092, i32 28}
!65 = !{ptr @inet6_dccp_ops, !66, !"inet6_dccp_ops", i1 false, i1 false}
!66 = !{!"../net/dccp/ipv6.c", i32 1067, i32 31}
!67 = !{ptr @dccp_v6_prot, !68, !"dccp_v6_prot", i1 false, i1 false}
!68 = !{!"../net/dccp/ipv6.c", i32 1033, i32 21}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/dccp/ipv6.c", i32 893, i32 3}
!71 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @dccp_v6_connect._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @dccp_v6_connect._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../net/dccp/ipv6.c", i32 927, i32 8}
!76 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @dccp_ipv6_mapped, !78, !"dccp_ipv6_mapped", i1 false, i1 false}
!78 = !{!"../net/dccp/ipv6.c", i32 993, i32 49}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!81 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../net/dccp/ipv6.c", i32 217, i32 33}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../net/dccp/ipv6.c", i32 239, i32 10}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../net/dccp/ipv6.c", i32 531, i32 9}
!88 = !{ptr @dccp_ipv6_af_ops, !89, !"dccp_ipv6_af_ops", i1 false, i1 false}
!89 = !{!"../net/dccp/ipv6.c", i32 977, i32 49}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/net/ip6_fib.h", i32 306, i32 9}
!92 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../include/net/ip6_fib.h", i32 284, i32 7}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/net/sock.h", i32 2112, i32 12}
!97 = distinct !{null, !98, !"dccp_v6_ctl_sock_initialized", i1 false, i1 false}
!98 = !{!"../net/dccp/ipv6.c", i32 1011, i32 14}
!99 = !{ptr @dccp6_request_sock_ops, !100, !"dccp6_request_sock_ops", i1 false, i1 false}
!100 = !{!"../net/dccp/ipv6.c", i32 307, i32 32}
!101 = !{ptr @dccp6_timewait_sock_ops, !102, !"dccp6_timewait_sock_ops", i1 false, i1 false}
!102 = !{!"../net/dccp/ipv6.c", i32 1029, i32 33}
!103 = !{!"sp"}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i64 6693707}
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !{i8 0, i8 2}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{i64 2148370714, i64 2148370746, i64 2148370775, i64 2148370809, i64 2148370840, i64 2148370863}
!118 = !{i64 2148458739}
!119 = !{i64 2148373179, i64 2148373211, i64 2148373240, i64 2148373274, i64 2148373305, i64 2148373328}
!120 = !{i64 2149334853}
!121 = !{!"auto-init"}
!122 = !{i64 2148369184, i64 2148369210, i64 2148369239, i64 2148369273, i64 2148369304, i64 2148369327}
!123 = !{i64 772884, i64 772945}
!124 = !{i64 775616}
!125 = !{i64 775901}
!126 = !{i64 2149385343}
!127 = !{i64 2149385609}
!128 = !{i64 2148982561, i64 2148982566, i64 2148982579, i64 2148982623, i64 2148982657, i64 2148982678}
!129 = !{i64 2148371649, i64 2148371675, i64 2148371704, i64 2148371738, i64 2148371769, i64 2148371792}
!130 = !{i64 2159257657}
!131 = !{i64 875952, i64 875969, i64 875993, i64 876019, i64 876037}
!132 = !{i64 2159258006}
!133 = !{i64 2159258893}
!134 = !{i64 2159259246}
!135 = !{i64 2157542927}
!136 = !{i64 2156801604}
!137 = !{i64 2149893342}
!138 = !{i64 2149898274}
!139 = !{i64 2149919986}
!140 = !{i64 2149924878}
!141 = !{i64 2150001335}
!142 = !{i64 2150001660}
!143 = !{i64 2154687957, i64 2154688445, i64 2154687994, i64 2154688050, i64 2154688084, i64 2154688108, i64 2154688149, i64 2154688170, i64 2154688198, i64 2154688232}
