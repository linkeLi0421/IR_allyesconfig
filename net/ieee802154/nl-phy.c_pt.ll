; ModuleID = '/llk/IR_all_yes/net/ieee802154/nl-phy.c_pt.bc'
source_filename = "../net/ieee802154/nl-phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.wpan_phy = type { ptr, i32, i8, i8, %struct.wpan_phy_supported, i32, %struct.wpan_phy_cca, i64, i32, i8, i16, i16, %struct.device, %struct.possible_net_t, [4 x i8], [0 x i8] }
%struct.wpan_phy_supported = type { [32 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.wpan_phy_cca = type { i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.47, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.52, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.52 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.100, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.100 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, i32, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.dump_phy_data = type { ptr, ptr, i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.88 }
%union.anon.88 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.cfg802154_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.99, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.99 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ieee802154_list_phy.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ieee802154\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ieee802154_list_phy\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/ieee802154/nl-phy.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@ieee802154_dump_phy.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ieee802154_dump_phy\00", [44 x i8] zeroinitializer }, align 32
@ieee802154_add_iface.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ieee802154_add_iface\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wpan%d\00", [25 x i8] zeroinitializer }, align 32
@ieee802154_del_iface.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.3, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ieee802154_del_iface\00", [43 x i8] zeroinitializer }, align 32
@ieee802154_nl_fill_phy.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.3, i8 0, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ieee802154_nl_fill_phy\00", [41 x i8] zeroinitializer }, align 32
@nl802154_family = external dso_local global %struct.genl_family, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@ieee802154_dump_phy_iter.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.3, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ieee802154_dump_phy_iter\00", [39 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 81, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 152, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 172, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 188, i32 13 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 274, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 35, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 991, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [27 x i8] c"../net/ieee802154/nl-phy.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 124, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_list_phy(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_list_phy.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_list_phy, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !35

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_list_phy.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 31
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %conv.i = zext i16 %5 to i32
  %sub = add nsw i32 %conv.i, -5
  %arrayidx12 = getelementptr i8, ptr %add.ptr.i, i32 %sub
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %if.end15, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %call16 = tail call ptr @wpan_phy_find(ptr noundef %add.ptr.i) #8
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool21.not = icmp eq ptr %call.i.i, null
  br i1 %tobool21.not, label %if.end19.out_dev_crit_edge, label %if.end23

if.end19.out_dev_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_dev

if.end23:                                         ; preds = %if.end19
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %info, align 4
  %call24 = tail call fastcc i32 @ieee802154_nl_fill_phy(ptr noundef nonnull %call.i.i, i32 noundef %9, i32 noundef 0, ptr noundef nonnull %call16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %out_free, label %if.end28

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %call16, i32 0, i32 12
  tail call void @put_device(ptr noundef %dev.i) #8
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %10 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_net.i.i, align 4
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %12 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 21
  %14 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %15, ptr noundef nonnull %call.i.i, i32 noundef %13, i32 noundef 64) #8
  %16 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  br label %cleanup

out_free:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %out_dev

out_dev:                                          ; preds = %out_free, %if.end19.out_dev_crit_edge
  %rc.0 = phi i32 [ %call24, %out_free ], [ -105, %if.end19.out_dev_crit_edge ]
  %dev.i46 = getelementptr inbounds %struct.wpan_phy, ptr %call16, i32 0, i32 12
  tail call void @put_device(ptr noundef %dev.i46) #8
  br label %cleanup

cleanup:                                          ; preds = %out_dev, %if.end28, %if.end15.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_dev ], [ %16, %if.end28 ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -19, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wpan_phy_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee802154_nl_fill_phy(ptr noundef %msg, i32 noundef %seq, i32 noundef %flags, ptr nocapture noundef readonly %phy) unnamed_addr #0 align 64 {
entry:
  %tmp.i2 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_nl_fill_phy.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_nl_fill_phy, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !35

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_nl_fill_phy.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call ptr @genlmsg_put(ptr noundef %msg, i32 noundef 0, i32 noundef %seq, ptr noundef nonnull @nl802154_family, i32 noundef %flags, i8 noundef zeroext 32) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.out_crit_edge, label %if.end10

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end10:                                         ; preds = %if.end6
  tail call void @rtnl_lock() #8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %phy, i32 0, i32 12, i32 3
  %1 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end10.wpan_phy_name.exit_crit_edge

if.end10.wpan_phy_name.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %phy, i32 0, i32 12
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end10.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %4, %if.end.i.i ], [ %2, %if.end10.wpan_phy_name.exit_crit_edge ]
  %call.i = tail call i32 @strlen(ptr noundef %retval.0.i.i) #12
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 31, i32 noundef %add.i, ptr noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool13.not = icmp eq i32 %call1.i, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %wpan_phy_name.exit.if.then.i_crit_edge

wpan_phy_name.exit.if.then.i_crit_edge:           ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false:                                    ; preds = %wpan_phy_name.exit
  %current_page = getelementptr inbounds %struct.wpan_phy, ptr %phy, i32 0, i32 3
  %5 = ptrtoint ptr %current_page to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %current_page, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %tmp.i, align 1
  %call.i1 = call i32 @nla_put(ptr noundef %msg, i32 noundef 29, i32 noundef 1, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool15.not = icmp eq i32 %call.i1, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %lor.lhs.false.if.then.i_crit_edge

lor.lhs.false.if.then.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %current_channel = getelementptr inbounds %struct.wpan_phy, ptr %phy, i32 0, i32 2
  %8 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %current_channel, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i2) #8
  %10 = ptrtoint ptr %tmp.i2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %tmp.i2, align 1
  %call.i3 = call i32 @nla_put(ptr noundef %msg, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i2) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool18.not = icmp eq i32 %call.i3, 0
  br i1 %tobool18.not, label %for.cond.preheader, label %lor.lhs.false16.if.then.i_crit_edge

lor.lhs.false16.if.then.i_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.cond.preheader:                               ; preds = %lor.lhs.false16
  %supported = getelementptr inbounds %struct.wpan_phy, ptr %phy, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %pages.08 = phi i32 [ 0, %for.cond.preheader ], [ %pages.1, %for.inc.for.body_crit_edge ]
  %i.06 = phi i32 [ 0, %for.cond.preheader ], [ %inc28, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i32], ptr %supported, i32 0, i32 %i.06
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  br i1 %tobool21.not, label %for.body.for.inc_crit_edge, label %if.then22

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %i.06, 27
  %or = or i32 %12, %shl
  %inc = add i32 %pages.08, 1
  %arrayidx26 = getelementptr i32, ptr %call7.i.i.i, i32 %pages.08
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %arrayidx26, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %for.body.for.inc_crit_edge
  %pages.1 = phi i32 [ %inc, %if.then22 ], [ %pages.08, %for.body.for.inc_crit_edge ]
  %inc28 = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc28, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages.1)
  %tobool29.not = icmp eq i32 %pages.1, 0
  br i1 %tobool29.not, label %for.end.if.end33_crit_edge, label %land.lhs.true

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true:                                    ; preds = %for.end
  %mul = shl i32 %pages.1, 2
  %call30 = call i32 @nla_put(ptr noundef %msg, i32 noundef 30, i32 noundef %mul, ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.if.end33_crit_edge, label %land.lhs.true.if.then.i_crit_edge

land.lhs.true.if.then.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %for.end.if.end33_crit_edge
  call void @rtnl_unlock() #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  %add.ptr1.i = getelementptr i8, ptr %call7, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.if.then.i_crit_edge, %lor.lhs.false16.if.then.i_crit_edge, %lor.lhs.false.if.then.i_crit_edge, %wpan_phy_name.exit.if.then.i_crit_edge
  call void @rtnl_unlock() #8
  %add.ptr1.i4 = getelementptr i8, ptr %call7, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i4, null
  br i1 %tobool.not.i.i.i, label %if.then.i.out_crit_edge, label %if.then.i.i.i

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %18, %add.ptr1.i4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !36

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i4 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i) #8
  br label %out

out:                                              ; preds = %if.end.i.i.i, %if.then.i.out_crit_edge, %if.end6.out_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end33, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %out ], [ 0, %if.end33 ], [ -90, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_dump_phy(ptr noundef %skb, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.dump_phy_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #8
  %0 = getelementptr inbounds %struct.dump_phy_data, ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dump_phy_data, ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dump_phy_data, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %skb, ptr %data, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cb, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %1, align 4
  %6 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_dump_phy.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_dump_phy, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !35

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_dump_phy.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = call i32 @wpan_phy_for_each(ptr noundef nonnull @ieee802154_dump_phy_iter, ptr noundef nonnull %data) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %6, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #8
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wpan_phy_for_each(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee802154_dump_phy_iter(ptr nocapture noundef readonly %phy, ptr nocapture noundef %_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_dump_phy_iter.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_dump_phy_iter, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !35

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_dump_phy_iter.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %idx = getelementptr inbounds %struct.dump_phy_data, ptr %_data, i32 0, i32 2
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %idx, align 4
  %s_idx = getelementptr inbounds %struct.dump_phy_data, ptr %_data, i32 0, i32 3
  %2 = ptrtoint ptr %s_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %4 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_data, align 4
  %cb = getelementptr inbounds %struct.dump_phy_data, ptr %_data, i32 0, i32 1
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlmsg_seq, align 4
  %call8 = tail call fastcc i32 @ieee802154_nl_fill_phy(ptr noundef %5, i32 noundef %11, i32 noundef 2, ptr noundef %phy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end4.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_add_iface(ptr nocapture noundef readnone %skb, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca %struct.sockaddr, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_add_iface.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_add_iface, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !35

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_add_iface.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 31
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.cleanup98_crit_edge, label %if.end5

do.end.cleanup98_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup98

if.end5:                                          ; preds = %do.end
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %conv.i = zext i16 %5 to i32
  %sub = add nsw i32 %conv.i, -5
  %arrayidx12 = getelementptr i8, ptr %add.ptr.i, i32 %sub
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %if.end15, label %if.end5.cleanup98_crit_edge

if.end5.cleanup98_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup98

if.end15:                                         ; preds = %if.end5
  %arrayidx17 = getelementptr ptr, ptr %1, i32 1
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %if.end15.if.end33_crit_edge, label %if.then19

if.end15.if.end33_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then19:                                        ; preds = %if.end15
  %add.ptr.i143 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 2
  %conv.i144 = zext i16 %11 to i32
  %sub26 = add nsw i32 %conv.i144, -5
  %arrayidx27 = getelementptr i8, ptr %add.ptr.i143, i32 %sub26
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp29.not = icmp eq i8 %13, 0
  br i1 %cmp29.not, label %if.then19.if.end33_crit_edge, label %if.then19.cleanup98_crit_edge

if.then19.cleanup98_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup98

if.then19.if.end33_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end33:                                         ; preds = %if.then19.if.end33_crit_edge, %if.end15.if.end33_crit_edge
  %devname.0 = phi ptr [ %add.ptr.i143, %if.then19.if.end33_crit_edge ], [ @.str.6, %if.end15.if.end33_crit_edge ]
  %name_assign_type.0 = phi i8 [ 3, %if.then19.if.end33_crit_edge ], [ 1, %if.end15.if.end33_crit_edge ]
  %call34 = tail call i32 @strlen(ptr noundef %devname.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call34)
  %cmp35 = icmp ugt i32 %call34, 15
  br i1 %cmp35, label %if.end33.cleanup98_crit_edge, label %if.end38

if.end33.cleanup98_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup98

if.end38:                                         ; preds = %if.end33
  %call39 = tail call ptr @wpan_phy_find(ptr noundef %add.ptr.i) #8
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end38.cleanup98_crit_edge, label %if.end42

if.end38.cleanup98_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup98

if.end42:                                         ; preds = %if.end38
  %call43 = tail call ptr @ieee802154_nl_new_reply(ptr noundef %info, i32 noundef 0, i8 noundef zeroext 33) #8
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end42.out_dev_crit_edge, label %if.end46

if.end42.out_dev_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_dev

if.end46:                                         ; preds = %if.end42
  %14 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %attrs, align 4
  %arrayidx48 = getelementptr ptr, ptr %15, i32 5
  %16 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx48, align 4
  %tobool49.not = icmp eq ptr %17, null
  br i1 %tobool49.not, label %if.end46.if.end56_crit_edge, label %land.lhs.true

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end46
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %19)
  %cmp53.not = icmp eq i16 %19, 12
  br i1 %cmp53.not, label %land.lhs.true.if.end56_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.end56:                                         ; preds = %land.lhs.true.if.end56_crit_edge, %if.end46.if.end56_crit_edge
  %arrayidx58 = getelementptr ptr, ptr %15, i32 32
  %20 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx58, align 4
  %tobool59.not = icmp eq ptr %21, null
  br i1 %tobool59.not, label %if.end56.wpan_phy_to_rdev.exit_crit_edge, label %if.then60

if.end56.wpan_phy_to_rdev.exit_crit_edge:         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %wpan_phy_to_rdev.exit

if.then60:                                        ; preds = %if.end56
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i.i, align 1
  %conv64 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp65 = icmp ugt i8 %23, 1
  br i1 %cmp65, label %if.then60.nla_put_failure_crit_edge, label %if.then60.wpan_phy_to_rdev.exit_crit_edge

if.then60.wpan_phy_to_rdev.exit_crit_edge:        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %wpan_phy_to_rdev.exit

if.then60.nla_put_failure_crit_edge:              ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

wpan_phy_to_rdev.exit:                            ; preds = %if.then60.wpan_phy_to_rdev.exit_crit_edge, %if.end56.wpan_phy_to_rdev.exit_crit_edge
  %type.0 = phi i32 [ %conv64, %if.then60.wpan_phy_to_rdev.exit_crit_edge ], [ -1, %if.end56.wpan_phy_to_rdev.exit_crit_edge ]
  %add.ptr.i148 = getelementptr i8, ptr %call39, i32 -96
  %24 = ptrtoint ptr %add.ptr.i148 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i148, align 32
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call.i = tail call ptr %27(ptr noundef nonnull %call39, ptr noundef %devname.0, i8 noundef zeroext %name_assign_type.0, i32 noundef %type.0) #8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then73, label %if.end75

if.then73:                                        ; preds = %wpan_phy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call.i to i32
  br label %nla_put_failure

if.end75:                                         ; preds = %wpan_phy_to_rdev.exit
  tail call fastcc void @dev_hold(ptr noundef %call.i)
  %29 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %attrs, align 4
  %arrayidx77 = getelementptr ptr, ptr %30, i32 5
  %31 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx77, align 4
  %tobool78.not = icmp eq ptr %32, null
  br i1 %tobool78.not, label %if.end75.if.end87_crit_edge, label %if.then79

if.end75.if.end87_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then79:                                        ; preds = %if.end75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #8
  %33 = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %34 = getelementptr inbounds i8, ptr %addr, i32 2
  %35 = call ptr @memset(ptr %34, i32 255, i32 14)
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 804, ptr %addr, align 2
  %37 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx77, align 4
  %call82 = call i32 @nla_memcpy(ptr noundef %33, ptr noundef %38, i32 noundef 8) #8
  call void @rtnl_lock() #8
  %call83 = call i32 @dev_set_mac_address(ptr noundef %call.i, ptr noundef nonnull %addr, ptr noundef null) #8
  call void @rtnl_unlock() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #8
  br i1 %tobool84.not, label %if.then79.if.end87_crit_edge, label %wpan_phy_to_rdev.exit153

if.then79.if.end87_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.end87:                                         ; preds = %if.then79.if.end87_crit_edge, %if.end75.if.end87_crit_edge
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %call39, i32 0, i32 12, i32 3
  %39 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end87.wpan_phy_name.exit_crit_edge

if.end87.wpan_phy_name.exit_crit_edge:            ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %call39, i32 0, i32 12
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %if.end87.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %42, %if.end.i.i ], [ %40, %if.end87.wpan_phy_name.exit_crit_edge ]
  %call89 = call fastcc i32 @nla_put_string(ptr noundef nonnull %call43, i32 noundef 31, ptr noundef %retval.0.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %lor.lhs.false, label %wpan_phy_name.exit.nla_put_failure_crit_edge

wpan_phy_name.exit.nla_put_failure_crit_edge:     ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %wpan_phy_name.exit
  %call92 = call fastcc i32 @nla_put_string(ptr noundef nonnull %call43, i32 noundef 1, ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end95:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @dev_put(ptr noundef %call.i)
  %dev.i149 = getelementptr inbounds %struct.wpan_phy, ptr %call39, i32 0, i32 12
  call void @put_device(ptr noundef %dev.i149) #8
  %call96 = call i32 @ieee802154_nl_reply(ptr noundef nonnull %call43, ptr noundef %info) #8
  br label %cleanup98

wpan_phy_to_rdev.exit153:                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  call void @rtnl_lock() #8
  %43 = ptrtoint ptr %add.ptr.i148 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i148, align 32
  %del_virtual_intf_deprecated.i = getelementptr inbounds %struct.cfg802154_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %del_virtual_intf_deprecated.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %del_virtual_intf_deprecated.i, align 4
  call void %46(ptr noundef nonnull %call39, ptr noundef %call.i) #8
  call fastcc void @dev_put(ptr noundef %call.i)
  call void @rtnl_unlock() #8
  br label %nla_put_failure

nla_put_failure:                                  ; preds = %wpan_phy_to_rdev.exit153, %lor.lhs.false.nla_put_failure_crit_edge, %wpan_phy_name.exit.nla_put_failure_crit_edge, %if.then73, %if.then60.nla_put_failure_crit_edge, %land.lhs.true.nla_put_failure_crit_edge
  %rc.0 = phi i32 [ %28, %if.then73 ], [ %call83, %wpan_phy_to_rdev.exit153 ], [ -22, %land.lhs.true.nla_put_failure_crit_edge ], [ -22, %if.then60.nla_put_failure_crit_edge ], [ -90, %lor.lhs.false.nla_put_failure_crit_edge ], [ -90, %wpan_phy_name.exit.nla_put_failure_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call43, i32 noundef 0) #8
  br label %out_dev

out_dev:                                          ; preds = %nla_put_failure, %if.end42.out_dev_crit_edge
  %rc.1 = phi i32 [ %rc.0, %nla_put_failure ], [ -105, %if.end42.out_dev_crit_edge ]
  %dev.i155 = getelementptr inbounds %struct.wpan_phy, ptr %call39, i32 0, i32 12
  call void @put_device(ptr noundef %dev.i155) #8
  br label %cleanup98

cleanup98:                                        ; preds = %out_dev, %if.end95, %if.end38.cleanup98_crit_edge, %if.end33.cleanup98_crit_edge, %if.then19.cleanup98_crit_edge, %if.end5.cleanup98_crit_edge, %do.end.cleanup98_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out_dev ], [ %call96, %if.end95 ], [ -22, %do.end.cleanup98_crit_edge ], [ -22, %if.end5.cleanup98_crit_edge ], [ -22, %if.then19.cleanup98_crit_edge ], [ -36, %if.end33.cleanup98_crit_edge ], [ -19, %if.end38.cleanup98_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802154_nl_new_reply(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_hold(ptr noundef readonly %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !25) #8
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
  %add13 = add i32 %12, 1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !38
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !36

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !39
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mac_address(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %skb, i32 noundef %attrtype, ptr noundef %str) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @strlen(ptr noundef %str) #13
  %add = add i32 %call, 1
  %call1 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %add, ptr noundef %str) #8
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !25) #8
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
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !38
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !36

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !39
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_nl_reply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_del_iface(ptr nocapture noundef readnone %skb, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_del_iface.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_del_iface, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !35

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_del_iface.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.cleanup88_crit_edge, label %if.end5

do.end.cleanup88_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end5:                                          ; preds = %do.end
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %conv.i = zext i16 %5 to i32
  %sub = add nsw i32 %conv.i, -5
  %arrayidx12 = getelementptr i8, ptr %add.ptr.i, i32 %sub
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %if.end15, label %if.end5.cleanup88_crit_edge

if.end5.cleanup88_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end15:                                         ; preds = %if.end5
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %8 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_net.i, align 4
  %call17 = tail call ptr @dev_get_by_name(ptr noundef %9, ptr noundef %add.ptr.i) #8
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end15.cleanup88_crit_edge, label %if.end20

if.end15.cleanup88_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end20:                                         ; preds = %if.end15
  %type = getelementptr inbounds %struct.net_device, ptr %call17, i32 0, i32 32
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 804, i16 %11)
  %cmp22.not = icmp eq i16 %11, 804
  br i1 %cmp22.not, label %if.end25, label %if.end20.do.body1.i141_crit_edge

if.end20.do.body1.i141_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i141

if.end25:                                         ; preds = %if.end20
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %call17, i32 0, i32 83
  %12 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ieee802154_ptr, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %tobool27.not = icmp eq ptr %15, null
  br i1 %tobool27.not, label %do.body37, label %do.end45, !prof !36

do.body37:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ieee802154/nl-phy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 291, 0\0A.popsection", ""() #8, !srcloc !40
  unreachable

do.end45:                                         ; preds = %if.end25
  %dev46 = getelementptr inbounds %struct.wpan_phy, ptr %15, i32 0, i32 12
  %call47 = tail call ptr @get_device(ptr noundef %dev46) #8
  %16 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %attrs, align 4
  %arrayidx49 = getelementptr ptr, ptr %17, i32 31
  %18 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx49, align 4
  %tobool50.not = icmp eq ptr %19, null
  br i1 %tobool50.not, label %do.end45.if.end74_crit_edge, label %if.then51

do.end45.if.end74_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then51:                                        ; preds = %do.end45
  %add.ptr.i123 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 2
  %conv.i124 = zext i16 %21 to i32
  %sub58 = add nsw i32 %conv.i124, -5
  %arrayidx59 = getelementptr i8, ptr %add.ptr.i123, i32 %sub58
  %22 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp61.not = icmp eq i8 %23, 0
  br i1 %cmp61.not, label %if.end64, label %if.then51.out.thread153_crit_edge

if.then51.out.thread153_crit_edge:                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread153

if.end64:                                         ; preds = %if.then51
  %call65 = tail call ptr @wpan_phy_find(ptr noundef %add.ptr.i123) #8
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.end64.out.thread153_crit_edge, label %if.end68

if.end64.out.thread153_crit_edge:                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread153

if.end68:                                         ; preds = %if.end64
  %cmp69.not = icmp eq ptr %15, %call65
  br i1 %cmp69.not, label %if.end68.if.end74_crit_edge, label %if.then71

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.wpan_phy, ptr %call65, i32 0, i32 12
  tail call void @put_device(ptr noundef %dev.i) #8
  br label %out.thread153

if.end74:                                         ; preds = %if.end68.if.end74_crit_edge, %do.end45.if.end74_crit_edge
  %call75 = tail call ptr @ieee802154_nl_new_reply(ptr noundef %info, i32 noundef 0, i8 noundef zeroext 34) #8
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.end74.out.thread153_crit_edge, label %do.body1.i

if.end74.out.thread153_crit_edge:                 ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread153

do.body1.i:                                       ; preds = %if.end74
  tail call void @rtnl_lock() #8
  %add.ptr.i126 = getelementptr i8, ptr %15, i32 -96
  %24 = ptrtoint ptr %add.ptr.i126 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i126, align 32
  %del_virtual_intf_deprecated.i = getelementptr inbounds %struct.cfg802154_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %del_virtual_intf_deprecated.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %del_virtual_intf_deprecated.i, align 4
  tail call void %27(ptr noundef nonnull %15, ptr noundef nonnull %call17) #8
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call17, i32 0, i32 118
  %29 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcpu_refcnt.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !25) #8
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
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !38
  %and.i.i.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !36

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #8, !srcloc !39
  tail call void @rtnl_unlock() #8
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %15, i32 0, i32 12, i32 3
  %42 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %dev_put.exit.wpan_phy_name.exit_crit_edge

dev_put.exit.wpan_phy_name.exit_crit_edge:        ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev46, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %dev_put.exit.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %45, %if.end.i.i ], [ %43, %dev_put.exit.wpan_phy_name.exit_crit_edge ]
  %call.i = tail call i32 @strlen(ptr noundef %retval.0.i.i) #12
  %add.i129 = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef nonnull %call75, i32 noundef 31, i32 noundef %add.i129, ptr noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool82.not = icmp eq i32 %call1.i, 0
  br i1 %tobool82.not, label %lor.lhs.false, label %wpan_phy_name.exit.out_crit_edge

wpan_phy_name.exit.out_crit_edge:                 ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %wpan_phy_name.exit
  %call83 = tail call fastcc i32 @nla_put_string(ptr noundef nonnull %call75, i32 noundef 1, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end86:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_device(ptr noundef %dev46) #8
  %call87 = tail call i32 @ieee802154_nl_reply(ptr noundef nonnull %call75, ptr noundef %info) #8
  br label %cleanup88

out.thread153:                                    ; preds = %if.end74.out.thread153_crit_edge, %if.then71, %if.end64.out.thread153_crit_edge, %if.then51.out.thread153_crit_edge
  %rc.0.ph = phi i32 [ -105, %if.end74.out.thread153_crit_edge ], [ -22, %if.then71 ], [ -22, %if.then51.out.thread153_crit_edge ], [ -22, %if.end64.out.thread153_crit_edge ]
  tail call void @put_device(ptr noundef %dev46) #8
  br label %do.body1.i141

out:                                              ; preds = %lor.lhs.false.out_crit_edge, %wpan_phy_name.exit.out_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call75, i32 noundef 0) #8
  tail call void @put_device(ptr noundef %dev46) #8
  br label %cleanup88

do.body1.i141:                                    ; preds = %out.thread153, %if.end20.do.body1.i141_crit_edge
  %rc.1150 = phi i32 [ %rc.0.ph, %out.thread153 ], [ -19, %if.end20.do.body1.i141_crit_edge ]
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %pcpu_refcnt.i133 = getelementptr inbounds %struct.net_device, ptr %call17, i32 0, i32 118
  %47 = ptrtoint ptr %pcpu_refcnt.i133 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcpu_refcnt.i133, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i.i134 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i134 to ptr
  %cpu.i135 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cpu.i135 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu.i135, align 4
  %arrayidx.i136 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i136, align 4
  %add.i137 = add i32 %55, %49
  %56 = inttoptr i32 %add.i137 to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add13.i138 = add i32 %58, -1
  store i32 %add13.i138, ptr %56, align 4
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !38
  %and.i.i.i139 = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i139)
  %tobool24.not.i140 = icmp eq i32 %and.i.i.i139, 0
  br i1 %tobool24.not.i140, label %if.then28.i142, label %do.body1.i141.do.end30.i143_crit_edge, !prof !36

do.body1.i141.do.end30.i143_crit_edge:            ; preds = %do.body1.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i143

if.then28.i142:                                   ; preds = %do.body1.i141
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end30.i143

do.end30.i143:                                    ; preds = %if.then28.i142, %do.body1.i141.do.end30.i143_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #8, !srcloc !39
  br label %cleanup88

cleanup88:                                        ; preds = %do.end30.i143, %out, %if.end86, %if.end15.cleanup88_crit_edge, %if.end5.cleanup88_crit_edge, %do.end.cleanup88_crit_edge
  %retval.0 = phi i32 [ %call87, %if.end86 ], [ -22, %do.end.cleanup88_crit_edge ], [ -22, %if.end5.cleanup88_crit_edge ], [ -19, %if.end15.cleanup88_crit_edge ], [ -105, %out ], [ %rc.1150, %do.end30.i143 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !16, !17, !19, !20, !22, !24}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ieee802154/nl-phy.c", i32 81, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ieee802154_list_phy.__UNIQUE_ID_ddebug374, !1, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ieee802154/nl-phy.c", i32 152, i32 2}
!8 = !{ptr @ieee802154_dump_phy.__UNIQUE_ID_ddebug376, !7, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/ieee802154/nl-phy.c", i32 172, i32 2}
!11 = !{ptr @ieee802154_add_iface.__UNIQUE_ID_ddebug377, !10, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ieee802154/nl-phy.c", i32 188, i32 13}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/ieee802154/nl-phy.c", i32 274, i32 2}
!16 = !{ptr @ieee802154_del_iface.__UNIQUE_ID_ddebug378, !15, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/ieee802154/nl-phy.c", i32 35, i32 2}
!19 = !{ptr @ieee802154_nl_fill_phy.__UNIQUE_ID_ddebug373, !18, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/net/netlink.h", i32 991, i32 3}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ieee802154/nl-phy.c", i32 124, i32 2}
!24 = !{ptr @ieee802154_dump_phy_iter.__UNIQUE_ID_ddebug375, !23, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2148697358, i64 2148697363, i64 2148697376, i64 2148697420, i64 2148697454, i64 2148697475}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 608024, i64 608085}
!38 = !{i64 610756}
!39 = !{i64 611041}
!40 = !{i64 2156532379, i64 2156532867, i64 2156532416, i64 2156532472, i64 2156532506, i64 2156532530, i64 2156532571, i64 2156532592, i64 2156532620, i64 2156532654}
