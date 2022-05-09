; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_log_syslog.c_pt.bc'
source_filename = "../net/netfilter/nf_log_syslog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nf_logger = type { ptr, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.183, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.183 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.anon.186 = type { i8, i8 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.2 }
%union.anon.2 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%struct.nf_loginfo = type { i8, %union.anon.184 }
%union.anon.184 = type { %struct.anon.185 }
%struct.anon.185 = type { i32, i16, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.150 = type { ptr }
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
%struct.sk_buff = type { %union.anon.82, %union.anon.151, %union.anon.152, [48 x i8], %union.anon.153, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.155, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%union.anon.151 = type { ptr }
%union.anon.152 = type { i64 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i32, ptr }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.157, i32, i32, i32, i16, i16, %union.anon.159, i32, %union.anon.160, %union.anon.161, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.157 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i32 }
%union.anon.161 = type { i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.nf_bridge_info = type { i16, i16, ptr, ptr, %union.anon.192 }
%union.anon.192 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.141 }
%union.anon.141 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.193 }
%union.anon.193 = type { i32 }
%struct.ip_auth_hdr = type { i8, i8, i16, i32, i32, [0 x i8] }
%struct.ip_esp_hdr = type { i32, i32, [0 x i8] }
%struct.anon.194 = type { i16, i16 }
%struct.anon.195 = type { i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.170, [0 x i32], %union.anon.171, i16, i16, %union.anon.172, %struct.refcount_struct, [0 x i32], %union.anon.173 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.170 = type { i32 }
%union.anon.171 = type { %struct.hlist_node }
%union.anon.172 = type { i32 }
%union.anon.173 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.174, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.175, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.176, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.174 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.175 = type { ptr }
%union.anon.176 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.file = type { %union.anon.23, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.23 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.arppayload = type { [6 x i8], [4 x i8], [6 x i8], [4 x i8] }
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.frag_hdr = type { i8, i8, i16, i32 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.196 }
%union.anon.196 = type { [1 x i32] }
%struct.icmpv6_echo = type { i16, i16 }

@nf_log_syslog_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @nf_log_syslog_net_init, ptr null, ptr @nf_log_syslog_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@nf_ip_logger = internal global %struct.nf_logger { ptr @.str, i32 0, ptr @nf_log_ip_packet, ptr null }, section ".data..read_mostly", align 4
@nf_arp_logger = internal global %struct.nf_logger { ptr @.str.56, i32 0, ptr @nf_log_arp_packet, ptr null }, section ".data..read_mostly", align 4
@nf_ip6_logger = internal global %struct.nf_logger { ptr @.str.60, i32 0, ptr @nf_log_ip6_packet, ptr null }, section ".data..read_mostly", align 4
@nf_netdev_logger = internal global %struct.nf_logger { ptr @.str.78, i32 0, ptr @nf_log_netdev_packet, ptr null }, section ".data..read_mostly", align 4
@nf_bridge_logger = internal global %struct.nf_logger { ptr @.str.79, i32 0, ptr @nf_log_netdev_packet, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_nf_log_syslog__618_1075_nf_log_syslog_init6 = internal global ptr @nf_log_syslog_init, section ".initcall6.init", align 4
@__exitcall_nf_log_syslog_exit = internal global ptr @nf_log_syslog_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author619 = internal constant [66 x i8] c"nf_log_syslog.author=Netfilter Core Team <coreteam@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description620 = internal constant [58 x i8] c"nf_log_syslog.description=Netfilter syslog packet logging\00", section ".modinfo", align 1
@__UNIQUE_ID_file621 = internal constant [47 x i8] c"nf_log_syslog.file=net/netfilter/nf_log_syslog\00", section ".modinfo", align 1
@__UNIQUE_ID_license622 = internal constant [26 x i8] c"nf_log_syslog.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias623 = internal constant [31 x i8] c"nf_log_syslog.alias=nf_log_arp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias624 = internal constant [34 x i8] c"nf_log_syslog.alias=nf_log_bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_alias625 = internal constant [32 x i8] c"nf_log_syslog.alias=nf_log_ipv4\00", section ".modinfo", align 1
@__UNIQUE_ID_alias626 = internal constant [32 x i8] c"nf_log_syslog.alias=nf_log_ipv6\00", section ".modinfo", align 1
@__UNIQUE_ID_alias627 = internal constant [34 x i8] c"nf_log_syslog.alias=nf_log_netdev\00", section ".modinfo", align 1
@__UNIQUE_ID_alias628 = internal constant [34 x i8] c"nf_log_syslog.alias=nf-logger-7-0\00", section ".modinfo", align 1
@__UNIQUE_ID_alias629 = internal constant [34 x i8] c"nf_log_syslog.alias=nf-logger-2-0\00", section ".modinfo", align 1
@__UNIQUE_ID_alias630 = internal constant [34 x i8] c"nf_log_syslog.alias=nf-logger-3-0\00", section ".modinfo", align 1
@__UNIQUE_ID_alias631 = internal constant [34 x i8] c"nf_log_syslog.alias=nf-logger-5-0\00", section ".modinfo", align 1
@__UNIQUE_ID_alias632 = internal constant [35 x i8] c"nf_log_syslog.alias=nf-logger-10-0\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nf_log_ipv4\00", [20 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@sysctl_nf_log_all_netns = external dso_local local_unnamed_addr global i32, align 4
@default_loginfo = internal constant { { i8, [3 x i8], { %struct.anon.186, [10 x i8] } }, [16 x i8] } { { i8, [3 x i8], { %struct.anon.186, [10 x i8] } } { i8 0, [3 x i8] undef, { %struct.anon.186, [10 x i8] } { %struct.anon.186 { i8 5, i8 15 }, [10 x i8] undef } }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\01%c%sIN=%s OUT=%s \00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PHYSIN=%s \00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PHYSOUT=%s \00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MACSRC=%pM MACDST=%pM \00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MACPROTO=%04x \00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MAC=\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c":%02x\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VPROTO=%04x VID=%u \00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TRUNCATED\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SRC=%pI4 DST=%pI4 \00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"LEN=%u TOS=0x%02X PREC=0x%02X TTL=%u ID=%u \00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CE \00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DF \00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MF \00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FRAG:%u \00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OPT (\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02X\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c") \00", [29 x i8] zeroinitializer }, align 32
@dump_ipv4_packet.required_len = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 4, i32 0, i32 0, i32 28, i32 28, i32 28, i32 0, i32 0, i32 4, i32 0, i32 0, i32 28, i32 28, i32 20, i32 20, i32 0, i32 0, i32 12, i32 12], [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PROTO=ICMP \00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"INCOMPLETE [%u bytes] \00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TYPE=%u CODE=%u \00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ID=%u SEQ=%u \00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PARAMETER=%u \00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GATEWAY=%pI4 \00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"[\00", [30 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"] \00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MTU=%u \00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PROTO=AH \00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPI=0x%x \00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PROTO=ESP \00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PROTO=%u \00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MARK=0x%x \00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PROTO=TCP \00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SPT=%u DPT=%u \00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SEQ=%u ACK=%u \00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WINDOW=%u \00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RES=0x%02x \00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CWR \00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ECE \00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"URG \00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ACK \00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PSH \00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RST \00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SYN \00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FIN \00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"URGP=%u \00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OPT (TRUNCATED)\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PROTO=UDP \00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PROTO=UDPLITE \00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SPT=%u DPT=%u LEN=%u \00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"UID=%u GID=%u \00", [17 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nf_log_arp\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ARP HTYPE=%d PTYPE=0x%04x OPCODE=%d\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" INCOMPLETE [%zu bytes]\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c" MACSRC=%pM IPSRC=%pI4 MACDST=%pM IPDST=%pI4\00", [51 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nf_log_ipv6\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TUNNEL=%pI4->%pI4 \00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SRC=%pI6 DST=%pI6 \00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"LEN=%zu TC=%u HOPLIMIT=%u FLOWLBL=%u \00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OPT ( \00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FRAG:\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TRUNCATED \00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u \00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INCOMPLETE \00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ID:%08x \00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c")\00", [30 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AH \00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"INCOMPLETE [%u bytes] )\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ESP \00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPI=0x%x )\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown Ext Hdr %u\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PROTO=ICMPv6 \00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"POINTER=%08x \00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nf_log_netdev\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nf_log_bridge\00", [18 x i8] zeroinitializer }, align 32
@nf_log_syslog_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.82, i32 1060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013nf_log_syslog: failed to register logger\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nf_log_syslog_init\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/netfilter/nf_log_syslog.c\00", [34 x i8] zeroinitializer }, align 32
@nf_log_syslog_init._entry_ptr = internal global ptr @nf_log_syslog_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 6, i64 17, i64 50, i64 51, i64 136]
@__sancov_gen_cov_switch_values.83 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 3, i64 4, i64 5, i64 8, i64 11, i64 12]
@__sancov_gen_cov_switch_values.84 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 6, i64 17, i64 43, i64 44, i64 50, i64 51, i64 58, i64 60, i64 136]
@__sancov_gen_cov_switch_values.85 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 43, i64 44, i64 50, i64 51, i64 60]
@__sancov_gen_cov_switch_values.86 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 128, i64 129]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 16, i64 2048, i64 2054, i64 32821, i64 34525]
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"nf_log_syslog_net_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1017, i32 33 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 838, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"default_loginfo\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 26, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 113, i32 20 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 115, i32 20 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 120, i32 21 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 123, i32 21 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 784, i32 21 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 787, i32 21 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 795, i32 20 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 801, i32 21 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 803, i32 22 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 805, i32 20 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 51, i32 20 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 308, i32 21 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 316, i32 20 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 319, i32 20 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 325, i32 21 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 327, i32 21 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 329, i32 21 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 333, i32 21 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 350, i32 21 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 352, i32 22 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 353, i32 21 }
@___asan_gen_.160 = private unnamed_addr constant [13 x i8] c"required_len\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 371, i32 23 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 387, i32 21 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 396, i32 22 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 402, i32 21 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 417, i32 22 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 424, i32 22 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 429, i32 22 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 436, i32 23 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 439, i32 23 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 445, i32 23 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 460, i32 21 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 472, i32 21 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 480, i32 21 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 500, i32 21 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 509, i32 21 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 187, i32 20 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 200, i32 20 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 204, i32 21 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 209, i32 20 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 211, i32 20 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 215, i32 21 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 217, i32 21 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 219, i32 21 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 221, i32 21 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 223, i32 21 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 225, i32 21 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 227, i32 21 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 229, i32 21 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 231, i32 20 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 242, i32 22 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 268, i32 21 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 270, i32 21 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 284, i32 20 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 169, i32 21 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 153, i32 11 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 83, i32 20 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 95, i32 21 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 99, i32 20 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 932, i32 11 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 894, i32 22 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 552, i32 20 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 555, i32 20 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 576, i32 22 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 583, i32 22 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 587, i32 23 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 592, i32 22 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 596, i32 23 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 598, i32 22 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 612, i32 24 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 624, i32 23 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 635, i32 24 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 652, i32 23 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 669, i32 23 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 675, i32 22 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 701, i32 21 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 733, i32 22 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 961, i32 11 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 968, i32 11 }
@___asan_gen_.334 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.344 = private constant [33 x i8] c"../net/netfilter/nf_log_syslog.c\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1060, i32 2 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_alias623, ptr @__UNIQUE_ID_alias624, ptr @__UNIQUE_ID_alias625, ptr @__UNIQUE_ID_alias626, ptr @__UNIQUE_ID_alias627, ptr @__UNIQUE_ID_alias628, ptr @__UNIQUE_ID_alias629, ptr @__UNIQUE_ID_alias630, ptr @__UNIQUE_ID_alias631, ptr @__UNIQUE_ID_alias632, ptr @__UNIQUE_ID_author619, ptr @__UNIQUE_ID_description620, ptr @__UNIQUE_ID_file621, ptr @__UNIQUE_ID_license622, ptr @__exitcall_nf_log_syslog_exit, ptr @__initcall__kmod_nf_log_syslog__618_1075_nf_log_syslog_init6, ptr @nf_log_syslog_exit, ptr @nf_log_syslog_init._entry, ptr @nf_log_syslog_init._entry_ptr, ptr @nf_log_syslog_net_ops, ptr @.str, ptr @default_loginfo, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @dump_ipv4_packet.required_len, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_log_syslog_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_loginfo to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ipv4_packet.required_len to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_log_syslog_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_log_syslog_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @nf_log_syslog_net_ops) #7
  tail call void @nf_log_unregister(ptr noundef nonnull @nf_ip_logger) #7
  tail call void @nf_log_unregister(ptr noundef nonnull @nf_arp_logger) #7
  tail call void @nf_log_unregister(ptr noundef nonnull @nf_ip6_logger) #7
  tail call void @nf_log_unregister(ptr noundef nonnull @nf_netdev_logger) #7
  tail call void @nf_log_unregister(ptr noundef nonnull @nf_bridge_logger) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_log_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_log_syslog_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @nf_log_syslog_net_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nf_log_register(i8 noundef zeroext 2, ptr noundef nonnull @nf_ip_logger) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.do.end_crit_edge, label %if.end4

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @nf_log_register(i8 noundef zeroext 3, ptr noundef nonnull @nf_arp_logger) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.err2_crit_edge, label %if.end8

if.end4.err2_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err2

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @nf_log_register(i8 noundef zeroext 10, ptr noundef nonnull @nf_ip6_logger) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.err3_crit_edge, label %if.end12

if.end8.err3_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err3

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @nf_log_register(i8 noundef zeroext 5, ptr noundef nonnull @nf_netdev_logger) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.err4_crit_edge, label %if.end16

if.end12.err4_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %err4

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @nf_log_register(i8 noundef zeroext 7, ptr noundef nonnull @nf_bridge_logger) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %err5, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err5:                                             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nf_log_unregister(ptr noundef nonnull @nf_netdev_logger) #7
  br label %err4

err4:                                             ; preds = %err5, %if.end12.err4_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end12.err4_crit_edge ], [ %call17, %err5 ]
  tail call void @nf_log_unregister(ptr noundef nonnull @nf_ip6_logger) #7
  br label %err3

err3:                                             ; preds = %err4, %if.end8.err3_crit_edge
  %ret.1 = phi i32 [ %call9, %if.end8.err3_crit_edge ], [ %ret.0, %err4 ]
  tail call void @nf_log_unregister(ptr noundef nonnull @nf_arp_logger) #7
  br label %err2

err2:                                             ; preds = %err3, %if.end4.err2_crit_edge
  %ret.2 = phi i32 [ %call5, %if.end4.err2_crit_edge ], [ %ret.1, %err3 ]
  tail call void @nf_log_unregister(ptr noundef nonnull @nf_ip_logger) #7
  br label %do.end

do.end:                                           ; preds = %err2, %if.end.do.end_crit_edge
  %ret.3 = phi i32 [ %call1, %if.end.do.end_crit_edge ], [ %ret.2, %err2 ]
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #10
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @nf_log_syslog_net_ops) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_log_syslog_net_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nf_log_set(ptr noundef %net, i8 noundef zeroext 2, ptr noundef nonnull @nf_ip_logger) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nf_log_set(ptr noundef %net, i8 noundef zeroext 3, ptr noundef nonnull @nf_arp_logger) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err1_crit_edge

if.end.err1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err1

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @nf_log_set(ptr noundef %net, i8 noundef zeroext 10, ptr noundef nonnull @nf_ip6_logger) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err2_crit_edge

if.end4.err2_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err2

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @nf_log_set(ptr noundef %net, i8 noundef zeroext 5, ptr noundef nonnull @nf_netdev_logger) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.err3_crit_edge

if.end8.err3_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err3

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @nf_log_set(ptr noundef %net, i8 noundef zeroext 7, ptr noundef nonnull @nf_bridge_logger) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %err4

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err4:                                             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nf_log_unset(ptr noundef %net, ptr noundef nonnull @nf_netdev_logger) #7
  br label %err3

err3:                                             ; preds = %err4, %if.end8.err3_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end8.err3_crit_edge ], [ %call13, %err4 ]
  tail call void @nf_log_unset(ptr noundef %net, ptr noundef nonnull @nf_ip6_logger) #7
  br label %err2

err2:                                             ; preds = %err3, %if.end4.err2_crit_edge
  %ret.1 = phi i32 [ %call5, %if.end4.err2_crit_edge ], [ %ret.0, %err3 ]
  tail call void @nf_log_unset(ptr noundef %net, ptr noundef nonnull @nf_arp_logger) #7
  br label %err1

err1:                                             ; preds = %err2, %if.end.err1_crit_edge
  %ret.2 = phi i32 [ %call1, %if.end.err1_crit_edge ], [ %ret.1, %err2 ]
  tail call void @nf_log_unset(ptr noundef %net, ptr noundef nonnull @nf_ip_logger) #7
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err1 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nf_log_syslog_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nf_log_unset(ptr noundef %net, ptr noundef nonnull @nf_ip_logger) #7
  tail call void @nf_log_unset(ptr noundef %net, ptr noundef nonnull @nf_arp_logger) #7
  tail call void @nf_log_unset(ptr noundef %net, ptr noundef nonnull @nf_ip6_logger) #7
  tail call void @nf_log_unset(ptr noundef %net, ptr noundef nonnull @nf_netdev_logger) #7
  tail call void @nf_log_unset(ptr noundef %net, ptr noundef nonnull @nf_bridge_logger) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_log_set(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_log_unset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nf_log_ip_packet(ptr noundef %net, i8 noundef zeroext %pf, i32 noundef %hooknum, ptr noundef %skb, ptr noundef %in, ptr noundef %out, ptr noundef readonly %loginfo, ptr noundef %prefix) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_nf_log_all_netns to i32))
  %0 = load i32, ptr @sysctl_nf_log_all_netns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call ptr @nf_log_buf_open() #7
  %tobool3.not = icmp eq ptr %loginfo, null
  %spec.store.select = select i1 %tobool3.not, ptr @default_loginfo, ptr %loginfo
  tail call fastcc void @nf_log_dump_packet_common(ptr noundef %call2, ptr noundef %skb, ptr noundef %in, ptr noundef %out, ptr noundef %spec.store.select, ptr noundef %prefix)
  %tobool6.not = icmp eq ptr %in, null
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end
  %1 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %spec.store.select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i19 = icmp eq i8 %5, 0
  br i1 %cmp.i19, label %if.then.i, label %if.then7.fallback.i_crit_edge

if.then7.fallback.i_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %fallback.i

if.then.i:                                        ; preds = %if.then7
  %u.i = getelementptr inbounds %struct.nf_loginfo, ptr %spec.store.select, i32 0, i32 1
  %logflags2.i = getelementptr inbounds %struct.anon.186, ptr %u.i, i32 0, i32 1
  %6 = ptrtoint ptr %logflags2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %logflags2.i, align 1
  %8 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %phi.cmp.i = icmp eq i8 %8, 0
  br i1 %phi.cmp.i, label %if.then.i.fallback.i_crit_edge, label %if.end5.i

if.then.i.fallback.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fallback.i

if.end5.i:                                        ; preds = %if.then.i
  %type6.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 32
  %9 = ptrtoint ptr %type6.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type6.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cond.i = icmp eq i16 %10, 1
  br i1 %cond.i, label %sw.bb.i, label %if.end5.i.fallback.i_crit_edge

if.end5.i.fallback.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fallback.i

sw.bb.i:                                          ; preds = %if.end5.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %13 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %14 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %conv.i.i.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %call10.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.6, ptr noundef %h_source.i, ptr noundef %add.ptr.i.i.i) #7
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %15 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %sw.bb.i.nf_log_dump_vlan.exit.i_crit_edge, label %if.end.i.i

sw.bb.i.nf_log_dump_vlan.exit.i_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_log_dump_vlan.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %vlan_tci.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %16 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vlan_tci.i.i, align 2
  %vlan_proto.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %18 = ptrtoint ptr %vlan_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vlan_proto.i.i, align 8
  %conv.i.i = zext i16 %19 to i32
  %conv1.i.i = zext i16 %17 to i32
  %call.i.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.12, i32 noundef %conv.i.i, i32 noundef %conv1.i.i) #7
  br label %nf_log_dump_vlan.exit.i

nf_log_dump_vlan.exit.i:                          ; preds = %if.end.i.i, %sw.bb.i.nf_log_dump_vlan.exit.i_crit_edge
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %22 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i60.i = zext i16 %23 to i32
  %add.ptr.i.i61.i = getelementptr i8, ptr %21, i32 %conv.i.i60.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i61.i, i32 0, i32 2
  %24 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %h_proto.i, align 1
  %conv12.i = zext i16 %25 to i32
  %call13.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.7, i32 noundef %conv12.i) #7
  br label %if.end8

fallback.i:                                       ; preds = %if.end5.i.fallback.i_crit_edge, %if.then.i.fallback.i_crit_edge, %if.then7.fallback.i_crit_edge
  %call14.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.8) #7
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  %26 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hard_header_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool16.not.i = icmp eq i16 %27, 0
  br i1 %tobool16.not.i, label %fallback.i.if.end32.i_crit_edge, label %land.lhs.true.i

fallback.i.if.end32.i_crit_edge:                  ; preds = %fallback.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

land.lhs.true.i:                                  ; preds = %fallback.i
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %28 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp19.not.i = icmp eq i16 %29, %31
  br i1 %cmp19.not.i, label %land.lhs.true.i.if.end32.i_crit_edge, label %if.then21.i

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i, align 8
  %conv.i62.i = zext i16 %29 to i32
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %conv.i62.i
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr.i.i, align 1
  %conv23.i = zext i8 %35 to i32
  %call24.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.9, i32 noundef %conv23.i) #7
  %36 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hard_header_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %37)
  %cmp2764.i = icmp ugt i16 %37, 1
  br i1 %cmp2764.i, label %if.then21.i.for.body.i_crit_edge, label %if.then21.i.if.end32.i_crit_edge

if.then21.i.if.end32.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then21.i.for.body.i_crit_edge:                 ; preds = %if.then21.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then21.i.for.body.i_crit_edge
  %i.066.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.then21.i.for.body.i_crit_edge ]
  %call22.pn65.i = phi ptr [ %p.0.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i.i, %if.then21.i.for.body.i_crit_edge ]
  %p.0.i = getelementptr i8, ptr %call22.pn65.i, i32 1
  %38 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %p.0.i, align 1
  %conv29.i = zext i8 %39 to i32
  %call30.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.10, i32 noundef %conv29.i) #7
  %inc.i = add nuw nsw i32 %i.066.i, 1
  %40 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hard_header_len.i, align 2
  %conv26.i = zext i16 %41 to i32
  %cmp27.i = icmp ult i32 %inc.i, %conv26.i
  br i1 %cmp27.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end32.i_crit_edge

for.body.i.if.end32.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end32.i:                                       ; preds = %for.body.i.if.end32.i_crit_edge, %if.then21.i.if.end32.i_crit_edge, %land.lhs.true.i.if.end32.i_crit_edge, %fallback.i.if.end32.i_crit_edge
  %call33.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.11) #7
  br label %if.end8

if.end8:                                          ; preds = %if.end32.i, %nf_log_dump_vlan.exit.i, %if.end.if.end8_crit_edge
  tail call fastcc void @dump_ipv4_packet(ptr noundef %net, ptr noundef %call2, ptr noundef %spec.store.select, ptr noundef %skb, i32 noundef 0)
  tail call void @nf_log_buf_close(ptr noundef %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_log_buf_open() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_log_dump_packet_common(ptr noundef %m, ptr nocapture noundef readonly %skb, ptr noundef %in, ptr noundef %out, ptr nocapture noundef readonly %loginfo, ptr noundef %prefix) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.nf_loginfo, ptr %loginfo, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %u, align 4
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv, 48
  %tobool.not = icmp eq ptr %in, null
  %spec.select = select i1 %tobool.not, ptr @.str.3, ptr %in
  %tobool1.not = icmp eq ptr %out, null
  %cond7 = select i1 %tobool1.not, ptr @.str.3, ptr %out
  %call = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.2, i32 noundef %add, ptr noundef %prefix, ptr noundef nonnull %spec.select, ptr noundef nonnull %cond7) #7
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %2 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool.i.not.i.i.i, label %entry.if.end_crit_edge, label %nf_bridge_info_get.exit.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nf_bridge_info_get.exit.i:                        ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %5 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extensions.i.i.i, align 8
  %offset.i.i.i = getelementptr inbounds %struct.skb_ext, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %offset.i.i.i, align 1
  %conv.i.i.i = zext i8 %8 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %nf_bridge_info_get.exit.i.if.end_crit_edge, label %nf_bridge_get_physindev.exit

nf_bridge_info_get.exit.i.if.end_crit_edge:       ; preds = %nf_bridge_info_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nf_bridge_get_physindev.exit:                     ; preds = %nf_bridge_info_get.exit.i
  %physindev.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %physindev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %physindev.i, align 4
  %tobool9.not = icmp eq ptr %10, null
  %cmp.not = icmp eq ptr %10, %in
  %or.cond = or i1 %tobool9.not, %cmp.not
  br i1 %or.cond, label %nf_bridge_get_physindev.exit.if.end_crit_edge, label %if.then

nf_bridge_get_physindev.exit.if.end_crit_edge:    ; preds = %nf_bridge_get_physindev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %nf_bridge_get_physindev.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull %10) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %nf_bridge_get_physindev.exit.if.end_crit_edge, %nf_bridge_info_get.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i.not.i.i.i3 = icmp eq i8 %13, 0
  br i1 %tobool.i.not.i.i.i3, label %if.end.if.end23_crit_edge, label %nf_bridge_info_get.exit.i10

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

nf_bridge_info_get.exit.i10:                      ; preds = %if.end
  %extensions.i.i.i4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %14 = ptrtoint ptr %extensions.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extensions.i.i.i4, align 8
  %offset.i.i.i5 = getelementptr inbounds %struct.skb_ext, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %offset.i.i.i5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %offset.i.i.i5, align 1
  %conv.i.i.i6 = zext i8 %17 to i32
  %shl.i.i.i7 = shl nuw nsw i32 %conv.i.i.i6, 3
  %add.ptr.i.i.i8 = getelementptr i8, ptr %15, i32 %shl.i.i.i7
  %tobool.not.i9 = icmp eq ptr %add.ptr.i.i.i8, null
  br i1 %tobool.not.i9, label %nf_bridge_info_get.exit.i10.if.end23_crit_edge, label %nf_bridge_get_physoutdev.exit

nf_bridge_info_get.exit.i10.if.end23_crit_edge:   ; preds = %nf_bridge_info_get.exit.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

nf_bridge_get_physoutdev.exit:                    ; preds = %nf_bridge_info_get.exit.i10
  %physoutdev.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i8, i32 0, i32 3
  %18 = ptrtoint ptr %physoutdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %physoutdev.i, align 4
  %tobool15.not = icmp eq ptr %19, null
  %cmp17.not = icmp eq ptr %19, %out
  %or.cond1 = or i1 %tobool15.not, %cmp17.not
  br i1 %or.cond1, label %nf_bridge_get_physoutdev.exit.if.end23_crit_edge, label %if.then19

nf_bridge_get_physoutdev.exit.if.end23_crit_edge: ; preds = %nf_bridge_get_physoutdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then19:                                        ; preds = %nf_bridge_get_physoutdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.5, ptr noundef nonnull %19) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %nf_bridge_get_physoutdev.exit.if.end23_crit_edge, %nf_bridge_info_get.exit.i10.if.end23_crit_edge, %if.end.if.end23_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_ipv4_packet(ptr noundef %net, ptr noundef %m, ptr nocapture noundef readonly %info, ptr noundef %skb, i32 noundef %iphoff) unnamed_addr #4 align 64 {
entry:
  %_iph = alloca %struct.iphdr, align 4
  %_opt = alloca [40 x i8], align 1
  %_icmph = alloca %struct.icmphdr, align 8
  %_ahdr = alloca %struct.ip_auth_hdr, align 4
  %_esph = alloca %struct.ip_esp_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph) #7
  %0 = call ptr @memset(ptr %_iph, i32 255, i32 20)
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %u = getelementptr inbounds %struct.nf_loginfo, ptr %info, i32 0, i32 1
  %logflags2 = getelementptr inbounds %struct.anon.186, ptr %u, i32 0, i32 1
  %3 = ptrtoint ptr %logflags2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %logflags2, align 1
  %conv3 = zext i8 %4 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %logflags.0 = phi i32 [ %conv3, %if.then ], [ 15, %entry.if.end_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %9 = add i32 %8, %iphoff
  %sub.i4.i = sub i32 %6, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !220

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then4_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then4_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %iphoff, ptr noundef nonnull %_iph, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then4_crit_edge, label %lor.lhs.false.i.i.if.end6_crit_edge

lor.lhs.false.i.i.if.end6_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

lor.lhs.false.i.i.if.then4_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %iphoff
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.if.then4_crit_edge, label %skb_header_pointer.exit.if.end6_crit_edge

skb_header_pointer.exit.if.end6_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

skb_header_pointer.exit.if.then4_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %skb_header_pointer.exit.if.then4_crit_edge, %lor.lhs.false.i.i.if.then4_crit_edge, %if.end.i.i.if.then4_crit_edge
  %call5 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.13) #7
  br label %cleanup273

if.end6:                                          ; preds = %skb_header_pointer.exit.if.end6_crit_edge, %lor.lhs.false.i.i.if.end6_crit_edge
  %retval.0.i.i466 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end6_crit_edge ], [ %_iph, %lor.lhs.false.i.i.if.end6_crit_edge ]
  %saddr = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i466, i32 0, i32 8
  %daddr = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i466, i32 0, i32 9
  %call7 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.14, ptr noundef %saddr, ptr noundef %daddr) #7
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i466, i32 0, i32 2
  %12 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tot_len, align 2
  %conv8 = zext i16 %13 to i32
  %tos = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i466, i32 0, i32 1
  %14 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tos, align 1
  %conv9 = zext i8 %15 to i32
  %and = and i32 %conv9, 30
  %and12 = and i32 %conv9, 224
  %ttl = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i466, i32 0, i32 5
  %16 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ttl, align 4
  %conv13 = zext i8 %17 to i32
  %id = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i466, i32 0, i32 3
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %id, align 4
  %conv14 = zext i16 %19 to i32
  %call15 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %conv8, i32 noundef %and, i32 noundef %and12, i32 noundef %conv13, i32 noundef %conv14) #7
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i466, i32 0, i32 4
  %20 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %frag_off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %tobool18.not = icmp sgt i16 %21, -1
  br i1 %tobool18.not, label %if.end6.if.end21_crit_edge, label %if.then19

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.16) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end6.if.end21_crit_edge
  %22 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %frag_off, align 2
  %24 = and i16 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool25.not = icmp eq i16 %24, 0
  br i1 %tobool25.not, label %if.end21.if.end28_crit_edge, label %if.then26

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.17) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end21.if.end28_crit_edge
  %25 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %frag_off, align 2
  %27 = and i16 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool32.not = icmp eq i16 %27, 0
  br i1 %tobool32.not, label %if.end28.if.end35_crit_edge, label %if.then33

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.18) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end28.if.end35_crit_edge
  %28 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %frag_off, align 2
  %30 = and i16 %29, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool39.not = icmp eq i16 %30, 0
  br i1 %tobool39.not, label %if.end35.if.end45_crit_edge, label %if.then40

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %and38 = zext i16 %30 to i32
  %call44 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.19, i32 noundef %and38) #7
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.end35.if.end45_crit_edge
  %and46 = and i32 %logflags.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end70_crit_edge, label %land.lhs.true

if.end45.if.end70_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

land.lhs.true:                                    ; preds = %if.end45
  %31 = ptrtoint ptr %retval.0.i.i466 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %retval.0.i.i466, align 4
  %32 = and i8 %bf.load, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %32)
  %cmp49 = icmp ugt i8 %32, 5
  br i1 %cmp49, label %if.then51, label %land.lhs.true.if.end70_crit_edge

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then51:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_opt) #7
  %33 = call ptr @memset(ptr %_opt, i32 255, i32 40)
  %34 = ptrtoint ptr %retval.0.i.i466 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load52 = load i8, ptr %retval.0.i.i466, align 4
  %bf.clear53 = shl i8 %bf.load52, 2
  %35 = and i8 %bf.clear53, 60
  %mul55 = zext i8 %35 to i32
  %sub = add nsw i32 %mul55, -20
  %add = add i32 %iphoff, 20
  %36 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i.i, align 4
  %38 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i.i, align 8
  %40 = add i32 %37, -20
  %41 = add i32 %39, %iphoff
  %sub.i4.i401 = sub i32 %40, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i401, i32 %sub)
  %cmp.not.i.i402 = icmp slt i32 %sub.i4.i401, %sub
  br i1 %cmp.not.i.i402, label %if.end.i.i407, label %skb_header_pointer.exit413, !prof !220

if.end.i.i407:                                    ; preds = %if.then51
  %tobool2.not.i.i406 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i406, label %if.end.i.i407.if.then58_crit_edge, label %lor.lhs.false.i.i411

if.end.i.i407.if.then58_crit_edge:                ; preds = %if.end.i.i407
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

lor.lhs.false.i.i411:                             ; preds = %if.end.i.i407
  %call.i.i408 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %_opt, i32 noundef %sub) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i408)
  %cmp3.i.i409 = icmp slt i32 %call.i.i408, 0
  br i1 %cmp3.i.i409, label %lor.lhs.false.i.i411.if.then58_crit_edge, label %lor.lhs.false.i.i411.if.end60_crit_edge

lor.lhs.false.i.i411.if.end60_crit_edge:          ; preds = %lor.lhs.false.i.i411
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

lor.lhs.false.i.i411.if.then58_crit_edge:         ; preds = %lor.lhs.false.i.i411
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

skb_header_pointer.exit413:                       ; preds = %if.then51
  %data.i403 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %42 = ptrtoint ptr %data.i403 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i403, align 4
  %add.ptr.i.i404 = getelementptr i8, ptr %43, i32 %add
  %tobool57.not = icmp eq ptr %add.ptr.i.i404, null
  br i1 %tobool57.not, label %skb_header_pointer.exit413.if.then58_crit_edge, label %skb_header_pointer.exit413.if.end60_crit_edge

skb_header_pointer.exit413.if.end60_crit_edge:    ; preds = %skb_header_pointer.exit413
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

skb_header_pointer.exit413.if.then58_crit_edge:   ; preds = %skb_header_pointer.exit413
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

if.then58:                                        ; preds = %skb_header_pointer.exit413.if.then58_crit_edge, %lor.lhs.false.i.i411.if.then58_crit_edge, %if.end.i.i407.if.then58_crit_edge
  %call59 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.13) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_opt) #7
  br label %cleanup273

if.end60:                                         ; preds = %skb_header_pointer.exit413.if.end60_crit_edge, %lor.lhs.false.i.i411.if.end60_crit_edge
  %retval.0.i.i412473 = phi ptr [ %add.ptr.i.i404, %skb_header_pointer.exit413.if.end60_crit_edge ], [ %_opt, %lor.lhs.false.i.i411.if.end60_crit_edge ]
  %call61 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp62509.not = icmp eq i32 %sub, 0
  br i1 %cmp62509.not, label %if.end60.for.end_crit_edge, label %if.end60.for.body_crit_edge

if.end60.for.body_crit_edge:                      ; preds = %if.end60
  br label %for.body

if.end60.for.end_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end60.for.body_crit_edge
  %i.0510 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end60.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %retval.0.i.i412473, i32 %i.0510
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx, align 1
  %conv64 = zext i8 %45 to i32
  %call65 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef %conv64) #7
  %inc = add nuw i32 %i.0510, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end60.for.end_crit_edge
  %call66 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.22) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_opt) #7
  br label %if.end70

if.end70:                                         ; preds = %for.end, %land.lhs.true.if.end70_crit_edge, %if.end45.if.end70_crit_edge
  %protocol = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i466, i32 0, i32 6
  %46 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %protocol, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i8 %47, label %sw.default [
    i8 6, label %sw.bb
    i8 17, label %if.end70.sw.bb85_crit_edge
    i8 -120, label %if.end70.sw.bb85_crit_edge511
    i8 1, label %sw.bb99
    i8 51, label %sw.bb200
    i8 50, label %sw.bb228
  ]

if.end70.sw.bb85_crit_edge511:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb85

if.end70.sw.bb85_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb85

sw.bb:                                            ; preds = %if.end70
  %49 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %frag_off, align 2
  %51 = and i16 %50, 8191
  %and75 = zext i16 %51 to i32
  %52 = ptrtoint ptr %retval.0.i.i466 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load76 = load i8, ptr %retval.0.i.i466, align 4
  %bf.clear77 = shl i8 %bf.load76, 2
  %53 = and i8 %bf.clear77, 60
  %mul79 = zext i8 %53 to i32
  %add80 = add i32 %mul79, %iphoff
  %call81 = call fastcc i32 @nf_log_dump_tcp_header(ptr noundef %m, ptr noundef %skb, i32 noundef %and75, i32 noundef %add80, i32 noundef %logflags.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %sw.bb.sw.epilog260_crit_edge, label %sw.bb.cleanup273_crit_edge

sw.bb.cleanup273_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup273

sw.bb.sw.epilog260_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog260

sw.bb85:                                          ; preds = %if.end70.sw.bb85_crit_edge, %if.end70.sw.bb85_crit_edge511
  %54 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %frag_off, align 2
  %56 = and i16 %55, 8191
  %and89 = zext i16 %56 to i32
  %57 = ptrtoint ptr %retval.0.i.i466 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load90 = load i8, ptr %retval.0.i.i466, align 4
  %bf.clear91 = shl i8 %bf.load90, 2
  %58 = and i8 %bf.clear91, 60
  %mul93 = zext i8 %58 to i32
  %add94 = add i32 %mul93, %iphoff
  %call95 = call fastcc i32 @nf_log_dump_udp_header(ptr noundef %m, ptr noundef %skb, i8 noundef zeroext %47, i32 noundef %and89, i32 noundef %add94)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %sw.bb85.sw.epilog260_crit_edge, label %sw.bb85.cleanup273_crit_edge

sw.bb85.cleanup273_crit_edge:                     ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup273

sw.bb85.sw.epilog260_crit_edge:                   ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog260

sw.bb99:                                          ; preds = %if.end70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_icmph) #7
  %59 = ptrtoint ptr %_icmph to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 -1, ptr %_icmph, align 8
  %call100 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.23) #7
  %60 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %frag_off, align 2
  %62 = and i16 %61, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool104.not = icmp eq i16 %62, 0
  br i1 %tobool104.not, label %if.end106, label %sw.bb99.cleanup198_crit_edge

sw.bb99.cleanup198_crit_edge:                     ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

if.end106:                                        ; preds = %sw.bb99
  %63 = ptrtoint ptr %retval.0.i.i466 to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load107 = load i8, ptr %retval.0.i.i466, align 4
  %bf.clear108 = shl i8 %bf.load107, 2
  %64 = and i8 %bf.clear108, 60
  %mul110 = zext i8 %64 to i32
  %add111 = add i32 %mul110, %iphoff
  %65 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i.i, align 4
  %67 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data_len.i.i, align 8
  %69 = add i32 %68, %add111
  %sub.i4.i416 = sub i32 %66, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i416)
  %cmp.not.i.i417 = icmp slt i32 %sub.i4.i416, 8
  br i1 %cmp.not.i.i417, label %if.end.i.i422, label %skb_header_pointer.exit428, !prof !220

if.end.i.i422:                                    ; preds = %if.end106
  %tobool2.not.i.i421 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i421, label %if.end.i.i422.if.then114_crit_edge, label %lor.lhs.false.i.i426

if.end.i.i422.if.then114_crit_edge:               ; preds = %if.end.i.i422
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then114

lor.lhs.false.i.i426:                             ; preds = %if.end.i.i422
  %call.i.i423 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add111, ptr noundef nonnull %_icmph, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i423)
  %cmp3.i.i424 = icmp slt i32 %call.i.i423, 0
  br i1 %cmp3.i.i424, label %lor.lhs.false.i.i426.if.then114_crit_edge, label %lor.lhs.false.i.i426.if.end122_crit_edge

lor.lhs.false.i.i426.if.end122_crit_edge:         ; preds = %lor.lhs.false.i.i426
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

lor.lhs.false.i.i426.if.then114_crit_edge:        ; preds = %lor.lhs.false.i.i426
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then114

skb_header_pointer.exit428:                       ; preds = %if.end106
  %data.i418 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %70 = ptrtoint ptr %data.i418 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i418, align 4
  %add.ptr.i.i419 = getelementptr i8, ptr %71, i32 %add111
  %tobool113.not = icmp eq ptr %add.ptr.i.i419, null
  br i1 %tobool113.not, label %skb_header_pointer.exit428.if.then114_crit_edge, label %skb_header_pointer.exit428.if.end122_crit_edge

skb_header_pointer.exit428.if.end122_crit_edge:   ; preds = %skb_header_pointer.exit428
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

skb_header_pointer.exit428.if.then114_crit_edge:  ; preds = %skb_header_pointer.exit428
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then114

if.then114:                                       ; preds = %skb_header_pointer.exit428.if.then114_crit_edge, %lor.lhs.false.i.i426.if.then114_crit_edge, %if.end.i.i422.if.then114_crit_edge
  %72 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len.i.i, align 4
  %74 = ptrtoint ptr %retval.0.i.i466 to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load116 = load i8, ptr %retval.0.i.i466, align 4
  %bf.clear117 = shl i8 %bf.load116, 2
  %75 = and i8 %bf.clear117, 60
  %mul119 = zext i8 %75 to i32
  %76 = add i32 %mul119, %iphoff
  %sub120 = sub i32 %73, %76
  %call121 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %sub120) #7
  br label %cleanup198

if.end122:                                        ; preds = %skb_header_pointer.exit428.if.end122_crit_edge, %lor.lhs.false.i.i426.if.end122_crit_edge
  %retval.0.i.i427481 = phi ptr [ %add.ptr.i.i419, %skb_header_pointer.exit428.if.end122_crit_edge ], [ %_icmph, %lor.lhs.false.i.i426.if.end122_crit_edge ]
  %77 = ptrtoint ptr %retval.0.i.i427481 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %retval.0.i.i427481, align 4
  %conv124 = zext i8 %78 to i32
  %code = getelementptr inbounds %struct.icmphdr, ptr %retval.0.i.i427481, i32 0, i32 1
  %79 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %code, align 1
  %conv125 = zext i8 %80 to i32
  %call126 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.25, i32 noundef %conv124, i32 noundef %conv125) #7
  %81 = ptrtoint ptr %retval.0.i.i427481 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %retval.0.i.i427481, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %82)
  %cmp129 = icmp ult i8 %82, 19
  br i1 %cmp129, label %land.lhs.true131, label %if.end122.if.end157_crit_edge

if.end122.if.end157_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

land.lhs.true131:                                 ; preds = %if.end122
  %conv128 = zext i8 %82 to i32
  %83 = lshr i32 100038, %conv128
  %84 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool134.not.not = icmp eq i32 %84, 0
  br i1 %tobool134.not.not, label %land.lhs.true135, label %land.lhs.true131.if.end157_crit_edge

land.lhs.true131.if.end157_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

land.lhs.true135:                                 ; preds = %land.lhs.true131
  %arrayidx133 = getelementptr [19 x i32], ptr @dump_ipv4_packet.required_len, i32 0, i32 %conv128
  %85 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx133, align 4
  %87 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len.i.i, align 4
  %89 = ptrtoint ptr %retval.0.i.i466 to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load138 = load i8, ptr %retval.0.i.i466, align 4
  %bf.clear139 = shl i8 %bf.load138, 2
  %90 = and i8 %bf.clear139, 60
  %mul141 = zext i8 %90 to i32
  %91 = add i32 %mul141, %iphoff
  %sub142 = sub i32 %88, %91
  call void @__sanitizer_cov_trace_cmp4(i32 %sub142, i32 %86)
  %cmp146 = icmp ult i32 %sub142, %86
  br i1 %cmp146, label %if.then148, label %land.lhs.true135.if.end157_crit_edge

land.lhs.true135.if.end157_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.then148:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #9
  %call156 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %sub142) #7
  br label %cleanup198

if.end157:                                        ; preds = %land.lhs.true135.if.end157_crit_edge, %land.lhs.true131.if.end157_crit_edge, %if.end122.if.end157_crit_edge
  %92 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %82, label %if.end157.cleanup198_crit_edge [
    i8 0, label %if.end157.sw.bb160_crit_edge
    i8 8, label %if.end157.sw.bb160_crit_edge512
    i8 12, label %sw.bb166
    i8 5, label %sw.bb169
    i8 3, label %if.end157.sw.bb172_crit_edge
    i8 4, label %if.end157.sw.bb172_crit_edge513
    i8 11, label %if.end157.sw.bb172_crit_edge514
  ]

if.end157.sw.bb172_crit_edge514:                  ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb172

if.end157.sw.bb172_crit_edge513:                  ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb172

if.end157.sw.bb172_crit_edge:                     ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb172

if.end157.sw.bb160_crit_edge512:                  ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb160

if.end157.sw.bb160_crit_edge:                     ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb160

if.end157.cleanup198_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

sw.bb160:                                         ; preds = %if.end157.sw.bb160_crit_edge, %if.end157.sw.bb160_crit_edge512
  %un = getelementptr inbounds %struct.icmphdr, ptr %retval.0.i.i427481, i32 0, i32 3
  %93 = ptrtoint ptr %un to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %un, align 4
  %conv162 = zext i16 %94 to i32
  %sequence = getelementptr inbounds %struct.anon.194, ptr %un, i32 0, i32 1
  %95 = ptrtoint ptr %sequence to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %sequence, align 2
  %conv164 = zext i16 %96 to i32
  %call165 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.26, i32 noundef %conv162, i32 noundef %conv164) #7
  br label %cleanup198

sw.bb166:                                         ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  %un167 = getelementptr inbounds %struct.icmphdr, ptr %retval.0.i.i427481, i32 0, i32 3
  %97 = ptrtoint ptr %un167 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %un167, align 4
  %shr = lshr i32 %98, 24
  %call168 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef %shr) #7
  br label %cleanup198

sw.bb169:                                         ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  %un170 = getelementptr inbounds %struct.icmphdr, ptr %retval.0.i.i427481, i32 0, i32 3
  %call171 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.28, ptr noundef %un170) #7
  br label %sw.bb172

sw.bb172:                                         ; preds = %sw.bb169, %if.end157.sw.bb172_crit_edge, %if.end157.sw.bb172_crit_edge513, %if.end157.sw.bb172_crit_edge514
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iphoff)
  %tobool173.not = icmp eq i32 %iphoff, 0
  br i1 %tobool173.not, label %if.then174, label %sw.bb172.if.end183_crit_edge

sw.bb172.if.end183_crit_edge:                     ; preds = %sw.bb172
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end183

if.then174:                                       ; preds = %sw.bb172
  call void @__sanitizer_cov_trace_pc() #9
  %call175 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.29) #7
  %99 = ptrtoint ptr %retval.0.i.i466 to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load176 = load i8, ptr %retval.0.i.i466, align 4
  %bf.clear177 = shl i8 %bf.load176, 2
  %100 = and i8 %bf.clear177, 60
  %narrow = add nuw nsw i8 %100, 8
  %add181 = zext i8 %narrow to i32
  call fastcc void @dump_ipv4_packet(ptr noundef %net, ptr noundef %m, ptr noundef %info, ptr noundef %skb, i32 noundef %add181)
  %call182 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.30) #7
  br label %if.end183

if.end183:                                        ; preds = %if.then174, %sw.bb172.if.end183_crit_edge
  %101 = ptrtoint ptr %retval.0.i.i427481 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %retval.0.i.i427481, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %102)
  %cmp186 = icmp eq i8 %102, 3
  br i1 %cmp186, label %land.lhs.true188, label %if.end183.cleanup198_crit_edge

if.end183.cleanup198_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

land.lhs.true188:                                 ; preds = %if.end183
  %103 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %104)
  %cmp191 = icmp eq i8 %104, 4
  br i1 %cmp191, label %if.then193, label %land.lhs.true188.cleanup198_crit_edge

land.lhs.true188.cleanup198_crit_edge:            ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

if.then193:                                       ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #9
  %un194 = getelementptr inbounds %struct.icmphdr, ptr %retval.0.i.i427481, i32 0, i32 3
  %mtu = getelementptr inbounds %struct.anon.195, ptr %un194, i32 0, i32 1
  %105 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %mtu, align 2
  %conv195 = zext i16 %106 to i32
  %call196 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %conv195) #7
  br label %cleanup198

cleanup198:                                       ; preds = %if.then193, %land.lhs.true188.cleanup198_crit_edge, %if.end183.cleanup198_crit_edge, %sw.bb166, %sw.bb160, %if.end157.cleanup198_crit_edge, %if.then148, %if.then114, %sw.bb99.cleanup198_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_icmph) #7
  br label %sw.epilog260

sw.bb200:                                         ; preds = %if.end70
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_ahdr) #7
  %107 = call ptr @memset(ptr %_ahdr, i32 255, i32 12)
  %108 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %frag_off, align 2
  %110 = and i16 %109, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool204.not = icmp eq i16 %110, 0
  br i1 %tobool204.not, label %if.end206, label %sw.bb200.cleanup226_crit_edge

sw.bb200.cleanup226_crit_edge:                    ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup226

if.end206:                                        ; preds = %sw.bb200
  %call207 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.32) #7
  %111 = ptrtoint ptr %retval.0.i.i466 to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load208 = load i8, ptr %retval.0.i.i466, align 4
  %bf.clear209 = shl i8 %bf.load208, 2
  %112 = and i8 %bf.clear209, 60
  %mul211 = zext i8 %112 to i32
  %add212 = add i32 %mul211, %iphoff
  %113 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %len.i.i, align 4
  %115 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %data_len.i.i, align 8
  %117 = add i32 %116, %add212
  %sub.i4.i431 = sub i32 %114, %117
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i4.i431)
  %cmp.not.i.i432 = icmp slt i32 %sub.i4.i431, 12
  br i1 %cmp.not.i.i432, label %if.end.i.i437, label %skb_header_pointer.exit443, !prof !220

if.end.i.i437:                                    ; preds = %if.end206
  %tobool2.not.i.i436 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i436, label %if.end.i.i437.if.then215_crit_edge, label %lor.lhs.false.i.i441

if.end.i.i437.if.then215_crit_edge:               ; preds = %if.end.i.i437
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then215

lor.lhs.false.i.i441:                             ; preds = %if.end.i.i437
  %call.i.i438 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add212, ptr noundef nonnull %_ahdr, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i438)
  %cmp3.i.i439 = icmp slt i32 %call.i.i438, 0
  br i1 %cmp3.i.i439, label %lor.lhs.false.i.i441.if.then215_crit_edge, label %lor.lhs.false.i.i441.if.end224_crit_edge

lor.lhs.false.i.i441.if.end224_crit_edge:         ; preds = %lor.lhs.false.i.i441
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end224

lor.lhs.false.i.i441.if.then215_crit_edge:        ; preds = %lor.lhs.false.i.i441
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then215

skb_header_pointer.exit443:                       ; preds = %if.end206
  %data.i433 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %118 = ptrtoint ptr %data.i433 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data.i433, align 4
  %add.ptr.i.i434 = getelementptr i8, ptr %119, i32 %add212
  %tobool214.not = icmp eq ptr %add.ptr.i.i434, null
  br i1 %tobool214.not, label %skb_header_pointer.exit443.if.then215_crit_edge, label %skb_header_pointer.exit443.if.end224_crit_edge

skb_header_pointer.exit443.if.end224_crit_edge:   ; preds = %skb_header_pointer.exit443
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end224

skb_header_pointer.exit443.if.then215_crit_edge:  ; preds = %skb_header_pointer.exit443
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then215

if.then215:                                       ; preds = %skb_header_pointer.exit443.if.then215_crit_edge, %lor.lhs.false.i.i441.if.then215_crit_edge, %if.end.i.i437.if.then215_crit_edge
  %120 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %len.i.i, align 4
  %122 = ptrtoint ptr %retval.0.i.i466 to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load218 = load i8, ptr %retval.0.i.i466, align 4
  %bf.clear219 = shl i8 %bf.load218, 2
  %123 = and i8 %bf.clear219, 60
  %mul221 = zext i8 %123 to i32
  %124 = add i32 %mul221, %iphoff
  %sub222 = sub i32 %121, %124
  %call223 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %sub222) #7
  br label %cleanup226

if.end224:                                        ; preds = %skb_header_pointer.exit443.if.end224_crit_edge, %lor.lhs.false.i.i441.if.end224_crit_edge
  %retval.0.i.i442488 = phi ptr [ %add.ptr.i.i434, %skb_header_pointer.exit443.if.end224_crit_edge ], [ %_ahdr, %lor.lhs.false.i.i441.if.end224_crit_edge ]
  %spi = getelementptr inbounds %struct.ip_auth_hdr, ptr %retval.0.i.i442488, i32 0, i32 3
  %125 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %spi, align 4
  %call225 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %126) #7
  br label %cleanup226

cleanup226:                                       ; preds = %if.end224, %if.then215, %sw.bb200.cleanup226_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_ahdr) #7
  br label %sw.epilog260

sw.bb228:                                         ; preds = %if.end70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_esph) #7
  %127 = ptrtoint ptr %_esph to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %_esph, align 4, !annotation !221
  %128 = getelementptr inbounds %struct.ip_esp_hdr, ptr %_esph, i32 0, i32 1
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 -1, ptr %128, align 4, !annotation !221
  %call229 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.34) #7
  %130 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %frag_off, align 2
  %132 = and i16 %131, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool233.not = icmp eq i16 %132, 0
  br i1 %tobool233.not, label %if.end235, label %sw.bb228.cleanup255_crit_edge

sw.bb228.cleanup255_crit_edge:                    ; preds = %sw.bb228
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup255

if.end235:                                        ; preds = %sw.bb228
  %133 = ptrtoint ptr %retval.0.i.i466 to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load236 = load i8, ptr %retval.0.i.i466, align 4
  %bf.clear237 = shl i8 %bf.load236, 2
  %134 = and i8 %bf.clear237, 60
  %mul239 = zext i8 %134 to i32
  %add240 = add i32 %mul239, %iphoff
  %135 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len.i.i, align 4
  %137 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %data_len.i.i, align 8
  %139 = add i32 %138, %add240
  %sub.i4.i446 = sub i32 %136, %139
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i446)
  %cmp.not.i.i447 = icmp slt i32 %sub.i4.i446, 8
  br i1 %cmp.not.i.i447, label %if.end.i.i452, label %skb_header_pointer.exit458, !prof !220

if.end.i.i452:                                    ; preds = %if.end235
  %tobool2.not.i.i451 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i451, label %if.end.i.i452.if.then243_crit_edge, label %lor.lhs.false.i.i456

if.end.i.i452.if.then243_crit_edge:               ; preds = %if.end.i.i452
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then243

lor.lhs.false.i.i456:                             ; preds = %if.end.i.i452
  %call.i.i453 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add240, ptr noundef nonnull %_esph, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i453)
  %cmp3.i.i454 = icmp slt i32 %call.i.i453, 0
  br i1 %cmp3.i.i454, label %lor.lhs.false.i.i456.if.then243_crit_edge, label %lor.lhs.false.i.i456.if.end252_crit_edge

lor.lhs.false.i.i456.if.end252_crit_edge:         ; preds = %lor.lhs.false.i.i456
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end252

lor.lhs.false.i.i456.if.then243_crit_edge:        ; preds = %lor.lhs.false.i.i456
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then243

skb_header_pointer.exit458:                       ; preds = %if.end235
  %data.i448 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %140 = ptrtoint ptr %data.i448 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %data.i448, align 4
  %add.ptr.i.i449 = getelementptr i8, ptr %141, i32 %add240
  %tobool242.not = icmp eq ptr %add.ptr.i.i449, null
  br i1 %tobool242.not, label %skb_header_pointer.exit458.if.then243_crit_edge, label %skb_header_pointer.exit458.if.end252_crit_edge

skb_header_pointer.exit458.if.end252_crit_edge:   ; preds = %skb_header_pointer.exit458
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end252

skb_header_pointer.exit458.if.then243_crit_edge:  ; preds = %skb_header_pointer.exit458
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then243

if.then243:                                       ; preds = %skb_header_pointer.exit458.if.then243_crit_edge, %lor.lhs.false.i.i456.if.then243_crit_edge, %if.end.i.i452.if.then243_crit_edge
  %142 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %len.i.i, align 4
  %144 = ptrtoint ptr %retval.0.i.i466 to i32
  call void @__asan_load1_noabort(i32 %144)
  %bf.load246 = load i8, ptr %retval.0.i.i466, align 4
  %bf.clear247 = shl i8 %bf.load246, 2
  %145 = and i8 %bf.clear247, 60
  %mul249 = zext i8 %145 to i32
  %146 = add i32 %mul249, %iphoff
  %sub250 = sub i32 %143, %146
  %call251 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %sub250) #7
  br label %cleanup255

if.end252:                                        ; preds = %skb_header_pointer.exit458.if.end252_crit_edge, %lor.lhs.false.i.i456.if.end252_crit_edge
  %retval.0.i.i457495 = phi ptr [ %add.ptr.i.i449, %skb_header_pointer.exit458.if.end252_crit_edge ], [ %_esph, %lor.lhs.false.i.i456.if.end252_crit_edge ]
  %147 = ptrtoint ptr %retval.0.i.i457495 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %retval.0.i.i457495, align 4
  %call254 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %148) #7
  br label %cleanup255

cleanup255:                                       ; preds = %if.end252, %if.then243, %sw.bb228.cleanup255_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_esph) #7
  br label %sw.epilog260

sw.default:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %conv71 = zext i8 %47 to i32
  %call259 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.35, i32 noundef %conv71) #7
  br label %sw.epilog260

sw.epilog260:                                     ; preds = %sw.default, %cleanup255, %cleanup226, %cleanup198, %sw.bb85.sw.epilog260_crit_edge, %sw.bb.sw.epilog260_crit_edge
  %and261 = and i32 %logflags.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and261)
  %tobool262.not = icmp ne i32 %and261, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iphoff)
  %tobool264.not = icmp eq i32 %iphoff, 0
  %or.cond = and i1 %tobool264.not, %tobool262.not
  br i1 %or.cond, label %if.then265, label %sw.epilog260.if.end266_crit_edge

sw.epilog260.if.end266_crit_edge:                 ; preds = %sw.epilog260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end266

if.then265:                                       ; preds = %sw.epilog260
  call void @__sanitizer_cov_trace_pc() #9
  %149 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  call fastcc void @nf_log_dump_sk_uid_gid(ptr noundef %net, ptr noundef %m, ptr noundef %151)
  br label %if.end266

if.end266:                                        ; preds = %if.then265, %sw.epilog260.if.end266_crit_edge
  br i1 %tobool264.not, label %land.lhs.true268, label %if.end266.cleanup273_crit_edge

if.end266.cleanup273_crit_edge:                   ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup273

land.lhs.true268:                                 ; preds = %if.end266
  %152 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool269.not = icmp eq i32 %154, 0
  br i1 %tobool269.not, label %land.lhs.true268.cleanup273_crit_edge, label %if.then270

land.lhs.true268.cleanup273_crit_edge:            ; preds = %land.lhs.true268
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup273

if.then270:                                       ; preds = %land.lhs.true268
  call void @__sanitizer_cov_trace_pc() #9
  %call271 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %154) #7
  br label %cleanup273

cleanup273:                                       ; preds = %if.then270, %land.lhs.true268.cleanup273_crit_edge, %if.end266.cleanup273_crit_edge, %sw.bb85.cleanup273_crit_edge, %sw.bb.cleanup273_crit_edge, %if.then58, %if.then4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_log_buf_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_log_buf_add(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %offset, i32 noundef %len, ptr noundef %buffer) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %4 = add i32 %3, %offset
  %sub.i4 = sub i32 %1, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4, i32 %len)
  %cmp.not.i = icmp slt i32 %sub.i4, %len
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !220

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %offset
  br label %__skb_header_pointer.exit

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i, label %if.end.i.__skb_header_pointer.exit_crit_edge, label %lor.lhs.false.i

if.end.i.__skb_header_pointer.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_header_pointer.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef %buffer, i32 noundef %len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp3.i, ptr null, ptr %buffer, !prof !220
  br label %__skb_header_pointer.exit

__skb_header_pointer.exit:                        ; preds = %lor.lhs.false.i, %if.end.i.__skb_header_pointer.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.i.__skb_header_pointer.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_log_dump_tcp_header(ptr noundef %m, ptr noundef %skb, i32 noundef %fragment, i32 noundef %offset, i32 noundef %logflags) unnamed_addr #4 align 64 {
entry:
  %_tcph = alloca %struct.tcphdr, align 4
  %_opt = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #7
  %0 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  %call = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fragment)
  %tobool.not = icmp eq i32 %fragment, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup101_crit_edge

entry.cleanup101_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  %5 = add i32 %4, %offset
  %sub.i4.i = sub i32 %2, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !220

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then3_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then3_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef nonnull %_tcph, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then3_crit_edge, label %lor.lhs.false.i.i.if.end5_crit_edge

lor.lhs.false.i.i.if.end5_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

lor.lhs.false.i.i.if.then3_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %offset
  %tobool2.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool2.not, label %skb_header_pointer.exit.if.then3_crit_edge, label %skb_header_pointer.exit.if.end5_crit_edge

skb_header_pointer.exit.if.end5_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

skb_header_pointer.exit.if.then3_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %skb_header_pointer.exit.if.then3_crit_edge, %lor.lhs.false.i.i.if.then3_crit_edge, %if.end.i.i.if.then3_crit_edge
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %sub = sub i32 %9, %offset
  %call4 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %sub) #7
  br label %cleanup101

if.end5:                                          ; preds = %skb_header_pointer.exit.if.end5_crit_edge, %lor.lhs.false.i.i.if.end5_crit_edge
  %retval.0.i.i22 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end5_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.if.end5_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i.i22 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %retval.0.i.i22, align 4
  %conv = zext i16 %11 to i32
  %dest = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i22, i32 0, i32 1
  %12 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dest, align 2
  %conv6 = zext i16 %13 to i32
  %call7 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %conv, i32 noundef %conv6) #7
  %and = and i32 %logflags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end5.if.end11_crit_edge, label %if.then9

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i22, i32 0, i32 2
  %14 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seq, align 4
  %ack_seq = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i22, i32 0, i32 3
  %16 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ack_seq, align 4
  %call10 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %15, i32 noundef %17) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end5.if.end11_crit_edge
  %window = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i22, i32 0, i32 5
  %18 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %window, align 2
  %conv12 = zext i16 %19 to i32
  %call13 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %conv12) #7
  %arrayidx = getelementptr [5 x i32], ptr %retval.0.i.i22, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %and14 = lshr i32 %21, 22
  %conv15 = and i32 %and14, 60
  %call17 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.41, i32 noundef %conv15) #7
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %arrayidx, align 4
  %23 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool18.not = icmp eq i16 %23, 0
  br i1 %tobool18.not, label %if.end11.if.end21_crit_edge, label %if.then19

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.42) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end11.if.end21_crit_edge
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load22 = load i16, ptr %arrayidx, align 4
  %25 = and i16 %bf.load22, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool25.not = icmp eq i16 %25, 0
  br i1 %tobool25.not, label %if.end21.if.end28_crit_edge, label %if.then26

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.43) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end21.if.end28_crit_edge
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load29 = load i16, ptr %arrayidx, align 4
  %27 = and i16 %bf.load29, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool32.not = icmp eq i16 %27, 0
  br i1 %tobool32.not, label %if.end28.if.end35_crit_edge, label %if.then33

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.44) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end28.if.end35_crit_edge
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load36 = load i16, ptr %arrayidx, align 4
  %29 = and i16 %bf.load36, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool39.not = icmp eq i16 %29, 0
  br i1 %tobool39.not, label %if.end35.if.end42_crit_edge, label %if.then40

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.45) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end35.if.end42_crit_edge
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load43 = load i16, ptr %arrayidx, align 4
  %31 = and i16 %bf.load43, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool46.not = icmp eq i16 %31, 0
  br i1 %tobool46.not, label %if.end42.if.end49_crit_edge, label %if.then47

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %call48 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.46) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end42.if.end49_crit_edge
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load50 = load i16, ptr %arrayidx, align 4
  %33 = and i16 %bf.load50, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool53.not = icmp eq i16 %33, 0
  br i1 %tobool53.not, label %if.end49.if.end56_crit_edge, label %if.then54

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.47) #7
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end49.if.end56_crit_edge
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load57 = load i16, ptr %arrayidx, align 4
  %35 = and i16 %bf.load57, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool60.not = icmp eq i16 %35, 0
  br i1 %tobool60.not, label %if.end56.if.end63_crit_edge, label %if.then61

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.48) #7
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end56.if.end63_crit_edge
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load64 = load i16, ptr %arrayidx, align 4
  %bf.clear65 = and i16 %bf.load64, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear65)
  %tobool66.not = icmp eq i16 %bf.clear65, 0
  br i1 %tobool66.not, label %if.end63.if.end69_crit_edge, label %if.then67

if.end63.if.end69_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %call68 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.49) #7
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end63.if.end69_crit_edge
  %urg_ptr = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i22, i32 0, i32 7
  %37 = ptrtoint ptr %urg_ptr to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %urg_ptr, align 2
  %conv70 = zext i16 %38 to i32
  %call71 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %conv70) #7
  %and72 = and i32 %logflags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end69.cleanup101_crit_edge, label %land.lhs.true

if.end69.cleanup101_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

land.lhs.true:                                    ; preds = %if.end69
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load74 = load i16, ptr %arrayidx, align 4
  %40 = lshr i16 %bf.load74, 10
  %41 = and i16 %40, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %41)
  %cmp = icmp ugt i16 %41, 20
  br i1 %cmp, label %if.then78, label %land.lhs.true.cleanup101_crit_edge

land.lhs.true.cleanup101_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

if.then78:                                        ; preds = %land.lhs.true
  %mul = zext i16 %41 to i32
  %sub84 = add nsw i32 %mul, -20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_opt) #7
  %42 = call ptr @memset(ptr %_opt, i32 255, i32 40)
  %add = add i32 %offset, 20
  %43 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i.i, align 4
  %45 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_len.i.i, align 8
  %47 = add i32 %44, -20
  %48 = add i32 %46, %offset
  %sub.i4.i3 = sub i32 %47, %48
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i3, i32 %sub84)
  %cmp.not.i.i4 = icmp slt i32 %sub.i4.i3, %sub84
  br i1 %cmp.not.i.i4, label %if.end.i.i9, label %skb_header_pointer.exit15, !prof !220

if.end.i.i9:                                      ; preds = %if.then78
  %tobool2.not.i.i8 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i8, label %if.end.i.i9.if.then87_crit_edge, label %lor.lhs.false.i.i13

if.end.i.i9.if.then87_crit_edge:                  ; preds = %if.end.i.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

lor.lhs.false.i.i13:                              ; preds = %if.end.i.i9
  %call.i.i10 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %_opt, i32 noundef %sub84) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10)
  %cmp3.i.i11 = icmp slt i32 %call.i.i10, 0
  br i1 %cmp3.i.i11, label %lor.lhs.false.i.i13.if.then87_crit_edge, label %lor.lhs.false.i.i13.for.body.preheader_crit_edge

lor.lhs.false.i.i13.for.body.preheader_crit_edge: ; preds = %lor.lhs.false.i.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

lor.lhs.false.i.i13.if.then87_crit_edge:          ; preds = %lor.lhs.false.i.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

skb_header_pointer.exit15:                        ; preds = %if.then78
  %data.i5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %49 = ptrtoint ptr %data.i5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i5, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %50, i32 %add
  %tobool86.not = icmp eq ptr %add.ptr.i.i6, null
  br i1 %tobool86.not, label %skb_header_pointer.exit15.if.then87_crit_edge, label %skb_header_pointer.exit15.for.body.preheader_crit_edge

skb_header_pointer.exit15.for.body.preheader_crit_edge: ; preds = %skb_header_pointer.exit15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

skb_header_pointer.exit15.if.then87_crit_edge:    ; preds = %skb_header_pointer.exit15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

if.then87:                                        ; preds = %skb_header_pointer.exit15.if.then87_crit_edge, %lor.lhs.false.i.i13.if.then87_crit_edge, %if.end.i.i9.if.then87_crit_edge
  %call88 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.51) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_opt) #7
  br label %cleanup101

for.body.preheader:                               ; preds = %skb_header_pointer.exit15.for.body.preheader_crit_edge, %lor.lhs.false.i.i13.for.body.preheader_crit_edge
  %retval.0.i.i1429 = phi ptr [ %add.ptr.i.i6, %skb_header_pointer.exit15.for.body.preheader_crit_edge ], [ %_opt, %lor.lhs.false.i.i13.for.body.preheader_crit_edge ]
  %call90 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.20) #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.034 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx93 = getelementptr i8, ptr %retval.0.i.i1429, i32 %i.034
  %51 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %52 to i32
  %call95 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef %conv94) #7
  %inc = add nuw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %sub84
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call96 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.22) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_opt) #7
  br label %cleanup101

cleanup101:                                       ; preds = %for.end, %if.then87, %land.lhs.true.cleanup101_crit_edge, %if.end69.cleanup101_crit_edge, %if.then3, %entry.cleanup101_crit_edge
  %retval.1 = phi i32 [ 1, %if.then3 ], [ 0, %entry.cleanup101_crit_edge ], [ 1, %if.then87 ], [ 0, %for.end ], [ 0, %land.lhs.true.cleanup101_crit_edge ], [ 0, %if.end69.cleanup101_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #7
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_log_dump_udp_header(ptr noundef %m, ptr noundef %skb, i8 noundef zeroext %proto, i32 noundef %fragment, i32 noundef %offset) unnamed_addr #4 align 64 {
entry:
  %_udph = alloca %struct.udphdr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_udph) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %proto)
  %cmp = icmp eq i8 %proto, 17
  %0 = ptrtoint ptr %_udph to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %_udph, align 8
  %.str.52..str.53 = select i1 %cmp, ptr @.str.52, ptr @.str.53
  %call2 = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull %.str.52..str.53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fragment)
  %tobool.not = icmp eq i32 %fragment, 0
  br i1 %tobool.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  %5 = add i32 %4, %offset
  %sub.i4.i = sub i32 %2, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 8
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !220

if.end.i.i:                                       ; preds = %if.end4
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then7_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then7_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef nonnull %_udph, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then7_crit_edge, label %lor.lhs.false.i.i.if.end9_crit_edge

lor.lhs.false.i.i.if.end9_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

lor.lhs.false.i.i.if.then7_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

skb_header_pointer.exit:                          ; preds = %if.end4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %offset
  %tobool6.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool6.not, label %skb_header_pointer.exit.if.then7_crit_edge, label %skb_header_pointer.exit.if.end9_crit_edge

skb_header_pointer.exit.if.end9_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

skb_header_pointer.exit.if.then7_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %skb_header_pointer.exit.if.then7_crit_edge, %lor.lhs.false.i.i.if.then7_crit_edge, %if.end.i.i.if.then7_crit_edge
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %sub = sub i32 %9, %offset
  %call8 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %sub) #7
  br label %cleanup

if.end9:                                          ; preds = %skb_header_pointer.exit.if.end9_crit_edge, %lor.lhs.false.i.i.if.end9_crit_edge
  %retval.0.i.i29 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end9_crit_edge ], [ %_udph, %lor.lhs.false.i.i.if.end9_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i.i29 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %retval.0.i.i29, align 2
  %conv10 = zext i16 %11 to i32
  %dest = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i29, i32 0, i32 1
  %12 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dest, align 2
  %conv11 = zext i16 %13 to i32
  %len12 = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i29, i32 0, i32 2
  %14 = ptrtoint ptr %len12 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len12, align 2
  %conv13 = zext i16 %15 to i32
  %call14 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.54, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then7 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_udph) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_log_dump_sk_uid_gid(ptr noundef readnone %net, ptr noundef %m, ptr noundef %sk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sk, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false1

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %3, %net
  br i1 %cmp.i.not, label %if.end, label %lor.lhs.false1.return_crit_edge

lor.lhs.false1.return_crit_edge:                  ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #7
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %4 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_socket, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %file = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true.if.end15_crit_edge, label %if.then8

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %f_cred = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_cred, align 8
  %fsuid = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack = load i32, ptr %fsuid, align 4
  %11 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call11 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %11) #7
  %fsgid = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 11
  %12 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack26 = load i32, ptr %fsgid, align 4
  %13 = insertvalue [1 x i32] undef, i32 %.unpack26, 0
  %call13 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %13) #7
  %call14 = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.55, i32 noundef %call11, i32 noundef %call13) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #7
  br label %return

return:                                           ; preds = %if.end15, %lor.lhs.false1.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nf_log_arp_packet(ptr noundef readnone %net, i8 noundef zeroext %pf, i32 noundef %hooknum, ptr noundef %skb, ptr noundef %in, ptr noundef %out, ptr noundef readonly %loginfo, ptr noundef %prefix) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_nf_log_all_netns to i32))
  %0 = load i32, ptr @sysctl_nf_log_all_netns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call ptr @nf_log_buf_open() #7
  %tobool3.not = icmp eq ptr %loginfo, null
  %spec.store.select = select i1 %tobool3.not, ptr @default_loginfo, ptr %loginfo
  tail call fastcc void @nf_log_dump_packet_common(ptr noundef %call2, ptr noundef %skb, ptr noundef %in, ptr noundef %out, ptr noundef %spec.store.select, ptr noundef %prefix)
  tail call fastcc void @dump_arp_packet(ptr noundef %call2, ptr noundef %spec.store.select, ptr noundef %skb)
  tail call void @nf_log_buf_close(ptr noundef %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_arp_packet(ptr noundef %m, ptr nocapture noundef readonly %info, ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  %_arpp = alloca %struct.arppayload, align 1
  %_arph = alloca %struct.arphdr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_arpp) #7
  %0 = call ptr @memset(ptr %_arpp, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_arph) #7
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %_arph to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %_arph, align 8
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %sub.i4.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 8
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !220

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_arph, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i.i.if.then_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_header_pointer.exit.if.then_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

skb_header_pointer.exit.if.then_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %skb_header_pointer.exit.if.then_crit_edge, %lor.lhs.false.i.i.if.then_crit_edge, %if.end.i.i.if.then_crit_edge
  %call1 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i29 = phi ptr [ %7, %skb_header_pointer.exit.if.end_crit_edge ], [ %_arph, %lor.lhs.false.i.i.if.end_crit_edge ]
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then3:                                         ; preds = %if.end
  %u = getelementptr inbounds %struct.nf_loginfo, ptr %info, i32 0, i32 1
  %logflags4 = getelementptr inbounds %struct.anon.186, ptr %u, i32 0, i32 1
  %10 = ptrtoint ptr %logflags4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %logflags4, align 1
  %12 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %phi.cmp = icmp eq i8 %12, 0
  br i1 %phi.cmp, label %if.then3.if.end16_crit_edge, label %if.then8

if.then3.if.end16_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then8:                                         ; preds = %if.then3
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %15 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %16 to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %call12 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef %h_source, ptr noundef %add.ptr.i.i) #7
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %17 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then8.nf_log_dump_vlan.exit_crit_edge, label %if.end.i

if.then8.nf_log_dump_vlan.exit_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_log_dump_vlan.exit

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %18 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vlan_tci.i, align 2
  %vlan_proto.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %20 = ptrtoint ptr %vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vlan_proto.i, align 8
  %conv.i = zext i16 %21 to i32
  %conv1.i = zext i16 %19 to i32
  %call.i = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef %conv.i, i32 noundef %conv1.i) #7
  br label %nf_log_dump_vlan.exit

nf_log_dump_vlan.exit:                            ; preds = %if.end.i, %if.then8.nf_log_dump_vlan.exit_crit_edge
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %24 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i7 = zext i16 %25 to i32
  %add.ptr.i.i8 = getelementptr i8, ptr %23, i32 %conv.i.i7
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i8, i32 0, i32 2
  %26 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %h_proto, align 1
  %conv14 = zext i16 %27 to i32
  %call15 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.7, i32 noundef %conv14) #7
  br label %if.end16

if.end16:                                         ; preds = %nf_log_dump_vlan.exit, %if.then3.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %28 = ptrtoint ptr %retval.0.i.i29 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %retval.0.i.i29, align 2
  %conv17 = zext i16 %29 to i32
  %ar_pro = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i29, i32 0, i32 1
  %30 = ptrtoint ptr %ar_pro to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ar_pro, align 2
  %conv18 = zext i16 %31 to i32
  %ar_op = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i29, i32 0, i32 4
  %32 = ptrtoint ptr %ar_op to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ar_op, align 2
  %conv19 = zext i16 %33 to i32
  %call20 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.57, i32 noundef %conv17, i32 noundef %conv18, i32 noundef %conv19) #7
  %34 = ptrtoint ptr %retval.0.i.i29 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %retval.0.i.i29, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %35)
  %cmp23.not = icmp eq i16 %35, 1
  br i1 %cmp23.not, label %lor.lhs.false, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end16
  %ar_hln = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i29, i32 0, i32 2
  %36 = ptrtoint ptr %ar_hln to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ar_hln, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %37)
  %cmp26.not = icmp eq i8 %37, 6
  br i1 %cmp26.not, label %lor.lhs.false28, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %ar_pln = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i29, i32 0, i32 3
  %38 = ptrtoint ptr %ar_pln to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ar_pln, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %39)
  %cmp30.not = icmp eq i8 %39, 4
  br i1 %cmp30.not, label %if.end33, label %lor.lhs.false28.cleanup_crit_edge

lor.lhs.false28.cleanup_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %lor.lhs.false28
  %40 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i.i, align 4
  %42 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_len.i.i, align 8
  %.neg37 = add i32 %41, -8
  %sub.i4.i11 = sub i32 %.neg37, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i11)
  %cmp.not.i.i12 = icmp slt i32 %sub.i4.i11, 20
  br i1 %cmp.not.i.i12, label %if.end.i.i17, label %skb_header_pointer.exit23, !prof !220

if.end.i.i17:                                     ; preds = %if.end33
  %tobool2.not.i.i16 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i16, label %if.end.i.i17.if.then36_crit_edge, label %lor.lhs.false.i.i21

if.end.i.i17.if.then36_crit_edge:                 ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

lor.lhs.false.i.i21:                              ; preds = %if.end.i.i17
  %call.i.i18 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 8, ptr noundef nonnull %_arpp, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %cmp3.i.i19 = icmp slt i32 %call.i.i18, 0
  br i1 %cmp3.i.i19, label %lor.lhs.false.i.i21.if.then36_crit_edge, label %lor.lhs.false.i.i21.if.end38_crit_edge

lor.lhs.false.i.i21.if.end38_crit_edge:           ; preds = %lor.lhs.false.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

lor.lhs.false.i.i21.if.then36_crit_edge:          ; preds = %lor.lhs.false.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

skb_header_pointer.exit23:                        ; preds = %if.end33
  %data.i13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %44 = ptrtoint ptr %data.i13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i13, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %45, i32 8
  %tobool35.not = icmp eq ptr %add.ptr.i.i14, null
  br i1 %tobool35.not, label %skb_header_pointer.exit23.if.then36_crit_edge, label %skb_header_pointer.exit23.if.end38_crit_edge

skb_header_pointer.exit23.if.end38_crit_edge:     ; preds = %skb_header_pointer.exit23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

skb_header_pointer.exit23.if.then36_crit_edge:    ; preds = %skb_header_pointer.exit23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.then36:                                        ; preds = %skb_header_pointer.exit23.if.then36_crit_edge, %lor.lhs.false.i.i21.if.then36_crit_edge, %if.end.i.i17.if.then36_crit_edge
  %46 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i.i, align 4
  %sub = add i32 %47, -8
  %call37 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.58, i32 noundef %sub) #7
  br label %cleanup

if.end38:                                         ; preds = %skb_header_pointer.exit23.if.end38_crit_edge, %lor.lhs.false.i.i21.if.end38_crit_edge
  %retval.0.i.i2236 = phi ptr [ %add.ptr.i.i14, %skb_header_pointer.exit23.if.end38_crit_edge ], [ %_arpp, %lor.lhs.false.i.i21.if.end38_crit_edge ]
  %ip_src = getelementptr inbounds %struct.arppayload, ptr %retval.0.i.i2236, i32 0, i32 1
  %mac_dst = getelementptr inbounds %struct.arppayload, ptr %retval.0.i.i2236, i32 0, i32 2
  %ip_dst = getelementptr inbounds %struct.arppayload, ptr %retval.0.i.i2236, i32 0, i32 3
  %call43 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.59, ptr noundef nonnull %retval.0.i.i2236, ptr noundef %ip_src, ptr noundef %mac_dst, ptr noundef %ip_dst) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then36, %lor.lhs.false28.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_arph) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_arpp) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nf_log_ip6_packet(ptr noundef %net, i8 noundef zeroext %pf, i32 noundef %hooknum, ptr noundef %skb, ptr noundef %in, ptr noundef %out, ptr noundef readonly %loginfo, ptr noundef %prefix) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_nf_log_all_netns to i32))
  %0 = load i32, ptr @sysctl_nf_log_all_netns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call ptr @nf_log_buf_open() #7
  %tobool3.not = icmp eq ptr %loginfo, null
  %spec.store.select = select i1 %tobool3.not, ptr @default_loginfo, ptr %loginfo
  tail call fastcc void @nf_log_dump_packet_common(ptr noundef %call2, ptr noundef %skb, ptr noundef %in, ptr noundef %out, ptr noundef %spec.store.select, ptr noundef %prefix)
  %tobool6.not = icmp eq ptr %in, null
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end
  %1 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %spec.store.select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i21 = icmp eq i8 %5, 0
  br i1 %cmp.i21, label %if.then.i, label %if.then7.fallback.i_crit_edge

if.then7.fallback.i_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %fallback.i

if.then.i:                                        ; preds = %if.then7
  %u.i = getelementptr inbounds %struct.nf_loginfo, ptr %spec.store.select, i32 0, i32 1
  %logflags2.i = getelementptr inbounds %struct.anon.186, ptr %u.i, i32 0, i32 1
  %6 = ptrtoint ptr %logflags2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %logflags2.i, align 1
  %8 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %phi.cmp.i = icmp eq i8 %8, 0
  br i1 %phi.cmp.i, label %if.then.i.fallback.i_crit_edge, label %if.end5.i

if.then.i.fallback.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fallback.i

if.end5.i:                                        ; preds = %if.then.i
  %type6.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 32
  %9 = ptrtoint ptr %type6.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type6.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cond.i = icmp eq i16 %10, 1
  br i1 %cond.i, label %sw.bb.i, label %if.end5.i.fallback.i_crit_edge

if.end5.i.fallback.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fallback.i

sw.bb.i:                                          ; preds = %if.end5.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %13 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %14 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %conv.i.i.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %call10.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.6, ptr noundef %h_source.i, ptr noundef %add.ptr.i.i.i) #7
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %15 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %sw.bb.i.nf_log_dump_vlan.exit.i_crit_edge, label %if.end.i.i

sw.bb.i.nf_log_dump_vlan.exit.i_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_log_dump_vlan.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %vlan_tci.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %16 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vlan_tci.i.i, align 2
  %vlan_proto.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %18 = ptrtoint ptr %vlan_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vlan_proto.i.i, align 8
  %conv.i.i = zext i16 %19 to i32
  %conv1.i.i = zext i16 %17 to i32
  %call.i.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.12, i32 noundef %conv.i.i, i32 noundef %conv1.i.i) #7
  br label %nf_log_dump_vlan.exit.i

nf_log_dump_vlan.exit.i:                          ; preds = %if.end.i.i, %sw.bb.i.nf_log_dump_vlan.exit.i_crit_edge
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %22 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i91.i = zext i16 %23 to i32
  %add.ptr.i.i92.i = getelementptr i8, ptr %21, i32 %conv.i.i91.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i92.i, i32 0, i32 2
  %24 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %h_proto.i, align 1
  %conv12.i = zext i16 %25 to i32
  %call13.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.7, i32 noundef %conv12.i) #7
  br label %if.end8

fallback.i:                                       ; preds = %if.end5.i.fallback.i_crit_edge, %if.then.i.fallback.i_crit_edge, %if.then7.fallback.i_crit_edge
  %call14.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.8) #7
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  %26 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hard_header_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool16.not.i = icmp eq i16 %27, 0
  br i1 %tobool16.not.i, label %fallback.i.if.else.i_crit_edge, label %land.lhs.true.i

fallback.i.if.else.i_crit_edge:                   ; preds = %fallback.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %fallback.i
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %28 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp19.not.i = icmp eq i16 %29, %31
  br i1 %cmp19.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then21.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i, align 8
  %conv.i93.i = zext i16 %29 to i32
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %conv.i93.i
  %conv24.i = zext i16 %27 to i32
  %type25.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 32
  %34 = ptrtoint ptr %type25.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %type25.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 776, i16 %35)
  %cmp27.i = icmp eq i16 %35, 776
  br i1 %cmp27.i, label %if.then29.i, label %if.then21.i.if.end34.i_crit_edge

if.then21.i.if.end34.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then29.i:                                      ; preds = %if.then21.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 -14
  %cmp30.i = icmp ult ptr %add.ptr.i, %33
  br i1 %cmp30.i, label %if.then29.i.if.end44.i_crit_edge, label %if.then29.i.if.end34.i_crit_edge

if.then29.i.if.end34.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then29.i.if.end44.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.end34.i:                                       ; preds = %if.then29.i.if.end34.i_crit_edge, %if.then21.i.if.end34.i_crit_edge
  %p.0.i = phi ptr [ %add.ptr.i, %if.then29.i.if.end34.i_crit_edge ], [ %add.ptr.i.i, %if.then21.i.if.end34.i_crit_edge ]
  %tobool35.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool35.not.i, label %if.end34.i.if.end44.i_crit_edge, label %if.then36.i

if.end34.i.if.end44.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.then36.i:                                      ; preds = %if.end34.i
  %36 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %p.0.i, align 1
  %conv37.i = zext i8 %37 to i32
  %call38.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.9, i32 noundef %conv37.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %27)
  %cmp39100.i = icmp ugt i16 %27, 1
  br i1 %cmp39100.i, label %if.then36.i.for.body.i_crit_edge, label %if.then36.i.if.end44.i_crit_edge

if.then36.i.if.end44.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.then36.i.for.body.i_crit_edge:                 ; preds = %if.then36.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then36.i.for.body.i_crit_edge
  %i.0102.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.then36.i.for.body.i_crit_edge ]
  %p.0.pn101.i = phi ptr [ %p.1.i, %for.body.i.for.body.i_crit_edge ], [ %p.0.i, %if.then36.i.for.body.i_crit_edge ]
  %p.1.i = getelementptr i8, ptr %p.0.pn101.i, i32 1
  %38 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %p.1.i, align 1
  %conv42.i = zext i8 %39 to i32
  %call43.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.10, i32 noundef %conv42.i) #7
  %inc.i = add nuw nsw i32 %i.0102.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv24.i
  br i1 %exitcond.not.i, label %for.body.i.if.end44.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.end44.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.end44.i:                                       ; preds = %for.body.i.if.end44.i_crit_edge, %if.then36.i.if.end44.i_crit_edge, %if.end34.i.if.end44.i_crit_edge, %if.then29.i.if.end44.i_crit_edge
  %call45.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.11) #7
  %40 = ptrtoint ptr %type25.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %type25.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 776, i16 %41)
  %cmp48.i = icmp eq i16 %41, 776
  br i1 %cmp48.i, label %if.then50.i, label %if.end44.i.if.end8_crit_edge

if.end44.i.if.end8_crit_edge:                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then50.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i.i, align 8
  %44 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %mac_header.i, align 2
  %conv.i96.i = zext i16 %45 to i32
  %add.ptr.i97.i = getelementptr i8, ptr %43, i32 %conv.i96.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i97.i, i32 0, i32 8
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i97.i, i32 0, i32 9
  %call52.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.61, ptr noundef %saddr.i, ptr noundef %daddr.i) #7
  br label %if.end8

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %fallback.i.if.else.i_crit_edge
  %call54.i = tail call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %call2, ptr noundef nonnull @.str.11) #7
  br label %if.end8

if.end8:                                          ; preds = %if.else.i, %if.then50.i, %if.end44.i.if.end8_crit_edge, %nf_log_dump_vlan.exit.i, %if.end.if.end8_crit_edge
  %head.i.i22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %46 = ptrtoint ptr %head.i.i22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i22, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %48 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i23 = zext i16 %49 to i32
  %add.ptr.i.i24 = getelementptr i8, ptr %47, i32 %conv.i.i23
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call fastcc void @dump_ipv6_packet(ptr noundef %net, ptr noundef %call2, ptr noundef %spec.store.select, ptr noundef %skb, i32 noundef %sub.ptr.sub.i, i32 noundef 1)
  tail call void @nf_log_buf_close(ptr noundef %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_ipv6_packet(ptr noundef %net, ptr noundef %m, ptr nocapture noundef readonly %info, ptr noundef %skb, i32 noundef %ip6hoff, i32 noundef %recurse) unnamed_addr #4 align 64 {
entry:
  %_ip6h = alloca %struct.ipv6hdr, align 4
  %_hdr = alloca %struct.ipv6_opt_hdr, align 1
  %_fhdr = alloca %struct.frag_hdr, align 8
  %_ahdr = alloca %struct.ip_auth_hdr, align 4
  %_esph = alloca %struct.ip_esp_hdr, align 4
  %_icmp6h = alloca %struct.icmp6hdr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_ip6h) #7
  %0 = call ptr @memset(ptr %_ip6h, i32 255, i32 40)
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %u = getelementptr inbounds %struct.nf_loginfo, ptr %info, i32 0, i32 1
  %logflags2 = getelementptr inbounds %struct.anon.186, ptr %u, i32 0, i32 1
  %3 = ptrtoint ptr %logflags2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %logflags2, align 1
  %conv3 = zext i8 %4 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %logflags.0 = phi i32 [ %conv3, %if.then ], [ 15, %entry.if.end_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %9 = add i32 %8, %ip6hoff
  %sub.i4.i = sub i32 %6, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 40
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !220

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then4_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then4_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %ip6hoff, ptr noundef nonnull %_ip6h, i32 noundef 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then4_crit_edge, label %lor.lhs.false.i.i.if.end6_crit_edge

lor.lhs.false.i.i.if.end6_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

lor.lhs.false.i.i.if.then4_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %ip6hoff
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.if.then4_crit_edge, label %skb_header_pointer.exit.if.end6_crit_edge

skb_header_pointer.exit.if.end6_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

skb_header_pointer.exit.if.then4_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %skb_header_pointer.exit.if.then4_crit_edge, %lor.lhs.false.i.i.if.then4_crit_edge, %if.end.i.i.if.then4_crit_edge
  %call5 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.13) #7
  br label %cleanup196

if.end6:                                          ; preds = %skb_header_pointer.exit.if.end6_crit_edge, %lor.lhs.false.i.i.if.end6_crit_edge
  %retval.0.i.i385 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end6_crit_edge ], [ %_ip6h, %lor.lhs.false.i.i.if.end6_crit_edge ]
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i385, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i385, i32 0, i32 6
  %call7 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.62, ptr noundef %saddr, ptr noundef %daddr) #7
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i385, i32 0, i32 2
  %12 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %payload_len, align 4
  %conv8 = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv8, 40
  %14 = ptrtoint ptr %retval.0.i.i385 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %retval.0.i.i385, align 4
  %and = lshr i32 %15, 20
  %shr = and i32 %and, 255
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i385, i32 0, i32 4
  %16 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hop_limit, align 1
  %conv9 = zext i8 %17 to i32
  %and10 = and i32 %15, 1048575
  %call11 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.63, i32 noundef %add, i32 noundef %shr, i32 noundef %conv9, i32 noundef %and10) #7
  %add12 = add i32 %ip6hoff, 40
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i385, i32 0, i32 3
  %18 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nexthdr, align 2
  %20 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %_hdr, i32 0, i32 1
  %data.i324 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tobool2.not.i.i327 = icmp eq ptr %skb, null
  %and23 = and i32 %logflags.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br label %while.cond

while.cond:                                       ; preds = %cleanup120, %if.end6
  %ptr.0 = phi i32 [ %add12, %if.end6 ], [ %add119, %cleanup120 ]
  %currenthdr.0 = phi i8 [ %19, %if.end6 ], [ %81, %cleanup120 ]
  %fragment.0 = phi i32 [ 0, %if.end6 ], [ %fragment.3, %cleanup120 ]
  %21 = zext i8 %currenthdr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %currenthdr.0, label %sw.default181 [
    i8 58, label %sw.bb135
    i8 0, label %while.cond.while.body_crit_edge
    i8 43, label %while.cond.while.body_crit_edge643
    i8 44, label %while.cond.while.body_crit_edge644
    i8 50, label %while.cond.while.body_crit_edge645
    i8 51, label %while.cond.while.body_crit_edge646
    i8 60, label %while.cond.while.body_crit_edge647
    i8 6, label %sw.bb125
    i8 17, label %while.cond.sw.bb130_crit_edge
    i8 -120, label %while.cond.sw.bb130_crit_edge648
  ]

while.cond.sw.bb130_crit_edge648:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb130

while.cond.sw.bb130_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb130

while.cond.while.body_crit_edge647:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.while.body_crit_edge646:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.while.body_crit_edge645:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.while.body_crit_edge644:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.while.body_crit_edge643:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.while.body_crit_edge643, %while.cond.while.body_crit_edge644, %while.cond.while.body_crit_edge645, %while.cond.while.body_crit_edge646, %while.cond.while.body_crit_edge647
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_hdr) #7
  %22 = ptrtoint ptr %_hdr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %_hdr, align 1, !annotation !221
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %20, align 1, !annotation !221
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  %26 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i, align 8
  %28 = add i32 %ptr.0, %27
  %sub.i4.i322 = sub i32 %25, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i322)
  %cmp.not.i.i323 = icmp slt i32 %sub.i4.i322, 2
  br i1 %cmp.not.i.i323, label %if.end.i.i328, label %skb_header_pointer.exit334, !prof !220

if.end.i.i328:                                    ; preds = %while.body
  br i1 %tobool2.not.i.i327, label %if.end.i.i328.if.then20_crit_edge, label %lor.lhs.false.i.i332

if.end.i.i328.if.then20_crit_edge:                ; preds = %if.end.i.i328
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

lor.lhs.false.i.i332:                             ; preds = %if.end.i.i328
  %call.i.i329 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %ptr.0, ptr noundef nonnull %_hdr, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i329)
  %cmp3.i.i330 = icmp slt i32 %call.i.i329, 0
  br i1 %cmp3.i.i330, label %lor.lhs.false.i.i332.if.then20_crit_edge, label %lor.lhs.false.i.i332.if.end22_crit_edge

lor.lhs.false.i.i332.if.end22_crit_edge:          ; preds = %lor.lhs.false.i.i332
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

lor.lhs.false.i.i332.if.then20_crit_edge:         ; preds = %lor.lhs.false.i.i332
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

skb_header_pointer.exit334:                       ; preds = %while.body
  %29 = ptrtoint ptr %data.i324 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i324, align 4
  %add.ptr.i.i325 = getelementptr i8, ptr %30, i32 %ptr.0
  %tobool19.not = icmp eq ptr %add.ptr.i.i325, null
  br i1 %tobool19.not, label %skb_header_pointer.exit334.if.then20_crit_edge, label %skb_header_pointer.exit334.if.end22_crit_edge

skb_header_pointer.exit334.if.end22_crit_edge:    ; preds = %skb_header_pointer.exit334
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

skb_header_pointer.exit334.if.then20_crit_edge:   ; preds = %skb_header_pointer.exit334
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.then20:                                        ; preds = %skb_header_pointer.exit334.if.then20_crit_edge, %lor.lhs.false.i.i332.if.then20_crit_edge, %if.end.i.i328.if.then20_crit_edge
  %call21 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.13) #7
  br label %cleanup120.thread

if.end22:                                         ; preds = %skb_header_pointer.exit334.if.end22_crit_edge, %lor.lhs.false.i.i332.if.end22_crit_edge
  %retval.0.i.i333393 = phi ptr [ %add.ptr.i.i325, %skb_header_pointer.exit334.if.end22_crit_edge ], [ %_hdr, %lor.lhs.false.i.i332.if.end22_crit_edge ]
  br i1 %tobool24.not, label %if.end22.if.end27_crit_edge, label %if.then25

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.64) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22.if.end27_crit_edge
  %31 = zext i8 %currenthdr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %currenthdr.0, label %sw.default [
    i8 44, label %sw.bb
    i8 60, label %if.end27.sw.bb53_crit_edge
    i8 43, label %if.end27.sw.bb53_crit_edge649
    i8 0, label %if.end27.sw.bb53_crit_edge650
    i8 51, label %sw.bb65
    i8 50, label %sw.bb88
  ]

if.end27.sw.bb53_crit_edge650:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53

if.end27.sw.bb53_crit_edge649:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53

if.end27.sw.bb53_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53

sw.bb:                                            ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_fhdr) #7
  %32 = ptrtoint ptr %_fhdr to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -1, ptr %_fhdr, align 8
  %call29 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.65) #7
  %33 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i, align 4
  %35 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i.i, align 8
  %37 = add i32 %ptr.0, %36
  %sub.i4.i337 = sub i32 %34, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i337)
  %cmp.not.i.i338 = icmp slt i32 %sub.i4.i337, 8
  br i1 %cmp.not.i.i338, label %if.end.i.i343, label %skb_header_pointer.exit349, !prof !220

if.end.i.i343:                                    ; preds = %sw.bb
  br i1 %tobool2.not.i.i327, label %if.end.i.i343.cleanup.thread_crit_edge, label %lor.lhs.false.i.i347

if.end.i.i343.cleanup.thread_crit_edge:           ; preds = %if.end.i.i343
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

lor.lhs.false.i.i347:                             ; preds = %if.end.i.i343
  %call.i.i344 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %ptr.0, ptr noundef nonnull %_fhdr, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i344)
  %cmp3.i.i345 = icmp slt i32 %call.i.i344, 0
  br i1 %cmp3.i.i345, label %lor.lhs.false.i.i347.cleanup.thread_crit_edge, label %lor.lhs.false.i.i347.if.end34_crit_edge

lor.lhs.false.i.i347.if.end34_crit_edge:          ; preds = %lor.lhs.false.i.i347
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

lor.lhs.false.i.i347.cleanup.thread_crit_edge:    ; preds = %lor.lhs.false.i.i347
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

skb_header_pointer.exit349:                       ; preds = %sw.bb
  %38 = ptrtoint ptr %data.i324 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i324, align 4
  %add.ptr.i.i340 = getelementptr i8, ptr %39, i32 %ptr.0
  %tobool31.not = icmp eq ptr %add.ptr.i.i340, null
  br i1 %tobool31.not, label %skb_header_pointer.exit349.cleanup.thread_crit_edge, label %skb_header_pointer.exit349.if.end34_crit_edge

skb_header_pointer.exit349.if.end34_crit_edge:    ; preds = %skb_header_pointer.exit349
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

skb_header_pointer.exit349.cleanup.thread_crit_edge: ; preds = %skb_header_pointer.exit349
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %skb_header_pointer.exit349.cleanup.thread_crit_edge, %lor.lhs.false.i.i347.cleanup.thread_crit_edge, %if.end.i.i343.cleanup.thread_crit_edge
  %call33 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.66) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_fhdr) #7
  br label %cleanup120.thread

if.end34:                                         ; preds = %skb_header_pointer.exit349.if.end34_crit_edge, %lor.lhs.false.i.i347.if.end34_crit_edge
  %retval.0.i.i348402 = phi ptr [ %add.ptr.i.i340, %skb_header_pointer.exit349.if.end34_crit_edge ], [ %_fhdr, %lor.lhs.false.i.i347.if.end34_crit_edge ]
  %frag_off = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i348402, i32 0, i32 2
  %40 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %frag_off, align 2
  %42 = and i16 %41, -8
  %and36 = zext i16 %42 to i32
  %call37 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.67, i32 noundef %and36) #7
  %43 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %frag_off, align 2
  %45 = and i16 %44, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool41.not = icmp eq i16 %45, 0
  br i1 %tobool41.not, label %if.end34.cleanup_crit_edge, label %if.then42

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.68) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end34.cleanup_crit_edge
  %identification = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i348402, i32 0, i32 3
  %46 = ptrtoint ptr %identification to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %identification, align 4
  %call45 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.69, i32 noundef %47) #7
  %48 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %frag_off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %49)
  %tobool49.not = icmp ult i16 %49, 8
  %spec.select = select i1 %tobool49.not, i32 %fragment.0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_fhdr) #7
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end27.sw.bb53_crit_edge, %if.end27.sw.bb53_crit_edge649, %if.end27.sw.bb53_crit_edge650
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fragment.0)
  %tobool54.not = icmp eq i32 %fragment.0, 0
  br i1 %tobool54.not, label %if.end61, label %if.then55

if.then55:                                        ; preds = %sw.bb53
  br i1 %tobool24.not, label %if.then55.cleanup120.thread_crit_edge, label %if.then58

if.then55.cleanup120.thread_crit_edge:            ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup120.thread

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %call59 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.70) #7
  br label %cleanup120.thread

if.end61:                                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  %hdrlen62 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %retval.0.i.i333393, i32 0, i32 1
  %50 = ptrtoint ptr %hdrlen62 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %hdrlen62, align 1
  %conv63 = zext i8 %51 to i32
  %add64 = shl nuw nsw i32 %conv63, 3
  %shl = add nuw nsw i32 %add64, 8
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end27
  br i1 %tobool24.not, label %sw.bb65.if.end83_crit_edge, label %if.then68

sw.bb65.if.end83_crit_edge:                       ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then68:                                        ; preds = %sw.bb65
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_ahdr) #7
  %52 = call ptr @memset(ptr %_ahdr, i32 255, i32 12)
  %call69 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.71) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fragment.0)
  %tobool70.not = icmp eq i32 %fragment.0, 0
  br i1 %tobool70.not, label %if.end73, label %if.then71

if.then71:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  %call72 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.70) #7
  br label %cleanup80

if.end73:                                         ; preds = %if.then68
  %53 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i.i, align 4
  %55 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data_len.i.i, align 8
  %57 = add i32 %ptr.0, %56
  %sub.i4.i352 = sub i32 %54, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i4.i352)
  %cmp.not.i.i353 = icmp slt i32 %sub.i4.i352, 12
  br i1 %cmp.not.i.i353, label %if.end.i.i358, label %skb_header_pointer.exit364, !prof !220

if.end.i.i358:                                    ; preds = %if.end73
  br i1 %tobool2.not.i.i327, label %if.end.i.i358.if.then76_crit_edge, label %lor.lhs.false.i.i362

if.end.i.i358.if.then76_crit_edge:                ; preds = %if.end.i.i358
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76

lor.lhs.false.i.i362:                             ; preds = %if.end.i.i358
  %call.i.i359 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %ptr.0, ptr noundef nonnull %_ahdr, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i359)
  %cmp3.i.i360 = icmp slt i32 %call.i.i359, 0
  br i1 %cmp3.i.i360, label %lor.lhs.false.i.i362.if.then76_crit_edge, label %lor.lhs.false.i.i362.if.end78_crit_edge

lor.lhs.false.i.i362.if.end78_crit_edge:          ; preds = %lor.lhs.false.i.i362
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

lor.lhs.false.i.i362.if.then76_crit_edge:         ; preds = %lor.lhs.false.i.i362
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76

skb_header_pointer.exit364:                       ; preds = %if.end73
  %58 = ptrtoint ptr %data.i324 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i324, align 4
  %add.ptr.i.i355 = getelementptr i8, ptr %59, i32 %ptr.0
  %tobool75.not = icmp eq ptr %add.ptr.i.i355, null
  br i1 %tobool75.not, label %skb_header_pointer.exit364.if.then76_crit_edge, label %skb_header_pointer.exit364.if.end78_crit_edge

skb_header_pointer.exit364.if.end78_crit_edge:    ; preds = %skb_header_pointer.exit364
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

skb_header_pointer.exit364.if.then76_crit_edge:   ; preds = %skb_header_pointer.exit364
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76

if.then76:                                        ; preds = %skb_header_pointer.exit364.if.then76_crit_edge, %lor.lhs.false.i.i362.if.then76_crit_edge, %if.end.i.i358.if.then76_crit_edge
  %60 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.i.i, align 4
  %sub = sub i32 %61, %ptr.0
  %call77 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.72, i32 noundef %sub) #7
  br label %cleanup80

if.end78:                                         ; preds = %skb_header_pointer.exit364.if.end78_crit_edge, %lor.lhs.false.i.i362.if.end78_crit_edge
  %retval.0.i.i363413 = phi ptr [ %add.ptr.i.i355, %skb_header_pointer.exit364.if.end78_crit_edge ], [ %_ahdr, %lor.lhs.false.i.i362.if.end78_crit_edge ]
  %spi = getelementptr inbounds %struct.ip_auth_hdr, ptr %retval.0.i.i363413, i32 0, i32 3
  %62 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %spi, align 4
  %call79 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %63) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_ahdr) #7
  br label %if.end83

cleanup80:                                        ; preds = %if.then76, %if.then71
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_ahdr) #7
  br label %cleanup120.thread

if.end83:                                         ; preds = %if.end78, %sw.bb65.if.end83_crit_edge
  %hdrlen84 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %retval.0.i.i333393, i32 0, i32 1
  %64 = ptrtoint ptr %hdrlen84 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %hdrlen84, align 1
  %conv85 = zext i8 %65 to i32
  %add86 = shl nuw nsw i32 %conv85, 2
  %shl87 = add nuw nsw i32 %add86, 8
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end27
  br i1 %tobool24.not, label %sw.bb88.cleanup120.thread_crit_edge, label %if.then91

sw.bb88.cleanup120.thread_crit_edge:              ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup120.thread

if.then91:                                        ; preds = %sw.bb88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_esph) #7
  %66 = ptrtoint ptr %_esph to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %_esph, align 4, !annotation !221
  %67 = getelementptr inbounds %struct.ip_esp_hdr, ptr %_esph, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %67, align 4, !annotation !221
  %call92 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fragment.0)
  %tobool93.not = icmp eq i32 %fragment.0, 0
  br i1 %tobool93.not, label %if.end96, label %if.then94

if.then94:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  %call95 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.70) #7
  br label %cleanup106

if.end96:                                         ; preds = %if.then91
  %69 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len.i.i, align 4
  %71 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data_len.i.i, align 8
  %73 = add i32 %ptr.0, %72
  %sub.i4.i367 = sub i32 %70, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i367)
  %cmp.not.i.i368 = icmp slt i32 %sub.i4.i367, 8
  br i1 %cmp.not.i.i368, label %if.end.i.i373, label %skb_header_pointer.exit379, !prof !220

if.end.i.i373:                                    ; preds = %if.end96
  br i1 %tobool2.not.i.i327, label %if.end.i.i373.if.then99_crit_edge, label %lor.lhs.false.i.i377

if.end.i.i373.if.then99_crit_edge:                ; preds = %if.end.i.i373
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then99

lor.lhs.false.i.i377:                             ; preds = %if.end.i.i373
  %call.i.i374 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %ptr.0, ptr noundef nonnull %_esph, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i374)
  %cmp3.i.i375 = icmp slt i32 %call.i.i374, 0
  br i1 %cmp3.i.i375, label %lor.lhs.false.i.i377.if.then99_crit_edge, label %lor.lhs.false.i.i377.if.end103_crit_edge

lor.lhs.false.i.i377.if.end103_crit_edge:         ; preds = %lor.lhs.false.i.i377
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

lor.lhs.false.i.i377.if.then99_crit_edge:         ; preds = %lor.lhs.false.i.i377
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then99

skb_header_pointer.exit379:                       ; preds = %if.end96
  %74 = ptrtoint ptr %data.i324 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i324, align 4
  %add.ptr.i.i370 = getelementptr i8, ptr %75, i32 %ptr.0
  %tobool98.not = icmp eq ptr %add.ptr.i.i370, null
  br i1 %tobool98.not, label %skb_header_pointer.exit379.if.then99_crit_edge, label %skb_header_pointer.exit379.if.end103_crit_edge

skb_header_pointer.exit379.if.end103_crit_edge:   ; preds = %skb_header_pointer.exit379
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

skb_header_pointer.exit379.if.then99_crit_edge:   ; preds = %skb_header_pointer.exit379
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then99

if.then99:                                        ; preds = %skb_header_pointer.exit379.if.then99_crit_edge, %lor.lhs.false.i.i377.if.then99_crit_edge, %if.end.i.i373.if.then99_crit_edge
  %76 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len.i.i, align 4
  %sub101 = sub i32 %77, %ptr.0
  %call102 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.72, i32 noundef %sub101) #7
  br label %cleanup106

if.end103:                                        ; preds = %skb_header_pointer.exit379.if.end103_crit_edge, %lor.lhs.false.i.i377.if.end103_crit_edge
  %retval.0.i.i378420 = phi ptr [ %add.ptr.i.i370, %skb_header_pointer.exit379.if.end103_crit_edge ], [ %_esph, %lor.lhs.false.i.i377.if.end103_crit_edge ]
  %78 = ptrtoint ptr %retval.0.i.i378420 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %retval.0.i.i378420, align 4
  %call105 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.74, i32 noundef %79) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_esph) #7
  br label %cleanup120.thread

cleanup106:                                       ; preds = %if.then99, %if.then94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_esph) #7
  br label %cleanup120.thread

sw.default:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %conv13.le = zext i8 %currenthdr.0 to i32
  %call112 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.75, i32 noundef %conv13.le) #7
  br label %cleanup120.thread

sw.epilog:                                        ; preds = %if.end83, %if.end61, %cleanup
  %hdrlen.2 = phi i32 [ %shl87, %if.end83 ], [ %shl, %if.end61 ], [ 8, %cleanup ]
  %fragment.3 = phi i32 [ %fragment.0, %if.end83 ], [ 0, %if.end61 ], [ %spec.select, %cleanup ]
  br i1 %tobool24.not, label %sw.epilog.cleanup120_crit_edge, label %if.then115

sw.epilog.cleanup120_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup120

if.then115:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call116 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.22) #7
  br label %cleanup120

cleanup120.thread:                                ; preds = %sw.default, %cleanup106, %if.end103, %sw.bb88.cleanup120.thread_crit_edge, %cleanup80, %if.then58, %if.then55.cleanup120.thread_crit_edge, %cleanup.thread, %if.then20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #7
  br label %cleanup196

cleanup120:                                       ; preds = %if.then115, %sw.epilog.cleanup120_crit_edge
  %80 = ptrtoint ptr %retval.0.i.i333393 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %retval.0.i.i333393, align 1
  %add119 = add i32 %hdrlen.2, %ptr.0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #7
  br label %while.cond

sw.bb125:                                         ; preds = %while.cond
  %call126 = call fastcc i32 @nf_log_dump_tcp_header(ptr noundef %m, ptr noundef %skb, i32 noundef %fragment.0, i32 noundef %ptr.0, i32 noundef %logflags.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %sw.bb125.sw.epilog184_crit_edge, label %sw.bb125.cleanup196_crit_edge

sw.bb125.cleanup196_crit_edge:                    ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup196

sw.bb125.sw.epilog184_crit_edge:                  ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog184

sw.bb130:                                         ; preds = %while.cond.sw.bb130_crit_edge, %while.cond.sw.bb130_crit_edge648
  %call131 = call fastcc i32 @nf_log_dump_udp_header(ptr noundef %m, ptr noundef %skb, i8 noundef zeroext %currenthdr.0, i32 noundef %fragment.0, i32 noundef %ptr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %sw.bb130.sw.epilog184_crit_edge, label %sw.bb130.cleanup196_crit_edge

sw.bb130.cleanup196_crit_edge:                    ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup196

sw.bb130.sw.epilog184_crit_edge:                  ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog184

sw.bb135:                                         ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_icmp6h) #7
  %82 = ptrtoint ptr %_icmp6h to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 -1, ptr %_icmp6h, align 8
  %call136 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.76) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fragment.0)
  %tobool137.not = icmp eq i32 %fragment.0, 0
  br i1 %tobool137.not, label %if.end139, label %sw.bb135.cleanup178_crit_edge

sw.bb135.cleanup178_crit_edge:                    ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup178

if.end139:                                        ; preds = %sw.bb135
  %call140 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %ptr.0, i32 noundef 8, ptr noundef nonnull %_icmp6h)
  %tobool141.not = icmp eq ptr %call140, null
  br i1 %tobool141.not, label %if.then142, label %if.end146

if.then142:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len.i.i, align 4
  %sub144 = sub i32 %84, %ptr.0
  %call145 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %sub144) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_icmp6h) #7
  br label %cleanup196

if.end146:                                        ; preds = %if.end139
  %85 = ptrtoint ptr %call140 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %call140, align 4
  %conv147 = zext i8 %86 to i32
  %icmp6_code = getelementptr inbounds %struct.icmp6hdr, ptr %call140, i32 0, i32 1
  %87 = ptrtoint ptr %icmp6_code to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %icmp6_code, align 1
  %conv148 = zext i8 %88 to i32
  %call149 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.25, i32 noundef %conv147, i32 noundef %conv148) #7
  %89 = ptrtoint ptr %call140 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %call140, align 4
  %91 = zext i8 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %90, label %if.end146.cleanup178_crit_edge [
    i8 -128, label %if.end146.sw.bb152_crit_edge
    i8 -127, label %if.end146.sw.bb152_crit_edge651
    i8 3, label %if.end146.sw.bb161_crit_edge
    i8 2, label %if.end146.sw.bb161_crit_edge652
    i8 1, label %if.end146.sw.bb161_crit_edge653
    i8 4, label %sw.bb158
  ]

if.end146.sw.bb161_crit_edge653:                  ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb161

if.end146.sw.bb161_crit_edge652:                  ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb161

if.end146.sw.bb161_crit_edge:                     ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb161

if.end146.sw.bb152_crit_edge651:                  ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb152

if.end146.sw.bb152_crit_edge:                     ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb152

if.end146.cleanup178_crit_edge:                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup178

sw.bb152:                                         ; preds = %if.end146.sw.bb152_crit_edge, %if.end146.sw.bb152_crit_edge651
  %icmp6_dataun = getelementptr inbounds %struct.icmp6hdr, ptr %call140, i32 0, i32 3
  %92 = ptrtoint ptr %icmp6_dataun to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %icmp6_dataun, align 4
  %conv153 = zext i16 %93 to i32
  %sequence = getelementptr inbounds %struct.icmpv6_echo, ptr %icmp6_dataun, i32 0, i32 1
  %94 = ptrtoint ptr %sequence to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %sequence, align 2
  %conv155 = zext i16 %95 to i32
  %call156 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.26, i32 noundef %conv153, i32 noundef %conv155) #7
  br label %cleanup178

sw.bb158:                                         ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  %icmp6_dataun159 = getelementptr inbounds %struct.icmp6hdr, ptr %call140, i32 0, i32 3
  %96 = ptrtoint ptr %icmp6_dataun159 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %icmp6_dataun159, align 4
  %call160 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.77, i32 noundef %97) #7
  br label %sw.bb161

sw.bb161:                                         ; preds = %sw.bb158, %if.end146.sw.bb161_crit_edge, %if.end146.sw.bb161_crit_edge652, %if.end146.sw.bb161_crit_edge653
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %recurse)
  %tobool162.not = icmp eq i32 %recurse, 0
  br i1 %tobool162.not, label %sw.bb161.if.end167_crit_edge, label %if.then163

sw.bb161.if.end167_crit_edge:                     ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

if.then163:                                       ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #9
  %call164 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.29) #7
  %add165 = add i32 %ptr.0, 8
  call fastcc void @dump_ipv6_packet(ptr noundef %net, ptr noundef %m, ptr noundef %info, ptr noundef %skb, i32 noundef %add165, i32 noundef 0)
  %call166 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.30) #7
  br label %if.end167

if.end167:                                        ; preds = %if.then163, %sw.bb161.if.end167_crit_edge
  %98 = ptrtoint ptr %call140 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %call140, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %99)
  %cmp170 = icmp eq i8 %99, 2
  br i1 %cmp170, label %if.then172, label %if.end167.cleanup178_crit_edge

if.end167.cleanup178_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup178

if.then172:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  %icmp6_dataun173 = getelementptr inbounds %struct.icmp6hdr, ptr %call140, i32 0, i32 3
  %100 = ptrtoint ptr %icmp6_dataun173 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %icmp6_dataun173, align 4
  %call175 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %101) #7
  br label %cleanup178

cleanup178:                                       ; preds = %if.then172, %if.end167.cleanup178_crit_edge, %sw.bb152, %if.end146.cleanup178_crit_edge, %sw.bb135.cleanup178_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_icmp6h) #7
  br label %sw.epilog184

sw.default181:                                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %conv13.le491 = zext i8 %currenthdr.0 to i32
  %call183 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.35, i32 noundef %conv13.le491) #7
  br label %sw.epilog184

sw.epilog184:                                     ; preds = %sw.default181, %cleanup178, %sw.bb130.sw.epilog184_crit_edge, %sw.bb125.sw.epilog184_crit_edge
  %and185 = and i32 %logflags.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %recurse)
  %tobool187.not = icmp eq i32 %recurse, 0
  %or.cond = or i1 %tobool187.not, %tobool186.not
  br i1 %or.cond, label %sw.epilog184.if.end189_crit_edge, label %if.then188

sw.epilog184.if.end189_crit_edge:                 ; preds = %sw.epilog184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

if.then188:                                       ; preds = %sw.epilog184
  call void @__sanitizer_cov_trace_pc() #9
  %102 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  call fastcc void @nf_log_dump_sk_uid_gid(ptr noundef %net, ptr noundef %m, ptr noundef %104)
  br label %if.end189

if.end189:                                        ; preds = %if.then188, %sw.epilog184.if.end189_crit_edge
  br i1 %tobool187.not, label %if.end189.cleanup196_crit_edge, label %land.lhs.true191

if.end189.cleanup196_crit_edge:                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup196

land.lhs.true191:                                 ; preds = %if.end189
  %105 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool192.not = icmp eq i32 %107, 0
  br i1 %tobool192.not, label %land.lhs.true191.cleanup196_crit_edge, label %if.then193

land.lhs.true191.cleanup196_crit_edge:            ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup196

if.then193:                                       ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #9
  %call194 = call i32 (ptr, ptr, ...) @nf_log_buf_add(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %107) #7
  br label %cleanup196

cleanup196:                                       ; preds = %if.then193, %land.lhs.true191.cleanup196_crit_edge, %if.end189.cleanup196_crit_edge, %if.then142, %sw.bb130.cleanup196_crit_edge, %sw.bb125.cleanup196_crit_edge, %cleanup120.thread, %if.then4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ip6h) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nf_log_netdev_packet(ptr noundef %net, i8 noundef zeroext %pf, i32 noundef %hooknum, ptr noundef %skb, ptr noundef %in, ptr noundef %out, ptr noundef %loginfo, ptr noundef %prefix) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.87)
  switch i16 %1, label %entry.sw.epilog_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb1
    i16 2054, label %entry.sw.bb2_crit_edge
    i16 -32715, label %entry.sw.bb2_crit_edge20
  ]

entry.sw.bb2_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nf_log_ip_packet(ptr noundef %net, i8 noundef zeroext %pf, i32 noundef %hooknum, ptr noundef %skb, ptr noundef %in, ptr noundef %out, ptr noundef %loginfo, ptr noundef %prefix)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nf_log_ip6_packet(ptr noundef %net, i8 noundef zeroext %pf, i32 noundef %hooknum, ptr noundef %skb, ptr noundef %in, ptr noundef %out, ptr noundef %loginfo, ptr noundef %prefix)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge20
  %cmp.i.not.i = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not.i, label %sw.bb2.if.end.i_crit_edge, label %land.lhs.true.i

sw.bb2.if.end.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_nf_log_all_netns to i32))
  %3 = load i32, ptr @sysctl_nf_log_all_netns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.sw.epilog_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.bb2.if.end.i_crit_edge
  %call2.i = tail call ptr @nf_log_buf_open() #7
  %tobool3.not.i = icmp eq ptr %loginfo, null
  %spec.store.select.i = select i1 %tobool3.not.i, ptr @default_loginfo, ptr %loginfo
  tail call fastcc void @nf_log_dump_packet_common(ptr noundef %call2.i, ptr noundef %skb, ptr noundef %in, ptr noundef %out, ptr noundef %spec.store.select.i, ptr noundef %prefix) #7
  tail call fastcc void @dump_arp_packet(ptr noundef %call2.i, ptr noundef %spec.store.select.i, ptr noundef %skb) #7
  tail call void @nf_log_buf_close(ptr noundef %call2.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i, %land.lhs.true.i.sw.epilog_crit_edge, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_log_register(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !208, !209, !210}
!llvm.module.flags = !{!211, !212, !213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !{ptr @__initcall__kmod_nf_log_syslog__618_1075_nf_log_syslog_init6, !1, !"__initcall__kmod_nf_log_syslog__618_1075_nf_log_syslog_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_log_syslog.c", i32 1075, i32 1}
!2 = !{ptr @__exitcall_nf_log_syslog_exit, !3, !"__exitcall_nf_log_syslog_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_log_syslog.c", i32 1076, i32 1}
!4 = !{ptr @__UNIQUE_ID_author619, !5, !"__UNIQUE_ID_author619", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_log_syslog.c", i32 1078, i32 1}
!6 = !{ptr @__UNIQUE_ID_description620, !7, !"__UNIQUE_ID_description620", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_log_syslog.c", i32 1079, i32 1}
!8 = !{ptr @__UNIQUE_ID_file621, !9, !"__UNIQUE_ID_file621", i1 false, i1 false}
!9 = !{!"../net/netfilter/nf_log_syslog.c", i32 1080, i32 1}
!10 = !{ptr @__UNIQUE_ID_license622, !9, !"__UNIQUE_ID_license622", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias623, !12, !"__UNIQUE_ID_alias623", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_log_syslog.c", i32 1081, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias624, !14, !"__UNIQUE_ID_alias624", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_log_syslog.c", i32 1082, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias625, !16, !"__UNIQUE_ID_alias625", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_log_syslog.c", i32 1083, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias626, !18, !"__UNIQUE_ID_alias626", i1 false, i1 false}
!18 = !{!"../net/netfilter/nf_log_syslog.c", i32 1084, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias627, !20, !"__UNIQUE_ID_alias627", i1 false, i1 false}
!20 = !{!"../net/netfilter/nf_log_syslog.c", i32 1085, i32 1}
!21 = !{ptr @__UNIQUE_ID_alias628, !22, !"__UNIQUE_ID_alias628", i1 false, i1 false}
!22 = !{!"../net/netfilter/nf_log_syslog.c", i32 1086, i32 1}
!23 = !{ptr @__UNIQUE_ID_alias629, !24, !"__UNIQUE_ID_alias629", i1 false, i1 false}
!24 = !{!"../net/netfilter/nf_log_syslog.c", i32 1087, i32 1}
!25 = !{ptr @__UNIQUE_ID_alias630, !26, !"__UNIQUE_ID_alias630", i1 false, i1 false}
!26 = !{!"../net/netfilter/nf_log_syslog.c", i32 1088, i32 1}
!27 = !{ptr @__UNIQUE_ID_alias631, !28, !"__UNIQUE_ID_alias631", i1 false, i1 false}
!28 = !{!"../net/netfilter/nf_log_syslog.c", i32 1089, i32 1}
!29 = !{ptr @__UNIQUE_ID_alias632, !30, !"__UNIQUE_ID_alias632", i1 false, i1 false}
!30 = !{!"../net/netfilter/nf_log_syslog.c", i32 1090, i32 1}
!31 = !{ptr @nf_log_syslog_net_ops, !32, !"nf_log_syslog_net_ops", i1 false, i1 false}
!32 = !{!"../net/netfilter/nf_log_syslog.c", i32 1017, i32 33}
!33 = !{ptr @.str, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/netfilter/nf_log_syslog.c", i32 838, i32 11}
!35 = !{ptr @nf_ip_logger, !36, !"nf_ip_logger", i1 false, i1 false}
!36 = !{!"../net/netfilter/nf_log_syslog.c", i32 837, i32 25}
!37 = !{ptr @default_loginfo, !38, !"default_loginfo", i1 false, i1 false}
!38 = !{!"../net/netfilter/nf_log_syslog.c", i32 26, i32 32}
!39 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/netfilter/nf_log_syslog.c", i32 113, i32 20}
!41 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/netfilter/nf_log_syslog.c", i32 115, i32 20}
!43 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/netfilter/nf_log_syslog.c", i32 120, i32 21}
!45 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/netfilter/nf_log_syslog.c", i32 123, i32 21}
!47 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/netfilter/nf_log_syslog.c", i32 784, i32 21}
!49 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/netfilter/nf_log_syslog.c", i32 787, i32 21}
!51 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/netfilter/nf_log_syslog.c", i32 795, i32 20}
!53 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/netfilter/nf_log_syslog.c", i32 801, i32 21}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/netfilter/nf_log_syslog.c", i32 803, i32 22}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/netfilter/nf_log_syslog.c", i32 805, i32 20}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/netfilter/nf_log_syslog.c", i32 51, i32 20}
!61 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/netfilter/nf_log_syslog.c", i32 308, i32 21}
!63 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/netfilter/nf_log_syslog.c", i32 316, i32 20}
!65 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/netfilter/nf_log_syslog.c", i32 319, i32 20}
!67 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/netfilter/nf_log_syslog.c", i32 325, i32 21}
!69 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/netfilter/nf_log_syslog.c", i32 327, i32 21}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/netfilter/nf_log_syslog.c", i32 329, i32 21}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/netfilter/nf_log_syslog.c", i32 333, i32 21}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/netfilter/nf_log_syslog.c", i32 350, i32 21}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/netfilter/nf_log_syslog.c", i32 352, i32 22}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/netfilter/nf_log_syslog.c", i32 353, i32 21}
!81 = !{ptr @dump_ipv4_packet.required_len, !82, !"required_len", i1 false, i1 false}
!82 = !{!"../net/netfilter/nf_log_syslog.c", i32 371, i32 23}
!83 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/netfilter/nf_log_syslog.c", i32 387, i32 21}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/netfilter/nf_log_syslog.c", i32 396, i32 22}
!87 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/netfilter/nf_log_syslog.c", i32 402, i32 21}
!89 = !{ptr @.str.26, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/netfilter/nf_log_syslog.c", i32 417, i32 22}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/netfilter/nf_log_syslog.c", i32 424, i32 22}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/netfilter/nf_log_syslog.c", i32 429, i32 22}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/netfilter/nf_log_syslog.c", i32 436, i32 23}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/netfilter/nf_log_syslog.c", i32 439, i32 23}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/netfilter/nf_log_syslog.c", i32 445, i32 23}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/netfilter/nf_log_syslog.c", i32 460, i32 21}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/netfilter/nf_log_syslog.c", i32 472, i32 21}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/netfilter/nf_log_syslog.c", i32 480, i32 21}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/netfilter/nf_log_syslog.c", i32 500, i32 21}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/netfilter/nf_log_syslog.c", i32 509, i32 21}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/netfilter/nf_log_syslog.c", i32 187, i32 20}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/netfilter/nf_log_syslog.c", i32 200, i32 20}
!115 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/netfilter/nf_log_syslog.c", i32 204, i32 21}
!117 = !{ptr @.str.40, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/netfilter/nf_log_syslog.c", i32 209, i32 20}
!119 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/netfilter/nf_log_syslog.c", i32 211, i32 20}
!121 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/netfilter/nf_log_syslog.c", i32 215, i32 21}
!123 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/netfilter/nf_log_syslog.c", i32 217, i32 21}
!125 = !{ptr @.str.44, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/netfilter/nf_log_syslog.c", i32 219, i32 21}
!127 = !{ptr @.str.45, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/netfilter/nf_log_syslog.c", i32 221, i32 21}
!129 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/netfilter/nf_log_syslog.c", i32 223, i32 21}
!131 = !{ptr @.str.47, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/netfilter/nf_log_syslog.c", i32 225, i32 21}
!133 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/netfilter/nf_log_syslog.c", i32 227, i32 21}
!135 = !{ptr @.str.49, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/netfilter/nf_log_syslog.c", i32 229, i32 21}
!137 = !{ptr @.str.50, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/netfilter/nf_log_syslog.c", i32 231, i32 20}
!139 = !{ptr @.str.51, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/netfilter/nf_log_syslog.c", i32 242, i32 22}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../net/netfilter/nf_log_syslog.c", i32 268, i32 21}
!143 = !{ptr @.str.53, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/netfilter/nf_log_syslog.c", i32 270, i32 21}
!145 = !{ptr @.str.54, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/netfilter/nf_log_syslog.c", i32 284, i32 20}
!147 = !{ptr @.str.55, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../net/netfilter/nf_log_syslog.c", i32 169, i32 21}
!149 = !{ptr @.str.56, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../net/netfilter/nf_log_syslog.c", i32 153, i32 11}
!151 = !{ptr @nf_arp_logger, !152, !"nf_arp_logger", i1 false, i1 false}
!152 = !{!"../net/netfilter/nf_log_syslog.c", i32 152, i32 25}
!153 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/netfilter/nf_log_syslog.c", i32 83, i32 20}
!155 = !{ptr @.str.58, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../net/netfilter/nf_log_syslog.c", i32 95, i32 21}
!157 = !{ptr @.str.59, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../net/netfilter/nf_log_syslog.c", i32 99, i32 20}
!159 = !{ptr @.str.60, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/netfilter/nf_log_syslog.c", i32 932, i32 11}
!161 = !{ptr @nf_ip6_logger, !162, !"nf_ip6_logger", i1 false, i1 false}
!162 = !{!"../net/netfilter/nf_log_syslog.c", i32 931, i32 25}
!163 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../net/netfilter/nf_log_syslog.c", i32 894, i32 22}
!165 = !{ptr @.str.62, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../net/netfilter/nf_log_syslog.c", i32 552, i32 20}
!167 = !{ptr @.str.63, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../net/netfilter/nf_log_syslog.c", i32 555, i32 20}
!169 = !{ptr @.str.64, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../net/netfilter/nf_log_syslog.c", i32 576, i32 22}
!171 = !{ptr @.str.65, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/netfilter/nf_log_syslog.c", i32 583, i32 22}
!173 = !{ptr @.str.66, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../net/netfilter/nf_log_syslog.c", i32 587, i32 23}
!175 = !{ptr @.str.67, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/netfilter/nf_log_syslog.c", i32 592, i32 22}
!177 = !{ptr @.str.68, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../net/netfilter/nf_log_syslog.c", i32 596, i32 23}
!179 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/netfilter/nf_log_syslog.c", i32 598, i32 22}
!181 = !{ptr @.str.70, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../net/netfilter/nf_log_syslog.c", i32 612, i32 24}
!183 = !{ptr @.str.71, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/netfilter/nf_log_syslog.c", i32 624, i32 23}
!185 = !{ptr @.str.72, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../net/netfilter/nf_log_syslog.c", i32 635, i32 24}
!187 = !{ptr @.str.73, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/netfilter/nf_log_syslog.c", i32 652, i32 23}
!189 = !{ptr @.str.74, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../net/netfilter/nf_log_syslog.c", i32 669, i32 23}
!191 = !{ptr @.str.75, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/netfilter/nf_log_syslog.c", i32 675, i32 22}
!193 = !{ptr @.str.76, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../net/netfilter/nf_log_syslog.c", i32 701, i32 21}
!195 = !{ptr @.str.77, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../net/netfilter/nf_log_syslog.c", i32 733, i32 22}
!197 = !{ptr @.str.78, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../net/netfilter/nf_log_syslog.c", i32 961, i32 11}
!199 = !{ptr @nf_netdev_logger, !200, !"nf_netdev_logger", i1 false, i1 false}
!200 = !{!"../net/netfilter/nf_log_syslog.c", i32 960, i32 25}
!201 = !{ptr @.str.79, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../net/netfilter/nf_log_syslog.c", i32 968, i32 11}
!203 = !{ptr @nf_bridge_logger, !204, !"nf_bridge_logger", i1 false, i1 false}
!204 = !{!"../net/netfilter/nf_log_syslog.c", i32 967, i32 25}
!205 = !{ptr @.str.80, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../net/netfilter/nf_log_syslog.c", i32 1060, i32 2}
!207 = !{ptr @.str.81, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.82, !206, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @nf_log_syslog_init._entry, !206, !"_entry", i1 false, i1 false}
!210 = !{ptr @nf_log_syslog_init._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!211 = !{i32 1, !"wchar_size", i32 2}
!212 = !{i32 1, !"min_enum_size", i32 4}
!213 = !{i32 8, !"branch-target-enforcement", i32 0}
!214 = !{i32 8, !"sign-return-address", i32 0}
!215 = !{i32 8, !"sign-return-address-all", i32 0}
!216 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!217 = !{i32 7, !"uwtable", i32 1}
!218 = !{i32 7, !"frame-pointer", i32 2}
!219 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!220 = !{!"branch_weights", i32 1, i32 2000}
!221 = !{!"auto-init"}
