; ModuleID = '/llk/IR_all_yes/net/ipv6/reassembly.c_pt.bc'
source_filename = "../net/ipv6/reassembly.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inet_frags = type { i32, ptr, ptr, ptr, ptr, ptr, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.104, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.104 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
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
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, ptr, ptr, i64, i32, i32, i8, i16, ptr, %struct.callback_head }
%struct.rhash_head = type { ptr }
%union.anon = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.frag_queue = type { %struct.inet_frag_queue, i32, i16, i8 }
%struct.fqdir = type { i32, i32, i32, i32, ptr, ptr, i8, [103 x i8], %struct.rhashtable, [28 x i8], %struct.atomic_t, %struct.work_struct, %struct.llist_node, [76 x i8] }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.7, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.131, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.7 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.131 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.anon.5 = type { ptr, ptr, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.sk_buff = type { %union.anon.4, %union.anon.132, %union.anon.133, [48 x i8], %union.anon.134, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.136, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.4 = type { %struct.anon.5 }
%union.anon.132 = type { ptr }
%union.anon.133 = type { i64 }
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type { i32, ptr }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.138, i32, i32, i32, i16, i16, %union.anon.140, i32, %union.anon.141, %union.anon.142, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.138 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.141 = type { i32 }
%union.anon.142 = type { i16 }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.frag_hdr = type { i8, i8, i16, i32 }

@ip6_frags = internal global { %struct.inet_frags, [48 x i8] } zeroinitializer, align 32
@ip6_frag_cache_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip6-frags\00", [22 x i8] zeroinitializer }, align 32
@ip6_rhash_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 0, i16 0, i16 0, i32 0, i16 0, i8 1, ptr @ip6frag_key_hashfn, ptr @ip6frag_obj_hashfn, ptr @ip6frag_obj_cmpfn }, [36 x i8] zeroinitializer }, align 32
@frag_protocol = internal constant { %struct.inet6_protocol, [44 x i8] } { %struct.inet6_protocol { ptr null, ptr null, ptr @ipv6_frag_rcv, ptr null, i32 1 }, [44 x i8] zeroinitializer }, align 32
@ip6_frags_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ipv6_frags_init_net, ptr @ipv6_frags_pre_exit_net, ptr @ipv6_frags_exit_net, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__in6_dev_get_safely.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_frag_ecn_table = external dso_local local_unnamed_addr constant [16 x i8], align 1
@ip6_frag_reasm.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv6\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip6_frag_reasm\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/ipv6/reassembly.c\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ip6_frag_reasm: payload len = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"IPv6: ip6_frag_reasm: payload len = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ip6_frag_reasm.descriptor.12 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.13, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ip6_frag_reasm: no memory for reassembly\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"IPv6: ip6_frag_reasm: no memory for reassembly\0A\00", [48 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"net/ipv6\00", [23 x i8] zeroinitializer }, align 32
@ip6_frags_ctl_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.16, ptr @ip6_frags_secret_interval_unused, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ip6_ctl_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ip6frag_secret_interval\00", [40 x i8] zeroinitializer }, align 32
@ip6_frags_secret_interval_unused = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ip6_frags_ns_ctl_table = internal global { [4 x %struct.ctl_table], [48 x i8] } { [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.17, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.18, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.19, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip6frag_high_thresh\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip6frag_low_thresh\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip6frag_time\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 17, i64 58]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"ip6_frags\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 68, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"ip6_frag_cache_name\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 61, i32 19 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"ip6_rhash_params\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 559, i32 39 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"frag_protocol\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 407, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"ip6_frags_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 553, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 695, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 313, i32 9 }
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 271, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 723, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 1011, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 309, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 312, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 495, i32 50 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"ip6_frags_ctl_table\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 438, i32 25 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"ip6_ctl_header\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 491, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 440, i32 15 }
@___asan_gen_.90 = private unnamed_addr constant [33 x i8] c"ip6_frags_secret_interval_unused\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 437, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [23 x i8] c"ip6_frags_ns_ctl_table\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 414, i32 25 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 416, i32 15 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 422, i32 15 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [25 x i8] c"../net/ipv6/reassembly.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 428, i32 15 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @ip6_frags, ptr @ip6_frag_cache_name, ptr @ip6_rhash_params, ptr @frag_protocol, ptr @ip6_frags_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ip6_frags_ctl_table, ptr @ip6_ctl_header, ptr @.str.16, ptr @ip6_frags_secret_interval_unused, ptr @ip6_frags_ns_ctl_table, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_frags to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_frag_cache_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_rhash_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frag_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_frags_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_frags_ctl_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_ctl_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_frags_secret_interval_unused to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_frags_ns_ctl_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_frag_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @ip6frag_init, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip6_frags, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip6_frags, i32 0, i32 2), align 4
  store i32 200, ptr @ip6_frags, align 4
  store ptr @ip6_frag_expire, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip6_frags, i32 0, i32 3), align 4
  store ptr @ip6_frag_cache_name, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip6_frags, i32 0, i32 5), align 4
  %0 = call ptr @memcpy(ptr getelementptr inbounds (%struct.inet_frags, ptr @ip6_frags, i32 0, i32 6), ptr @ip6_rhash_params, i32 28)
  %call = tail call i32 @inet_frags_init(ptr noundef nonnull @ip6_frags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @frag_protocol, i8 noundef zeroext 44) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_protocol_crit_edge

if.end.err_protocol_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_protocol

if.end4:                                          ; preds = %if.end
  %call.i = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.15, ptr noundef nonnull @ip6_frags_ctl_table) #14
  store ptr %call.i, ptr @ip6_ctl_header, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %if.end4.err_sysctl_crit_edge, label %if.end8

if.end4.err_sysctl_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_sysctl

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip6_frags_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.out_crit_edge, label %err_pernet

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %err_protocol, %if.end8.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %ret.2, %err_protocol ], [ 0, %if.end8.out_crit_edge ]
  ret i32 %ret.0

err_pernet:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %1 = load ptr, ptr @ip6_ctl_header, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %1) #14
  br label %err_sysctl

err_sysctl:                                       ; preds = %err_pernet, %if.end4.err_sysctl_crit_edge
  %ret.1 = phi i32 [ -12, %if.end4.err_sysctl_crit_edge ], [ %call9, %err_pernet ]
  %call13 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @frag_protocol, i8 noundef zeroext 44) #14
  br label %err_protocol

err_protocol:                                     ; preds = %err_sysctl, %if.end.err_protocol_crit_edge
  %ret.2 = phi i32 [ %call1, %if.end.err_protocol_crit_edge ], [ %ret.1, %err_sysctl ]
  tail call void @inet_frags_fini(ptr noundef nonnull @ip6_frags) #14
  br label %out
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ip6frag_init(ptr nocapture noundef writeonly %q, ptr nocapture noundef readonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %key1 = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %key1, ptr %a, i32 44)
  %ecn = getelementptr inbounds %struct.frag_queue, ptr %q, i32 0, i32 3
  %1 = ptrtoint ptr %ecn to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ecn, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6_frag_expire(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -48
  %fqdir = getelementptr i8, ptr %t, i32 132
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fqdir, align 4
  %net = getelementptr inbounds %struct.fqdir, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %8 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fqdir, align 4
  %dead.i = getelementptr inbounds %struct.fqdir, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %dead.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %dead.i, align 8, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %rcu_read_lock.exit.i.out_rcu_unlock.i_crit_edge

rcu_read_lock.exit.i.out_rcu_unlock.i_crit_edge:  ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_rcu_unlock.i

if.end.i:                                         ; preds = %rcu_read_lock.exit.i
  %lock.i = getelementptr i8, ptr %t, i32 48
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #14
  %flags.i = getelementptr i8, ptr %t, i32 128
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags.i, align 8
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not.i = icmp eq i8 %14, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end6.i:                                        ; preds = %if.end.i
  tail call void @inet_frag_kill(ptr noundef %add.ptr) #14
  %iif.i = getelementptr i8, ptr %t, i32 144
  %15 = ptrtoint ptr %iif.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iif.i, align 8
  %call.i = tail call ptr @dev_get_by_index_rcu(ptr noundef %3, i32 noundef %16) #14
  %tobool8.not.i = icmp eq ptr %call.i, null
  br i1 %tobool8.not.i, label %if.end6.i.out.i_crit_edge, label %if.end10.i

if.end6.i.out.i_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end10.i:                                       ; preds = %if.end6.i
  %ip6_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 80
  %17 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i161.i = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i161.i, label %if.end10.i.__in6_dev_get.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end10.i.__in6_dev_get.exit.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end10.i
  %call2.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i162.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i162.i, label %land.lhs.true.i163.i, label %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge

lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

land.lhs.true.i163.i:                             ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i163.i.__in6_dev_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i163.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true.i163.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i163.i
  %.b10.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, label %if.then.i164.i

land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

if.then.i164.i:                                   ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 313, ptr noundef nonnull @.str.3) #14
  br label %__in6_dev_get.exit.i

__in6_dev_get.exit.i:                             ; preds = %if.then.i164.i, %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, %land.lhs.true.i163.i.__in6_dev_get.exit.i_crit_edge, %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge, %if.end10.i.__in6_dev_get.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %18, null
  br i1 %cmp.not.i, label %__in6_dev_get.exit.i.do.body32.i_crit_edge, label %do.body16.i, !prof !69

__in6_dev_get.exit.i.do.body32.i_crit_edge:       ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body32.i

do.body16.i:                                      ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @local_bh_disable() #14
  %ipv6.i = getelementptr inbounds %struct.inet6_dev, ptr %18, i32 0, i32 33, i32 1
  %19 = ptrtoint ptr %ipv6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipv6.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %27, %21
  %28 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.ipstats_mib, ptr %28, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #14
  %arrayidx24.i = getelementptr [37 x i64], ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx24.i, align 8
  %add25.i = add i64 %30, 1
  store i64 %add25.i, ptr %arrayidx24.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %28, i32 0, i32 1, i32 0, i32 1
  %31 = tail call ptr @llvm.returnaddress(i32 0) #14
  %32 = ptrtoint ptr %31 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %32) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %33 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %34, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  tail call fastcc void @local_bh_enable() #14
  br label %do.body32.i

do.body32.i:                                      ; preds = %do.body16.i, %__in6_dev_get.exit.i.do.body32.i_crit_edge
  tail call fastcc void @local_bh_disable() #14
  %ipv6_statistics.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 30, i32 1
  %35 = ptrtoint ptr %ipv6_statistics.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ipv6_statistics.i, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i165.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i165.i to ptr
  %cpu43.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu43.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu43.i, align 4
  %arrayidx44.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx44.i, align 4
  %add45.i = add i32 %43, %37
  %44 = inttoptr i32 %add45.i to ptr
  %syncp46.i = getelementptr inbounds %struct.ipstats_mib, ptr %44, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp46.i) #14
  %arrayidx48.i = getelementptr [37 x i64], ptr %44, i32 0, i32 19
  %45 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx48.i, align 8
  %add49.i = add i64 %46, 1
  store i64 %add49.i, ptr %arrayidx48.i, align 8
  %dep_map.i.i166.i = getelementptr inbounds %struct.ipstats_mib, ptr %44, i32 0, i32 1, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #14
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i166.i, i32 noundef %48) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %49 = ptrtoint ptr %syncp46.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %syncp46.i, align 4
  %inc.i.i.i167.i = add i32 %50, 1
  store i32 %inc.i.i.i167.i, ptr %syncp46.i, align 4
  tail call fastcc void @local_bh_enable() #14
  %51 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i169.i = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i169.i, label %do.body32.i.__in6_dev_get.exit179.i_crit_edge, label %lor.lhs.false.i172.i

do.body32.i.__in6_dev_get.exit179.i_crit_edge:    ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit179.i

lor.lhs.false.i172.i:                             ; preds = %do.body32.i
  %call2.i170.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i170.i)
  %tobool.not.i171.i = icmp eq i32 %call2.i170.i, 0
  br i1 %tobool.not.i171.i, label %land.lhs.true.i175.i, label %lor.lhs.false.i172.i.__in6_dev_get.exit179.i_crit_edge

lor.lhs.false.i172.i.__in6_dev_get.exit179.i_crit_edge: ; preds = %lor.lhs.false.i172.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit179.i

land.lhs.true.i175.i:                             ; preds = %lor.lhs.false.i172.i
  %call3.i173.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i173.i)
  %tobool4.not.i174.i = icmp eq i32 %call3.i173.i, 0
  br i1 %tobool4.not.i174.i, label %land.lhs.true.i175.i.__in6_dev_get.exit179.i_crit_edge, label %land.lhs.true5.i177.i

land.lhs.true.i175.i.__in6_dev_get.exit179.i_crit_edge: ; preds = %land.lhs.true.i175.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit179.i

land.lhs.true5.i177.i:                            ; preds = %land.lhs.true.i175.i
  %.b10.i176.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i176.i, label %land.lhs.true5.i177.i.__in6_dev_get.exit179.i_crit_edge, label %if.then.i178.i

land.lhs.true5.i177.i.__in6_dev_get.exit179.i_crit_edge: ; preds = %land.lhs.true5.i177.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit179.i

if.then.i178.i:                                   ; preds = %land.lhs.true5.i177.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 313, ptr noundef nonnull @.str.3) #14
  br label %__in6_dev_get.exit179.i

__in6_dev_get.exit179.i:                          ; preds = %if.then.i178.i, %land.lhs.true5.i177.i.__in6_dev_get.exit179.i_crit_edge, %land.lhs.true.i175.i.__in6_dev_get.exit179.i_crit_edge, %lor.lhs.false.i172.i.__in6_dev_get.exit179.i_crit_edge, %do.body32.i.__in6_dev_get.exit179.i_crit_edge
  %cmp57.not.i = icmp eq ptr %52, null
  br i1 %cmp57.not.i, label %__in6_dev_get.exit179.i.do.body92.i_crit_edge, label %do.body66.i, !prof !69

__in6_dev_get.exit179.i.do.body92.i_crit_edge:    ; preds = %__in6_dev_get.exit179.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body92.i

do.body66.i:                                      ; preds = %__in6_dev_get.exit179.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @local_bh_disable() #14
  %ipv676.i = getelementptr inbounds %struct.inet6_dev, ptr %52, i32 0, i32 33, i32 1
  %53 = ptrtoint ptr %ipv676.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ipv676.i, align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = ptrtoint ptr %cpu43.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu43.i, align 4
  %arrayidx80.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx80.i, align 4
  %add81.i = add i32 %59, %55
  %60 = inttoptr i32 %add81.i to ptr
  %syncp82.i = getelementptr inbounds %struct.ipstats_mib, ptr %60, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp82.i) #14
  %arrayidx84.i = getelementptr [37 x i64], ptr %60, i32 0, i32 16
  %61 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx84.i, align 8
  %add85.i = add i64 %62, 1
  store i64 %add85.i, ptr %arrayidx84.i, align 8
  %dep_map.i.i180.i = getelementptr inbounds %struct.ipstats_mib, ptr %60, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i180.i, i32 noundef %48) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %63 = ptrtoint ptr %syncp82.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %syncp82.i, align 4
  %inc.i.i.i181.i = add i32 %64, 1
  store i32 %inc.i.i.i181.i, ptr %syncp82.i, align 4
  tail call fastcc void @local_bh_enable() #14
  br label %do.body92.i

do.body92.i:                                      ; preds = %do.body66.i, %__in6_dev_get.exit179.i.do.body92.i_crit_edge
  tail call fastcc void @local_bh_disable() #14
  %65 = ptrtoint ptr %ipv6_statistics.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ipv6_statistics.i, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = ptrtoint ptr %cpu43.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu43.i, align 4
  %arrayidx106.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx106.i, align 4
  %add107.i = add i32 %71, %67
  %72 = inttoptr i32 %add107.i to ptr
  %syncp108.i = getelementptr inbounds %struct.ipstats_mib, ptr %72, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp108.i) #14
  %arrayidx110.i = getelementptr [37 x i64], ptr %72, i32 0, i32 16
  %73 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx110.i, align 8
  %add111.i = add i64 %74, 1
  store i64 %add111.i, ptr %arrayidx110.i, align 8
  %dep_map.i.i182.i = getelementptr inbounds %struct.ipstats_mib, ptr %72, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i182.i, i32 noundef %48) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %75 = ptrtoint ptr %syncp108.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %syncp108.i, align 4
  %inc.i.i.i183.i = add i32 %76, 1
  store i32 %inc.i.i.i183.i, ptr %syncp108.i, align 4
  tail call fastcc void @local_bh_enable() #14
  %77 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %flags.i, align 8
  %79 = and i8 %78, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool121.not.i = icmp eq i8 %79, 0
  br i1 %tobool121.not.i, label %do.body92.i.out.i_crit_edge, label %if.end123.i

do.body92.i.out.i_crit_edge:                      ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end123.i:                                      ; preds = %do.body92.i
  %call125.i = tail call ptr @inet_frag_pull_head(ptr noundef %add.ptr) #14
  %tobool126.not.i = icmp eq ptr %call125.i, null
  br i1 %tobool126.not.i, label %if.end123.i.out.i_crit_edge, label %if.end128.i

if.end123.i.out.i_crit_edge:                      ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end128.i:                                      ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #16
  %80 = getelementptr inbounds %struct.anon.5, ptr %call125.i, i32 0, i32 2
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i, ptr %80, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #14
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call125.i, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef nonnull %call125.i, i8 noundef zeroext 3, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null, ptr noundef %cb.i.i) #14
  tail call void @kfree_skb_reason(ptr noundef nonnull %call125.i, i32 noundef 0) #14
  br label %out_rcu_unlock.i

out.i:                                            ; preds = %if.end123.i.out.i_crit_edge, %do.body92.i.out.i_crit_edge, %if.end6.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #14
  br label %out_rcu_unlock.i

out_rcu_unlock.i:                                 ; preds = %out.i, %if.end128.i, %rcu_read_lock.exit.i.out_rcu_unlock.i_crit_edge
  %call.i184.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i184.i, label %out_rcu_unlock.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i187.i

out_rcu_unlock.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %out_rcu_unlock.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true.i187.i:                             ; preds = %out_rcu_unlock.i
  %call1.i185.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i185.i)
  %tobool.not.i186.i = icmp eq i32 %call1.i185.i, 0
  br i1 %tobool.not.i186.i, label %land.lhs.true.i187.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i189.i

land.lhs.true.i187.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i187.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i189.i:                            ; preds = %land.lhs.true.i187.i
  %.b4.i188.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i188.i, label %land.lhs.true2.i189.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i190.i

land.lhs.true2.i189.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i189.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

if.then.i190.i:                                   ; preds = %land.lhs.true2.i189.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i190.i, %land.lhs.true2.i189.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i187.i.rcu_read_unlock.exit.i_crit_edge, %out_rcu_unlock.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !71
  %82 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i.i.i.i.i191.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i191.i to ptr
  %preempt_count.i.i.i.i192.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i192.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i192.i, align 4
  %sub.i.i.i.i = add i32 %85, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i192.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %refcnt.i.i = getelementptr i8, ptr %t, i32 92
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #14
  %86 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #14, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i193.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ip6frag_expire_frag_queue.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !74

if.end5.i.i.i.i.i.ip6frag_expire_frag_queue.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip6frag_expire_frag_queue.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #14
  br label %ip6frag_expire_frag_queue.exit

if.then.i193.i:                                   ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !75
  tail call void @inet_frag_destroy(ptr noundef %add.ptr) #14
  br label %ip6frag_expire_frag_queue.exit

ip6frag_expire_frag_queue.exit:                   ; preds = %if.then.i193.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ip6frag_expire_frag_queue.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_frags_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frags_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipv6_frag_exit() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ip6_ctl_header, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %0) #14
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip6_frags_ops) #14
  %call = tail call i32 @inet6_del_protocol(ptr noundef nonnull @frag_protocol, i8 noundef zeroext 44) #14
  tail call void @inet_frags_fini(ptr noundef nonnull @ip6_frags) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_kill(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !76
  %5 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !77
  %14 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !78
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !79
  %33 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !74

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !80
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #14
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_pull_head(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6frag_key_hashfn(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @jhash2(ptr noundef %data, i32 noundef %seed)
  ret i32 %call
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6frag_obj_hashfn(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %key = getelementptr inbounds %struct.inet_frag_queue, ptr %data, i32 0, i32 1
  %call = tail call fastcc i32 @jhash2(ptr noundef %key, i32 noundef %seed)
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip6frag_obj_cmpfn(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %ptr) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %key1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key1, align 4
  %key2 = getelementptr inbounds %struct.inet_frag_queue, ptr %ptr, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(44) %key2, ptr noundef dereferenceable(44) %1, i32 44) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool = icmp ne i32 %bcmp, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jhash2(ptr nocapture noundef readonly %k, i32 noundef %initval) unnamed_addr #9 align 64 {
sw.epilog:
  call void @__sanitizer_cov_trace_pc() #16
  %add1 = add i32 %initval, -559038693
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %k, align 4
  %add2 = add i32 %1, %add1
  %arrayidx3 = getelementptr i32, ptr %k, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %add4 = add i32 %3, %add1
  %arrayidx5 = getelementptr i32, ptr %k, i32 2
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  %add6 = add i32 %5, %add1
  %sub = sub i32 %add2, %add6
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add6, i32 %add6, i32 4) #14
  %xor = xor i32 %sub, %or.i
  %add7 = add i32 %add6, %add4
  %sub8 = sub i32 %add4, %xor
  %or.i1 = tail call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 6) #14
  %xor10 = xor i32 %sub8, %or.i1
  %add11 = add i32 %xor, %add7
  %sub12 = sub i32 %add7, %xor10
  %or.i2 = tail call i32 @llvm.fshl.i32(i32 %xor10, i32 %xor10, i32 8) #14
  %xor14 = xor i32 %sub12, %or.i2
  %add15 = add i32 %xor10, %add11
  %sub16 = sub i32 %add11, %xor14
  %or.i3 = tail call i32 @llvm.fshl.i32(i32 %xor14, i32 %xor14, i32 16) #14
  %xor18 = xor i32 %sub16, %or.i3
  %add19 = add i32 %xor14, %add15
  %sub20 = sub i32 %add15, %xor18
  %or.i4 = tail call i32 @llvm.fshl.i32(i32 %xor18, i32 %xor18, i32 19) #14
  %xor22 = xor i32 %sub20, %or.i4
  %add23 = add i32 %xor18, %add19
  %sub24 = sub i32 %add19, %xor22
  %or.i5 = tail call i32 @llvm.fshl.i32(i32 %xor22, i32 %xor22, i32 4) #14
  %xor26 = xor i32 %sub24, %or.i5
  %add27 = add i32 %xor22, %add23
  %add.ptr = getelementptr i32, ptr %k, i32 3
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %add2.1 = add i32 %7, %add23
  %arrayidx3.1 = getelementptr i32, ptr %k, i32 4
  %8 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.1, align 4
  %add4.1 = add i32 %9, %add27
  %arrayidx5.1 = getelementptr i32, ptr %k, i32 5
  %10 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5.1, align 4
  %add6.1 = add i32 %11, %xor26
  %sub.1 = sub i32 %add2.1, %add6.1
  %or.i.1 = tail call i32 @llvm.fshl.i32(i32 %add6.1, i32 %add6.1, i32 4) #14
  %xor.1 = xor i32 %sub.1, %or.i.1
  %add7.1 = add i32 %add6.1, %add4.1
  %sub8.1 = sub i32 %add4.1, %xor.1
  %or.i1.1 = tail call i32 @llvm.fshl.i32(i32 %xor.1, i32 %xor.1, i32 6) #14
  %xor10.1 = xor i32 %sub8.1, %or.i1.1
  %add11.1 = add i32 %xor.1, %add7.1
  %sub12.1 = sub i32 %add7.1, %xor10.1
  %or.i2.1 = tail call i32 @llvm.fshl.i32(i32 %xor10.1, i32 %xor10.1, i32 8) #14
  %xor14.1 = xor i32 %sub12.1, %or.i2.1
  %add15.1 = add i32 %xor10.1, %add11.1
  %sub16.1 = sub i32 %add11.1, %xor14.1
  %or.i3.1 = tail call i32 @llvm.fshl.i32(i32 %xor14.1, i32 %xor14.1, i32 16) #14
  %xor18.1 = xor i32 %sub16.1, %or.i3.1
  %add19.1 = add i32 %xor14.1, %add15.1
  %sub20.1 = sub i32 %add15.1, %xor18.1
  %or.i4.1 = tail call i32 @llvm.fshl.i32(i32 %xor18.1, i32 %xor18.1, i32 19) #14
  %xor22.1 = xor i32 %sub20.1, %or.i4.1
  %add23.1 = add i32 %xor18.1, %add19.1
  %sub24.1 = sub i32 %add19.1, %xor22.1
  %or.i5.1 = tail call i32 @llvm.fshl.i32(i32 %xor22.1, i32 %xor22.1, i32 4) #14
  %xor26.1 = xor i32 %sub24.1, %or.i5.1
  %add27.1 = add i32 %xor22.1, %add23.1
  %add.ptr.1 = getelementptr i32, ptr %k, i32 6
  %12 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.1, align 4
  %add2.2 = add i32 %13, %add23.1
  %arrayidx3.2 = getelementptr i32, ptr %k, i32 7
  %14 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3.2, align 4
  %add4.2 = add i32 %15, %add27.1
  %arrayidx5.2 = getelementptr i32, ptr %k, i32 8
  %16 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx5.2, align 4
  %add6.2 = add i32 %17, %xor26.1
  %sub.2 = sub i32 %add2.2, %add6.2
  %or.i.2 = tail call i32 @llvm.fshl.i32(i32 %add6.2, i32 %add6.2, i32 4) #14
  %xor.2 = xor i32 %sub.2, %or.i.2
  %add7.2 = add i32 %add6.2, %add4.2
  %sub8.2 = sub i32 %add4.2, %xor.2
  %or.i1.2 = tail call i32 @llvm.fshl.i32(i32 %xor.2, i32 %xor.2, i32 6) #14
  %xor10.2 = xor i32 %sub8.2, %or.i1.2
  %add11.2 = add i32 %xor.2, %add7.2
  %sub12.2 = sub i32 %add7.2, %xor10.2
  %or.i2.2 = tail call i32 @llvm.fshl.i32(i32 %xor10.2, i32 %xor10.2, i32 8) #14
  %xor14.2 = xor i32 %sub12.2, %or.i2.2
  %add15.2 = add i32 %xor10.2, %add11.2
  %sub16.2 = sub i32 %add11.2, %xor14.2
  %or.i3.2 = tail call i32 @llvm.fshl.i32(i32 %xor14.2, i32 %xor14.2, i32 16) #14
  %xor18.2 = xor i32 %sub16.2, %or.i3.2
  %add19.2 = add i32 %xor14.2, %add15.2
  %sub20.2 = sub i32 %add15.2, %xor18.2
  %or.i4.2 = tail call i32 @llvm.fshl.i32(i32 %xor18.2, i32 %xor18.2, i32 19) #14
  %xor22.2 = xor i32 %sub20.2, %or.i4.2
  %add23.2 = add i32 %xor18.2, %add19.2
  %sub24.2 = sub i32 %add19.2, %xor22.2
  %or.i5.2 = tail call i32 @llvm.fshl.i32(i32 %xor22.2, i32 %xor22.2, i32 4) #14
  %xor26.2 = xor i32 %sub24.2, %or.i5.2
  %add27.2 = add i32 %xor22.2, %add23.2
  %uglygep18 = getelementptr i8, ptr %k, i32 36
  %arrayidx32 = getelementptr i8, ptr %k, i32 40
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx32, align 4
  %add33 = add i32 %19, %add27.2
  %20 = ptrtoint ptr %uglygep18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uglygep18, align 4
  %add36 = add i32 %21, %add23.2
  %xor37 = xor i32 %xor26.2, %add33
  %or.i6 = tail call i32 @llvm.fshl.i32(i32 %add33, i32 %add33, i32 14) #14
  %sub39 = sub i32 %xor37, %or.i6
  %xor40 = xor i32 %add36, %sub39
  %or.i7 = tail call i32 @llvm.fshl.i32(i32 %sub39, i32 %sub39, i32 11) #14
  %sub42 = sub i32 %xor40, %or.i7
  %xor43 = xor i32 %sub42, %add33
  %or.i8 = tail call i32 @llvm.fshl.i32(i32 %sub42, i32 %sub42, i32 25) #14
  %sub45 = sub i32 %xor43, %or.i8
  %xor46 = xor i32 %sub45, %sub39
  %or.i9 = tail call i32 @llvm.fshl.i32(i32 %sub45, i32 %sub45, i32 16) #14
  %sub48 = sub i32 %xor46, %or.i9
  %xor49 = xor i32 %sub48, %sub42
  %or.i10 = tail call i32 @llvm.fshl.i32(i32 %sub48, i32 %sub48, i32 4) #14
  %sub51 = sub i32 %xor49, %or.i10
  %xor52 = xor i32 %sub51, %sub45
  %or.i11 = tail call i32 @llvm.fshl.i32(i32 %sub51, i32 %sub51, i32 14) #14
  %sub54 = sub i32 %xor52, %or.i11
  %xor55 = xor i32 %sub54, %sub48
  %or.i12 = tail call i32 @llvm.fshl.i32(i32 %sub54, i32 %sub54, i32 24) #14
  %sub57 = sub i32 %xor55, %or.i12
  ret i32 %sub57
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv6_frag_rcv(ptr noundef %skb) #3 align 64 {
entry:
  %key.i = alloca %struct.frag_v6_compare_key, align 4
  %nexthdr.i = alloca i8, align 1
  %frag_off.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
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
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !69

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 8
  %and25.i = and i32 %8, -2
  %9 = inttoptr i32 %and25.i to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 127
  %12 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nd_net.i, align 4
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 8
  %16 = and i16 %15, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  br i1 %tobool.not, label %if.end, label %skb_dst.exit.fail_hdr_crit_edge

skb_dst.exit.fail_hdr_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_hdr

if.end:                                           ; preds = %skb_dst.exit
  %and.i495 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i495)
  %tobool.not.i496 = icmp eq i32 %and.i495, 0
  br i1 %tobool.not.i496, label %if.end.skb_dst.exit505_crit_edge, label %land.lhs.true.i499

if.end.skb_dst.exit505_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit505

land.lhs.true.i499:                               ; preds = %if.end
  %call.i497 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i497)
  %tobool1.not.i498 = icmp eq i32 %call.i497, 0
  br i1 %tobool1.not.i498, label %land.rhs.i502, label %land.lhs.true.i499.skb_dst.exit505_crit_edge

land.lhs.true.i499.skb_dst.exit505_crit_edge:     ; preds = %land.lhs.true.i499
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit505

land.rhs.i502:                                    ; preds = %land.lhs.true.i499
  %call2.i500 = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i500)
  %tobool3.not.i501 = icmp eq i32 %call2.i500, 0
  br i1 %tobool3.not.i501, label %do.end.i503, label %land.rhs.i502.skb_dst.exit505_crit_edge, !prof !69

land.rhs.i502.skb_dst.exit505_crit_edge:          ; preds = %land.rhs.i502
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit505

do.end.i503:                                      ; preds = %land.rhs.i502
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit505

skb_dst.exit505:                                  ; preds = %do.end.i503, %land.rhs.i502.skb_dst.exit505_crit_edge, %land.lhs.true.i499.skb_dst.exit505_crit_edge, %if.end.skb_dst.exit505_crit_edge
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %4, align 8
  %and25.i504 = and i32 %18, -2
  %19 = inttoptr i32 %and25.i504 to ptr
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rt6i_idev.i, align 4
  %cmp.not = icmp eq ptr %21, null
  br i1 %cmp.not, label %skb_dst.exit505.do.body21_crit_edge, label %do.body, !prof !69

skb_dst.exit505.do.body21_crit_edge:              ; preds = %skb_dst.exit505
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body21

do.body:                                          ; preds = %skb_dst.exit505
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %21, i32 0, i32 33, i32 1
  %22 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ipv6, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i506 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i506 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %add = add i32 %30, %24
  %31 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %31, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx13 = getelementptr [37 x i64], ptr %31, i32 0, i32 17
  %32 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx13, align 8
  %add14 = add i64 %33, 1
  store i64 %add14, ptr %arrayidx13, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %31, i32 0, i32 1, i32 0, i32 1
  %34 = tail call ptr @llvm.returnaddress(i32 0) #14
  %35 = ptrtoint ptr %34 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %35) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %36 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %37, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body21

do.body21:                                        ; preds = %do.body, %skb_dst.exit505.do.body21_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 30, i32 1
  %38 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ipv6_statistics, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i507 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i507 to ptr
  %cpu32 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu32, align 4
  %arrayidx33 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx33, align 4
  %add34 = add i32 %46, %40
  %47 = inttoptr i32 %add34 to ptr
  %syncp35 = getelementptr inbounds %struct.ipstats_mib, ptr %47, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp35)
  %arrayidx37 = getelementptr [37 x i64], ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx37, align 8
  %add38 = add i64 %49, 1
  store i64 %add38, ptr %arrayidx37, align 8
  %dep_map.i.i508 = getelementptr inbounds %struct.ipstats_mib, ptr %47, i32 0, i32 1, i32 0, i32 1
  %50 = tail call ptr @llvm.returnaddress(i32 0) #14
  %51 = ptrtoint ptr %50 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i508, i32 noundef %51) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %52 = ptrtoint ptr %syncp35 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %syncp35, align 4
  %inc.i.i.i509 = add i32 %53, 1
  store i32 %inc.i.i.i509, ptr %syncp35, align 4
  tail call fastcc void @local_bh_enable()
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %payload_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp45 = icmp eq i16 %55, 0
  br i1 %cmp45, label %do.body21.fail_hdr_crit_edge, label %if.end48

do.body21.fail_hdr_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_hdr

if.end48:                                         ; preds = %do.body21
  %56 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %58 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i511 = zext i16 %59 to i32
  %add.ptr.i.i512 = getelementptr i8, ptr %57, i32 %conv.i.i511
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %60 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i512 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %61 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add50 = add i32 %sub.ptr.sub.i, 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %62 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %64 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %63, %65
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add50, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end48.if.end53_crit_edge, !prof !69

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.end.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %add50)
  %cmp3.i = icmp ult i32 %63, %add50
  br i1 %cmp3.i, label %if.end.i.fail_hdr_crit_edge, label %pskb_may_pull.exit, !prof !69

if.end.i.fail_hdr_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_hdr

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add50, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #14
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.fail_hdr_crit_edge, label %pskb_may_pull.exit.if.end53_crit_edge

pskb_may_pull.exit.if.end53_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

pskb_may_pull.exit.fail_hdr_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_hdr

if.end53:                                         ; preds = %pskb_may_pull.exit.if.end53_crit_edge, %if.end48.if.end53_crit_edge
  %66 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %head.i.i, align 8
  %68 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i515 = zext i16 %69 to i32
  %add.ptr.i.i516 = getelementptr i8, ptr %67, i32 %conv.i.i515
  %70 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %transport_header.i.i, align 2
  %conv.i = zext i16 %71 to i32
  %add.ptr.i = getelementptr i8, ptr %67, i32 %conv.i
  %frag_off = getelementptr inbounds %struct.frag_hdr, ptr %add.ptr.i, i32 0, i32 2
  %72 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %frag_off, align 2
  %74 = and i16 %73, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool58.not = icmp eq i16 %74, 0
  br i1 %tobool58.not, label %if.then59, label %if.end141

if.then59:                                        ; preds = %if.end53
  %add61 = add i16 %71, 8
  %75 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %add61, ptr %transport_header.i.i, align 2
  %76 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %4, align 8
  %and.i517 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i517)
  %tobool.not.i518 = icmp eq i32 %and.i517, 0
  br i1 %tobool.not.i518, label %if.then59.skb_dst.exit528_crit_edge, label %land.lhs.true.i521

if.then59.skb_dst.exit528_crit_edge:              ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit528

land.lhs.true.i521:                               ; preds = %if.then59
  %call.i519 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i519)
  %tobool1.not.i520 = icmp eq i32 %call.i519, 0
  br i1 %tobool1.not.i520, label %land.rhs.i524, label %land.lhs.true.i521.skb_dst.exit528_crit_edge

land.lhs.true.i521.skb_dst.exit528_crit_edge:     ; preds = %land.lhs.true.i521
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit528

land.rhs.i524:                                    ; preds = %land.lhs.true.i521
  %call2.i522 = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i522)
  %tobool3.not.i523 = icmp eq i32 %call2.i522, 0
  br i1 %tobool3.not.i523, label %do.end.i525, label %land.rhs.i524.skb_dst.exit528_crit_edge, !prof !69

land.rhs.i524.skb_dst.exit528_crit_edge:          ; preds = %land.rhs.i524
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit528

do.end.i525:                                      ; preds = %land.rhs.i524
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit528

skb_dst.exit528:                                  ; preds = %do.end.i525, %land.rhs.i524.skb_dst.exit528_crit_edge, %land.lhs.true.i521.skb_dst.exit528_crit_edge, %if.then59.skb_dst.exit528_crit_edge
  %78 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %4, align 8
  %and25.i526 = and i32 %79, -2
  %80 = inttoptr i32 %and25.i526 to ptr
  %rt6i_idev.i529 = getelementptr inbounds %struct.rt6_info, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %rt6i_idev.i529 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rt6i_idev.i529, align 4
  %cmp66.not = icmp eq ptr %82, null
  br i1 %cmp66.not, label %skb_dst.exit528.do.body101_crit_edge, label %do.body75, !prof !69

skb_dst.exit528.do.body101_crit_edge:             ; preds = %skb_dst.exit528
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body101

do.body75:                                        ; preds = %skb_dst.exit528
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @local_bh_disable()
  %ipv685 = getelementptr inbounds %struct.inet6_dev, ptr %82, i32 0, i32 33, i32 1
  %83 = ptrtoint ptr %ipv685 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ipv685, align 4
  %85 = ptrtoint ptr %84 to i32
  %86 = ptrtoint ptr %cpu32 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cpu32, align 4
  %arrayidx89 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx89, align 4
  %add90 = add i32 %89, %85
  %90 = inttoptr i32 %add90 to ptr
  %syncp91 = getelementptr inbounds %struct.ipstats_mib, ptr %90, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp91)
  %arrayidx93 = getelementptr [37 x i64], ptr %90, i32 0, i32 18
  %91 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %arrayidx93, align 8
  %add94 = add i64 %92, 1
  store i64 %add94, ptr %arrayidx93, align 8
  %dep_map.i.i530 = getelementptr inbounds %struct.ipstats_mib, ptr %90, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i530, i32 noundef %51) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %93 = ptrtoint ptr %syncp91 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %syncp91, align 4
  %inc.i.i.i531 = add i32 %94, 1
  store i32 %inc.i.i.i531, ptr %syncp91, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body101

do.body101:                                       ; preds = %do.body75, %skb_dst.exit528.do.body101_crit_edge
  tail call fastcc void @local_bh_disable()
  %95 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ipv6_statistics, align 4
  %97 = ptrtoint ptr %96 to i32
  %98 = ptrtoint ptr %cpu32 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cpu32, align 4
  %arrayidx115 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %99
  %100 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx115, align 4
  %add116 = add i32 %101, %97
  %102 = inttoptr i32 %add116 to ptr
  %syncp117 = getelementptr inbounds %struct.ipstats_mib, ptr %102, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp117)
  %arrayidx119 = getelementptr [37 x i64], ptr %102, i32 0, i32 18
  %103 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx119, align 8
  %add120 = add i64 %104, 1
  store i64 %add120, ptr %arrayidx119, align 8
  %dep_map.i.i532 = getelementptr inbounds %struct.ipstats_mib, ptr %102, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i532, i32 noundef %51) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %105 = ptrtoint ptr %syncp117 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %syncp117, align 4
  %inc.i.i.i533 = add i32 %106, 1
  store i32 %inc.i.i.i533, ptr %syncp117, align 4
  tail call fastcc void @local_bh_enable()
  %107 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %head.i.i, align 8
  %109 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %network_header.i.i, align 4
  %conv.i535 = zext i16 %110 to i32
  %add.ptr.i536 = getelementptr i8, ptr %108, i32 %conv.i535
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i536 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv127 = trunc i32 %sub.ptr.sub to i16
  %nhoff = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %111 = ptrtoint ptr %nhoff to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv127, ptr %nhoff, align 2
  %112 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %flags, align 8
  %114 = or i16 %113, 16
  store i16 %114, ptr %flags, align 8
  %payload_len135 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i516, i32 0, i32 2
  %115 = ptrtoint ptr %payload_len135 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %payload_len135, align 4
  %add137 = add i16 %116, 40
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %117 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %add137, ptr %frag_max_size, align 4
  br label %cleanup

if.end141:                                        ; preds = %if.end53
  %nexthdr142 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i516, i32 0, i32 3
  %118 = ptrtoint ptr %nexthdr142 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %nexthdr142, align 2
  %120 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i542 = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i543 = ptrtoint ptr %121 to i32
  %sub.ptr.sub.i544 = sub i32 %sub.ptr.lhs.cast.i542, %sub.ptr.rhs.cast.i543
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr.i) #14
  %122 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %119, ptr %nexthdr.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i) #14
  %123 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 -1, ptr %frag_off.i, align 2, !annotation !81
  %call.i545 = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %sub.ptr.sub.i544, ptr noundef nonnull %nexthdr.i, ptr noundef nonnull %frag_off.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i545)
  %cmp.i = icmp slt i32 %call.i545, 0
  br i1 %cmp.i, label %if.end141.ipv6frag_thdr_truncated.exit.thread_crit_edge, label %lor.lhs.false.i

if.end141.ipv6frag_thdr_truncated.exit.thread_crit_edge: ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipv6frag_thdr_truncated.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end141
  %124 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %frag_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %125)
  %tobool.not.i546 = icmp ult i16 %125, 8
  br i1 %tobool.not.i546, label %if.end.i547, label %lor.lhs.false.i.ipv6frag_thdr_truncated.exit.thread_crit_edge

lor.lhs.false.i.ipv6frag_thdr_truncated.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipv6frag_thdr_truncated.exit.thread

if.end.i547:                                      ; preds = %lor.lhs.false.i
  %126 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %nexthdr.i, align 1
  %128 = zext i8 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values)
  switch i8 %127, label %sw.default.i [
    i8 6, label %if.end.i547.ipv6frag_thdr_truncated.exit_crit_edge
    i8 17, label %sw.bb2.i
    i8 58, label %sw.bb4.i
  ]

if.end.i547.ipv6frag_thdr_truncated.exit_crit_edge: ; preds = %if.end.i547
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipv6frag_thdr_truncated.exit

sw.bb2.i:                                         ; preds = %if.end.i547
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipv6frag_thdr_truncated.exit

sw.bb4.i:                                         ; preds = %if.end.i547
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipv6frag_thdr_truncated.exit

sw.default.i:                                     ; preds = %if.end.i547
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipv6frag_thdr_truncated.exit

ipv6frag_thdr_truncated.exit.thread:              ; preds = %lor.lhs.false.i.ipv6frag_thdr_truncated.exit.thread_crit_edge, %if.end141.ipv6frag_thdr_truncated.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #14
  br label %if.end208

ipv6frag_thdr_truncated.exit:                     ; preds = %sw.default.i, %sw.bb4.i, %sw.bb2.i, %if.end.i547.ipv6frag_thdr_truncated.exit_crit_edge
  %.sink.i = phi i32 [ 1, %sw.default.i ], [ 8, %sw.bb4.i ], [ 8, %sw.bb2.i ], [ 20, %if.end.i547.ipv6frag_thdr_truncated.exit_crit_edge ]
  %add6.i = add nuw i32 %.sink.i, %call.i545
  %129 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %130)
  %cmp7.i = icmp ugt i32 %add6.i, %130
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #14
  br i1 %cmp7.i, label %if.then145, label %ipv6frag_thdr_truncated.exit.if.end208_crit_edge

ipv6frag_thdr_truncated.exit.if.end208_crit_edge: ; preds = %ipv6frag_thdr_truncated.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end208

if.then145:                                       ; preds = %ipv6frag_thdr_truncated.exit
  %131 = getelementptr inbounds %struct.anon.5, ptr %skb, i32 0, i32 2
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 8
  %tobool.not.i549 = icmp eq ptr %133, null
  br i1 %tobool.not.i549, label %if.then145.do.body183_crit_edge, label %if.then.i, !prof !69

if.then145.do.body183_crit_edge:                  ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body183

if.then.i:                                        ; preds = %if.then145
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %133, i32 0, i32 80
  %134 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i550 = call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i550, label %if.then.i.__in6_dev_get_safely.exit_crit_edge, label %lor.lhs.false.i551

if.then.i.__in6_dev_get_safely.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get_safely.exit

lor.lhs.false.i551:                               ; preds = %if.then.i
  %call4.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i552, label %lor.lhs.false.i551.__in6_dev_get_safely.exit_crit_edge

lor.lhs.false.i551.__in6_dev_get_safely.exit_crit_edge: ; preds = %lor.lhs.false.i551
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get_safely.exit

land.lhs.true.i552:                               ; preds = %lor.lhs.false.i551
  %call6.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i552.__in6_dev_get_safely.exit_crit_edge, label %land.lhs.true8.i

land.lhs.true.i552.__in6_dev_get_safely.exit_crit_edge: ; preds = %land.lhs.true.i552
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get_safely.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i552
  %.b15.i = load i1, ptr @__in6_dev_get_safely.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge, label %if.then10.i

land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get_safely.exit

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get_safely.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 341, ptr noundef nonnull @.str.3) #14
  br label %__in6_dev_get_safely.exit

__in6_dev_get_safely.exit:                        ; preds = %if.then10.i, %land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge, %land.lhs.true.i552.__in6_dev_get_safely.exit_crit_edge, %lor.lhs.false.i551.__in6_dev_get_safely.exit_crit_edge, %if.then.i.__in6_dev_get_safely.exit_crit_edge
  %cmp148.not = icmp eq ptr %135, null
  br i1 %cmp148.not, label %__in6_dev_get_safely.exit.do.body183_crit_edge, label %do.body157, !prof !69

__in6_dev_get_safely.exit.do.body183_crit_edge:   ; preds = %__in6_dev_get_safely.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body183

do.body157:                                       ; preds = %__in6_dev_get_safely.exit
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @local_bh_disable()
  %ipv6167 = getelementptr inbounds %struct.inet6_dev, ptr %135, i32 0, i32 33, i32 1
  %136 = ptrtoint ptr %ipv6167 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ipv6167, align 4
  %138 = ptrtoint ptr %137 to i32
  %139 = ptrtoint ptr %cpu32 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cpu32, align 4
  %arrayidx171 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %140
  %141 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx171, align 4
  %add172 = add i32 %142, %138
  %143 = inttoptr i32 %add172 to ptr
  %syncp173 = getelementptr inbounds %struct.ipstats_mib, ptr %143, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp173)
  %arrayidx175 = getelementptr [37 x i64], ptr %143, i32 0, i32 7
  %144 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %arrayidx175, align 8
  %add176 = add i64 %145, 1
  store i64 %add176, ptr %arrayidx175, align 8
  %dep_map.i.i554 = getelementptr inbounds %struct.ipstats_mib, ptr %143, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i554, i32 noundef %51) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %146 = ptrtoint ptr %syncp173 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %syncp173, align 4
  %inc.i.i.i555 = add i32 %147, 1
  store i32 %inc.i.i.i555, ptr %syncp173, align 4
  call fastcc void @local_bh_enable()
  br label %do.body183

do.body183:                                       ; preds = %do.body157, %__in6_dev_get_safely.exit.do.body183_crit_edge, %if.then145.do.body183_crit_edge
  call fastcc void @local_bh_disable()
  %148 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ipv6_statistics, align 4
  %150 = ptrtoint ptr %149 to i32
  %151 = ptrtoint ptr %cpu32 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cpu32, align 4
  %arrayidx197 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %152
  %153 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx197, align 4
  %add198 = add i32 %154, %150
  %155 = inttoptr i32 %add198 to ptr
  %syncp199 = getelementptr inbounds %struct.ipstats_mib, ptr %155, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp199)
  %arrayidx201 = getelementptr [37 x i64], ptr %155, i32 0, i32 7
  %156 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %arrayidx201, align 8
  %add202 = add i64 %157, 1
  store i64 %add202, ptr %arrayidx201, align 8
  %dep_map.i.i556 = getelementptr inbounds %struct.ipstats_mib, ptr %155, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i556, i32 noundef %51) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %158 = ptrtoint ptr %syncp199 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %syncp199, align 4
  %inc.i.i.i557 = add i32 %159, 1
  store i32 %inc.i.i.i557, ptr %syncp199, align 4
  call fastcc void @local_bh_enable()
  call void @icmpv6_param_prob(ptr noundef %skb, i8 noundef zeroext 3, i32 noundef 0) #14
  br label %cleanup

if.end208:                                        ; preds = %ipv6frag_thdr_truncated.exit.if.end208_crit_edge, %ipv6frag_thdr_truncated.exit.thread
  %160 = getelementptr inbounds %struct.anon.5, ptr %skb, i32 0, i32 2
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 8
  %tobool209.not = icmp eq ptr %162, null
  br i1 %tobool209.not, label %if.end208.cond.end_crit_edge, label %cond.true

if.end208.cond.end_crit_edge:                     ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #16
  %ifindex = getelementptr inbounds %struct.net_device, ptr %162, i32 0, i32 17
  %163 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ifindex, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end208.cond.end_crit_edge
  %cond = phi i32 [ %164, %cond.true ], [ 0, %if.end208.cond.end_crit_edge ]
  %identification = getelementptr inbounds %struct.frag_hdr, ptr %add.ptr.i, i32 0, i32 3
  %165 = ptrtoint ptr %identification to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %identification, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %key.i) #14
  %saddr1.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i516, i32 0, i32 5
  %167 = call ptr @memcpy(ptr %key.i, ptr %saddr1.i, i32 16)
  %daddr.i = getelementptr inbounds %struct.frag_v6_compare_key, ptr %key.i, i32 0, i32 1
  %daddr2.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i516, i32 0, i32 6
  %168 = call ptr @memcpy(ptr %daddr.i, ptr %daddr2.i, i32 16)
  %user.i = getelementptr inbounds %struct.frag_v6_compare_key, ptr %key.i, i32 0, i32 2
  %169 = ptrtoint ptr %user.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %user.i, align 4
  %id3.i = getelementptr inbounds %struct.frag_v6_compare_key, ptr %key.i, i32 0, i32 3
  %170 = ptrtoint ptr %id3.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %166, ptr %id3.i, align 4
  %iif4.i = getelementptr inbounds %struct.frag_v6_compare_key, ptr %key.i, i32 0, i32 4
  %171 = ptrtoint ptr %iif4.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %cond, ptr %iif4.i, align 4
  %call.i.i = call i32 @__ipv6_addr_type(ptr noundef %daddr2.i) #14
  %and.i558 = and i32 %call.i.i, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i558)
  %tobool.not.i559 = icmp eq i32 %and.i558, 0
  br i1 %tobool.not.i559, label %if.then.i560, label %cond.end.fq_find.exit_crit_edge

cond.end.fq_find.exit_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fq_find.exit

if.then.i560:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %172 = ptrtoint ptr %iif4.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %iif4.i, align 4
  br label %fq_find.exit

fq_find.exit:                                     ; preds = %if.then.i560, %cond.end.fq_find.exit_crit_edge
  %fqdir.i = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 36, i32 5
  %173 = ptrtoint ptr %fqdir.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %fqdir.i, align 4
  %call7.i = call ptr @inet_frag_find(ptr noundef %174, ptr noundef nonnull %key.i) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %key.i) #14
  %tobool211.not = icmp eq ptr %call7.i, null
  br i1 %tobool211.not, label %if.end287, label %if.then212

if.then212:                                       ; preds = %fq_find.exit
  %lock = getelementptr inbounds %struct.inet_frag_queue, ptr %call7.i, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %lock) #14
  %iif213 = getelementptr inbounds %struct.frag_queue, ptr %call7.i, i32 0, i32 1
  %175 = ptrtoint ptr %iif213 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %cond, ptr %iif213, align 8
  %nhoff216 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %176 = ptrtoint ptr %nhoff216 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %nhoff216, align 2
  %178 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %4, align 8
  %and.i.i = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then212.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.then212.skb_dst.exit.i_crit_edge:              ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.then212
  %call.i.i562 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i562)
  %tobool1.not.i.i = icmp eq i32 %call.i.i562, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !69

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.then212.skb_dst.exit.i_crit_edge
  %180 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %4, align 8
  %and25.i.i = and i32 %181, -2
  %182 = inttoptr i32 %and25.i.i to ptr
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %184, i32 0, i32 127
  %185 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %nd_net.i.i, align 4
  %flags.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call7.i, i32 0, i32 11
  %187 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %flags.i, align 8
  %189 = and i8 %188, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool.not.i563 = icmp eq i8 %189, 0
  br i1 %tobool.not.i563, label %if.end.i570, label %skb_dst.exit.i.err263.i_crit_edge

skb_dst.exit.i.err263.i_crit_edge:                ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err263.i

if.end.i570:                                      ; preds = %skb_dst.exit.i
  %190 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %frag_off, align 2
  %192 = and i16 %191, -8
  %and4.i = zext i16 %192 to i32
  %193 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %head.i.i, align 8
  %195 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i362.i = zext i16 %196 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %194, i32 %conv.i.i362.i
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %197 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %payload_len.i, align 4
  %conv6.i = zext i16 %198 to i32
  %add.ptr.i565 = getelementptr %struct.frag_hdr, ptr %add.ptr.i, i32 1
  %add.ptr8.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 1
  %sub.ptr.lhs.cast.i566 = ptrtoint ptr %add.ptr.i565 to i32
  %sub.ptr.rhs.cast.i567 = ptrtoint ptr %add.ptr8.i to i32
  %sub.ptr.sub.neg.i = sub i32 %sub.ptr.rhs.cast.i567, %sub.ptr.lhs.cast.i566
  %sub.i568 = add i32 %sub.ptr.sub.neg.i, %conv6.i
  %add.i = add i32 %sub.i568, %and4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i)
  %cmp.i569 = icmp ugt i32 %add.i, 65535
  br i1 %cmp.i569, label %if.then10.i571, label %if.end16.i

if.then10.i571:                                   ; preds = %if.end.i570
  call void @__sanitizer_cov_trace_pc() #16
  %sub.ptr.lhs.cast13.i = ptrtoint ptr %frag_off to i32
  %sub.ptr.rhs.cast14.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.sub15.i = sub i32 %sub.ptr.lhs.cast13.i, %sub.ptr.rhs.cast14.i
  br label %ip6_frag_queue.exit

if.end16.i:                                       ; preds = %if.end.i570
  %199 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %add.ptr.i.i.i, align 2
  %201 = trunc i16 %200 to i8
  %202 = lshr i8 %201, 4
  %203 = and i8 %202, 3
  %shl.i.i = shl nuw nsw i8 1, %203
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %204 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %205 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %205)
  %cmp20.i = icmp eq i16 %205, 1024
  br i1 %cmp20.i, label %if.then22.i, label %if.end16.i.if.end30.i_crit_edge

if.end16.i.if.end30.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

if.then22.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  %206 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %206, align 8
  %sub.ptr.rhs.cast26.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.sub27.i = sub i32 %sub.ptr.lhs.cast.i566, %sub.ptr.rhs.cast26.i
  %call28.i = call i32 @csum_partial(ptr noundef %add.ptr.i.i.i, i32 noundef %sub.ptr.sub27.i, i32 noundef 0) #14
  %neg.i.i = xor i32 %call28.i, -1
  %add.i.i.i = add i32 %208, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %neg.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %neg.i.i
  %conv.i.i.i = zext i1 %cmp.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %conv.i.i.i
  %209 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %add1.i.i.i, ptr %206, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then22.i, %if.end16.i.if.end30.i_crit_edge
  %210 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %frag_off, align 2
  %212 = and i16 %211, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %212)
  %tobool34.not.i = icmp eq i16 %212, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %if.else.i

if.then35.i:                                      ; preds = %if.end30.i
  %len.i572 = getelementptr inbounds %struct.inet_frag_queue, ptr %call7.i, i32 0, i32 9
  %213 = ptrtoint ptr %len.i572 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %len.i572, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %214)
  %cmp37.i = icmp slt i32 %add.i, %214
  br i1 %cmp37.i, label %if.then35.i.discard_fq.i_crit_edge, label %lor.lhs.false.i573

if.then35.i.discard_fq.i_crit_edge:               ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %discard_fq.i

lor.lhs.false.i573:                               ; preds = %if.then35.i
  %215 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %flags.i, align 8
  %217 = and i8 %216, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool43.not.i = icmp eq i8 %217, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %214)
  %cmp46.not.i = icmp eq i32 %add.i, %214
  %or.cond.i = select i1 %tobool43.not.i, i1 true, i1 %cmp46.not.i
  br i1 %or.cond.i, label %if.end49.i, label %lor.lhs.false.i573.discard_fq.i_crit_edge

lor.lhs.false.i573.discard_fq.i_crit_edge:        ; preds = %lor.lhs.false.i573
  call void @__sanitizer_cov_trace_pc() #16
  br label %discard_fq.i

if.end49.i:                                       ; preds = %lor.lhs.false.i573
  call void @__sanitizer_cov_trace_pc() #16
  %218 = or i8 %216, 2
  %219 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %flags.i, align 8
  br label %if.end75.sink.split.i

if.else.i:                                        ; preds = %if.end30.i
  %and56.i = and i32 %add.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.end59.i, label %if.else.i.ip6_frag_queue.exit_crit_edge

if.else.i.ip6_frag_queue.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip6_frag_queue.exit

if.end59.i:                                       ; preds = %if.else.i
  %len61.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call7.i, i32 0, i32 9
  %220 = ptrtoint ptr %len61.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %len61.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %221)
  %cmp62.i = icmp sgt i32 %add.i, %221
  br i1 %cmp62.i, label %if.then64.i, label %if.end59.i.if.end75.i_crit_edge

if.end59.i.if.end75.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.i

if.then64.i:                                      ; preds = %if.end59.i
  %222 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %flags.i, align 8
  %224 = and i8 %223, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool69.not.i = icmp eq i8 %224, 0
  br i1 %tobool69.not.i, label %if.then64.i.if.end75.sink.split.i_crit_edge, label %if.then64.i.discard_fq.i_crit_edge

if.then64.i.discard_fq.i_crit_edge:               ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %discard_fq.i

if.then64.i.if.end75.sink.split.i_crit_edge:      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.sink.split.i

if.end75.sink.split.i:                            ; preds = %if.then64.i.if.end75.sink.split.i_crit_edge, %if.end49.i
  %len61.sink.i = phi ptr [ %len.i572, %if.end49.i ], [ %len61.i, %if.then64.i.if.end75.sink.split.i_crit_edge ]
  %225 = ptrtoint ptr %len61.sink.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %add.i, ptr %len61.sink.i, align 8
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.end75.sink.split.i, %if.end59.i.if.end75.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i568)
  %cmp76.i = icmp eq i32 %sub.i568, 0
  br i1 %cmp76.i, label %if.end75.i.discard_fq.i_crit_edge, label %if.end79.i

if.end75.i.discard_fq.i_crit_edge:                ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %discard_fq.i

if.end79.i:                                       ; preds = %if.end75.i
  %226 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %data.i, align 4
  %sub.ptr.rhs.cast82.i = ptrtoint ptr %227 to i32
  %sub.ptr.sub83.i = sub i32 %sub.ptr.lhs.cast.i566, %sub.ptr.rhs.cast82.i
  %228 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %229, i32 %sub.ptr.sub83.i)
  %cmp.i.i = icmp ult i32 %229, %sub.ptr.sub83.i
  br i1 %cmp.i.i, label %if.end79.i.discard_fq.i_crit_edge, label %cond.false.i.i, !prof !69

if.end79.i.discard_fq.i_crit_edge:                ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %discard_fq.i

cond.false.i.i:                                   ; preds = %if.end79.i
  %230 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i.i.i = sub i32 %229, %231
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub83.i, i32 %sub.i.i.i.i)
  %cmp.i.i375.i = icmp ugt i32 %sub.ptr.sub83.i, %sub.i.i.i.i
  br i1 %cmp.i.i375.i, label %land.lhs.true.i.i.i, label %cond.false.i.i.pskb_pull.exit.i_crit_edge

cond.false.i.i.pskb_pull.exit.i_crit_edge:        ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pskb_pull.exit.i

land.lhs.true.i.i.i:                              ; preds = %cond.false.i.i
  %sub.i.i.i = sub i32 %sub.ptr.sub83.i, %sub.i.i.i.i
  %call2.i.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #14
  %tobool.not.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.discard_fq.i_crit_edge, label %land.lhs.true.i.i.i.pskb_pull.exit.i_crit_edge

land.lhs.true.i.i.i.pskb_pull.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pskb_pull.exit.i

land.lhs.true.i.i.i.discard_fq.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %discard_fq.i

pskb_pull.exit.i:                                 ; preds = %land.lhs.true.i.i.i.pskb_pull.exit.i_crit_edge, %cond.false.i.i.pskb_pull.exit.i_crit_edge
  %232 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %len.i.i, align 4
  %sub4.i.i.i = sub i32 %233, %sub.ptr.sub83.i
  store i32 %sub4.i.i.i, ptr %len.i.i, align 4
  %234 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i376.i = getelementptr i8, ptr %235, i32 %sub.ptr.sub83.i
  store ptr %add.ptr.i.i376.i, ptr %data.i, align 4
  %tobool85.not.i = icmp eq ptr %add.ptr.i.i376.i, null
  br i1 %tobool85.not.i, label %pskb_pull.exit.i.discard_fq.i_crit_edge, label %if.end87.i

pskb_pull.exit.i.discard_fq.i_crit_edge:          ; preds = %pskb_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %discard_fq.i

if.end87.i:                                       ; preds = %pskb_pull.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4.i.i.i, i32 %sub.i568)
  %cmp.not.i.i = icmp ugt i32 %sub4.i.i.i, %sub.i568
  br i1 %cmp.not.i.i, label %pskb_trim_rcsum.exit.i, label %if.end87.i.if.end92.i_crit_edge, !prof !69

if.end87.i.if.end92.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92.i

pskb_trim_rcsum.exit.i:                           ; preds = %if.end87.i
  %call.i378.i = call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %sub.i568) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i378.i)
  %tobool90.not.i = icmp eq i32 %call.i378.i, 0
  br i1 %tobool90.not.i, label %pskb_trim_rcsum.exit.i.if.end92.i_crit_edge, label %pskb_trim_rcsum.exit.i.discard_fq.i_crit_edge

pskb_trim_rcsum.exit.i.discard_fq.i_crit_edge:    ; preds = %pskb_trim_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %discard_fq.i

pskb_trim_rcsum.exit.i.if.end92.i_crit_edge:      ; preds = %pskb_trim_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92.i

if.end92.i:                                       ; preds = %pskb_trim_rcsum.exit.i.if.end92.i_crit_edge, %if.end87.i.if.end92.i_crit_edge
  %236 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %160, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !82
  %fragments_tail.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call7.i, i32 0, i32 6
  %238 = ptrtoint ptr %fragments_tail.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %fragments_tail.i, align 4
  %call95.i = call i32 @inet_frag_queue_insert(ptr noundef nonnull %call7.i, ptr noundef %skb, i32 noundef %and4.i, i32 noundef %add.i) #14
  %240 = zext i32 %call95.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %240, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call95.i, label %if.end155.i [
    i32 0, label %if.end98.i
    i32 1, label %if.then154.i
  ]

if.end98.i:                                       ; preds = %if.end92.i
  %tobool99.not.i = icmp eq ptr %237, null
  br i1 %tobool99.not.i, label %if.end98.i.if.end101.i_crit_edge, label %if.then100.i

if.end98.i.if.end101.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101.i

if.then100.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #16
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %237, i32 0, i32 17
  %241 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %ifindex.i, align 4
  %243 = ptrtoint ptr %iif213 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %242, ptr %iif213, align 8
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then100.i, %if.end98.i.if.end101.i_crit_edge
  %244 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %244, align 8
  %stamp.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call7.i, i32 0, i32 8
  %247 = ptrtoint ptr %stamp.i to i32
  call void @__asan_store8_noabort(i32 %247)
  store i64 %246, ptr %stamp.i, align 8
  %248 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %len.i.i, align 4
  %meat.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call7.i, i32 0, i32 10
  %250 = ptrtoint ptr %meat.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %meat.i, align 4
  %add105.i = add i32 %251, %249
  store i32 %add105.i, ptr %meat.i, align 4
  %ecn107.i = getelementptr inbounds %struct.frag_queue, ptr %call7.i, i32 0, i32 3
  %252 = ptrtoint ptr %ecn107.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %ecn107.i, align 2
  %or109361.i = or i8 %253, %shl.i.i
  store i8 %or109361.i, ptr %ecn107.i, align 2
  %fqdir.i575 = getelementptr inbounds %struct.inet_frag_queue, ptr %call7.i, i32 0, i32 13
  %254 = ptrtoint ptr %fqdir.i575 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %fqdir.i575, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %256 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %truesize.i, align 8
  %mem.i.i = getelementptr inbounds %struct.fqdir, ptr %255, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %mem.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %mem.i.i, i32 1, i32 3, i32 1) #14
  %258 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem.i.i, ptr %mem.i.i, i32 %257, ptr elementtype(i32) %mem.i.i) #14, !srcloc !83
  %259 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %head.i.i, align 8
  %261 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i381.i = zext i16 %262 to i32
  %add.ptr.i.i382.i = getelementptr i8, ptr %260, i32 %conv.i.i381.i
  %263 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i382.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %264 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  %265 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %len.i.i, align 4
  %add115.i = add i32 %sub.ptr.sub.i.neg.i, %266
  %max_size.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call7.i, i32 0, i32 12
  %267 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %max_size.i, align 2
  %conv117.i = zext i16 %268 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add115.i, i32 %conv117.i)
  %cmp118.i = icmp sgt i32 %add115.i, %conv117.i
  br i1 %cmp118.i, label %if.then120.i, label %if.end101.i.if.end124.i_crit_edge

if.end101.i.if.end124.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124.i

if.then120.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv121.i = trunc i32 %add115.i to i16
  %269 = ptrtoint ptr %max_size.i to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 %conv121.i, ptr %max_size.i, align 2
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then120.i, %if.end101.i.if.end124.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %192)
  %cmp125.i = icmp eq i16 %192, 0
  br i1 %cmp125.i, label %if.then127.i, label %if.end134thread-pre-split.i

if.then127.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #16
  %nhoffset.i = getelementptr inbounds %struct.frag_queue, ptr %call7.i, i32 0, i32 2
  %270 = ptrtoint ptr %nhoffset.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %177, ptr %nhoffset.i, align 4
  %271 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %flags.i, align 8
  %273 = or i8 %272, 1
  store i8 %273, ptr %flags.i, align 8
  br label %if.end134.i

if.end134thread-pre-split.i:                      ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #16
  %274 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %.pr.i = load i8, ptr %flags.i, align 8
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.end134thread-pre-split.i, %if.then127.i
  %275 = phi i8 [ %.pr.i, %if.end134thread-pre-split.i ], [ %273, %if.then127.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %275)
  %cmp138.i = icmp eq i8 %275, 3
  br i1 %cmp138.i, label %land.lhs.true140.i, label %if.end134.i.if.end151.i_crit_edge

if.end134.i.if.end151.i_crit_edge:                ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end151.i

land.lhs.true140.i:                               ; preds = %if.end134.i
  %276 = ptrtoint ptr %meat.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %meat.i, align 4
  %len144.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call7.i, i32 0, i32 9
  %278 = ptrtoint ptr %len144.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %len144.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %277, i32 %279)
  %cmp145.i = icmp eq i32 %277, %279
  br i1 %cmp145.i, label %if.then147.i, label %land.lhs.true140.i.if.end151.i_crit_edge

land.lhs.true140.i.if.end151.i_crit_edge:         ; preds = %land.lhs.true140.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end151.i

if.then147.i:                                     ; preds = %land.lhs.true140.i
  call void @__sanitizer_cov_trace_pc() #16
  %280 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %4, align 8
  store i32 0, ptr %4, align 8
  %call149.i = call fastcc i32 @ip6_frag_reasm(ptr noundef nonnull %call7.i, ptr noundef %skb, ptr noundef %239, ptr noundef %237) #14
  %282 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %4, align 8
  br label %ip6_frag_queue.exit

if.end151.i:                                      ; preds = %land.lhs.true140.i.if.end151.i_crit_edge, %if.end134.i.if.end151.i_crit_edge
  %283 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool.not.i383.i = icmp eq i32 %284, 0
  br i1 %tobool.not.i383.i, label %if.end151.i.ip6_frag_queue.exit_crit_edge, label %if.then.i.i

if.end151.i.ip6_frag_queue.exit_crit_edge:        ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip6_frag_queue.exit

if.then.i.i:                                      ; preds = %if.end151.i
  %and.i.i.i = and i32 %284, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i384.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i384.i, label %if.then.i.i.i, label %if.then.i.i.refdst_drop.exit.i.i_crit_edge

if.then.i.i.refdst_drop.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refdst_drop.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and1.i.i.i = and i32 %284, -2
  %285 = inttoptr i32 %and1.i.i.i to ptr
  call void @dst_release(ptr noundef %285) #14
  br label %refdst_drop.exit.i.i

refdst_drop.exit.i.i:                             ; preds = %if.then.i.i.i, %if.then.i.i.refdst_drop.exit.i.i_crit_edge
  %286 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 0, ptr %4, align 8
  br label %ip6_frag_queue.exit

if.then154.i:                                     ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %ip6_frag_queue.exit

if.end155.i:                                      ; preds = %if.end92.i
  %call156.i = call fastcc ptr @skb_dst(ptr noundef %skb) #14
  %rt6i_idev.i.i = getelementptr inbounds %struct.rt6_info, ptr %call156.i, i32 0, i32 6
  %287 = ptrtoint ptr %rt6i_idev.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %rt6i_idev.i.i, align 4
  %cmp158.not.i = icmp eq ptr %288, null
  br i1 %cmp158.not.i, label %if.end155.i.do.body176.i_crit_edge, label %do.body.i, !prof !69

if.end155.i.do.body176.i_crit_edge:               ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body176.i

do.body.i:                                        ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @local_bh_disable() #14
  %ipv6.i = getelementptr inbounds %struct.inet6_dev, ptr %288, i32 0, i32 33, i32 1
  %289 = ptrtoint ptr %ipv6.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %ipv6.i, align 4
  %291 = ptrtoint ptr %290 to i32
  %292 = call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i386.i = and i32 %292, -16384
  %293 = inttoptr i32 %and.i386.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %293, i32 0, i32 3
  %294 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %295
  %296 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx.i, align 4
  %add167.i = add i32 %297, %291
  %298 = inttoptr i32 %add167.i to ptr
  %syncp.i = getelementptr inbounds %struct.ipstats_mib, ptr %298, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #14
  %arrayidx168.i = getelementptr [37 x i64], ptr %298, i32 0, i32 36
  %299 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_load8_noabort(i32 %299)
  %300 = load i64, ptr %arrayidx168.i, align 8
  %add169.i = add i64 %300, 1
  store i64 %add169.i, ptr %arrayidx168.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %298, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %51) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %301 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %302, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  call fastcc void @local_bh_enable() #14
  br label %do.body176.i

do.body176.i:                                     ; preds = %do.body.i, %if.end155.i.do.body176.i_crit_edge
  call fastcc void @local_bh_disable() #14
  %ipv6_statistics.i = getelementptr inbounds %struct.net, ptr %186, i32 0, i32 30, i32 1
  %303 = ptrtoint ptr %ipv6_statistics.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %ipv6_statistics.i, align 4
  %305 = ptrtoint ptr %304 to i32
  %306 = call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i387.i = and i32 %306, -16384
  %307 = inttoptr i32 %and.i387.i to ptr
  %cpu187.i = getelementptr inbounds %struct.thread_info, ptr %307, i32 0, i32 3
  %308 = ptrtoint ptr %cpu187.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %cpu187.i, align 4
  %arrayidx188.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %309
  %310 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx188.i, align 4
  %add189.i = add i32 %311, %305
  %312 = inttoptr i32 %add189.i to ptr
  %syncp190.i = getelementptr inbounds %struct.ipstats_mib, ptr %312, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp190.i) #14
  %arrayidx192.i = getelementptr [37 x i64], ptr %312, i32 0, i32 36
  %313 = ptrtoint ptr %arrayidx192.i to i32
  call void @__asan_load8_noabort(i32 %313)
  %314 = load i64, ptr %arrayidx192.i, align 8
  %add193.i = add i64 %314, 1
  store i64 %add193.i, ptr %arrayidx192.i, align 8
  %dep_map.i.i388.i = getelementptr inbounds %struct.ipstats_mib, ptr %312, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i388.i, i32 noundef %51) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %315 = ptrtoint ptr %syncp190.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %syncp190.i, align 4
  %inc.i.i.i389.i = add i32 %316, 1
  store i32 %inc.i.i.i389.i, ptr %syncp190.i, align 4
  call fastcc void @local_bh_enable() #14
  br label %discard_fq.i

discard_fq.i:                                     ; preds = %do.body176.i, %pskb_trim_rcsum.exit.i.discard_fq.i_crit_edge, %pskb_pull.exit.i.discard_fq.i_crit_edge, %land.lhs.true.i.i.i.discard_fq.i_crit_edge, %if.end79.i.discard_fq.i_crit_edge, %if.end75.i.discard_fq.i_crit_edge, %if.then64.i.discard_fq.i_crit_edge, %lor.lhs.false.i573.discard_fq.i_crit_edge, %if.then35.i.discard_fq.i_crit_edge
  %err.0.i = phi i32 [ -22, %if.then64.i.discard_fq.i_crit_edge ], [ -22, %if.end75.i.discard_fq.i_crit_edge ], [ %call.i378.i, %pskb_trim_rcsum.exit.i.discard_fq.i_crit_edge ], [ -22, %do.body176.i ], [ -12, %pskb_pull.exit.i.discard_fq.i_crit_edge ], [ -22, %if.then35.i.discard_fq.i_crit_edge ], [ -22, %lor.lhs.false.i573.discard_fq.i_crit_edge ], [ -12, %if.end79.i.discard_fq.i_crit_edge ], [ -12, %land.lhs.true.i.i.i.discard_fq.i_crit_edge ]
  call void @inet_frag_kill(ptr noundef nonnull %call7.i) #14
  %317 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %4, align 8
  %and.i390.i = and i32 %318, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i390.i)
  %tobool.not.i391.i = icmp eq i32 %and.i390.i, 0
  br i1 %tobool.not.i391.i, label %discard_fq.i.skb_dst.exit401.i_crit_edge, label %land.lhs.true.i394.i

discard_fq.i.skb_dst.exit401.i_crit_edge:         ; preds = %discard_fq.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit401.i

land.lhs.true.i394.i:                             ; preds = %discard_fq.i
  %call.i392.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i392.i)
  %tobool1.not.i393.i = icmp eq i32 %call.i392.i, 0
  br i1 %tobool1.not.i393.i, label %land.rhs.i397.i, label %land.lhs.true.i394.i.skb_dst.exit401.i_crit_edge

land.lhs.true.i394.i.skb_dst.exit401.i_crit_edge: ; preds = %land.lhs.true.i394.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit401.i

land.rhs.i397.i:                                  ; preds = %land.lhs.true.i394.i
  %call2.i395.i = call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i395.i)
  %tobool3.not.i396.i = icmp eq i32 %call2.i395.i, 0
  br i1 %tobool3.not.i396.i, label %do.end.i398.i, label %land.rhs.i397.i.skb_dst.exit401.i_crit_edge, !prof !69

land.rhs.i397.i.skb_dst.exit401.i_crit_edge:      ; preds = %land.rhs.i397.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit401.i

do.end.i398.i:                                    ; preds = %land.rhs.i397.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit401.i

skb_dst.exit401.i:                                ; preds = %do.end.i398.i, %land.rhs.i397.i.skb_dst.exit401.i_crit_edge, %land.lhs.true.i394.i.skb_dst.exit401.i_crit_edge, %discard_fq.i.skb_dst.exit401.i_crit_edge
  %319 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %4, align 8
  %and25.i399.i = and i32 %320, -2
  %321 = inttoptr i32 %and25.i399.i to ptr
  %rt6i_idev.i402.i = getelementptr inbounds %struct.rt6_info, ptr %321, i32 0, i32 6
  %322 = ptrtoint ptr %rt6i_idev.i402.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %rt6i_idev.i402.i, align 4
  %cmp203.not.i = icmp eq ptr %323, null
  br i1 %cmp203.not.i, label %skb_dst.exit401.i.do.body238.i_crit_edge, label %do.body212.i, !prof !69

skb_dst.exit401.i.do.body238.i_crit_edge:         ; preds = %skb_dst.exit401.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body238.i

do.body212.i:                                     ; preds = %skb_dst.exit401.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @local_bh_disable() #14
  %ipv6222.i = getelementptr inbounds %struct.inet6_dev, ptr %323, i32 0, i32 33, i32 1
  %324 = ptrtoint ptr %ipv6222.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %ipv6222.i, align 4
  %326 = ptrtoint ptr %325 to i32
  %327 = call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i403.i = and i32 %327, -16384
  %328 = inttoptr i32 %and.i403.i to ptr
  %cpu225.i = getelementptr inbounds %struct.thread_info, ptr %328, i32 0, i32 3
  %329 = ptrtoint ptr %cpu225.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %cpu225.i, align 4
  %arrayidx226.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %330
  %331 = ptrtoint ptr %arrayidx226.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %arrayidx226.i, align 4
  %add227.i = add i32 %332, %326
  %333 = inttoptr i32 %add227.i to ptr
  %syncp228.i = getelementptr inbounds %struct.ipstats_mib, ptr %333, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp228.i) #14
  %arrayidx230.i = getelementptr [37 x i64], ptr %333, i32 0, i32 19
  %334 = ptrtoint ptr %arrayidx230.i to i32
  call void @__asan_load8_noabort(i32 %334)
  %335 = load i64, ptr %arrayidx230.i, align 8
  %add231.i = add i64 %335, 1
  store i64 %add231.i, ptr %arrayidx230.i, align 8
  %dep_map.i.i404.i = getelementptr inbounds %struct.ipstats_mib, ptr %333, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i404.i, i32 noundef %51) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %336 = ptrtoint ptr %syncp228.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %syncp228.i, align 4
  %inc.i.i.i405.i = add i32 %337, 1
  store i32 %inc.i.i.i405.i, ptr %syncp228.i, align 4
  call fastcc void @local_bh_enable() #14
  br label %do.body238.i

do.body238.i:                                     ; preds = %do.body212.i, %skb_dst.exit401.i.do.body238.i_crit_edge
  call fastcc void @local_bh_disable() #14
  %ipv6_statistics248.i = getelementptr inbounds %struct.net, ptr %186, i32 0, i32 30, i32 1
  %338 = ptrtoint ptr %ipv6_statistics248.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %ipv6_statistics248.i, align 4
  %340 = ptrtoint ptr %339 to i32
  %341 = call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i406.i = and i32 %341, -16384
  %342 = inttoptr i32 %and.i406.i to ptr
  %cpu251.i = getelementptr inbounds %struct.thread_info, ptr %342, i32 0, i32 3
  %343 = ptrtoint ptr %cpu251.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %cpu251.i, align 4
  %arrayidx252.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %344
  %345 = ptrtoint ptr %arrayidx252.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %arrayidx252.i, align 4
  %add253.i = add i32 %346, %340
  %347 = inttoptr i32 %add253.i to ptr
  %syncp254.i = getelementptr inbounds %struct.ipstats_mib, ptr %347, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp254.i) #14
  %arrayidx256.i = getelementptr [37 x i64], ptr %347, i32 0, i32 19
  %348 = ptrtoint ptr %arrayidx256.i to i32
  call void @__asan_load8_noabort(i32 %348)
  %349 = load i64, ptr %arrayidx256.i, align 8
  %add257.i = add i64 %349, 1
  store i64 %add257.i, ptr %arrayidx256.i, align 8
  %dep_map.i.i407.i = getelementptr inbounds %struct.ipstats_mib, ptr %347, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i407.i, i32 noundef %51) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %350 = ptrtoint ptr %syncp254.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %syncp254.i, align 4
  %inc.i.i.i408.i = add i32 %351, 1
  store i32 %inc.i.i.i408.i, ptr %syncp254.i, align 4
  call fastcc void @local_bh_enable() #14
  br label %err263.i

err263.i:                                         ; preds = %do.body238.i, %skb_dst.exit.i.err263.i_crit_edge
  %err.1.i = phi i32 [ -2, %skb_dst.exit.i.err263.i_crit_edge ], [ %err.0.i, %do.body238.i ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %ip6_frag_queue.exit

ip6_frag_queue.exit:                              ; preds = %err263.i, %if.then154.i, %refdst_drop.exit.i.i, %if.end151.i.ip6_frag_queue.exit_crit_edge, %if.then147.i, %if.else.i.ip6_frag_queue.exit_crit_edge, %if.then10.i571
  %prob_offset.0 = phi i32 [ %sub.ptr.sub15.i, %if.then10.i571 ], [ 0, %err263.i ], [ 0, %if.then154.i ], [ 0, %if.then147.i ], [ 0, %if.end151.i.ip6_frag_queue.exit_crit_edge ], [ 0, %refdst_drop.exit.i.i ], [ 4, %if.else.i.ip6_frag_queue.exit_crit_edge ]
  %retval.0.i576 = phi i32 [ -1, %if.then10.i571 ], [ %err.1.i, %err263.i ], [ -22, %if.then154.i ], [ %call149.i, %if.then147.i ], [ -115, %if.end151.i.ip6_frag_queue.exit_crit_edge ], [ -115, %refdst_drop.exit.i.i ], [ -1, %if.else.i.ip6_frag_queue.exit_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock) #14
  %refcnt.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call7.i, i32 0, i32 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !72
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %352 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %352, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i577, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %ip6_frag_queue.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.inet_frag_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !74

if.end5.i.i.i.i.inet_frag_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inet_frag_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #14
  br label %inet_frag_put.exit

if.then.i577:                                     ; preds = %ip6_frag_queue.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !75
  call void @inet_frag_destroy(ptr noundef nonnull %call7.i) #14
  br label %inet_frag_put.exit

inet_frag_put.exit:                               ; preds = %if.then.i577, %if.then10.i.i.i.i, %if.end5.i.i.i.i.inet_frag_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prob_offset.0)
  %tobool222.not = icmp eq i32 %prob_offset.0, 0
  br i1 %tobool222.not, label %inet_frag_put.exit.cleanup_crit_edge, label %if.then223

inet_frag_put.exit.cleanup_crit_edge:             ; preds = %inet_frag_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then223:                                       ; preds = %inet_frag_put.exit
  %353 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %160, align 8
  %tobool.not.i579 = icmp eq ptr %354, null
  br i1 %tobool.not.i579, label %if.then223.do.body261_crit_edge, label %if.then.i582, !prof !69

if.then223.do.body261_crit_edge:                  ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body261

if.then.i582:                                     ; preds = %if.then223
  %ip6_ptr.i580 = getelementptr inbounds %struct.net_device, ptr %354, i32 0, i32 80
  %355 = ptrtoint ptr %ip6_ptr.i580 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load volatile ptr, ptr %ip6_ptr.i580, align 8
  %call.i581 = call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i581, label %if.then.i582.__in6_dev_get_safely.exit593_crit_edge, label %lor.lhs.false.i585

if.then.i582.__in6_dev_get_safely.exit593_crit_edge: ; preds = %if.then.i582
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get_safely.exit593

lor.lhs.false.i585:                               ; preds = %if.then.i582
  %call4.i583 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i583)
  %tobool5.not.i584 = icmp eq i32 %call4.i583, 0
  br i1 %tobool5.not.i584, label %land.lhs.true.i588, label %lor.lhs.false.i585.__in6_dev_get_safely.exit593_crit_edge

lor.lhs.false.i585.__in6_dev_get_safely.exit593_crit_edge: ; preds = %lor.lhs.false.i585
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get_safely.exit593

land.lhs.true.i588:                               ; preds = %lor.lhs.false.i585
  %call6.i586 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i586)
  %tobool7.not.i587 = icmp eq i32 %call6.i586, 0
  br i1 %tobool7.not.i587, label %land.lhs.true.i588.__in6_dev_get_safely.exit593_crit_edge, label %land.lhs.true8.i590

land.lhs.true.i588.__in6_dev_get_safely.exit593_crit_edge: ; preds = %land.lhs.true.i588
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get_safely.exit593

land.lhs.true8.i590:                              ; preds = %land.lhs.true.i588
  %.b15.i589 = load i1, ptr @__in6_dev_get_safely.__warned, align 1
  br i1 %.b15.i589, label %land.lhs.true8.i590.__in6_dev_get_safely.exit593_crit_edge, label %if.then10.i591

land.lhs.true8.i590.__in6_dev_get_safely.exit593_crit_edge: ; preds = %land.lhs.true8.i590
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get_safely.exit593

if.then10.i591:                                   ; preds = %land.lhs.true8.i590
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get_safely.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 341, ptr noundef nonnull @.str.3) #14
  br label %__in6_dev_get_safely.exit593

__in6_dev_get_safely.exit593:                     ; preds = %if.then10.i591, %land.lhs.true8.i590.__in6_dev_get_safely.exit593_crit_edge, %land.lhs.true.i588.__in6_dev_get_safely.exit593_crit_edge, %lor.lhs.false.i585.__in6_dev_get_safely.exit593_crit_edge, %if.then.i582.__in6_dev_get_safely.exit593_crit_edge
  %cmp226.not = icmp eq ptr %356, null
  br i1 %cmp226.not, label %__in6_dev_get_safely.exit593.do.body261_crit_edge, label %do.body235, !prof !69

__in6_dev_get_safely.exit593.do.body261_crit_edge: ; preds = %__in6_dev_get_safely.exit593
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body261

do.body235:                                       ; preds = %__in6_dev_get_safely.exit593
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @local_bh_disable()
  %ipv6245 = getelementptr inbounds %struct.inet6_dev, ptr %356, i32 0, i32 33, i32 1
  %357 = ptrtoint ptr %ipv6245 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %ipv6245, align 4
  %359 = ptrtoint ptr %358 to i32
  %360 = ptrtoint ptr %cpu32 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %cpu32, align 4
  %arrayidx249 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %361
  %362 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx249, align 4
  %add250 = add i32 %363, %359
  %364 = inttoptr i32 %add250 to ptr
  %syncp251 = getelementptr inbounds %struct.ipstats_mib, ptr %364, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp251)
  %arrayidx253 = getelementptr [37 x i64], ptr %364, i32 0, i32 7
  %365 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load8_noabort(i32 %365)
  %366 = load i64, ptr %arrayidx253, align 8
  %add254 = add i64 %366, 1
  store i64 %add254, ptr %arrayidx253, align 8
  %dep_map.i.i594 = getelementptr inbounds %struct.ipstats_mib, ptr %364, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i594, i32 noundef %51) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %367 = ptrtoint ptr %syncp251 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %syncp251, align 4
  %inc.i.i.i595 = add i32 %368, 1
  store i32 %inc.i.i.i595, ptr %syncp251, align 4
  call fastcc void @local_bh_enable()
  br label %do.body261

do.body261:                                       ; preds = %do.body235, %__in6_dev_get_safely.exit593.do.body261_crit_edge, %if.then223.do.body261_crit_edge
  call fastcc void @local_bh_disable()
  %369 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %ipv6_statistics, align 4
  %371 = ptrtoint ptr %370 to i32
  %372 = ptrtoint ptr %cpu32 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %cpu32, align 4
  %arrayidx275 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %373
  %374 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx275, align 4
  %add276 = add i32 %375, %371
  %376 = inttoptr i32 %add276 to ptr
  %syncp277 = getelementptr inbounds %struct.ipstats_mib, ptr %376, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp277)
  %arrayidx279 = getelementptr [37 x i64], ptr %376, i32 0, i32 7
  %377 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load8_noabort(i32 %377)
  %378 = load i64, ptr %arrayidx279, align 8
  %add280 = add i64 %378, 1
  store i64 %add280, ptr %arrayidx279, align 8
  %dep_map.i.i596 = getelementptr inbounds %struct.ipstats_mib, ptr %376, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i596, i32 noundef %51) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %379 = ptrtoint ptr %syncp277 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %syncp277, align 4
  %inc.i.i.i597 = add i32 %380, 1
  store i32 %inc.i.i.i597, ptr %syncp277, align 4
  call fastcc void @local_bh_enable()
  call void @icmpv6_param_prob(ptr noundef %skb, i8 noundef zeroext 0, i32 noundef %prob_offset.0) #14
  br label %cleanup

if.end287:                                        ; preds = %fq_find.exit
  %381 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %4, align 8
  %and.i598 = and i32 %382, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i598)
  %tobool.not.i599 = icmp eq i32 %and.i598, 0
  br i1 %tobool.not.i599, label %if.end287.skb_dst.exit609_crit_edge, label %land.lhs.true.i602

if.end287.skb_dst.exit609_crit_edge:              ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit609

land.lhs.true.i602:                               ; preds = %if.end287
  %call.i600 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i600)
  %tobool1.not.i601 = icmp eq i32 %call.i600, 0
  br i1 %tobool1.not.i601, label %land.rhs.i605, label %land.lhs.true.i602.skb_dst.exit609_crit_edge

land.lhs.true.i602.skb_dst.exit609_crit_edge:     ; preds = %land.lhs.true.i602
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit609

land.rhs.i605:                                    ; preds = %land.lhs.true.i602
  %call2.i603 = call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i603)
  %tobool3.not.i604 = icmp eq i32 %call2.i603, 0
  br i1 %tobool3.not.i604, label %do.end.i606, label %land.rhs.i605.skb_dst.exit609_crit_edge, !prof !69

land.rhs.i605.skb_dst.exit609_crit_edge:          ; preds = %land.rhs.i605
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit609

do.end.i606:                                      ; preds = %land.rhs.i605
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit609

skb_dst.exit609:                                  ; preds = %do.end.i606, %land.rhs.i605.skb_dst.exit609_crit_edge, %land.lhs.true.i602.skb_dst.exit609_crit_edge, %if.end287.skb_dst.exit609_crit_edge
  %383 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %4, align 8
  %and25.i607 = and i32 %384, -2
  %385 = inttoptr i32 %and25.i607 to ptr
  %rt6i_idev.i610 = getelementptr inbounds %struct.rt6_info, ptr %385, i32 0, i32 6
  %386 = ptrtoint ptr %rt6i_idev.i610 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %rt6i_idev.i610, align 4
  %cmp291.not = icmp eq ptr %387, null
  br i1 %cmp291.not, label %skb_dst.exit609.do.body326_crit_edge, label %do.body300, !prof !69

skb_dst.exit609.do.body326_crit_edge:             ; preds = %skb_dst.exit609
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body326

do.body300:                                       ; preds = %skb_dst.exit609
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @local_bh_disable()
  %ipv6310 = getelementptr inbounds %struct.inet6_dev, ptr %387, i32 0, i32 33, i32 1
  %388 = ptrtoint ptr %ipv6310 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %ipv6310, align 4
  %390 = ptrtoint ptr %389 to i32
  %391 = ptrtoint ptr %cpu32 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %cpu32, align 4
  %arrayidx314 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %392
  %393 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %arrayidx314, align 4
  %add315 = add i32 %394, %390
  %395 = inttoptr i32 %add315 to ptr
  %syncp316 = getelementptr inbounds %struct.ipstats_mib, ptr %395, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp316)
  %arrayidx318 = getelementptr [37 x i64], ptr %395, i32 0, i32 19
  %396 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load8_noabort(i32 %396)
  %397 = load i64, ptr %arrayidx318, align 8
  %add319 = add i64 %397, 1
  store i64 %add319, ptr %arrayidx318, align 8
  %dep_map.i.i611 = getelementptr inbounds %struct.ipstats_mib, ptr %395, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i611, i32 noundef %51) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %398 = ptrtoint ptr %syncp316 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %syncp316, align 4
  %inc.i.i.i612 = add i32 %399, 1
  store i32 %inc.i.i.i612, ptr %syncp316, align 4
  call fastcc void @local_bh_enable()
  br label %do.body326

do.body326:                                       ; preds = %do.body300, %skb_dst.exit609.do.body326_crit_edge
  call fastcc void @local_bh_disable()
  %400 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %ipv6_statistics, align 4
  %402 = ptrtoint ptr %401 to i32
  %403 = ptrtoint ptr %cpu32 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %cpu32, align 4
  %arrayidx340 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %404
  %405 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %arrayidx340, align 4
  %add341 = add i32 %406, %402
  %407 = inttoptr i32 %add341 to ptr
  %syncp342 = getelementptr inbounds %struct.ipstats_mib, ptr %407, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp342)
  %arrayidx344 = getelementptr [37 x i64], ptr %407, i32 0, i32 19
  %408 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_load8_noabort(i32 %408)
  %409 = load i64, ptr %arrayidx344, align 8
  %add345 = add i64 %409, 1
  store i64 %add345, ptr %arrayidx344, align 8
  %dep_map.i.i613 = getelementptr inbounds %struct.ipstats_mib, ptr %407, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i613, i32 noundef %51) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %410 = ptrtoint ptr %syncp342 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %syncp342, align 4
  %inc.i.i.i614 = add i32 %411, 1
  store i32 %inc.i.i.i614, ptr %syncp342, align 4
  call fastcc void @local_bh_enable()
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup

fail_hdr:                                         ; preds = %pskb_may_pull.exit.fail_hdr_crit_edge, %if.end.i.fail_hdr_crit_edge, %do.body21.fail_hdr_crit_edge, %skb_dst.exit.fail_hdr_crit_edge
  %412 = getelementptr inbounds %struct.anon.5, ptr %skb, i32 0, i32 2
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %412, align 8
  %tobool.not.i615 = icmp eq ptr %414, null
  br i1 %tobool.not.i615, label %fail_hdr.do.body388_crit_edge, label %if.then.i618, !prof !69

fail_hdr.do.body388_crit_edge:                    ; preds = %fail_hdr
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body388

if.then.i618:                                     ; preds = %fail_hdr
  %ip6_ptr.i616 = getelementptr inbounds %struct.net_device, ptr %414, i32 0, i32 80
  %415 = ptrtoint ptr %ip6_ptr.i616 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load volatile ptr, ptr %ip6_ptr.i616, align 8
  %call.i617 = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i617, label %if.then.i618.__in6_dev_get_safely.exit629_crit_edge, label %lor.lhs.false.i621

if.then.i618.__in6_dev_get_safely.exit629_crit_edge: ; preds = %if.then.i618
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get_safely.exit629

lor.lhs.false.i621:                               ; preds = %if.then.i618
  %call4.i619 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i619)
  %tobool5.not.i620 = icmp eq i32 %call4.i619, 0
  br i1 %tobool5.not.i620, label %land.lhs.true.i624, label %lor.lhs.false.i621.__in6_dev_get_safely.exit629_crit_edge

lor.lhs.false.i621.__in6_dev_get_safely.exit629_crit_edge: ; preds = %lor.lhs.false.i621
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get_safely.exit629

land.lhs.true.i624:                               ; preds = %lor.lhs.false.i621
  %call6.i622 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i622)
  %tobool7.not.i623 = icmp eq i32 %call6.i622, 0
  br i1 %tobool7.not.i623, label %land.lhs.true.i624.__in6_dev_get_safely.exit629_crit_edge, label %land.lhs.true8.i626

land.lhs.true.i624.__in6_dev_get_safely.exit629_crit_edge: ; preds = %land.lhs.true.i624
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get_safely.exit629

land.lhs.true8.i626:                              ; preds = %land.lhs.true.i624
  %.b15.i625 = load i1, ptr @__in6_dev_get_safely.__warned, align 1
  br i1 %.b15.i625, label %land.lhs.true8.i626.__in6_dev_get_safely.exit629_crit_edge, label %if.then10.i627

land.lhs.true8.i626.__in6_dev_get_safely.exit629_crit_edge: ; preds = %land.lhs.true8.i626
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get_safely.exit629

if.then10.i627:                                   ; preds = %land.lhs.true8.i626
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get_safely.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 341, ptr noundef nonnull @.str.3) #14
  br label %__in6_dev_get_safely.exit629

__in6_dev_get_safely.exit629:                     ; preds = %if.then10.i627, %land.lhs.true8.i626.__in6_dev_get_safely.exit629_crit_edge, %land.lhs.true.i624.__in6_dev_get_safely.exit629_crit_edge, %lor.lhs.false.i621.__in6_dev_get_safely.exit629_crit_edge, %if.then.i618.__in6_dev_get_safely.exit629_crit_edge
  %cmp353.not = icmp eq ptr %416, null
  br i1 %cmp353.not, label %__in6_dev_get_safely.exit629.do.body388_crit_edge, label %do.body362, !prof !69

__in6_dev_get_safely.exit629.do.body388_crit_edge: ; preds = %__in6_dev_get_safely.exit629
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body388

do.body362:                                       ; preds = %__in6_dev_get_safely.exit629
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @local_bh_disable()
  %ipv6372 = getelementptr inbounds %struct.inet6_dev, ptr %416, i32 0, i32 33, i32 1
  %417 = ptrtoint ptr %ipv6372 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %ipv6372, align 4
  %419 = ptrtoint ptr %418 to i32
  %420 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i630 = and i32 %420, -16384
  %421 = inttoptr i32 %and.i630 to ptr
  %cpu375 = getelementptr inbounds %struct.thread_info, ptr %421, i32 0, i32 3
  %422 = ptrtoint ptr %cpu375 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %cpu375, align 4
  %arrayidx376 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %423
  %424 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %arrayidx376, align 4
  %add377 = add i32 %425, %419
  %426 = inttoptr i32 %add377 to ptr
  %syncp378 = getelementptr inbounds %struct.ipstats_mib, ptr %426, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp378)
  %arrayidx380 = getelementptr [37 x i64], ptr %426, i32 0, i32 7
  %427 = ptrtoint ptr %arrayidx380 to i32
  call void @__asan_load8_noabort(i32 %427)
  %428 = load i64, ptr %arrayidx380, align 8
  %add381 = add i64 %428, 1
  store i64 %add381, ptr %arrayidx380, align 8
  %dep_map.i.i631 = getelementptr inbounds %struct.ipstats_mib, ptr %426, i32 0, i32 1, i32 0, i32 1
  %429 = tail call ptr @llvm.returnaddress(i32 0) #14
  %430 = ptrtoint ptr %429 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i631, i32 noundef %430) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %431 = ptrtoint ptr %syncp378 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %syncp378, align 4
  %inc.i.i.i632 = add i32 %432, 1
  store i32 %inc.i.i.i632, ptr %syncp378, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body388

do.body388:                                       ; preds = %do.body362, %__in6_dev_get_safely.exit629.do.body388_crit_edge, %fail_hdr.do.body388_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics398 = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 30, i32 1
  %433 = ptrtoint ptr %ipv6_statistics398 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %ipv6_statistics398, align 4
  %435 = ptrtoint ptr %434 to i32
  %436 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i633 = and i32 %436, -16384
  %437 = inttoptr i32 %and.i633 to ptr
  %cpu401 = getelementptr inbounds %struct.thread_info, ptr %437, i32 0, i32 3
  %438 = ptrtoint ptr %cpu401 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %cpu401, align 4
  %arrayidx402 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %439
  %440 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %arrayidx402, align 4
  %add403 = add i32 %441, %435
  %442 = inttoptr i32 %add403 to ptr
  %syncp404 = getelementptr inbounds %struct.ipstats_mib, ptr %442, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp404)
  %arrayidx406 = getelementptr [37 x i64], ptr %442, i32 0, i32 7
  %443 = ptrtoint ptr %arrayidx406 to i32
  call void @__asan_load8_noabort(i32 %443)
  %444 = load i64, ptr %arrayidx406, align 8
  %add407 = add i64 %444, 1
  store i64 %add407, ptr %arrayidx406, align 8
  %dep_map.i.i634 = getelementptr inbounds %struct.ipstats_mib, ptr %442, i32 0, i32 1, i32 0, i32 1
  %445 = tail call ptr @llvm.returnaddress(i32 0) #14
  %446 = ptrtoint ptr %445 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i634, i32 noundef %446) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %447 = ptrtoint ptr %syncp404 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %syncp404, align 4
  %inc.i.i.i635 = add i32 %448, 1
  store i32 %inc.i.i.i635, ptr %syncp404, align 4
  tail call fastcc void @local_bh_enable()
  %transport_header.i636 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %449 = ptrtoint ptr %transport_header.i636 to i32
  call void @__asan_load2_noabort(i32 %449)
  %450 = load i16, ptr %transport_header.i636, align 2
  %conv.i637 = zext i16 %450 to i32
  %451 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %451)
  %452 = load i16, ptr %network_header.i.i, align 4
  %conv1.i = zext i16 %452 to i32
  %sub.i639 = sub nsw i32 %conv.i637, %conv1.i
  tail call void @icmpv6_param_prob(ptr noundef %skb, i8 noundef zeroext 0, i32 noundef %sub.i639) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body388, %do.body326, %do.body261, %inet_frag_put.exit.cleanup_crit_edge, %do.body183, %do.body101
  %retval.0 = phi i32 [ -1, %do.body388 ], [ -1, %do.body183 ], [ -1, %do.body326 ], [ 1, %do.body101 ], [ %retval.0.i576, %do.body261 ], [ %retval.0.i576, %inet_frag_put.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_dst(ptr nocapture noundef readonly %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  %call2 = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !69

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25 = and i32 %4, -2
  %5 = inttoptr i32 %and25 to ptr
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_param_prob(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_find(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_frag_queue_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6_frag_reasm(ptr noundef %fq, ptr noundef %skb, ptr noundef %prev_tail, ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fqdir = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 13
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fqdir, align 4
  %net1 = getelementptr inbounds %struct.fqdir, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  tail call void @inet_frag_kill(ptr noundef %fq) #14
  %ecn3 = getelementptr inbounds %struct.frag_queue, ptr %fq, i32 0, i32 3
  %4 = ptrtoint ptr %ecn3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ecn3, align 2
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr [16 x i8], ptr @ip_frag_ecn_table, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp = icmp eq i8 %7, -1
  br i1 %cmp, label %entry.out_fail_crit_edge, label %if.end, !prof !69

entry.out_fail_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_fail

if.end:                                           ; preds = %entry
  %call = tail call ptr @inet_frag_reasm_prepare(ptr noundef %fq, ptr noundef %skb, ptr noundef %prev_tail) #14
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %do.body121, label %if.end9

if.end9:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %13 to i32
  %add.ptr.i = getelementptr i8, ptr %11, i32 %conv.i
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %len = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 9
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 8
  %sub = add i32 %sub.ptr.lhs.cast, -48
  %add = add i32 %sub, %15
  %sub12 = sub i32 %add, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub12)
  %cmp13 = icmp sgt i32 %sub12, 65535
  br i1 %cmp13, label %do.body105, label %if.end16

if.end16:                                         ; preds = %if.end9
  %nhoffset = getelementptr inbounds %struct.frag_queue, ptr %fq, i32 0, i32 2
  %16 = ptrtoint ptr %nhoffset to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %nhoffset, align 4
  %conv17 = zext i16 %17 to i32
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %18 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %transport_header.i, align 2
  %conv.i275 = zext i16 %19 to i32
  %add.ptr.i276 = getelementptr i8, ptr %11, i32 %conv.i275
  %20 = ptrtoint ptr %add.ptr.i276 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.i276, align 1
  %arrayidx21 = getelementptr i8, ptr %add.ptr.i, i32 %conv17
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx21, align 1
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i, align 8
  %add.ptr = getelementptr i8, ptr %24, i32 8
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast25 = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast26 = ptrtoint ptr %24 to i32
  %sub.ptr.sub27 = sub i32 -8, %sub.ptr.rhs.cast26
  %sub28 = add i32 %sub.ptr.sub27, %sub.ptr.lhs.cast25
  %27 = call ptr @memmove(ptr %add.ptr, ptr %24, i32 %sub28)
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %28 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %29)
  %cmp.i.not = icmp eq i16 %29, -1
  br i1 %cmp.i.not, label %if.end16.if.end35_crit_edge, label %if.then31

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then31:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %add33 = add i16 %29, 8
  %30 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %add33, ptr %mac_header.i, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end16.if.end35_crit_edge
  %31 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i, align 4
  %add37 = add i16 %32, 8
  store i16 %add37, ptr %network_header.i, align 4
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i282 = trunc i32 %sub.ptr.sub.i to i16
  %37 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i282, ptr %transport_header.i, align 2
  tail call void @inet_frag_reasm_finish(ptr noundef %fq, ptr noundef %skb, ptr noundef nonnull %call, i1 noundef zeroext true) #14
  %38 = getelementptr inbounds %struct.anon.5, ptr %skb, i32 0, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev, ptr %38, align 8
  %conv40 = trunc i32 %sub12 to i16
  %40 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i, align 8
  %42 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %43 to i32
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 %conv.i.i
  %payload_len42 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %payload_len42 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv40, ptr %payload_len42, align 4
  %45 = load ptr, ptr %head.i, align 8
  %46 = load i16, ptr %network_header.i, align 4
  %conv.i.i286 = zext i16 %46 to i32
  %add.ptr.i.i287 = getelementptr i8, ptr %45, i32 %conv.i.i286
  %47 = ptrtoint ptr %add.ptr.i.i287 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr.i.i287, align 2
  %conv6.i = zext i8 %7 to i16
  %shl7.i = shl nuw nsw i16 %conv6.i, 4
  %or10.i = or i16 %48, %shl7.i
  store i16 %or10.i, ptr %add.ptr.i.i287, align 2
  %nhoff45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %49 = ptrtoint ptr %nhoff45 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %17, ptr %nhoff45, align 2
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %flags, align 8
  %52 = or i16 %51, 16
  store i16 %52, ptr %flags, align 8
  %max_size = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 12
  %53 = ptrtoint ptr %max_size to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %max_size, align 2
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %55 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %frag_max_size, align 4
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %56 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %57 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %57)
  %cmp.i.i = icmp eq i16 %57, 1024
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end35.skb_postpush_rcsum.exit_crit_edge

if.end35.skb_postpush_rcsum.exit_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_postpush_rcsum.exit

if.then.i.i:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %transport_header.i, align 2
  %conv.i293 = zext i16 %59 to i32
  %60 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %network_header.i, align 4
  %conv.i290 = zext i16 %61 to i32
  %sub.i = sub nsw i32 %conv.i293, %conv.i290
  %62 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i, align 8
  %add.ptr.i291 = getelementptr i8, ptr %63, i32 %conv.i290
  %64 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %call.i.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i291, i32 noundef %sub.i, i32 noundef 0) #14
  %add.i.i.i.i = add i32 %call.i.i, %66
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %call.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %call.i.i
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i.i.i.i
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add1.i.i.i.i, ptr %64, align 8
  br label %skb_postpush_rcsum.exit

skb_postpush_rcsum.exit:                          ; preds = %if.then.i.i, %if.end35.skb_postpush_rcsum.exit_crit_edge
  %68 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %71, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %skb_postpush_rcsum.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

skb_postpush_rcsum.exit.rcu_read_lock.exit_crit_edge: ; preds = %skb_postpush_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %skb_postpush_rcsum.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %skb_postpush_rcsum.exit.rcu_read_lock.exit_crit_edge
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %72 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %73, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %rcu_read_lock.exit.if.end.i_crit_edge, label %if.then.i296

rcu_read_lock.exit.if.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i296:                                     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %74 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %nd_net.i.i, align 4
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %flags, align 8
  %78 = and i16 %77, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool.i.not.i.i = icmp eq i16 %78, 0
  %skb_iif.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cond.in.i.i = select i1 %tobool.i.not.i.i, ptr %cb.i.i, ptr %skb_iif.i.i
  %79 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 8
  %call3.i = tail call ptr @dev_get_by_index_rcu(ptr noundef %75, i32 noundef %cond.i.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i296, %rcu_read_lock.exit.if.end.i_crit_edge
  %dev.addr.0.i = phi ptr [ %call3.i, %if.then.i296 ], [ %dev, %rcu_read_lock.exit.if.end.i_crit_edge ]
  %ip6_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %dev.addr.0.i, i32 0, i32 80
  %80 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i.i297 = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i.i297, label %if.end.i.__in6_dev_stats_get.exit_crit_edge, label %lor.lhs.false.i.i

if.end.i.__in6_dev_stats_get.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_stats_get.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %call2.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__in6_dev_stats_get.exit_crit_edge

lor.lhs.false.i.i.__in6_dev_stats_get.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_stats_get.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.__in6_dev_stats_get.exit_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.__in6_dev_stats_get.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_stats_get.exit

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b10.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true5.i.i.__in6_dev_stats_get.exit_crit_edge, label %if.then.i.i298

land.lhs.true5.i.i.__in6_dev_stats_get.exit_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_stats_get.exit

if.then.i.i298:                                   ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 313, ptr noundef nonnull @.str.3) #14
  br label %__in6_dev_stats_get.exit

__in6_dev_stats_get.exit:                         ; preds = %if.then.i.i298, %land.lhs.true5.i.i.__in6_dev_stats_get.exit_crit_edge, %land.lhs.true.i.i.__in6_dev_stats_get.exit_crit_edge, %lor.lhs.false.i.i.__in6_dev_stats_get.exit_crit_edge, %if.end.i.__in6_dev_stats_get.exit_crit_edge
  %cmp56.not = icmp eq ptr %81, null
  br i1 %cmp56.not, label %__in6_dev_stats_get.exit.do.body79_crit_edge, label %do.body, !prof !69

__in6_dev_stats_get.exit.do.body79_crit_edge:     ; preds = %__in6_dev_stats_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body79

do.body:                                          ; preds = %__in6_dev_stats_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %81, i32 0, i32 33, i32 1
  %82 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ipv6, align 4
  %84 = ptrtoint ptr %83 to i32
  %85 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cpu, align 4
  %arrayidx69 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %88
  %89 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx69, align 4
  %add70 = add i32 %90, %84
  %91 = inttoptr i32 %add70 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %91, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx71 = getelementptr [37 x i64], ptr %91, i32 0, i32 18
  %92 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %arrayidx71, align 8
  %add72 = add i64 %93, 1
  store i64 %add72, ptr %arrayidx71, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %91, i32 0, i32 1, i32 0, i32 1
  %94 = tail call ptr @llvm.returnaddress(i32 0) #14
  %95 = ptrtoint ptr %94 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %95) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %96 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %97, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body79

do.body79:                                        ; preds = %do.body, %__in6_dev_stats_get.exit.do.body79_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 30, i32 1
  %98 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ipv6_statistics, align 4
  %100 = ptrtoint ptr %99 to i32
  %101 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i299 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i299 to ptr
  %cpu90 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %cpu90 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cpu90, align 4
  %arrayidx91 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %104
  %105 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx91, align 4
  %add92 = add i32 %106, %100
  %107 = inttoptr i32 %add92 to ptr
  %syncp93 = getelementptr inbounds %struct.ipstats_mib, ptr %107, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp93)
  %arrayidx95 = getelementptr [37 x i64], ptr %107, i32 0, i32 18
  %108 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx95, align 8
  %add96 = add i64 %109, 1
  store i64 %add96, ptr %arrayidx95, align 8
  %dep_map.i.i300 = getelementptr inbounds %struct.ipstats_mib, ptr %107, i32 0, i32 1, i32 0, i32 1
  %110 = tail call ptr @llvm.returnaddress(i32 0) #14
  %111 = ptrtoint ptr %110 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i300, i32 noundef %111) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %112 = ptrtoint ptr %syncp93 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %syncp93, align 4
  %inc.i.i.i301 = add i32 %113, 1
  store i32 %inc.i.i.i301, ptr %syncp93, align 4
  tail call fastcc void @local_bh_enable()
  %call.i302 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i302, label %do.body79.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i305

do.body79.rcu_read_unlock.exit_crit_edge:         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i305:                               ; preds = %do.body79
  %call1.i303 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i303)
  %tobool.not.i304 = icmp eq i32 %call1.i303, 0
  br i1 %tobool.not.i304, label %land.lhs.true.i305.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i307

land.lhs.true.i305.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i305
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i307:                              ; preds = %land.lhs.true.i305
  %.b4.i306 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i306, label %land.lhs.true2.i307.rcu_read_unlock.exit_crit_edge, label %if.then.i308

land.lhs.true2.i307.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i307
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i308:                                     ; preds = %land.lhs.true2.i307
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i308, %land.lhs.true2.i307.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i305.rcu_read_unlock.exit_crit_edge, %do.body79.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !71
  %114 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i.i.i.i.i309 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i.i.i309 to ptr
  %preempt_count.i.i.i.i310 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %preempt_count.i.i.i.i310 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %preempt_count.i.i.i.i310, align 4
  %sub.i.i.i = add i32 %117, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i310, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %rb_fragments = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 5
  %118 = ptrtoint ptr %rb_fragments to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %rb_fragments, align 8
  %fragments_tail = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 6
  %119 = ptrtoint ptr %fragments_tail to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %fragments_tail, align 4
  %last_run_head = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 7
  %120 = ptrtoint ptr %last_run_head to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %last_run_head, align 8
  br label %cleanup

do.body105:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ip6_frag_reasm.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip6_frag_reasm, %land.lhs.true)) #14
          to label %out_fail [label %land.lhs.true], !srcloc !84

land.lhs.true:                                    ; preds = %do.body105
  %call115 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %land.lhs.true.out_fail_crit_edge, label %if.then117

land.lhs.true.out_fail_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_fail

if.then117:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ip6_frag_reasm.descriptor, ptr noundef nonnull @.str.11, i32 noundef %sub12) #14
  br label %out_fail

do.body121:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ip6_frag_reasm.descriptor.12, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip6_frag_reasm, %land.lhs.true133)) #14
          to label %out_fail [label %land.lhs.true133], !srcloc !84

land.lhs.true133:                                 ; preds = %do.body121
  %call134 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %land.lhs.true133.out_fail_crit_edge, label %if.then136

land.lhs.true133.out_fail_crit_edge:              ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_fail

if.then136:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ip6_frag_reasm.descriptor.12, ptr noundef nonnull @.str.14) #14
  br label %out_fail

out_fail:                                         ; preds = %if.then136, %land.lhs.true133.out_fail_crit_edge, %do.body121, %if.then117, %land.lhs.true.out_fail_crit_edge, %do.body105, %entry.out_fail_crit_edge
  %121 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i.i.i.i.i263 = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i.i.i263 to ptr
  %preempt_count.i.i.i.i264 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %preempt_count.i.i.i.i264 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %preempt_count.i.i.i.i264, align 4
  %add.i.i.i265 = add i32 %124, 1
  store volatile i32 %add.i.i.i265, ptr %preempt_count.i.i.i.i264, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i266 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i266, label %out_fail.rcu_read_lock.exit273_crit_edge, label %land.lhs.true.i269

out_fail.rcu_read_lock.exit273_crit_edge:         ; preds = %out_fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit273

land.lhs.true.i269:                               ; preds = %out_fail
  %call1.i267 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i267)
  %tobool.not.i268 = icmp eq i32 %call1.i267, 0
  br i1 %tobool.not.i268, label %land.lhs.true.i269.rcu_read_lock.exit273_crit_edge, label %land.lhs.true2.i271

land.lhs.true.i269.rcu_read_lock.exit273_crit_edge: ; preds = %land.lhs.true.i269
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit273

land.lhs.true2.i271:                              ; preds = %land.lhs.true.i269
  %.b4.i270 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i270, label %land.lhs.true2.i271.rcu_read_lock.exit273_crit_edge, label %if.then.i272

land.lhs.true2.i271.rcu_read_lock.exit273_crit_edge: ; preds = %land.lhs.true2.i271
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit273

if.then.i272:                                     ; preds = %land.lhs.true2.i271
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #14
  br label %rcu_read_lock.exit273

rcu_read_lock.exit273:                            ; preds = %if.then.i272, %land.lhs.true2.i271.rcu_read_lock.exit273_crit_edge, %land.lhs.true.i269.rcu_read_lock.exit273_crit_edge, %out_fail.rcu_read_lock.exit273_crit_edge
  %priv_flags.i.i311 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %125 = ptrtoint ptr %priv_flags.i.i311 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %priv_flags.i.i311, align 16
  %and.i.i312 = and i64 %126, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i312)
  %tobool.i.not.i313 = icmp eq i64 %and.i.i312, 0
  br i1 %tobool.i.not.i313, label %rcu_read_lock.exit273.if.end.i326_crit_edge, label %if.then.i322

rcu_read_lock.exit273.if.end.i326_crit_edge:      ; preds = %rcu_read_lock.exit273
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i326

if.then.i322:                                     ; preds = %rcu_read_lock.exit273
  call void @__sanitizer_cov_trace_pc() #16
  %nd_net.i.i314 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %127 = ptrtoint ptr %nd_net.i.i314 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %nd_net.i.i314, align 4
  %flags.i.i315 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %129 = ptrtoint ptr %flags.i.i315 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %flags.i.i315, align 8
  %131 = and i16 %130, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool.i.not.i.i316 = icmp eq i16 %131, 0
  %skb_iif.i.i317 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cb.i.i318 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cond.in.i.i319 = select i1 %tobool.i.not.i.i316, ptr %cb.i.i318, ptr %skb_iif.i.i317
  %132 = ptrtoint ptr %cond.in.i.i319 to i32
  call void @__asan_load4_noabort(i32 %132)
  %cond.i.i320 = load i32, ptr %cond.in.i.i319, align 8
  %call3.i321 = tail call ptr @dev_get_by_index_rcu(ptr noundef %128, i32 noundef %cond.i.i320) #14
  br label %if.end.i326

if.end.i326:                                      ; preds = %if.then.i322, %rcu_read_lock.exit273.if.end.i326_crit_edge
  %dev.addr.0.i323 = phi ptr [ %call3.i321, %if.then.i322 ], [ %dev, %rcu_read_lock.exit273.if.end.i326_crit_edge ]
  %ip6_ptr.i.i324 = getelementptr inbounds %struct.net_device, ptr %dev.addr.0.i323, i32 0, i32 80
  %133 = ptrtoint ptr %ip6_ptr.i.i324 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile ptr, ptr %ip6_ptr.i.i324, align 8
  %call.i.i325 = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i.i325, label %if.end.i326.__in6_dev_stats_get.exit336_crit_edge, label %lor.lhs.false.i.i329

if.end.i326.__in6_dev_stats_get.exit336_crit_edge: ; preds = %if.end.i326
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_stats_get.exit336

lor.lhs.false.i.i329:                             ; preds = %if.end.i326
  %call2.i.i327 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i327)
  %tobool.not.i.i328 = icmp eq i32 %call2.i.i327, 0
  br i1 %tobool.not.i.i328, label %land.lhs.true.i.i332, label %lor.lhs.false.i.i329.__in6_dev_stats_get.exit336_crit_edge

lor.lhs.false.i.i329.__in6_dev_stats_get.exit336_crit_edge: ; preds = %lor.lhs.false.i.i329
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_stats_get.exit336

land.lhs.true.i.i332:                             ; preds = %lor.lhs.false.i.i329
  %call3.i.i330 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i330)
  %tobool4.not.i.i331 = icmp eq i32 %call3.i.i330, 0
  br i1 %tobool4.not.i.i331, label %land.lhs.true.i.i332.__in6_dev_stats_get.exit336_crit_edge, label %land.lhs.true5.i.i334

land.lhs.true.i.i332.__in6_dev_stats_get.exit336_crit_edge: ; preds = %land.lhs.true.i.i332
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_stats_get.exit336

land.lhs.true5.i.i334:                            ; preds = %land.lhs.true.i.i332
  %.b10.i.i333 = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i333, label %land.lhs.true5.i.i334.__in6_dev_stats_get.exit336_crit_edge, label %if.then.i.i335

land.lhs.true5.i.i334.__in6_dev_stats_get.exit336_crit_edge: ; preds = %land.lhs.true5.i.i334
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_stats_get.exit336

if.then.i.i335:                                   ; preds = %land.lhs.true5.i.i334
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 313, ptr noundef nonnull @.str.3) #14
  br label %__in6_dev_stats_get.exit336

__in6_dev_stats_get.exit336:                      ; preds = %if.then.i.i335, %land.lhs.true5.i.i334.__in6_dev_stats_get.exit336_crit_edge, %land.lhs.true.i.i332.__in6_dev_stats_get.exit336_crit_edge, %lor.lhs.false.i.i329.__in6_dev_stats_get.exit336_crit_edge, %if.end.i326.__in6_dev_stats_get.exit336_crit_edge
  %cmp142.not = icmp eq ptr %134, null
  br i1 %cmp142.not, label %__in6_dev_stats_get.exit336.do.body177_crit_edge, label %do.body151, !prof !69

__in6_dev_stats_get.exit336.do.body177_crit_edge: ; preds = %__in6_dev_stats_get.exit336
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body177

do.body151:                                       ; preds = %__in6_dev_stats_get.exit336
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @local_bh_disable()
  %ipv6161 = getelementptr inbounds %struct.inet6_dev, ptr %134, i32 0, i32 33, i32 1
  %135 = ptrtoint ptr %ipv6161 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ipv6161, align 4
  %137 = ptrtoint ptr %136 to i32
  %138 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i337 = and i32 %138, -16384
  %139 = inttoptr i32 %and.i337 to ptr
  %cpu164 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 3
  %140 = ptrtoint ptr %cpu164 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cpu164, align 4
  %arrayidx165 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %141
  %142 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx165, align 4
  %add166 = add i32 %143, %137
  %144 = inttoptr i32 %add166 to ptr
  %syncp167 = getelementptr inbounds %struct.ipstats_mib, ptr %144, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp167)
  %arrayidx169 = getelementptr [37 x i64], ptr %144, i32 0, i32 19
  %145 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %arrayidx169, align 8
  %add170 = add i64 %146, 1
  store i64 %add170, ptr %arrayidx169, align 8
  %dep_map.i.i338 = getelementptr inbounds %struct.ipstats_mib, ptr %144, i32 0, i32 1, i32 0, i32 1
  %147 = tail call ptr @llvm.returnaddress(i32 0) #14
  %148 = ptrtoint ptr %147 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i338, i32 noundef %148) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %149 = ptrtoint ptr %syncp167 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %syncp167, align 4
  %inc.i.i.i339 = add i32 %150, 1
  store i32 %inc.i.i.i339, ptr %syncp167, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body177

do.body177:                                       ; preds = %do.body151, %__in6_dev_stats_get.exit336.do.body177_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics187 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 30, i32 1
  %151 = ptrtoint ptr %ipv6_statistics187 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ipv6_statistics187, align 4
  %153 = ptrtoint ptr %152 to i32
  %154 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i340 = and i32 %154, -16384
  %155 = inttoptr i32 %and.i340 to ptr
  %cpu190 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %cpu190 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %cpu190, align 4
  %arrayidx191 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %157
  %158 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx191, align 4
  %add192 = add i32 %159, %153
  %160 = inttoptr i32 %add192 to ptr
  %syncp193 = getelementptr inbounds %struct.ipstats_mib, ptr %160, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp193)
  %arrayidx195 = getelementptr [37 x i64], ptr %160, i32 0, i32 19
  %161 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %arrayidx195, align 8
  %add196 = add i64 %162, 1
  store i64 %add196, ptr %arrayidx195, align 8
  %dep_map.i.i341 = getelementptr inbounds %struct.ipstats_mib, ptr %160, i32 0, i32 1, i32 0, i32 1
  %163 = tail call ptr @llvm.returnaddress(i32 0) #14
  %164 = ptrtoint ptr %163 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i341, i32 noundef %164) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !70
  %165 = ptrtoint ptr %syncp193 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %syncp193, align 4
  %inc.i.i.i342 = add i32 %166, 1
  store i32 %inc.i.i.i342, ptr %syncp193, align 4
  tail call fastcc void @local_bh_enable()
  %call.i343 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i343, label %do.body177.rcu_read_unlock.exit353_crit_edge, label %land.lhs.true.i346

do.body177.rcu_read_unlock.exit353_crit_edge:     ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit353

land.lhs.true.i346:                               ; preds = %do.body177
  %call1.i344 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i344)
  %tobool.not.i345 = icmp eq i32 %call1.i344, 0
  br i1 %tobool.not.i345, label %land.lhs.true.i346.rcu_read_unlock.exit353_crit_edge, label %land.lhs.true2.i348

land.lhs.true.i346.rcu_read_unlock.exit353_crit_edge: ; preds = %land.lhs.true.i346
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit353

land.lhs.true2.i348:                              ; preds = %land.lhs.true.i346
  %.b4.i347 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i347, label %land.lhs.true2.i348.rcu_read_unlock.exit353_crit_edge, label %if.then.i349

land.lhs.true2.i348.rcu_read_unlock.exit353_crit_edge: ; preds = %land.lhs.true2.i348
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit353

if.then.i349:                                     ; preds = %land.lhs.true2.i348
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_unlock.exit353

rcu_read_unlock.exit353:                          ; preds = %if.then.i349, %land.lhs.true2.i348.rcu_read_unlock.exit353_crit_edge, %land.lhs.true.i346.rcu_read_unlock.exit353_crit_edge, %do.body177.rcu_read_unlock.exit353_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !71
  %167 = tail call i32 @llvm.read_register.i32(metadata !57) #14
  %and.i.i.i.i.i350 = and i32 %167, -16384
  %168 = inttoptr i32 %and.i.i.i.i.i350 to ptr
  %preempt_count.i.i.i.i351 = getelementptr inbounds %struct.thread_info, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %preempt_count.i.i.i.i351 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %preempt_count.i.i.i.i351, align 4
  %sub.i.i.i352 = add i32 %170, -1
  store volatile i32 %sub.i.i.i352, ptr %preempt_count.i.i.i.i351, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  tail call void @inet_frag_kill(ptr noundef %fq) #14
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit353, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -1, %rcu_read_unlock.exit353 ], [ 1, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_reasm_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_reasm_finish(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv6_frags_init_net(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fqdir = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 5
  %call = tail call i32 @fqdir_init(ptr noundef %fqdir, ptr noundef nonnull @ip6_frags, ptr noundef %net) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fqdir, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4194304, ptr %1, align 128
  %3 = load ptr, ptr %fqdir, align 4
  %low_thresh = getelementptr inbounds %struct.fqdir, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %low_thresh to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3145728, ptr %low_thresh, align 4
  %5 = load ptr, ptr %fqdir, align 4
  %timeout = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6000, ptr %timeout, align 8
  %cmp.i.not.i = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not.i, label %if.end.if.end4.i_crit_edge, label %if.then.i

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end
  %call1.i = tail call ptr @kmemdup(ptr noundef nonnull @ip6_frags_ns_ctl_table, i32 noundef 144, i32 noundef 3264) #14
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then.i.if.then9_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then.i.if.then9_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.end.if.end4.i_crit_edge
  %table.0.i = phi ptr [ @ip6_frags_ns_ctl_table, %if.end.if.end4.i_crit_edge ], [ %call1.i, %if.then.i.if.end4.i_crit_edge ]
  %7 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fqdir, align 4
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %table.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %data.i, align 4
  %10 = load ptr, ptr %fqdir, align 4
  %low_thresh.i = getelementptr inbounds %struct.fqdir, ptr %10, i32 0, i32 1
  %extra1.i = getelementptr inbounds %struct.ctl_table, ptr %table.0.i, i32 0, i32 7
  %11 = ptrtoint ptr %extra1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %low_thresh.i, ptr %extra1.i, align 4
  %12 = load ptr, ptr %fqdir, align 4
  %low_thresh10.i = getelementptr inbounds %struct.fqdir, ptr %12, i32 0, i32 1
  %data12.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 1, i32 1
  %13 = ptrtoint ptr %data12.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %low_thresh10.i, ptr %data12.i, align 4
  %14 = load ptr, ptr %fqdir, align 4
  %extra2.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 1, i32 8
  %15 = ptrtoint ptr %extra2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %extra2.i, align 4
  %16 = load ptr, ptr %fqdir, align 4
  %timeout.i = getelementptr inbounds %struct.fqdir, ptr %16, i32 0, i32 2
  %data20.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 2, i32 1
  %17 = ptrtoint ptr %data20.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %timeout.i, ptr %data20.i, align 4
  %call21.i = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.15, ptr noundef nonnull %table.0.i) #14
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %err_reg.i, label %ip6_frags_ns_sysctl_register.exit

err_reg.i:                                        ; preds = %if.end4.i
  br i1 %cmp.i.not.i, label %err_reg.i.if.then9_crit_edge, label %if.then28.i

err_reg.i.if.then9_crit_edge:                     ; preds = %err_reg.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

if.then28.i:                                      ; preds = %err_reg.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %table.0.i) #14
  br label %if.then9

ip6_frags_ns_sysctl_register.exit:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %frags_hdr.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 3
  %18 = ptrtoint ptr %frags_hdr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call21.i, ptr %frags_hdr.i, align 4
  br label %cleanup

if.then9:                                         ; preds = %if.then28.i, %err_reg.i.if.then9_crit_edge, %if.then.i.if.then9_crit_edge
  %19 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fqdir, align 4
  tail call void @fqdir_exit(ptr noundef %20) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %ip6_frags_ns_sysctl_register.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.then9 ], [ 0, %ip6_frags_ns_sysctl_register.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipv6_frags_pre_exit_net(ptr nocapture noundef readonly %net) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fqdir = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 5
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fqdir, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %1, align 128
  %dead.i = getelementptr inbounds %struct.fqdir, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %dead.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store volatile i8 1, ptr %dead.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipv6_frags_exit_net(ptr noundef readonly %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frags_hdr.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 3
  %0 = ptrtoint ptr %frags_hdr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frags_hdr.i, align 4
  %ctl_table_arg.i = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctl_table_arg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_table_arg.i, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %1) #14
  %cmp.i.not.i = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not.i, label %entry.ip6_frags_ns_sysctl_unregister.exit_crit_edge, label %if.then.i

entry.ip6_frags_ns_sysctl_unregister.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip6_frags_ns_sysctl_unregister.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %3) #14
  br label %ip6_frags_ns_sysctl_unregister.exit

ip6_frags_ns_sysctl_unregister.exit:              ; preds = %if.then.i, %entry.ip6_frags_ns_sysctl_unregister.exit_crit_edge
  %fqdir = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 5
  %4 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fqdir, align 4
  tail call void @fqdir_exit(ptr noundef %5) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fqdir_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fqdir_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @ip6_frags, !1, !"ip6_frags", i1 false, i1 false}
!1 = !{!"../net/ipv6/reassembly.c", i32 68, i32 26}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ip6_frag_cache_name, !17, !"ip6_frag_cache_name", i1 false, i1 false}
!17 = !{!"../net/ipv6/reassembly.c", i32 61, i32 19}
!18 = !{ptr @ip6_rhash_params, !19, !"ip6_rhash_params", i1 false, i1 false}
!19 = !{!"../net/ipv6/reassembly.c", i32 559, i32 39}
!20 = !{ptr @frag_protocol, !21, !"frag_protocol", i1 false, i1 false}
!21 = !{!"../net/ipv6/reassembly.c", i32 407, i32 36}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/net/addrconf.h", i32 341, i32 10}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv6/reassembly.c", i32 309, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ip6_frag_reasm.descriptor, !27, !"descriptor", i1 false, i1 false}
!32 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/ipv6/reassembly.c", i32 312, i32 2}
!35 = !{ptr @ip6_frag_reasm.descriptor.12, !34, !"descriptor", i1 false, i1 false}
!36 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/ipv6/reassembly.c", i32 495, i32 50}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/ipv6/reassembly.c", i32 440, i32 15}
!41 = !{ptr @ip6_frags_ctl_table, !42, !"ip6_frags_ctl_table", i1 false, i1 false}
!42 = !{!"../net/ipv6/reassembly.c", i32 438, i32 25}
!43 = !{ptr @ip6_frags_secret_interval_unused, !44, !"ip6_frags_secret_interval_unused", i1 false, i1 false}
!44 = !{!"../net/ipv6/reassembly.c", i32 437, i32 12}
!45 = !{ptr @ip6_ctl_header, !46, !"ip6_ctl_header", i1 false, i1 false}
!46 = !{!"../net/ipv6/reassembly.c", i32 491, i32 33}
!47 = !{ptr @ip6_frags_ops, !48, !"ip6_frags_ops", i1 false, i1 false}
!48 = !{!"../net/ipv6/reassembly.c", i32 553, i32 33}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/ipv6/reassembly.c", i32 416, i32 15}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/ipv6/reassembly.c", i32 422, i32 15}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/ipv6/reassembly.c", i32 428, i32 15}
!55 = !{ptr @ip6_frags_ns_ctl_table, !56, !"ip6_frags_ns_ctl_table", i1 false, i1 false}
!56 = !{!"../net/ipv6/reassembly.c", i32 414, i32 25}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2149336414}
!68 = !{i8 0, i8 2}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 2149976382}
!71 = !{i64 2149336680}
!72 = !{i64 2148363455}
!73 = !{i64 2148277919, i64 2148277951, i64 2148277980, i64 2148278014, i64 2148278045, i64 2148278068}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i64 2149285924}
!76 = !{i64 2149868064}
!77 = !{i64 2149872996}
!78 = !{i64 2149894708}
!79 = !{i64 2149899600}
!80 = !{i64 2149976057}
!81 = !{!"auto-init"}
!82 = !{i64 2157808521}
!83 = !{i64 2148273924, i64 2148273950, i64 2148273979, i64 2148274013, i64 2148274044, i64 2148274067}
!84 = !{i64 2148755739, i64 2148755744, i64 2148755757, i64 2148755801, i64 2148755835, i64 2148755856}
