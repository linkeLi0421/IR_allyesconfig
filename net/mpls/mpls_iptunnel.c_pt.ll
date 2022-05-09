; ModuleID = '/llk/IR_all_yes/net/mpls/mpls_iptunnel.c_pt.bc'
source_filename = "../net/mpls/mpls_iptunnel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lwtunnel_encap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.mpls_iptunnel_encap = type { i8, i8, i8, i8, [0 x i32] }
%struct.sk_buff = type { %union.anon.82, %union.anon.112, %union.anon.113, [48 x i8], %union.anon.114, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.116, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.112 = type { ptr }
%union.anon.113 = type { i64 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, ptr }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.118, i32, i32, i32, i16, i16, %union.anon.120, i32, %union.anon.121, %union.anon.122, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.118 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.111, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.111 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
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
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.143, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.143 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.mpls_shim_hdr = type { i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.110, i32, %struct.list_head, ptr }
%union.anon.110 = type { %struct.in6_addr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.mpls_dev = type { i32, ptr, ptr, ptr, %struct.callback_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mpls_pcpu_stats = type { %struct.mpls_link_stats, %struct.u64_stats_sync }
%struct.mpls_link_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }

@__initcall__kmod_mpls_iptunnel__504_294_mpls_iptunnel_init6 = internal global ptr @mpls_iptunnel_init, section ".initcall6.init", align 4
@mpls_iptun_ops = internal constant { %struct.lwtunnel_encap_ops, [60 x i8] } { %struct.lwtunnel_encap_ops { ptr @mpls_build_state, ptr null, ptr null, ptr null, ptr @mpls_fill_encap_info, ptr @mpls_encap_nlsize, ptr @mpls_encap_cmp, ptr @mpls_xmit, ptr null }, [60 x i8] zeroinitializer }, align 32
@__exitcall_mpls_iptunnel_exit = internal global ptr @mpls_iptunnel_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias505 = internal constant [34 x i8] c"mpls_iptunnel.alias=rtnl-lwt-MPLS\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep506 = internal constant [37 x i8] c"mpls_iptunnel.softdep=post: mpls_gso\00", section ".modinfo", align 1
@__UNIQUE_ID_description507 = internal constant [67 x i8] c"mpls_iptunnel.description=MultiProtocol Label Switching IP Tunnels\00", section ".modinfo", align 1
@__UNIQUE_ID_file508 = internal constant [42 x i8] c"mpls_iptunnel.file=net/mpls/mpls_iptunnel\00", section ".modinfo", align 1
@__UNIQUE_ID_license509 = internal constant [29 x i8] c"mpls_iptunnel.license=GPL v2\00", section ".modinfo", align 1
@mpls_iptunnel_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@mpls_build_state.__msg = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MPLS_IPTUNNEL_DST attribute is missing\00", [57 x i8] zeroinitializer }, align 32
@mpls_xmit.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mpls_iptunnel\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpls_xmit\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/mpls/mpls_iptunnel.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: packet transmission failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@mpls_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/mpls/internal.h\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"mpls_iptun_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 281, i32 40 }
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"mpls_iptunnel_policy\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 25, i32 32 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 182, i32 3 }
@___asan_gen_.29 = private constant [28 x i8] c"../net/mpls/mpls_iptunnel.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 152, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 1011, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"../net/mpls/internal.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 189, i32 9 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 271, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_alias505, ptr @__UNIQUE_ID_description507, ptr @__UNIQUE_ID_file508, ptr @__UNIQUE_ID_license509, ptr @__UNIQUE_ID_softdep506, ptr @__exitcall_mpls_iptunnel_exit, ptr @__initcall__kmod_mpls_iptunnel__504_294_mpls_iptunnel_init6, ptr @mpls_iptunnel_exit, ptr @mpls_iptun_ops, ptr @mpls_iptunnel_policy, ptr @mpls_build_state.__msg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_iptun_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_iptunnel_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_build_state.__msg to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_iptunnel_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lwtunnel_encap_add_ops(ptr noundef nonnull @mpls_iptun_ops, i32 noundef 1) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mpls_iptunnel_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @lwtunnel_encap_del_ops(ptr noundef nonnull @mpls_iptun_ops, i32 noundef 1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_encap_del_ops(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_encap_add_ops(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_build_state(ptr nocapture noundef readnone %net, ptr noundef %nla, i32 noundef %family, ptr nocapture noundef readnone %cfg, ptr nocapture noundef writeonly %ts, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [3 x ptr], align 4
  %n_labels = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb) #10
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !44
  %1 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !44
  %3 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %n_labels) #10
  %5 = ptrtoint ptr %n_labels to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %n_labels, align 1, !annotation !44
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %6 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @mpls_iptunnel_policy, i32 noundef 0, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %if.end
  call void @do_trace_netlink_extack(ptr noundef nonnull @mpls_build_state.__msg) #10
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mpls_build_state.__msg, ptr %extack, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = call i32 @nla_get_labels(ptr noundef nonnull %9, i8 noundef zeroext 30, ptr noundef nonnull %n_labels, ptr noundef null, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %n_labels to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %n_labels, align 1
  %conv = zext i8 %12 to i32
  %13 = shl nuw nsw i32 %conv, 2
  %spec.select.i64 = add nuw nsw i32 %13, 4
  %call12 = call ptr @lwtunnel_state_alloc(i32 noundef %spec.select.i64) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %call12, i32 0, i32 7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %n_labels to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %n_labels, align 1
  %label = getelementptr inbounds %struct.lwtunnel_state, ptr %call12, i32 1, i32 2
  %call19 = call i32 @nla_get_labels(ptr noundef %15, i8 noundef zeroext %17, ptr noundef %data.i, ptr noundef %label, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %errout

if.end22:                                         ; preds = %if.end15
  %ttl_propagate = getelementptr inbounds %struct.mpls_iptunnel_encap, ptr %data.i, i32 0, i32 1
  %18 = ptrtoint ptr %ttl_propagate to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ttl_propagate, align 1
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %tobool24.not = icmp eq ptr %20, null
  br i1 %tobool24.not, label %if.end22.if.end33_crit_edge, label %if.then25

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i63 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i63 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i.i63, align 1
  %default_ttl = getelementptr inbounds %struct.lwtunnel_state, ptr %call12, i32 1, i32 1
  %23 = ptrtoint ptr %default_ttl to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %default_ttl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool30.not = icmp eq i8 %22, 0
  %conv31 = select i1 %tobool30.not, i8 1, i8 2
  %24 = ptrtoint ptr %ttl_propagate to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv31, ptr %ttl_propagate, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then25, %if.end22.if.end33_crit_edge
  %25 = ptrtoint ptr %call12 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %call12, align 4
  %flags = getelementptr inbounds %struct.lwtunnel_state, ptr %call12, i32 0, i32 1
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags, align 2
  %28 = or i16 %27, 4
  store i16 %28, ptr %flags, align 2
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data.i, align 4
  %conv.i = zext i8 %30 to i16
  %mul.i = shl nuw nsw i16 %conv.i, 2
  %headroom = getelementptr inbounds %struct.lwtunnel_state, ptr %call12, i32 0, i32 2
  %31 = ptrtoint ptr %headroom to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %mul.i, ptr %headroom, align 4
  %32 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call12, ptr %ts, align 4
  br label %cleanup

errout:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call12) #10
  %33 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %ts, align 4
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end33, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %errout ], [ 0, %if.end33 ], [ %call2.i, %entry.cleanup_crit_edge ], [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %n_labels) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_fill_encap_info(ptr noundef %skb, ptr noundef %lwtstate) #2 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 0, i32 7
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 4
  %label = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 1, i32 2
  %call1 = tail call i32 @nla_put_labels(ptr noundef %skb, i32 noundef 1, i8 noundef zeroext %1, ptr noundef %label) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %ttl_propagate = getelementptr inbounds %struct.mpls_iptunnel_encap, ptr %data.i, i32 0, i32 1
  %2 = ptrtoint ptr %ttl_propagate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ttl_propagate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %default_ttl = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 1, i32 1
  %4 = ptrtoint ptr %default_ttl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %default_ttl, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #10
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nla_put_failure:                                  ; preds = %land.lhs.true.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mpls_encap_nlsize(ptr nocapture noundef readonly %lwtstate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 0, i32 7
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 4
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %sub.i = add nuw nsw i32 %mul, 7
  %and.i = and i32 %sub.i, 2044
  %ttl_propagate = getelementptr inbounds %struct.mpls_iptunnel_encap, ptr %data.i, i32 0, i32 1
  %2 = ptrtoint ptr %ttl_propagate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ttl_propagate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  %add = add nuw nsw i32 %and.i, 8
  %spec.select = select i1 %cmp.not, i32 %and.i, i32 %add
  ret i32 %spec.select
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_encap_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 0, i32 7
  %data.i38 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 0, i32 7
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 4
  %2 = ptrtoint ptr %data.i38 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data.i38, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp eq i8 %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ttl_propagate = getelementptr inbounds %struct.mpls_iptunnel_encap, ptr %data.i, i32 0, i32 1
  %4 = ptrtoint ptr %ttl_propagate to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ttl_propagate, align 1
  %ttl_propagate6 = getelementptr inbounds %struct.mpls_iptunnel_encap, ptr %data.i38, i32 0, i32 1
  %6 = ptrtoint ptr %ttl_propagate6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ttl_propagate6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp8.not = icmp eq i8 %5, %7
  br i1 %cmp8.not, label %lor.lhs.false10, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %default_ttl = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 1, i32 1
  %8 = ptrtoint ptr %default_ttl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %default_ttl, align 2
  %default_ttl12 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 1, i32 1
  %10 = ptrtoint ptr %default_ttl12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %default_ttl12, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp14.not = icmp eq i8 %9, %11
  br i1 %cmp14.not, label %for.cond.preheader, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false10
  %conv17 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1839.not = icmp eq i8 %1, 0
  br i1 %cmp1839.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %l.040, 1
  %exitcond.not = icmp eq i32 %inc, %conv17
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %l.040 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mpls_iptunnel_encap, ptr %data.i, i32 0, i32 4, i32 %l.040
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %arrayidx21 = getelementptr %struct.mpls_iptunnel_encap, ptr %data.i38, i32 0, i32 4, i32 %l.040
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp22.not = icmp eq i32 %13, %15
  br i1 %cmp22.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %lor.lhs.false10.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_xmit(ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !45

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
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
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i223 = icmp eq ptr %11, null
  br i1 %tobool.not.i223, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %11(ptr noundef %skb) #10
  %12 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %destructor.i, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %13, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %skb_dst.exit
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool3.not.i224 = icmp eq ptr %17, null
  br i1 %tobool3.not.i224, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !46

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #10, !srcloc !47
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %call2 = tail call zeroext i1 @mpls_output_possible(ptr noundef %7) #10
  br i1 %call2, label %lor.lhs.false, label %skb_orphan.exit.drop_crit_edge

skb_orphan.exit.drop_crit_edge:                   ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

lor.lhs.false:                                    ; preds = %skb_orphan.exit
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 13
  %18 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lwtstate, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %lor.lhs.false.drop_crit_edge, label %lor.lhs.false3

lor.lhs.false.drop_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %20 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %22 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false3.if.end_crit_edge, label %land.lhs.true.i225

lor.lhs.false3.if.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i225:                               ; preds = %lor.lhs.false3
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.not.i = icmp eq i16 %25, 0
  br i1 %cmp.not.i, label %land.lhs.true.i225.if.end_crit_edge, label %land.lhs.true3.i

land.lhs.true.i225.if.end_crit_edge:              ; preds = %land.lhs.true.i225
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i225
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 8
  %26 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gso_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp4.i = icmp eq i32 %27, 0
  br i1 %cmp4.i, label %skb_warn_if_lro.exit, label %land.lhs.true3.i.if.end_crit_edge, !prof !45

land.lhs.true3.i.if.end_crit_edge:                ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

skb_warn_if_lro.exit:                             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__skb_warn_lro_forwarding(ptr noundef %skb) #10
  br label %drop

if.end:                                           ; preds = %land.lhs.true3.i.if.end_crit_edge, %land.lhs.true.i225.if.end_crit_edge, %lor.lhs.false3.if.end_crit_edge
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %28 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %29 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %29)
  %cmp.i = icmp eq i16 %29, 1024
  br i1 %cmp.i, label %if.then.i228, label %if.end.skb_forward_csum.exit_crit_edge

if.end.skb_forward_csum.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_forward_csum.exit

if.then.i228:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear4.i = and i16 %bf.load.i, -1537
  %30 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %bf.clear4.i, ptr %ip_summed.i, align 8
  br label %skb_forward_csum.exit

skb_forward_csum.exit:                            ; preds = %if.then.i228, %if.end.skb_forward_csum.exit_crit_edge
  %31 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lwtstate, align 4
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %32, i32 0, i32 7
  %ops = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 1
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 128
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i16 %36, label %skb_forward_csum.exit.drop_crit_edge [
    i16 2, label %if.then8
    i16 10, label %if.then34
  ]

skb_forward_csum.exit.drop_crit_edge:             ; preds = %skb_forward_csum.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.then8:                                         ; preds = %skb_forward_csum.exit
  %ttl_propagate = getelementptr inbounds %struct.mpls_iptunnel_encap, ptr %data.i, i32 0, i32 1
  %38 = ptrtoint ptr %ttl_propagate to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ttl_propagate, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %39, label %if.then8.if.else22_crit_edge [
    i8 2, label %if.then12
    i8 0, label %land.lhs.true
  ]

if.then8.if.else22_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else22

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %default_ttl = getelementptr inbounds %struct.lwtunnel_state, ptr %32, i32 1, i32 1
  %41 = ptrtoint ptr %default_ttl to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %default_ttl, align 2
  %conv13 = zext i8 %42 to i32
  br label %if.end61

land.lhs.true:                                    ; preds = %if.then8
  %mpls = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 49
  %43 = ptrtoint ptr %mpls to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mpls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool18.not = icmp eq i32 %44, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.else22_crit_edge

land.lhs.true.if.else22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else22

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %default_ttl21 = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 49, i32 1
  %45 = ptrtoint ptr %default_ttl21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %default_ttl21, align 4
  br label %if.end61

if.else22:                                        ; preds = %land.lhs.true.if.else22_crit_edge, %if.then8.if.else22_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %47 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %49 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %50 to i32
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 %conv.i.i
  %ttl24 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %51 = ptrtoint ptr %ttl24 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ttl24, align 4
  %conv25 = zext i8 %52 to i32
  br label %if.end61

if.then34:                                        ; preds = %skb_forward_csum.exit
  %ttl_propagate35 = getelementptr inbounds %struct.mpls_iptunnel_encap, ptr %data.i, i32 0, i32 1
  %53 = ptrtoint ptr %ttl_propagate35 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ttl_propagate35, align 1
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %54, label %if.then34.if.else54_crit_edge [
    i8 2, label %if.then39
    i8 0, label %land.lhs.true47
  ]

if.then34.if.else54_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else54

if.then39:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  %default_ttl40 = getelementptr inbounds %struct.lwtunnel_state, ptr %32, i32 1, i32 1
  %56 = ptrtoint ptr %default_ttl40 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %default_ttl40, align 2
  %conv41 = zext i8 %57 to i32
  br label %if.end61

land.lhs.true47:                                  ; preds = %if.then34
  %mpls48 = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 49
  %58 = ptrtoint ptr %mpls48 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mpls48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool50.not = icmp eq i32 %59, 0
  br i1 %tobool50.not, label %if.then51, label %land.lhs.true47.if.else54_crit_edge

land.lhs.true47.if.else54_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else54

if.then51:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  %default_ttl53 = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 49, i32 1
  %60 = ptrtoint ptr %default_ttl53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %default_ttl53, align 4
  br label %if.end61

if.else54:                                        ; preds = %land.lhs.true47.if.else54_crit_edge, %if.then34.if.else54_crit_edge
  %head.i.i229 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %62 = ptrtoint ptr %head.i.i229 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i.i229, align 8
  %network_header.i.i230 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %64 = ptrtoint ptr %network_header.i.i230 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %network_header.i.i230, align 4
  %conv.i.i231 = zext i16 %65 to i32
  %add.ptr.i.i232 = getelementptr i8, ptr %63, i32 %conv.i.i231
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i232, i32 0, i32 4
  %66 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %hop_limit, align 1
  %conv56 = zext i8 %67 to i32
  br label %if.end61

if.end61:                                         ; preds = %if.else54, %if.then51, %if.then39, %if.else22, %if.then19, %if.then12
  %rt.0 = phi ptr [ %5, %if.then19 ], [ %5, %if.else22 ], [ %5, %if.then12 ], [ null, %if.then51 ], [ null, %if.else54 ], [ null, %if.then39 ]
  %rt6.0 = phi ptr [ null, %if.then19 ], [ null, %if.else22 ], [ null, %if.then12 ], [ %5, %if.then51 ], [ %5, %if.else54 ], [ %5, %if.then39 ]
  %ttl.2 = phi i32 [ %46, %if.then19 ], [ %conv25, %if.else22 ], [ %conv13, %if.then12 ], [ %61, %if.then51 ], [ %conv56, %if.else54 ], [ %conv41, %if.then39 ]
  %68 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %data.i, align 4
  %conv.i = zext i8 %69 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %call63 = tail call i32 @mpls_dev_mtu(ptr noundef %7) #10
  %sub = sub i32 %call63, %mul.i
  %call64 = tail call zeroext i1 @mpls_pkt_too_big(ptr noundef %skb, i32 noundef %sub) #10
  br i1 %call64, label %if.end61.drop_crit_edge, label %if.end66

if.end61.drop_crit_edge:                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end66:                                         ; preds = %if.end61
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 19
  %70 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %hard_header_len, align 2
  %conv67 = zext i16 %71 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 21
  %72 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %needed_headroom, align 8
  %conv68 = zext i16 %73 to i32
  %add = add nuw nsw i32 %conv68, %conv67
  %and = and i32 %add, 131056
  %add69 = add nuw nsw i32 %and, 16
  %header_ops = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 49
  %74 = ptrtoint ptr %header_ops to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %header_ops, align 4
  %tobool70.not = icmp eq ptr %75, null
  %spec.store.select = select i1 %tobool70.not, i32 0, i32 %add69
  %add73 = add nuw nsw i32 %spec.store.select, %mul.i
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %76 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end66.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

if.end66.skb_cloned.exit.i_crit_edge:             ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %end.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %78, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #10
  %79 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %80, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %if.end66.skb_cloned.exit.i_crit_edge
  %81 = phi i1 [ true, %if.end66.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %82 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %84 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %83 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add73)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add73
  %or.cond.i.i = and i1 %81, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end77_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end77_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %86 = tail call i32 @llvm.usub.sat.i32(i32 %add73, i32 %sub.ptr.sub.i.i.i) #10
  %add.i.i = add nuw nsw i32 %86, 127
  %and.i4.i = and i32 %add.i.i, -128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool75.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool75.not, label %skb_cow.exit.if.end77_crit_edge, label %skb_cow.exit.drop_crit_edge

skb_cow.exit.drop_crit_edge:                      ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

skb_cow.exit.if.end77_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.end77:                                         ; preds = %skb_cow.exit.if.end77_crit_edge, %skb_cloned.exit.i.if.end77_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %87 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %protocol, align 8
  %89 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %88, ptr %89, align 8
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %91 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %bf.load.i233 = load i32, ptr %inner_protocol_type.i, align 2
  %bf.clear.i = and i32 %bf.load.i233, -4194305
  store i32 %bf.clear.i, ptr %inner_protocol_type.i, align 2
  %92 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i.i.i, align 4
  %94 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %95 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i235 = trunc i32 %sub.ptr.sub.i to i16
  %inner_network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %96 = ptrtoint ptr %inner_network_header.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i235, ptr %inner_network_header.i, align 4
  %call78 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %mul.i) #10
  %97 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i.i.i, align 4
  %99 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i238 = ptrtoint ptr %98 to i32
  %sub.ptr.rhs.cast.i239 = ptrtoint ptr %100 to i32
  %sub.ptr.sub.i240 = sub i32 %sub.ptr.lhs.cast.i238, %sub.ptr.rhs.cast.i239
  %conv.i241 = trunc i32 %sub.ptr.sub.i240 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %101 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.i241, ptr %network_header.i, align 4
  %102 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %7, ptr %102, align 8
  %104 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 -30649, ptr %protocol, align 8
  %conv.i.i244 = and i32 %sub.ptr.sub.i240, 65535
  %add.ptr.i.i245 = getelementptr i8, ptr %100, i32 %conv.i.i244
  %105 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp83265.not = icmp eq i8 %106, 0
  br i1 %cmp83265.not, label %if.end77.for.end_crit_edge, label %for.body.preheader

if.end77.for.end_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %if.end77
  %conv81 = zext i8 %106 to i32
  %i.0264 = add nsw i32 %conv81, -1
  %arrayidx.peel = getelementptr %struct.mpls_shim_hdr, ptr %add.ptr.i.i245, i32 %i.0264
  %arrayidx85.peel = getelementptr %struct.mpls_iptunnel_encap, ptr %data.i, i32 0, i32 4, i32 %i.0264
  %107 = ptrtoint ptr %arrayidx85.peel to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx85.peel, align 4
  %shl.i.peel = shl i32 %108, 12
  %or2.i.peel = or i32 %shl.i.peel, %ttl.2
  %or4.i.peel = or i32 %or2.i.peel, 256
  %109 = ptrtoint ptr %arrayidx.peel to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or4.i.peel, ptr %arrayidx.peel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %106)
  %cmp83.peel.not = icmp eq i8 %106, 1
  br i1 %cmp83.peel.not, label %for.body.preheader.for.end_crit_edge, label %for.body.peel.next

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.peel.next:                               ; preds = %for.body.preheader
  %i.0.peel = add nsw i32 %conv81, -2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.peel.next
  %i.0267 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.0.peel, %for.body.peel.next ]
  %arrayidx = getelementptr %struct.mpls_shim_hdr, ptr %add.ptr.i.i245, i32 %i.0267
  %arrayidx85 = getelementptr %struct.mpls_iptunnel_encap, ptr %data.i, i32 0, i32 4, i32 %i.0267
  %110 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx85, align 4
  %shl.i = shl i32 %111, 12
  %or4.i = or i32 %shl.i, %ttl.2
  %112 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %or4.i, ptr %arrayidx, align 4
  %i.0 = add nsw i32 %i.0267, -1
  %cmp83 = icmp sgt i32 %i.0267, 0
  br i1 %cmp83, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !llvm.loop !48

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.preheader.for.end_crit_edge, %if.end77.for.end_crit_edge
  tail call void @mpls_stats_inc_outucastpkts(ptr noundef %7, ptr noundef %skb) #10
  %tobool88.not = icmp eq ptr %rt.0, null
  br i1 %tobool88.not, label %if.else98, label %if.then89

if.then89:                                        ; preds = %for.end
  %rt_gw_family = getelementptr inbounds %struct.rtable, ptr %rt.0, i32 0, i32 7
  %113 = ptrtoint ptr %rt_gw_family to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %rt_gw_family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %114)
  %cmp91 = icmp eq i8 %114, 10
  %115 = getelementptr inbounds %struct.rtable, ptr %rt.0, i32 0, i32 8
  br i1 %cmp91, label %if.then93, label %if.else95

if.then93:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  %call94 = tail call i32 @neigh_xmit(i32 noundef 1, ptr noundef %7, ptr noundef %115, ptr noundef %skb) #10
  br label %if.end111

if.else95:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  %call96 = tail call i32 @neigh_xmit(i32 noundef 0, ptr noundef %7, ptr noundef %115, ptr noundef %skb) #10
  br label %if.end111

if.else98:                                        ; preds = %for.end
  %tobool99.not = icmp eq ptr %rt6.0, null
  br i1 %tobool99.not, label %if.else98.cleanup_crit_edge, label %if.then100

if.else98.cleanup_crit_edge:                      ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then100:                                       ; preds = %if.else98
  %rt6i_gateway = getelementptr inbounds %struct.rt6_info, ptr %rt6.0, i32 0, i32 5
  %116 = ptrtoint ptr %rt6i_gateway to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rt6i_gateway, align 4
  %arrayidx2.i = getelementptr %struct.rt6_info, ptr %rt6.0, i32 0, i32 5, i32 0, i32 0, i32 1
  %118 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %119, %117
  %arrayidx4.i = getelementptr %struct.rt6_info, ptr %rt6.0, i32 0, i32 5, i32 0, i32 0, i32 2
  %120 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %121, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i246 = icmp eq i32 %or5.i, 0
  br i1 %cmp.i246, label %if.then102, label %if.else106

if.then102:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx104 = getelementptr %struct.rt6_info, ptr %rt6.0, i32 0, i32 5, i32 0, i32 0, i32 3
  %call105 = tail call i32 @neigh_xmit(i32 noundef 0, ptr noundef %7, ptr noundef %arrayidx104, ptr noundef %skb) #10
  br label %if.end111

if.else106:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  %call108 = tail call i32 @neigh_xmit(i32 noundef 1, ptr noundef %7, ptr noundef %rt6i_gateway, ptr noundef %skb) #10
  br label %if.end111

if.end111:                                        ; preds = %if.else106, %if.then102, %if.else95, %if.then93
  %err.0 = phi i32 [ %call94, %if.then93 ], [ %call96, %if.else95 ], [ %call105, %if.then102 ], [ %call108, %if.else106 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool112.not = icmp eq i32 %err.0, 0
  br i1 %tobool112.not, label %if.end111.cleanup_crit_edge, label %do.body

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mpls_xmit.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mpls_xmit, %land.lhs.true119)) #10
          to label %cleanup [label %land.lhs.true119], !srcloc !50

land.lhs.true119:                                 ; preds = %do.body
  %call120 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %land.lhs.true119.cleanup_crit_edge, label %if.then122

land.lhs.true119.cleanup_crit_edge:               ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then122:                                       ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mpls_xmit.descriptor, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %err.0) #10
  br label %cleanup

drop:                                             ; preds = %skb_cow.exit.drop_crit_edge, %if.end61.drop_crit_edge, %skb_forward_csum.exit.drop_crit_edge, %skb_warn_if_lro.exit, %lor.lhs.false.drop_crit_edge, %skb_orphan.exit.drop_crit_edge
  %tobool125.not = icmp eq ptr %7, null
  br i1 %tobool125.not, label %drop.if.end142_crit_edge, label %cond.true

drop.if.end142_crit_edge:                         ; preds = %drop
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

cond.true:                                        ; preds = %drop
  %mpls_ptr.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 84
  %122 = ptrtoint ptr %mpls_ptr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile ptr, ptr %mpls_ptr.i, align 8
  %call.i247 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i247, label %cond.true.cond.end_crit_edge, label %lor.lhs.false.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %cond.true
  %call2.i248 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i248)
  %tobool.not.i249 = icmp eq i32 %call2.i248, 0
  br i1 %tobool.not.i249, label %land.lhs.true.i250, label %lor.lhs.false.i.cond.end_crit_edge

lor.lhs.false.i.cond.end_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

land.lhs.true.i250:                               ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i250.cond.end_crit_edge, label %land.lhs.true5.i

land.lhs.true.i250.cond.end_crit_edge:            ; preds = %land.lhs.true.i250
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i250
  %.b10.i = load i1, ptr @mpls_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.cond.end_crit_edge, label %if.then.i251

land.lhs.true5.i.cond.end_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.then.i251:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mpls_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 189, ptr noundef nonnull @.str.6) #10
  br label %cond.end

cond.end:                                         ; preds = %if.then.i251, %land.lhs.true5.i.cond.end_crit_edge, %land.lhs.true.i250.cond.end_crit_edge, %lor.lhs.false.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge
  %tobool127.not = icmp eq ptr %123, null
  br i1 %tobool127.not, label %cond.end.if.end142_crit_edge, label %do.body129

cond.end.if.end142_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

do.body129:                                       ; preds = %cond.end
  %stats = getelementptr inbounds %struct.mpls_dev, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %stats, align 4
  %126 = ptrtoint ptr %125 to i32
  %127 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i252 = and i32 %127, -16384
  %128 = inttoptr i32 %and.i252 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cpu, align 4
  %arrayidx136 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %130
  %131 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx136, align 4
  %add137 = add i32 %132, %126
  %133 = inttoptr i32 %add137 to ptr
  tail call fastcc void @local_bh_disable()
  %syncp = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %133, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %134 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not.i.i253 = icmp eq i32 %134, 0
  br i1 %tobool.not.i.i253, label %do.body129.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

do.body129.u64_stats_update_begin.exit_crit_edge: ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %do.body129
  %135 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i.i.i.i = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %138, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !51
  %139 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i.i = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %142
  %143 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i254 = add i32 %144, ptrtoint (ptr @lockdep_recursion to i32)
  %145 = inttoptr i32 %add.i.i254 to ptr
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %145, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  %148 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i.i7.i.i = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %151, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool20.not.i.i = icmp eq i32 %147, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i255, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs.i.i255:                                  ; preds = %land.lhs.true.i.i
  %152 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i.i.i = and i32 %152, -16384
  %153 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp.i.i = icmp eq i32 %155, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i255.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i255.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i255
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i255
  %156 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i.i9.i.i = and i32 %156, -16384
  %157 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %159, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  %160 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %161
  %162 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %163, ptrtoint (ptr @hardirqs_enabled to i32)
  %164 = inttoptr i32 %add47.i.i to ptr
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %164, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !54
  %167 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i.i12.i.i = and i32 %167, -16384
  %168 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %170, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool54.not.i.i = icmp eq i32 %166, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !46

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i255.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %do.body129.u64_stats_update_begin.exit_crit_edge
  %171 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %172, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  %dep_map.i.i.i = getelementptr inbounds %struct.mpls_pcpu_stats, ptr %133, i32 0, i32 1, i32 0, i32 1
  %173 = tail call ptr @llvm.returnaddress(i32 0) #10
  %174 = ptrtoint ptr %173 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %174) #10
  %tx_errors = getelementptr inbounds %struct.mpls_link_stats, ptr %133, i32 0, i32 5
  %175 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %tx_errors, align 8
  %inc = add i64 %176, 1
  store i64 %inc, ptr %tx_errors, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %174) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %177 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %178, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %if.end142

if.end142:                                        ; preds = %u64_stats_update_begin.exit, %cond.end.if.end142_crit_edge, %drop.if.end142_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end142, %if.then122, %land.lhs.true119.cleanup_crit_edge, %do.body, %if.end111.cleanup_crit_edge, %if.else98.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end142 ], [ 0, %land.lhs.true119.cleanup_crit_edge ], [ 0, %if.then122 ], [ 0, %if.end111.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %if.else98.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_get_labels(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lwtunnel_state_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_labels(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mpls_output_possible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpls_dev_mtu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mpls_pkt_too_big(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpls_stats_inc_outucastpkts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_xmit(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_warn_lro_forwarding(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_mpls_iptunnel__504_294_mpls_iptunnel_init6, !1, !"__initcall__kmod_mpls_iptunnel__504_294_mpls_iptunnel_init6", i1 false, i1 false}
!1 = !{!"../net/mpls/mpls_iptunnel.c", i32 294, i32 1}
!2 = !{ptr @__exitcall_mpls_iptunnel_exit, !3, !"__exitcall_mpls_iptunnel_exit", i1 false, i1 false}
!3 = !{!"../net/mpls/mpls_iptunnel.c", i32 300, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias505, !5, !"__UNIQUE_ID_alias505", i1 false, i1 false}
!5 = !{!"../net/mpls/mpls_iptunnel.c", i32 302, i32 1}
!6 = !{ptr @__UNIQUE_ID_softdep506, !7, !"__UNIQUE_ID_softdep506", i1 false, i1 false}
!7 = !{!"../net/mpls/mpls_iptunnel.c", i32 303, i32 1}
!8 = !{ptr @__UNIQUE_ID_description507, !9, !"__UNIQUE_ID_description507", i1 false, i1 false}
!9 = !{!"../net/mpls/mpls_iptunnel.c", i32 304, i32 1}
!10 = !{ptr @__UNIQUE_ID_file508, !11, !"__UNIQUE_ID_file508", i1 false, i1 false}
!11 = !{!"../net/mpls/mpls_iptunnel.c", i32 305, i32 1}
!12 = !{ptr @__UNIQUE_ID_license509, !11, !"__UNIQUE_ID_license509", i1 false, i1 false}
!13 = !{ptr @mpls_iptun_ops, !14, !"mpls_iptun_ops", i1 false, i1 false}
!14 = !{!"../net/mpls/mpls_iptunnel.c", i32 281, i32 40}
!15 = !{ptr @mpls_build_state.__msg, !16, !"__msg", i1 false, i1 false}
!16 = !{!"../net/mpls/mpls_iptunnel.c", i32 182, i32 3}
!17 = !{ptr @mpls_iptunnel_policy, !18, !"mpls_iptunnel_policy", i1 false, i1 false}
!18 = !{!"../net/mpls/mpls_iptunnel.c", i32 25, i32 32}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/mpls/mpls_iptunnel.c", i32 152, i32 3}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mpls_xmit.descriptor, !20, !"descriptor", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/mpls/internal.h", i32 189, i32 9}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2154585579, i64 2154586067, i64 2154585616, i64 2154585672, i64 2154585706, i64 2154585730, i64 2154585771, i64 2154585792, i64 2154585820, i64 2154585854}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.peeled.count", i32 1}
!50 = !{i64 2148836545, i64 2148836550, i64 2148836563, i64 2148836607, i64 2148836641, i64 2148836662}
!51 = !{i64 2150159988}
!52 = !{i64 2150164922}
!53 = !{i64 2150186640}
!54 = !{i64 2150191534}
!55 = !{i64 2150268061}
!56 = !{i64 2150268386}
