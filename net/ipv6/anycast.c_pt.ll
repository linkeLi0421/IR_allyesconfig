; ModuleID = '/llk/IR_all_yes/net/ipv6/anycast.c_pt.bc'
source_filename = "../net/ipv6/anycast.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hlist_head = type { ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.123, [0 x i32], %union.anon.124, i16, i16, %union.anon.125, %struct.refcount_struct, [0 x i32], %union.anon.126 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { %struct.hlist_node }
%union.anon.125 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.126 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.127, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.128, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.129, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.127 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.flowi = type { %union.anon.37 }
%union.anon.37 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.76, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.76 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ipv6_ac_socklist = type { %struct.in6_addr, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.133, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.133 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.147 = type { ptr }
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
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.153, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.ifacaddr6 = type { %struct.in6_addr, ptr, ptr, %struct.hlist_node, i32, %struct.refcount_struct, i32, i32, %struct.callback_head }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.68, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.68 = type { %struct.list_head }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.71, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.71 = type { %struct.in6_addr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.73, %struct.list_head, ptr }
%union.anon.73 = type { %struct.anon.75 }
%struct.anon.75 = type { %struct.list_head, i16, i16 }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.70 }
%union.anon.70 = type { %struct.fib_nh }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ac6_iter_state = type { %struct.seq_net_private, ptr, ptr }
%struct.seq_net_private = type { ptr, ptr }

@ipv6_sock_ac_join.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/ipv6/anycast.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@ipv6_sock_ac_drop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__ipv6_sock_ac_close.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__ipv6_dev_ac_inc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__ipv6_dev_ac_dec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ipv6_chk_acast_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@inet6_acaddr_lst = internal global { [256 x %struct.hlist_head], [256 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"anycast6\00", [23 x i8] zeroinitializer }, align 32
@ac6_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ac6_seq_start, ptr @ac6_seq_stop, ptr @ac6_seq_next, ptr @ac6_seq_show }, [16 x i8] zeroinitializer }, align 32
@acaddr_hash_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@nexthop_fib6_nh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/nexthop.h\00", [42 x i8] zeroinitializer }, align 32
@nexthop_fib6_nh.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ac6_get_first.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@next_net_device_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%-4d %-15s %pi6 %5d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"acaddr_hash_lock\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 73, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 449, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"inet6_acaddr_lst\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 47, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 587, i32 7 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"ac6_seq_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 578, i32 36 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"acaddr_hash_lock\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 313, i32 9 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 695, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [25 x i8] c"../include/net/nexthop.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 487, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 723, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 2835, i32 7 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 572, i32 18 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [22 x i8] c"../net/ipv6/anycast.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 48, i32 8 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @inet6_acaddr_lst, ptr @.str.3, ptr @ac6_seq_ops, ptr @acaddr_hash_lock, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet6_acaddr_lst to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac6_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acaddr_hash_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_sock_ac_join(ptr noundef %sk, i32 noundef %ifindex, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 36, i32 2
  %6 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devconf_all, align 32
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %call2 = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.rhs, label %inet6_sk.exit.if.end39_crit_edge

inet6_sk.exit.if.end39_crit_edge:                 ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

land.rhs:                                         ; preds = %inet6_sk.exit
  %.b156 = load i1, ptr @ipv6_sock_ac_join.__already_done, align 1
  br i1 %.b156, label %land.rhs.if.end39_crit_edge, label %if.then, !prof !57

land.rhs.if.end39_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ipv6_sock_ac_join.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 73) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then, %land.rhs.if.end39_crit_edge, %inet6_sk.exit.if.end39_crit_edge
  %user_ns = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns, align 4
  %call47 = tail call zeroext i1 @ns_capable(ptr noundef %11, i32 noundef 12) #7
  br i1 %call47, label %if.end49, label %if.end39.cleanup112_crit_edge

if.end39.cleanup112_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

if.end49:                                         ; preds = %if.end39
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %13)
  %cmp.i = icmp ugt i32 %13, -16777217
  br i1 %cmp.i, label %if.end49.cleanup112_crit_edge, label %if.end52

if.end49.cleanup112_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

if.end52:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifindex)
  %tobool53.not = icmp eq i32 %ifindex, 0
  br i1 %tobool53.not, label %if.end52.if.end56_crit_edge, label %if.then54

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = tail call ptr @__dev_get_by_index(ptr noundef %5, i32 noundef %ifindex) #7
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52.if.end56_crit_edge
  %dev.0 = phi ptr [ %call55, %if.then54 ], [ null, %if.end52.if.end56_crit_edge ]
  %call57 = tail call i32 @ipv6_chk_addr_and_flags(ptr noundef %5, ptr noundef %addr, ptr noundef %dev.0, i1 noundef zeroext true, i32 noundef 0, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.cleanup112_crit_edge

if.end56.cleanup112_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

if.end60:                                         ; preds = %if.end56
  %call61 = tail call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef 24, i32 noundef 3264) #7
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.end60.cleanup112_crit_edge, label %if.end64

if.end60.cleanup112_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112

if.end64:                                         ; preds = %if.end60
  %acl_next = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %call61, i32 0, i32 2
  %14 = ptrtoint ptr %acl_next to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %acl_next, align 4
  %15 = call ptr @memcpy(ptr %call61, ptr %addr, i32 16)
  br i1 %tobool53.not, label %if.then65, label %if.end64.if.end76_crit_edge

if.end64.if.end76_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then65:                                        ; preds = %if.end64
  %call66 = tail call ptr @rt6_lookup(ptr noundef %5, ptr noundef %addr, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.else, label %if.then68

if.then68:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call66 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call66, align 4
  tail call void @dst_release(ptr noundef nonnull %call66) #7
  br label %if.end76

if.else:                                          ; preds = %if.then65
  br i1 %tobool.not, label %if.else.if.then110_crit_edge, label %if.else72

if.else.if.then110_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then110

if.else72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call73 = tail call ptr @__dev_get_by_flags(ptr noundef %5, i16 noundef zeroext 1, i16 noundef zeroext 9) #7
  br label %if.end76

if.end76:                                         ; preds = %if.else72, %if.then68, %if.end64.if.end76_crit_edge
  %dev.3 = phi ptr [ %dev.0, %if.end64.if.end76_crit_edge ], [ %call73, %if.else72 ], [ %17, %if.then68 ]
  %tobool77.not = icmp eq ptr %dev.3, null
  br i1 %tobool77.not, label %if.end76.if.then110_crit_edge, label %if.end79

if.end76.if.then110_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then110

if.end79:                                         ; preds = %if.end76
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev.3, i32 0, i32 80
  %18 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %if.end79.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.end79.__in6_dev_get.exit_crit_edge:            ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.end79
  %call2.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 313, ptr noundef nonnull @.str.5) #7
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %if.end79.__in6_dev_get.exit_crit_edge
  %tobool81.not = icmp eq ptr %19, null
  br i1 %tobool81.not, label %if.then82, label %if.end87

if.then82:                                        ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %. = select i1 %tobool53.not, i32 -99, i32 -19
  br label %if.then110

if.end87:                                         ; preds = %__in6_dev_get.exit
  %cnf = getelementptr inbounds %struct.inet6_dev, ptr %19, i32 0, i32 32
  %20 = ptrtoint ptr %cnf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cnf, align 4
  %ifindex92 = getelementptr inbounds %struct.net_device, ptr %dev.3, i32 0, i32 17
  %22 = ptrtoint ptr %ifindex92 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ifindex92, align 4
  %acl_ifindex = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %call61, i32 0, i32 1
  %24 = ptrtoint ptr %acl_ifindex to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %acl_ifindex, align 4
  %call93 = tail call i32 @ipv6_chk_prefix(ptr noundef %addr, ptr noundef nonnull %dev.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool89.not = icmp eq i32 %21, 0
  %or.cond = select i1 %tobool94.not, i1 %tobool89.not, i1 false
  br i1 %or.cond, label %if.end87.if.then110_crit_edge, label %if.end102

if.end87.if.then110_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then110

if.end102:                                        ; preds = %if.end87
  %call103 = tail call i32 @__ipv6_dev_ac_inc(ptr noundef nonnull %19, ptr noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %error, label %if.end102.if.then110_crit_edge

if.end102.if.then110_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then110

error:                                            ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  %ipv6_ac_list = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 16
  %25 = ptrtoint ptr %ipv6_ac_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ipv6_ac_list, align 4
  %27 = ptrtoint ptr %acl_next to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %acl_next, align 4
  store ptr %call61, ptr %ipv6_ac_list, align 4
  br label %cleanup112

if.then110:                                       ; preds = %if.end102.if.then110_crit_edge, %if.end87.if.then110_crit_edge, %if.then82, %if.end76.if.then110_crit_edge, %if.else.if.then110_crit_edge
  %err.3.ph = phi i32 [ -99, %if.else.if.then110_crit_edge ], [ %., %if.then82 ], [ -19, %if.end76.if.then110_crit_edge ], [ %call103, %if.end102.if.then110_crit_edge ], [ -99, %if.end87.if.then110_crit_edge ]
  tail call void @sock_kfree_s(ptr noundef %sk, ptr noundef nonnull %call61, i32 noundef 24) #7
  br label %cleanup112

cleanup112:                                       ; preds = %if.then110, %error, %if.end60.cleanup112_crit_edge, %if.end56.cleanup112_crit_edge, %if.end49.cleanup112_crit_edge, %if.end39.cleanup112_crit_edge
  %retval.0 = phi i32 [ -1, %if.end39.cleanup112_crit_edge ], [ -22, %if.end49.cleanup112_crit_edge ], [ -22, %if.end56.cleanup112_crit_edge ], [ -12, %if.end60.cleanup112_crit_edge ], [ %err.3.ph, %if.then110 ], [ 0, %error ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr_and_flags(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt6_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_flags(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_prefix(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ipv6_dev_ac_inc(ptr noundef %idev, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b94 = load i1, ptr @__ipv6_dev_ac_inc.__already_done, align 1
  br i1 %.b94, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !57

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__ipv6_dev_ac_inc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 291) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %lock = getelementptr inbounds %struct.inet6_dev, ptr %idev, i32 0, i32 24
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #7
  %dead = getelementptr inbounds %struct.inet6_dev, ptr %idev, i32 0, i32 27
  %0 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool37.not = icmp eq i32 %1, 0
  br i1 %tobool37.not, label %if.end39, label %if.end29.out_crit_edge

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end39:                                         ; preds = %if.end29
  %ac_list = getelementptr inbounds %struct.inet6_dev, ptr %idev, i32 0, i32 23
  %2 = ptrtoint ptr %ac_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %aca.0115 = load ptr, ptr %ac_list, align 4
  %tobool40.not116 = icmp eq ptr %aca.0115, null
  br i1 %tobool40.not116, label %if.end39.for.end_crit_edge, label %for.body.lr.ph

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end39
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx17.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %aca.0117 = phi ptr [ %aca.0115, %for.body.lr.ph ], [ %aca.0, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %aca.0117 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %aca.0117, align 4
  %xor.i = xor i32 %4, %12
  %arrayidx4.i = getelementptr [4 x i32], ptr %aca.0117, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.i, align 4
  %xor7.i = xor i32 %6, %14
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr [4 x i32], ptr %aca.0117, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx9.i, align 4
  %xor12.i = xor i32 %8, %16
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr [4 x i32], ptr %aca.0117, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx15.i, align 4
  %xor18.i = xor i32 %10, %18
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %if.then42, label %for.inc

if.then42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %aca_users = getelementptr inbounds %struct.ifacaddr6, ptr %aca.0117, i32 0, i32 4
  %19 = ptrtoint ptr %aca_users to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %aca_users, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %aca_users, align 4
  br label %out

for.inc:                                          ; preds = %for.body
  %aca_next = getelementptr inbounds %struct.ifacaddr6, ptr %aca.0117, i32 0, i32 2
  %21 = ptrtoint ptr %aca_next to i32
  call void @__asan_load4_noabort(i32 %21)
  %aca.0 = load ptr, ptr %aca_next, align 4
  %tobool40.not = icmp eq ptr %aca.0, null
  br i1 %tobool40.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end39.for.end_crit_edge
  %22 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %idev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 127
  %24 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nd_net.i, align 4
  %call45 = tail call ptr @addrconf_f6i_alloc(ptr noundef %25, ptr noundef %idev, ptr noundef %addr, i1 noundef zeroext true, i32 noundef 2592) #7
  %cmp.i95 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.then47, label %if.end49

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call45 to i32
  br label %out

if.end49:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 2848, i32 noundef 56) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then52, label %if.end.i

if.end.i:                                         ; preds = %if.end49
  %28 = call ptr @memcpy(ptr %call7.i.i.i, ptr %addr, i32 16)
  %fib6_ref.i.i = getelementptr inbounds %struct.fib6_info, ptr %call45, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %fib6_ref.i.i, i32 1, i32 3, i32 1) #7
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i.i, ptr %fib6_ref.i.i, i32 1, ptr elementtype(i32) %fib6_ref.i.i) #7, !srcloc !58
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !59

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end53_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !57

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end53_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref.i.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %if.end53

if.then52:                                        ; preds = %if.end49
  %tobool.not.i96 = icmp eq ptr %call45, null
  br i1 %tobool.not.i96, label %if.then52.out_crit_edge, label %land.lhs.true.i

if.then52.out_crit_edge:                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true.i:                                  ; preds = %if.then52
  %fib6_ref.i = getelementptr inbounds %struct.fib6_info, ptr %call45, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %fib6_ref.i, i32 1, i32 3, i32 1) #7
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i, ptr %fib6_ref.i, i32 1, ptr elementtype(i32) %fib6_ref.i) #7, !srcloc !61
  %asmresult.i.i.i.i.i.i.i97 = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i97)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i97, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i97)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i97, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !57

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref.i, i32 noundef 3) #7
  br label %out

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  %rcu.i = getelementptr inbounds %struct.fib6_info, ptr %call45, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @fib6_info_destroy_rcu) #7
  br label %out

if.end53:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end53_crit_edge
  %aca_rt.i = getelementptr inbounds %struct.ifacaddr6, ptr %call7.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %aca_rt.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call45, ptr %aca_rt.i, align 8
  %aca_addr_lst.i = getelementptr inbounds %struct.ifacaddr6, ptr %call7.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %aca_addr_lst.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %aca_addr_lst.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.ifacaddr6, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %pprev.i.i, align 4
  %aca_users.i = getelementptr inbounds %struct.ifacaddr6, ptr %call7.i.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %aca_users.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %aca_users.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %aca_tstamp.i = getelementptr inbounds %struct.ifacaddr6, ptr %call7.i.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %aca_tstamp.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %aca_tstamp.i, align 4
  %aca_cstamp.i = getelementptr inbounds %struct.ifacaddr6, ptr %call7.i.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %aca_cstamp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %aca_cstamp.i, align 8
  %aca_refcnt.i = getelementptr inbounds %struct.ifacaddr6, ptr %call7.i.i.i, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aca_refcnt.i, i32 noundef 4) #7
  %39 = ptrtoint ptr %aca_refcnt.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 1, ptr %aca_refcnt.i, align 4
  %40 = ptrtoint ptr %ac_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ac_list, align 4
  %aca_next55 = getelementptr inbounds %struct.ifacaddr6, ptr %call7.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %aca_next55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %aca_next55, align 4
  store ptr %call7.i.i.i, ptr %ac_list, align 4
  %call.i.i.i.i.i.i100 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aca_refcnt.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %aca_refcnt.i, i32 1, i32 3, i32 1) #7
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %aca_refcnt.i, ptr %aca_refcnt.i, i32 1, ptr elementtype(i32) %aca_refcnt.i) #7, !srcloc !58
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end53.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !59

if.end53.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end53
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %44 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %.not.i.i.i.i101 = icmp sgt i32 %44, -1
  br i1 %.not.i.i.i.i101, label %if.else.i.i.i.i.aca_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !57

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.aca_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aca_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end53.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end53.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %aca_refcnt.i, i32 noundef %.sink.i.i.i.i) #7
  br label %aca_get.exit

aca_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.aca_get.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #7
  %45 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call7.i.i.i, align 8
  %arrayidx2.i.i.i = getelementptr [4 x i32], ptr %call7.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx2.i.i.i, align 4
  %xor.i.i.i = xor i32 %48, %46
  %arrayidx4.i.i.i = getelementptr [4 x i32], ptr %call7.i.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx4.i.i.i, align 8
  %xor5.i.i.i = xor i32 %xor.i.i.i, %50
  %arrayidx7.i.i.i = getelementptr [4 x i32], ptr %call7.i.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx7.i.i.i, align 4
  %xor8.i.i.i = xor i32 %xor5.i.i.i, %52
  %hash_mix.i.i.i = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 26
  %53 = ptrtoint ptr %hash_mix.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hash_mix.i.i.i, align 8
  %xor.i.i = xor i32 %xor8.i.i.i, %54
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  tail call void @_raw_spin_lock(ptr noundef nonnull @acaddr_hash_lock) #7
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr @inet6_acaddr_lst, i32 0, i32 %shr.i.i.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  %57 = ptrtoint ptr %aca_addr_lst.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %aca_addr_lst.i, align 8
  %58 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %aca_addr_lst.i, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %aca_get.exit.ipv6_add_acaddr_hash.exit_crit_edge, label %do.body49.i.i

aca_get.exit.ipv6_add_acaddr_hash.exit_crit_edge: ; preds = %aca_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipv6_add_acaddr_hash.exit

do.body49.i.i:                                    ; preds = %aca_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %56, i32 0, i32 1
  %60 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %aca_addr_lst.i, ptr %pprev51.i.i, align 4
  br label %ipv6_add_acaddr_hash.exit

ipv6_add_acaddr_hash.exit:                        ; preds = %do.body49.i.i, %aca_get.exit.ipv6_add_acaddr_hash.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @acaddr_hash_lock) #7
  %call58 = tail call i32 @ip6_ins_rt(ptr noundef %25, ptr noundef %call45) #7
  %61 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %idev, align 4
  tail call void @addrconf_join_solict(ptr noundef %62, ptr noundef nonnull %call7.i.i.i) #7
  %call.i.i.i.i.i.i105 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aca_refcnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %aca_refcnt.i, i32 1, i32 3, i32 1) #7
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %aca_refcnt.i, ptr %aca_refcnt.i, i32 1, ptr elementtype(i32) %aca_refcnt.i) #7, !srcloc !61
  %asmresult.i.i.i.i.i.i.i106 = extractvalue { i32, i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i106)
  %cmp.i.i.i.i107 = icmp eq i32 %asmresult.i.i.i.i.i.i.i106, 1
  br i1 %cmp.i.i.i.i107, label %if.then.i112, label %if.end5.i.i.i.i109

if.end5.i.i.i.i109:                               ; preds = %ipv6_add_acaddr_hash.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i106)
  %.not.i.i.i.i108 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i106, 0
  br i1 %.not.i.i.i.i108, label %if.end5.i.i.i.i109.cleanup_crit_edge, label %if.then10.i.i.i.i110, !prof !57

if.end5.i.i.i.i109.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i110:                             ; preds = %if.end5.i.i.i.i109
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %aca_refcnt.i, i32 noundef 3) #7
  br label %cleanup

if.then.i112:                                     ; preds = %ipv6_add_acaddr_hash.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  %rcu.i111 = getelementptr inbounds %struct.ifacaddr6, ptr %call7.i.i.i, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i111, ptr noundef nonnull @aca_free_rcu) #7
  br label %cleanup

out:                                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %if.then52.out_crit_edge, %if.then47, %if.then42, %if.end29.out_crit_edge
  %err.0 = phi i32 [ 0, %if.then42 ], [ %26, %if.then47 ], [ -19, %if.end29.out_crit_edge ], [ -12, %if.then52.out_crit_edge ], [ -12, %if.end5.i.i.i.i.out_crit_edge ], [ -12, %if.then10.i.i.i.i ], [ -12, %if.then.i ]
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then.i112, %if.then10.i.i.i.i110, %if.end5.i.i.i.i109.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %if.end5.i.i.i.i109.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i110 ], [ 0, %if.then.i112 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_sock_ac_drop(ptr noundef %sk, i32 noundef %ifindex, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %call2 = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.rhs, label %inet6_sk.exit.if.end31_crit_edge

inet6_sk.exit.if.end31_crit_edge:                 ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.rhs:                                         ; preds = %inet6_sk.exit
  %.b83 = load i1, ptr @ipv6_sock_ac_drop.__already_done, align 1
  br i1 %.b83, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !57

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ipv6_sock_ac_drop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 162) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %inet6_sk.exit.if.end31_crit_edge
  %ipv6_ac_list = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 16
  %6 = ptrtoint ptr %ipv6_ac_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %pac.087 = load ptr, ptr %ipv6_ac_list, align 4
  %tobool39.not88 = icmp eq ptr %pac.087, null
  br i1 %tobool39.not88, label %if.end31.cleanup_crit_edge, label %for.body.lr.ph

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifindex)
  %cmp = icmp eq i32 %ifindex, 0
  %arrayidx6.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %arrayidx11.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %arrayidx17.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %for.body.lr.ph
  %pac.090 = phi ptr [ %pac.087, %for.body.lr.ph ], [ %pac.0, %if.end43.for.body_crit_edge ]
  %prev_pac.089 = phi ptr [ null, %for.body.lr.ph ], [ %pac.090, %if.end43.for.body_crit_edge ]
  br i1 %cmp, label %for.body.land.lhs.true_crit_edge, label %lor.lhs.false

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %acl_ifindex = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %pac.090, i32 0, i32 1
  %7 = ptrtoint ptr %acl_ifindex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %acl_ifindex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %ifindex)
  %cmp40 = icmp eq i32 %8, %ifindex
  br i1 %cmp40, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end43_crit_edge

lor.lhs.false.if.end43_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %9 = ptrtoint ptr %pac.090 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pac.090, align 4
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %12, %10
  %arrayidx4.i = getelementptr [4 x i32], ptr %pac.090, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.i, align 4
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %16, %14
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr [4 x i32], ptr %pac.090, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9.i, align 4
  %19 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %20, %18
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr [4 x i32], ptr %pac.090, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx15.i, align 4
  %23 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %24, %22
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %if.end46, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true.if.end43_crit_edge, %lor.lhs.false.if.end43_crit_edge
  %acl_next = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %pac.090, i32 0, i32 2
  %25 = ptrtoint ptr %acl_next to i32
  call void @__asan_load4_noabort(i32 %25)
  %pac.0 = load ptr, ptr %acl_next, align 4
  %tobool39.not = icmp eq ptr %pac.0, null
  br i1 %tobool39.not, label %if.end43.cleanup_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true
  %tobool47.not = icmp eq ptr %prev_pac.089, null
  %acl_next51 = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %pac.090, i32 0, i32 2
  %26 = ptrtoint ptr %acl_next51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %acl_next51, align 4
  %acl_next50 = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %prev_pac.089, i32 0, i32 2
  %ipv6_ac_list.sink = select i1 %tobool47.not, ptr %ipv6_ac_list, ptr %acl_next50
  %28 = ptrtoint ptr %ipv6_ac_list.sink to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %ipv6_ac_list.sink, align 4
  %acl_ifindex54 = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %pac.090, i32 0, i32 1
  %29 = ptrtoint ptr %acl_ifindex54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %acl_ifindex54, align 4
  %call55 = tail call ptr @__dev_get_by_index(ptr noundef %5, i32 noundef %30) #7
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.end46.if.end60_crit_edge, label %if.then57

if.end46.if.end60_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then57:                                        ; preds = %if.end46
  %ip6_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %call55, i32 0, i32 80
  %31 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i.i, label %if.then57.__in6_dev_get.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then57.__in6_dev_get.exit.i_crit_edge:         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then57
  %call2.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge

lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b10.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 313, ptr noundef nonnull @.str.5) #7
  br label %__in6_dev_get.exit.i

__in6_dev_get.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, %land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge, %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge, %if.then57.__in6_dev_get.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %__in6_dev_get.exit.i.if.end60_crit_edge, label %if.end.i

__in6_dev_get.exit.i.if.end60_crit_edge:          ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.end.i:                                         ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @__ipv6_dev_ac_dec(ptr noundef nonnull %32, ptr noundef nonnull %pac.090) #7
  br label %if.end60

if.end60:                                         ; preds = %if.end.i, %__in6_dev_get.exit.i.if.end60_crit_edge, %if.end46.if.end60_crit_edge
  tail call void @sock_kfree_s(ptr noundef %sk, ptr noundef nonnull %pac.090, i32 noundef 24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end43.cleanup_crit_edge, %if.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end60 ], [ -2, %if.end31.cleanup_crit_edge ], [ -2, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ipv6_sock_ac_close(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %call2 = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.rhs, label %inet6_sk.exit.if.end31_crit_edge

inet6_sk.exit.if.end31_crit_edge:                 ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.rhs:                                         ; preds = %inet6_sk.exit
  %.b62 = load i1, ptr @__ipv6_sock_ac_close.__already_done, align 1
  br i1 %.b62, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !57

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__ipv6_sock_ac_close.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 194) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %inet6_sk.exit.if.end31_crit_edge
  %ipv6_ac_list = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 16
  %6 = ptrtoint ptr %ipv6_ac_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipv6_ac_list, align 4
  store ptr null, ptr %ipv6_ac_list, align 4
  %tobool40.not63 = icmp eq ptr %7, null
  br i1 %tobool40.not63, label %if.end31.while.end_crit_edge, label %if.end31.while.body_crit_edge

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  br label %while.body

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %if.end31.while.body_crit_edge
  %dev.067 = phi ptr [ %dev.1, %if.end49.while.body_crit_edge ], [ null, %if.end31.while.body_crit_edge ]
  %prev_index.066 = phi i32 [ %prev_index.1, %if.end49.while.body_crit_edge ], [ 0, %if.end31.while.body_crit_edge ]
  %pac.064 = phi ptr [ %9, %if.end49.while.body_crit_edge ], [ %7, %if.end31.while.body_crit_edge ]
  %acl_next = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %pac.064, i32 0, i32 2
  %8 = ptrtoint ptr %acl_next to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acl_next, align 4
  %acl_ifindex = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %pac.064, i32 0, i32 1
  %10 = ptrtoint ptr %acl_ifindex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %acl_ifindex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %prev_index.066)
  %cmp.not = icmp eq i32 %11, %prev_index.066
  br i1 %cmp.not, label %while.body.if.end45_crit_edge, label %if.then41

while.body.if.end45_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then41:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call ptr @__dev_get_by_index(ptr noundef %5, i32 noundef %11) #7
  %12 = ptrtoint ptr %acl_ifindex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %acl_ifindex, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %while.body.if.end45_crit_edge
  %prev_index.1 = phi i32 [ %13, %if.then41 ], [ %prev_index.066, %while.body.if.end45_crit_edge ]
  %dev.1 = phi ptr [ %call43, %if.then41 ], [ %dev.067, %while.body.if.end45_crit_edge ]
  %tobool46.not = icmp eq ptr %dev.1, null
  br i1 %tobool46.not, label %if.end45.if.end49_crit_edge, label %if.then47

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then47:                                        ; preds = %if.end45
  %ip6_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %dev.1, i32 0, i32 80
  %14 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i.i, label %if.then47.__in6_dev_get.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then47.__in6_dev_get.exit.i_crit_edge:         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then47
  %call2.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge

lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b10.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 313, ptr noundef nonnull @.str.5) #7
  br label %__in6_dev_get.exit.i

__in6_dev_get.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, %land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge, %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge, %if.then47.__in6_dev_get.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %__in6_dev_get.exit.i.if.end49_crit_edge, label %if.end.i

__in6_dev_get.exit.i.if.end49_crit_edge:          ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.end.i:                                         ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @__ipv6_dev_ac_dec(ptr noundef nonnull %15, ptr noundef nonnull %pac.064) #7
  br label %if.end49

if.end49:                                         ; preds = %if.end.i, %__in6_dev_get.exit.i.if.end49_crit_edge, %if.end45.if.end49_crit_edge
  tail call void @sock_kfree_s(ptr noundef %sk, ptr noundef nonnull %pac.064, i32 noundef 24) #7
  %tobool40.not = icmp eq ptr %9, null
  br i1 %tobool40.not, label %if.end49.while.end_crit_edge, label %if.end49.while.body_crit_edge

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end49.while.end_crit_edge, %if.end31.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipv6_sock_ac_close(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %ipv6_ac_list = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 16
  %4 = ptrtoint ptr %ipv6_ac_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipv6_ac_list, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %inet6_sk.exit.cleanup_crit_edge, label %if.end

inet6_sk.exit.cleanup_crit_edge:                  ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtnl_lock() #7
  tail call void @__ipv6_sock_ac_close(ptr noundef %sk)
  tail call void @rtnl_unlock() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %inet6_sk.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @addrconf_f6i_alloc(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_ins_rt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @addrconf_join_solict(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ipv6_dev_ac_dec(ptr noundef %idev, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b81 = load i1, ptr @__ipv6_dev_ac_dec.__already_done, align 1
  br i1 %.b81, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !57

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__ipv6_dev_ac_dec.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 349, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 349) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %lock = getelementptr inbounds %struct.inet6_dev, ptr %idev, i32 0, i32 24
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #7
  %ac_list = getelementptr inbounds %struct.inet6_dev, ptr %idev, i32 0, i32 23
  %0 = ptrtoint ptr %ac_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %aca.084 = load ptr, ptr %ac_list, align 4
  %tobool37.not85 = icmp eq ptr %aca.084, null
  br i1 %tobool37.not85, label %if.end29.if.then42.critedge_crit_edge, label %for.body.lr.ph

if.end29.if.then42.critedge_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42.critedge

for.body.lr.ph:                                   ; preds = %if.end29
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx17.i, align 4
  %9 = ptrtoint ptr %aca.084 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %aca.084, align 4
  %xor.i94 = xor i32 %2, %10
  %arrayidx4.i95 = getelementptr [4 x i32], ptr %aca.084, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx4.i95 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4.i95, align 4
  %xor7.i96 = xor i32 %4, %12
  %or.i97 = or i32 %xor7.i96, %xor.i94
  %arrayidx9.i98 = getelementptr [4 x i32], ptr %aca.084, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx9.i98 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9.i98, align 4
  %xor12.i99 = xor i32 %6, %14
  %or13.i100 = or i32 %or.i97, %xor12.i99
  %arrayidx15.i101 = getelementptr [4 x i32], ptr %aca.084, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx15.i101 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx15.i101, align 4
  %xor18.i102 = xor i32 %8, %16
  %or19.i103 = or i32 %or13.i100, %xor18.i102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i103)
  %cmp.i104 = icmp eq i32 %or19.i103, 0
  br i1 %cmp.i104, label %for.body.lr.ph.if.end44_crit_edge, label %for.body.lr.ph.if.end40_crit_edge

for.body.lr.ph.if.end40_crit_edge:                ; preds = %for.body.lr.ph
  br label %if.end40

for.body.lr.ph.if.end44_crit_edge:                ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

for.body:                                         ; preds = %if.end40
  %17 = ptrtoint ptr %aca.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %aca.0, align 4
  %xor.i = xor i32 %2, %18
  %arrayidx4.i = getelementptr [4 x i32], ptr %aca.0, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.i, align 4
  %xor7.i = xor i32 %4, %20
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr [4 x i32], ptr %aca.0, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx9.i, align 4
  %xor12.i = xor i32 %6, %22
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr [4 x i32], ptr %aca.0, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx15.i, align 4
  %xor18.i = xor i32 %8, %24
  %or19.i = or i32 %or13.i, %xor18.i
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %for.body.if.end44_crit_edge, label %for.body.if.end40_crit_edge

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

for.body.if.end44_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end40:                                         ; preds = %for.body.if.end40_crit_edge, %for.body.lr.ph.if.end40_crit_edge
  %aca.087105 = phi ptr [ %aca.0, %for.body.if.end40_crit_edge ], [ %aca.084, %for.body.lr.ph.if.end40_crit_edge ]
  %aca_next = getelementptr inbounds %struct.ifacaddr6, ptr %aca.087105, i32 0, i32 2
  %25 = ptrtoint ptr %aca_next to i32
  call void @__asan_load4_noabort(i32 %25)
  %aca.0 = load ptr, ptr %aca_next, align 4
  %tobool37.not = icmp eq ptr %aca.0, null
  br i1 %tobool37.not, label %if.end40.if.then42.critedge_crit_edge, label %for.body

if.end40.if.then42.critedge_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42.critedge

if.then42.critedge:                               ; preds = %if.end40.if.then42.critedge_crit_edge, %if.end29.if.then42.critedge_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #7
  br label %cleanup

if.end44:                                         ; preds = %for.body.if.end44_crit_edge, %for.body.lr.ph.if.end44_crit_edge
  %aca.087.lcssa = phi ptr [ %aca.084, %for.body.lr.ph.if.end44_crit_edge ], [ %aca.0, %for.body.if.end44_crit_edge ]
  %prev_aca.086.lcssa = phi ptr [ null, %for.body.lr.ph.if.end44_crit_edge ], [ %aca.087105, %for.body.if.end44_crit_edge ]
  %aca_users = getelementptr inbounds %struct.ifacaddr6, ptr %aca.087.lcssa, i32 0, i32 4
  %26 = ptrtoint ptr %aca_users to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %aca_users, align 4
  %dec = add i32 %27, -1
  store i32 %dec, ptr %aca_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #7
  br label %cleanup

if.end47:                                         ; preds = %if.end44
  %tobool48.not = icmp eq ptr %prev_aca.086.lcssa, null
  %aca_next52 = getelementptr inbounds %struct.ifacaddr6, ptr %aca.087.lcssa, i32 0, i32 2
  %28 = ptrtoint ptr %aca_next52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aca_next52, align 4
  %aca_next51 = getelementptr inbounds %struct.ifacaddr6, ptr %prev_aca.086.lcssa, i32 0, i32 2
  %ac_list.sink = select i1 %tobool48.not, ptr %ac_list, ptr %aca_next51
  %30 = ptrtoint ptr %ac_list.sink to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %ac_list.sink, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @acaddr_hash_lock) #7
  %pprev.i.i.i = getelementptr inbounds %struct.ifacaddr6, ptr %aca.087.lcssa, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.not.i.i, label %if.end47.ipv6_del_acaddr_hash.exit_crit_edge, label %if.then.i.i

if.end47.ipv6_del_acaddr_hash.exit_crit_edge:     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipv6_del_acaddr_hash.exit

if.then.i.i:                                      ; preds = %if.end47
  %aca_addr_lst.i = getelementptr inbounds %struct.ifacaddr6, ptr %aca.087.lcssa, i32 0, i32 3
  %33 = ptrtoint ptr %aca_addr_lst.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %aca_addr_lst.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %34, ptr %32, align 4
  %tobool.not.i7.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i7.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %34, i32 0, i32 1
  %36 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %32, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %37 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %ipv6_del_acaddr_hash.exit

ipv6_del_acaddr_hash.exit:                        ; preds = %__hlist_del.exit.i.i, %if.end47.ipv6_del_acaddr_hash.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @acaddr_hash_lock) #7
  tail call void @addrconf_leave_solict(ptr noundef %idev, ptr noundef nonnull %aca.087.lcssa) #7
  %38 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %idev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 127
  %40 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nd_net.i, align 4
  %aca_rt = getelementptr inbounds %struct.ifacaddr6, ptr %aca.087.lcssa, i32 0, i32 1
  %42 = ptrtoint ptr %aca_rt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %aca_rt, align 4
  %call58 = tail call i32 @ip6_del_rt(ptr noundef %41, ptr noundef %43, i1 noundef zeroext false) #7
  %aca_refcnt.i = getelementptr inbounds %struct.ifacaddr6, ptr %aca.087.lcssa, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aca_refcnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %aca_refcnt.i, i32 1, i32 3, i32 1) #7
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %aca_refcnt.i, ptr %aca_refcnt.i, i32 1, ptr elementtype(i32) %aca_refcnt.i) #7, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %ipv6_del_acaddr_hash.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !57

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %aca_refcnt.i, i32 noundef 3) #7
  br label %cleanup

if.then.i:                                        ; preds = %ipv6_del_acaddr_hash.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  %rcu.i = getelementptr inbounds %struct.ifacaddr6, ptr %aca.087.lcssa, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @aca_free_rcu) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then45, %if.then42.critedge
  %retval.0 = phi i32 [ 0, %if.then45 ], [ -2, %if.then42.critedge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @addrconf_leave_solict(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_del_rt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipv6_ac_destroy_dev(ptr noundef %idev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.inet6_dev, ptr %idev, i32 0, i32 24
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #7
  %ac_list = getelementptr inbounds %struct.inet6_dev, ptr %idev, i32 0, i32 23
  %0 = ptrtoint ptr %ac_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac_list, align 4
  %cmp.not17 = icmp eq ptr %1, null
  br i1 %cmp.not17, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %aca_put.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %21, %aca_put.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %aca_next = getelementptr inbounds %struct.ifacaddr6, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %aca_next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aca_next, align 4
  %5 = ptrtoint ptr %ac_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ac_list, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @acaddr_hash_lock) #7
  %pprev.i.i.i = getelementptr inbounds %struct.ifacaddr6, ptr %2, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.not.i.i, label %while.body.ipv6_del_acaddr_hash.exit_crit_edge, label %if.then.i.i

while.body.ipv6_del_acaddr_hash.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipv6_del_acaddr_hash.exit

if.then.i.i:                                      ; preds = %while.body
  %aca_addr_lst.i = getelementptr inbounds %struct.ifacaddr6, ptr %2, i32 0, i32 3
  %8 = ptrtoint ptr %aca_addr_lst.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aca_addr_lst.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %7, align 4
  %tobool.not.i7.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i7.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %7, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %12 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %ipv6_del_acaddr_hash.exit

ipv6_del_acaddr_hash.exit:                        ; preds = %__hlist_del.exit.i.i, %while.body.ipv6_del_acaddr_hash.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @acaddr_hash_lock) #7
  tail call void @addrconf_leave_solict(ptr noundef %idev, ptr noundef nonnull %2) #7
  %13 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %idev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 127
  %15 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nd_net.i, align 4
  %aca_rt = getelementptr inbounds %struct.ifacaddr6, ptr %2, i32 0, i32 1
  %17 = ptrtoint ptr %aca_rt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %aca_rt, align 4
  %call3 = tail call i32 @ip6_del_rt(ptr noundef %16, ptr noundef %18, i1 noundef zeroext false) #7
  %aca_refcnt.i = getelementptr inbounds %struct.ifacaddr6, ptr %2, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aca_refcnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %aca_refcnt.i, i32 1, i32 3, i32 1) #7
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %aca_refcnt.i, ptr %aca_refcnt.i, i32 1, ptr elementtype(i32) %aca_refcnt.i) #7, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %ipv6_del_acaddr_hash.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.aca_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !57

if.end5.i.i.i.i.aca_put.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aca_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %aca_refcnt.i, i32 noundef 3) #7
  br label %aca_put.exit

if.then.i:                                        ; preds = %ipv6_del_acaddr_hash.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  %rcu.i = getelementptr inbounds %struct.ifacaddr6, ptr %2, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @aca_free_rcu) #7
  br label %aca_put.exit

aca_put.exit:                                     ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.aca_put.exit_crit_edge
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #7
  %20 = ptrtoint ptr %ac_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ac_list, align 4
  %cmp.not = icmp eq ptr %21, null
  br i1 %cmp.not, label %aca_put.exit.while.end_crit_edge, label %aca_put.exit.while.body_crit_edge

aca_put.exit.while.body_crit_edge:                ; preds = %aca_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

aca_put.exit.while.end_crit_edge:                 ; preds = %aca_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %aca_put.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ipv6_chk_acast_addr(ptr noundef readonly %net, ptr noundef %dev, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !64
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %rcu_read_lock.exit
  %ip6_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 80
  %4 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i.i, label %if.then.__in6_dev_get.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then.__in6_dev_get.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then
  %call2.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge

lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b10.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 313, ptr noundef nonnull @.str.5) #7
  br label %__in6_dev_get.exit.i

__in6_dev_get.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, %land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge, %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge, %if.then.__in6_dev_get.exit.i_crit_edge
  %tobool.not.i58 = icmp eq ptr %5, null
  br i1 %tobool.not.i58, label %__in6_dev_get.exit.i.if.end42_crit_edge, label %if.then.i59

__in6_dev_get.exit.i.if.end42_crit_edge:          ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then.i59:                                      ; preds = %__in6_dev_get.exit.i
  %lock.i = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %lock.i) #7
  %ac_list.i = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %ac_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %aca.013.i = load ptr, ptr %ac_list.i, align 4
  %tobool114.not.i = icmp eq ptr %aca.013.i, null
  br i1 %tobool114.not.i, label %if.then.i59.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then.i59.for.end.i_crit_edge:                  ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then.i59
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx6.i.i, align 4
  %arrayidx11.i.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx11.i.i, align 4
  %arrayidx17.i.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx17.i.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %aca_next.i = getelementptr inbounds %struct.ifacaddr6, ptr %aca.015.i, i32 0, i32 2
  %15 = ptrtoint ptr %aca_next.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %aca.0.i = load ptr, ptr %aca_next.i, align 4
  %tobool1.not.i = icmp eq ptr %aca.0.i, null
  br i1 %tobool1.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %aca.015.i = phi ptr [ %aca.013.i, %for.body.lr.ph.i ], [ %aca.0.i, %for.cond.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %aca.015.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aca.015.i, align 4
  %xor.i.i = xor i32 %17, %8
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %aca.015.i, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i.i, align 4
  %xor7.i.i = xor i32 %19, %10
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %aca.015.i, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx9.i.i, align 4
  %xor12.i.i = xor i32 %21, %12
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %aca.015.i, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15.i.i, align 4
  %xor18.i.i = xor i32 %23, %14
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.for.end.i_crit_edge, label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge, %if.then.i59.for.end.i_crit_edge
  %tobool1.lcssa.i = phi i1 [ false, %if.then.i59.for.end.i_crit_edge ], [ %cmp.i.i, %for.cond.i.for.end.i_crit_edge ], [ %cmp.i.i, %for.body.i.for.end.i_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef %lock.i) #7
  br label %if.end42

if.else:                                          ; preds = %rcu_read_lock.exit
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.i.i, align 4
  %xor.i.i60 = xor i32 %27, %25
  %arrayidx4.i.i61 = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx4.i.i61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i.i61, align 4
  %xor5.i.i = xor i32 %xor.i.i60, %29
  %arrayidx7.i.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx7.i.i, align 4
  %xor8.i.i = xor i32 %xor5.i.i, %31
  %hash_mix.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 26
  %32 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hash_mix.i.i, align 8
  %xor.i = xor i32 %xor8.i.i, %33
  %mul.i.i.i = mul i32 %xor.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %call2 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %if.else
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @ipv6_chk_acast_addr.__warned, align 1
  br i1 %.b56, label %land.lhs.true6.do.end_crit_edge, label %if.then8

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ipv6_chk_acast_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 450, ptr noundef nonnull @.str.2) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.else.do.end_crit_edge
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr @inet6_acaddr_lst, i32 0, i32 %shr.i.i
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %35, null
  %add.ptr = getelementptr i8, ptr %35, i32 -24
  %tobool16.not8388 = icmp eq ptr %add.ptr, null
  %tobool16.not83 = or i1 %tobool14.not, %tobool16.not8388
  br i1 %tobool16.not83, label %do.end.if.end42_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.if.end42_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %aca.084 = phi ptr [ %add.ptr38, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %aca_rt = getelementptr inbounds %struct.ifacaddr6, ptr %aca.084, i32 0, i32 1
  %36 = ptrtoint ptr %aca_rt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %aca_rt, align 4
  %nh.i = getelementptr inbounds %struct.fib6_info, ptr %37, i32 0, i32 20
  %38 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nh.i, align 4
  %tobool.not.i62 = icmp eq ptr %39, null
  br i1 %tobool.not.i62, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %for.body
  %is_group.i.i = getelementptr inbounds %struct.nexthop, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %is_group.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %is_group.i.i, align 2, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i63 = icmp eq i8 %41, 0
  br i1 %tobool.not.i.i63, label %cond.true.i.if.end16.i.i_crit_edge, label %if.then.i.i65

cond.true.i.if.end16.i.i_crit_edge:               ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.then.i.i65:                                    ; preds = %cond.true.i
  %42 = getelementptr inbounds %struct.nexthop, ptr %39, i32 0, i32 12
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %42, align 4
  %call.i.i64 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i.i64, label %if.then.i.i65.do.end10.i.i_crit_edge, label %lor.lhs.false.i.i67

if.then.i.i65.do.end10.i.i_crit_edge:             ; preds = %if.then.i.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i.i

lor.lhs.false.i.i67:                              ; preds = %if.then.i.i65
  %call2.i.i66 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i66)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i66, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i68, label %lor.lhs.false.i.i67.do.end10.i.i_crit_edge

lor.lhs.false.i.i67.do.end10.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i.i

land.lhs.true.i.i68:                              ; preds = %lor.lhs.false.i.i67
  %call4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i68.do.end10.i.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i68.do.end10.i.i_crit_edge:       ; preds = %land.lhs.true.i.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i68
  %.b46.i.i = load i1, ptr @nexthop_fib6_nh.__warned, align 1
  br i1 %.b46.i.i, label %land.lhs.true6.i.i.do.end10.i.i_crit_edge, label %if.then8.i.i

land.lhs.true6.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nexthop_fib6_nh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 487, ptr noundef nonnull @.str.5) #7
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then8.i.i, %land.lhs.true6.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i68.do.end10.i.i_crit_edge, %lor.lhs.false.i.i67.do.end10.i.i_crit_edge, %if.then.i.i65.do.end10.i.i_crit_edge
  %num_nh.i.i.i = getelementptr inbounds %struct.nh_group, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %num_nh.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %num_nh.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp.i.i.i = icmp eq i16 %46, 0
  br i1 %cmp.i.i.i, label %do.end10.i.i.fib6_info_nh_dev.exit_crit_edge, label %nexthop_mpath_select.exit.i.i

do.end10.i.i.fib6_info_nh_dev.exit_crit_edge:     ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fib6_info_nh_dev.exit

nexthop_mpath_select.exit.i.i:                    ; preds = %do.end10.i.i
  %nh_entries.i.i.i = getelementptr inbounds %struct.nh_group, ptr %44, i32 0, i32 8
  %47 = ptrtoint ptr %nh_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nh_entries.i.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %48, null
  br i1 %tobool13.not.i.i, label %nexthop_mpath_select.exit.i.i.fib6_info_nh_dev.exit_crit_edge, label %nexthop_mpath_select.exit.i.i.if.end16.i.i_crit_edge

nexthop_mpath_select.exit.i.i.if.end16.i.i_crit_edge: ; preds = %nexthop_mpath_select.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

nexthop_mpath_select.exit.i.i.fib6_info_nh_dev.exit_crit_edge: ; preds = %nexthop_mpath_select.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fib6_info_nh_dev.exit

if.end16.i.i:                                     ; preds = %nexthop_mpath_select.exit.i.i.if.end16.i.i_crit_edge, %cond.true.i.if.end16.i.i_crit_edge
  %nh.addr.0.i.i = phi ptr [ %48, %nexthop_mpath_select.exit.i.i.if.end16.i.i_crit_edge ], [ %39, %cond.true.i.if.end16.i.i_crit_edge ]
  %49 = getelementptr inbounds %struct.nexthop, ptr %nh.addr.0.i.i, i32 0, i32 12
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %49, align 4
  %call22.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call22.i.i, label %if.end16.i.i.do.end34.i.i_crit_edge, label %lor.lhs.false23.i.i

if.end16.i.i.do.end34.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34.i.i

lor.lhs.false23.i.i:                              ; preds = %if.end16.i.i
  %call24.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %land.lhs.true26.i.i, label %lor.lhs.false23.i.i.do.end34.i.i_crit_edge

lor.lhs.false23.i.i.do.end34.i.i_crit_edge:       ; preds = %lor.lhs.false23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34.i.i

land.lhs.true26.i.i:                              ; preds = %lor.lhs.false23.i.i
  %call27.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %land.lhs.true26.i.i.do.end34.i.i_crit_edge, label %land.lhs.true29.i.i

land.lhs.true26.i.i.do.end34.i.i_crit_edge:       ; preds = %land.lhs.true26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34.i.i

land.lhs.true29.i.i:                              ; preds = %land.lhs.true26.i.i
  %.b4445.i.i = load i1, ptr @nexthop_fib6_nh.__warned.9, align 1
  br i1 %.b4445.i.i, label %land.lhs.true29.i.i.do.end34.i.i_crit_edge, label %if.then31.i.i

land.lhs.true29.i.i.do.end34.i.i_crit_edge:       ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34.i.i

if.then31.i.i:                                    ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nexthop_fib6_nh.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 493, ptr noundef nonnull @.str.5) #7
  br label %do.end34.i.i

do.end34.i.i:                                     ; preds = %if.then31.i.i, %land.lhs.true29.i.i.do.end34.i.i_crit_edge, %land.lhs.true26.i.i.do.end34.i.i_crit_edge, %lor.lhs.false23.i.i.do.end34.i.i_crit_edge, %if.end16.i.i.do.end34.i.i_crit_edge
  %family.i.i = getelementptr inbounds %struct.nh_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %53)
  %cmp.i.i69 = icmp eq i8 %53, 10
  %54 = getelementptr inbounds %struct.nh_info, ptr %51, i32 0, i32 5
  %spec.select.i.i = select i1 %cmp.i.i69, ptr %54, ptr null
  br label %fib6_info_nh_dev.exit

cond.false.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %fib6_nh2.i = getelementptr inbounds %struct.fib6_info, ptr %37, i32 0, i32 21
  br label %fib6_info_nh_dev.exit

fib6_info_nh_dev.exit:                            ; preds = %cond.false.i, %do.end34.i.i, %nexthop_mpath_select.exit.i.i.fib6_info_nh_dev.exit_crit_edge, %do.end10.i.i.fib6_info_nh_dev.exit_crit_edge
  %cond.i = phi ptr [ %fib6_nh2.i, %cond.false.i ], [ null, %nexthop_mpath_select.exit.i.i.fib6_info_nh_dev.exit_crit_edge ], [ %spec.select.i.i, %do.end34.i.i ], [ null, %do.end10.i.i.fib6_info_nh_dev.exit_crit_edge ]
  %55 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cond.i, align 4
  %tobool18.not = icmp eq ptr %56, null
  br i1 %tobool18.not, label %fib6_info_nh_dev.exit.for.inc_crit_edge, label %lor.lhs.false

fib6_info_nh_dev.exit.for.inc_crit_edge:          ; preds = %fib6_info_nh_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %fib6_info_nh_dev.exit
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 127
  %57 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %58, %net
  br i1 %cmp.i.not, label %if.end23, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end23:                                         ; preds = %lor.lhs.false
  %59 = ptrtoint ptr %aca.084 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %aca.084, align 4
  %61 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addr, align 4
  %xor.i70 = xor i32 %62, %60
  %arrayidx4.i = getelementptr [4 x i32], ptr %aca.084, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx4.i, align 4
  %65 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx2.i.i, align 4
  %xor7.i = xor i32 %66, %64
  %or.i = or i32 %xor7.i, %xor.i70
  %arrayidx9.i = getelementptr [4 x i32], ptr %aca.084, i32 0, i32 2
  %67 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx9.i, align 4
  %69 = ptrtoint ptr %arrayidx4.i.i61 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx4.i.i61, align 4
  %xor12.i = xor i32 %70, %68
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr [4 x i32], ptr %aca.084, i32 0, i32 3
  %71 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx15.i, align 4
  %73 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx7.i.i, align 4
  %xor18.i = xor i32 %74, %72
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i71 = icmp eq i32 %or19.i, 0
  br i1 %cmp.i71, label %if.end23.if.end42_crit_edge, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end23.if.end42_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %fib6_info_nh_dev.exit.for.inc_crit_edge
  %aca_addr_lst = getelementptr inbounds %struct.ifacaddr6, ptr %aca.084, i32 0, i32 3
  %75 = ptrtoint ptr %aca_addr_lst to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %aca_addr_lst, align 4
  %tobool34.not = icmp eq ptr %76, null
  %add.ptr38 = getelementptr i8, ptr %76, i32 -24
  %tobool16.not89 = icmp eq ptr %add.ptr38, null
  %tobool16.not = or i1 %tobool34.not, %tobool16.not89
  br i1 %tobool16.not, label %for.inc.if.end42_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end42_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end42:                                         ; preds = %for.inc.if.end42_crit_edge, %if.end23.if.end42_crit_edge, %do.end.if.end42_crit_edge, %for.end.i, %__in6_dev_get.exit.i.if.end42_crit_edge
  %found.1.off0 = phi i1 [ %tobool1.lcssa.i, %for.end.i ], [ false, %__in6_dev_get.exit.i.if.end42_crit_edge ], [ false, %do.end.if.end42_crit_edge ], [ true, %if.end23.if.end42_crit_edge ], [ false, %for.inc.if.end42_crit_edge ]
  %call.i72 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i72, label %if.end42.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i75

if.end42.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i75:                                ; preds = %if.end42
  %call1.i73 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool.not.i74, label %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i77

land.lhs.true.i75.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i77:                               ; preds = %land.lhs.true.i75
  %.b4.i76 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i76, label %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, label %if.then.i78

land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i78:                                      ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.10) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i78, %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, %if.end42.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  %77 = tail call i32 @llvm.read_register.i32(metadata !47) #7
  %and.i.i.i.i.i79 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i79 to ptr
  %preempt_count.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i80, align 4
  %sub.i.i.i = add i32 %80, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i80, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret i1 %found.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ipv6_chk_acast_addr_src(ptr noundef %net, ptr noundef %dev, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %addr) #7
  %and = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, ptr null, ptr %dev
  %call1 = tail call zeroext i1 @ipv6_chk_acast_addr(ptr noundef %net, ptr noundef %spec.select, ptr noundef %addr)
  ret i1 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ac6_proc_init(ptr nocapture noundef readonly %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @ac6_seq_ops, i32 noundef 16, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ac6_proc_exit(ptr nocapture noundef readonly %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @ipv6_anycast_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @inet6_acaddr_lst, i32 0, i32 1024)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipv6_anycast_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @acaddr_hash_lock) #7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.024 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr @inet6_acaddr_lst, i32 0, i32 %i.024
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %for.body.if.end_crit_edge, label %do.end, !prof !57

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 617, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @acaddr_hash_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_info_destroy_rcu(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aca_free_rcu(ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %aca_rt = getelementptr i8, ptr %h, i32 -32
  %0 = ptrtoint ptr %aca_rt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aca_rt, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.fib6_info_release.exit_crit_edge, label %land.lhs.true.i

entry.fib6_info_release.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fib6_info_release.exit

land.lhs.true.i:                                  ; preds = %entry
  %fib6_ref.i = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %fib6_ref.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i, ptr %fib6_ref.i, i32 1, ptr elementtype(i32) %fib6_ref.i) #7, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.fib6_info_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !57

if.end5.i.i.i.i.fib6_info_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fib6_info_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref.i, i32 noundef 3) #7
  br label %fib6_info_release.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  %rcu.i = getelementptr inbounds %struct.fib6_info, ptr %1, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @fib6_info_destroy_rcu) #7
  br label %fib6_info_release.exit

fib6_info_release.exit:                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.fib6_info_release.exit_crit_edge, %entry.fib6_info_release.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %h, i32 -48
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ac6_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !64
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %6 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %idev.i.i = getelementptr inbounds %struct.ac6_iter_state, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %idev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %idev.i.i, align 4
  %call1.i.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.do.end.i.i_crit_edge

rcu_read_lock.exit.do.end.i.i_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b50.i.i = load i1, ptr @ac6_get_first.__warned, align 1
  br i1 %.b50.i.i, label %land.lhs.true4.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ac6_get_first.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 492, ptr noundef nonnull @.str.2) #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %rcu_read_lock.exit.do.end.i.i_crit_edge
  %dev_base_head.i.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 16
  %dev.i.i = getelementptr inbounds %struct.ac6_iter_state, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %dev_base_head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn57.i.i = load volatile ptr, ptr %dev_base_head.i.i, align 4
  %storemerge58.i.i = getelementptr i8, ptr %.pn57.i.i, i32 -40
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %storemerge58.i.i, ptr %dev.i.i, align 4
  %cmp.not59.i.i = icmp eq ptr %.pn57.i.i, %dev_base_head.i.i
  br i1 %cmp.not59.i.i, label %do.end.i.i.ac6_get_idx.exit_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.ac6_get_idx.exit_crit_edge:            ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ac6_get_idx.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %.pn60.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn57.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %ip6_ptr.i.i.i = getelementptr i8, ptr %.pn60.i.i, i32 512
  %13 = ptrtoint ptr %ip6_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %ip6_ptr.i.i.i, align 8
  %call.i.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i.i.i, label %for.body.i.i.__in6_dev_get.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.body.i.i.__in6_dev_get.exit.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.__in6_dev_get.exit.i.i_crit_edge

lor.lhs.false.i.i.i.__in6_dev_get.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call3.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.__in6_dev_get.exit.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.__in6_dev_get.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b10.i.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i.i, label %land.lhs.true5.i.i.i.__in6_dev_get.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true5.i.i.i.__in6_dev_get.exit.i.i_crit_edge: ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 313, ptr noundef nonnull @.str.5) #7
  br label %__in6_dev_get.exit.i.i

__in6_dev_get.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true5.i.i.i.__in6_dev_get.exit.i.i_crit_edge, %land.lhs.true.i.i.i.__in6_dev_get.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.__in6_dev_get.exit.i.i_crit_edge, %for.body.i.i.__in6_dev_get.exit.i.i_crit_edge
  %tobool15.not.i.i = icmp eq ptr %14, null
  br i1 %tobool15.not.i.i, label %__in6_dev_get.exit.i.i.for.inc.i.i_crit_edge, label %if.end17.i.i

__in6_dev_get.exit.i.i.for.inc.i.i_crit_edge:     ; preds = %__in6_dev_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end17.i.i:                                     ; preds = %__in6_dev_get.exit.i.i
  %lock.i.i = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %lock.i.i) #7
  %ac_list.i.i = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %ac_list.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ac_list.i.i, align 4
  %tobool18.not.i.i = icmp eq ptr %16, null
  br i1 %tobool18.not.i.i, label %if.end21.i.i, label %ac6_get_first.exit.i

if.end21.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_read_unlock_bh(ptr noundef %lock.i.i) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end21.i.i, %__in6_dev_get.exit.i.i.for.inc.i.i_crit_edge
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 4
  %dev_list29.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %dev_list29.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i.i = load volatile ptr, ptr %dev_list29.i.i, align 4
  %storemerge.i.i = getelementptr i8, ptr %.pn.i.i, i32 -40
  store ptr %storemerge.i.i, ptr %dev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %dev_base_head.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.ac6_get_idx.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.ac6_get_idx.exit_crit_edge:           ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ac6_get_idx.exit

ac6_get_first.exit.i:                             ; preds = %if.end17.i.i
  %20 = ptrtoint ptr %idev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %idev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool1.not22.i = icmp eq i64 %5, 0
  br i1 %tobool1.not22.i, label %ac6_get_first.exit.i.ac6_get_idx.exit_crit_edge, label %ac6_get_first.exit.i.land.rhs.i_crit_edge

ac6_get_first.exit.i.land.rhs.i_crit_edge:        ; preds = %ac6_get_first.exit.i
  br label %land.rhs.i

ac6_get_first.exit.i.ac6_get_idx.exit_crit_edge:  ; preds = %ac6_get_first.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ac6_get_idx.exit

while.cond.i:                                     ; preds = %land.rhs.i
  %dec.i = add i64 %pos.addr.023.i, -1
  %tobool1.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool1.not.i, label %while.cond.i.ac6_get_idx.exit_crit_edge, label %while.cond.i.land.rhs.i_crit_edge

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

while.cond.i.ac6_get_idx.exit_crit_edge:          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ac6_get_idx.exit

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %ac6_get_first.exit.i.land.rhs.i_crit_edge
  %im.024.i = phi ptr [ %call2.i, %while.cond.i.land.rhs.i_crit_edge ], [ %16, %ac6_get_first.exit.i.land.rhs.i_crit_edge ]
  %pos.addr.023.i = phi i64 [ %dec.i, %while.cond.i.land.rhs.i_crit_edge ], [ %5, %ac6_get_first.exit.i.land.rhs.i_crit_edge ]
  %call2.i = tail call fastcc ptr @ac6_get_next(ptr noundef %seq, ptr noundef nonnull %im.024.i) #7
  %cmp.not.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not.i, label %land.rhs.i.ac6_get_idx.exit_crit_edge, label %while.cond.i

land.rhs.i.ac6_get_idx.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ac6_get_idx.exit

ac6_get_idx.exit:                                 ; preds = %land.rhs.i.ac6_get_idx.exit_crit_edge, %while.cond.i.ac6_get_idx.exit_crit_edge, %ac6_get_first.exit.i.ac6_get_idx.exit_crit_edge, %for.inc.i.i.ac6_get_idx.exit_crit_edge, %do.end.i.i.ac6_get_idx.exit_crit_edge
  %21 = phi ptr [ null, %do.end.i.i.ac6_get_idx.exit_crit_edge ], [ %16, %ac6_get_first.exit.i.ac6_get_idx.exit_crit_edge ], [ null, %land.rhs.i.ac6_get_idx.exit_crit_edge ], [ %call2.i, %while.cond.i.ac6_get_idx.exit_crit_edge ], [ null, %for.inc.i.i.ac6_get_idx.exit_crit_edge ]
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ac6_seq_stop(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %idev = getelementptr inbounds %struct.ac6_iter_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idev, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !59

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.inet6_dev, ptr %3, i32 0, i32 24
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #7
  %4 = ptrtoint ptr %idev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %idev, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.10) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  %5 = tail call i32 @llvm.read_register.i32(metadata !47) #7
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ac6_seq_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ac6_get_next(ptr noundef %seq, ptr noundef %v)
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac6_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev = getelementptr inbounds %struct.ac6_iter_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex, align 4
  %aca_users = getelementptr inbounds %struct.ifacaddr6, ptr %v, i32 0, i32 4
  %6 = ptrtoint ptr %aca_users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aca_users, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, i32 noundef %5, ptr noundef %3, ptr noundef %v, i32 noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ac6_get_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %im) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %aca_next = getelementptr inbounds %struct.ifacaddr6, ptr %im, i32 0, i32 2
  %0 = ptrtoint ptr %aca_next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aca_next, align 4
  %tobool.not42 = icmp eq ptr %1, null
  br i1 %tobool.not42, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %idev = getelementptr inbounds %struct.ac6_iter_state, ptr %3, i32 0, i32 2
  %dev = getelementptr inbounds %struct.ac6_iter_state, ptr %3, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %4 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idev, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %while.body.if.end_crit_edge, label %if.then, !prof !59

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 24
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 127
  %8 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_net.i.i, align 4
  %dev_list.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %dev_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %dev_list.i, align 8
  %call2.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.next_net_device_rcu.exit_crit_edge

if.end.next_net_device_rcu.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_net_device_rcu.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.next_net_device_rcu.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.next_net_device_rcu.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_net_device_rcu.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @next_net_device_rcu.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true5.i.next_net_device_rcu.exit_crit_edge, label %if.then.i

land.lhs.true5.i.next_net_device_rcu.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_net_device_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @next_net_device_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 2835, ptr noundef nonnull @.str.5) #7
  br label %next_net_device_rcu.exit

next_net_device_rcu.exit:                         ; preds = %if.then.i, %land.lhs.true5.i.next_net_device_rcu.exit_crit_edge, %land.lhs.true.i.next_net_device_rcu.exit_crit_edge, %if.end.next_net_device_rcu.exit_crit_edge
  %dev_base_head.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 16
  %cmp.i = icmp eq ptr %11, %dev_base_head.i
  %add.ptr.i = getelementptr i8, ptr %11, i32 -40
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %add.ptr.i
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spec.select.i, ptr %dev, align 4
  %tobool7.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %next_net_device_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %idev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %idev, align 4
  br label %while.end

if.end10:                                         ; preds = %next_net_device_rcu.exit
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %spec.select.i, i32 0, i32 80
  %14 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %if.end10.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.end10.__in6_dev_get.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.end10
  %call2.i33 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i33)
  %tobool.not.i34 = icmp eq i32 %call2.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i37, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

land.lhs.true.i37:                                ; preds = %lor.lhs.false.i
  %call3.i35 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i35)
  %tobool4.not.i36 = icmp eq i32 %call3.i35, 0
  br i1 %tobool4.not.i36, label %land.lhs.true.i37.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i38

land.lhs.true.i37.__in6_dev_get.exit_crit_edge:   ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

land.lhs.true5.i38:                               ; preds = %land.lhs.true.i37
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i38.__in6_dev_get.exit_crit_edge, label %if.then.i39

land.lhs.true5.i38.__in6_dev_get.exit_crit_edge:  ; preds = %land.lhs.true5.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

if.then.i39:                                      ; preds = %land.lhs.true5.i38
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 313, ptr noundef nonnull @.str.5) #7
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i39, %land.lhs.true5.i38.__in6_dev_get.exit_crit_edge, %land.lhs.true.i37.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %if.end10.__in6_dev_get.exit_crit_edge
  %16 = ptrtoint ptr %idev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %idev, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %__in6_dev_get.exit.while.cond.backedge_crit_edge, label %if.end17

__in6_dev_get.exit.while.cond.backedge_crit_edge: ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end17:                                         ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %lock19 = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %lock19) #7
  %17 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %idev, align 4
  %ac_list = getelementptr inbounds %struct.inet6_dev, ptr %18, i32 0, i32 23
  %19 = ptrtoint ptr %ac_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ac_list, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end17, %__in6_dev_get.exit.while.cond.backedge_crit_edge
  %im.addr.0.be = phi ptr [ %20, %if.end17 ], [ null, %__in6_dev_get.exit.while.cond.backedge_crit_edge ]
  %tobool.not = icmp eq ptr %im.addr.0.be, null
  br i1 %tobool.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.then8, %entry.while.end_crit_edge
  %im.addr.041 = phi ptr [ null, %if.then8 ], [ %1, %entry.while.end_crit_edge ], [ %im.addr.0.be, %while.cond.backedge.while.end_crit_edge ]
  ret ptr %im.addr.041
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !34, !35, !37, !39, !41, !42, !44, !46}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/ipv6/anycast.c", i32 73, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/ipv6/anycast.c", i32 162, i32 2}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../net/ipv6/anycast.c", i32 194, i32 2}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../net/ipv6/anycast.c", i32 291, i32 2}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../net/ipv6/anycast.c", i32 349, i32 2}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/ipv6/anycast.c", i32 449, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv6/anycast.c", i32 587, i32 7}
!17 = !{ptr @inet6_acaddr_lst, !18, !"inet6_acaddr_lst", i1 false, i1 false}
!18 = !{!"../net/ipv6/anycast.c", i32 47, i32 26}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/net/nexthop.h", i32 487, i32 12}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/net/nexthop.h", i32 493, i32 8}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ac6_seq_ops, !36, !"ac6_seq_ops", i1 false, i1 false}
!36 = !{!"../net/ipv6/anycast.c", i32 578, i32 36}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/ipv6/anycast.c", i32 492, i32 2}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/netdevice.h", i32 2835, i32 7}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/ipv6/anycast.c", i32 572, i32 18}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/ipv6/anycast.c", i32 48, i32 8}
!46 = !{ptr @acaddr_hash_lock, !45, !"acaddr_hash_lock", i1 false, i1 false}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 2148391256, i64 2148391288, i64 2148391317, i64 2148391351, i64 2148391382, i64 2148391405}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 2148479281}
!61 = !{i64 2148393721, i64 2148393753, i64 2148393782, i64 2148393816, i64 2148393847, i64 2148393870}
!62 = !{i64 2149345324}
!63 = !{i64 2151933693}
!64 = !{i64 2149395814}
!65 = !{i8 0, i8 2}
!66 = !{i64 2149396080}
