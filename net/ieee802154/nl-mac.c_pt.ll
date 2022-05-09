; ModuleID = '/llk/IR_all_yes/net/ieee802154/nl-mac.c_pt.bc'
source_filename = "../net/ieee802154/nl-mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.ieee802154_addr = type { i8, i16, %union.anon.123 }
%union.anon.123 = type { i64 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.124 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee802154_mlme_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wpan_dev = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i32, i16, i16, i64, %struct.atomic_t, %struct.atomic_t, i8, i8, i8, i8, i8, i8, i8 }
%struct.ieee802154_mac_params = type { i8, i8, i8, i8, i8, i8, %struct.wpan_phy_cca, i32 }
%struct.wpan_phy_cca = type { i32, i32 }
%struct.wpan_phy = type { ptr, i32, i8, i8, %struct.wpan_phy_supported, i32, %struct.wpan_phy_cca, i64, i32, i8, i16, i16, %struct.device, %struct.possible_net_t, [4 x i8], [0 x i8] }
%struct.wpan_phy_supported = type { [32 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.113 }
%union.anon.113 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.ieee802154_llsec_params = type { i8, i32, i8, %struct.ieee802154_llsec_key_id, i64, i16, i64, i64, i16 }
%struct.ieee802154_llsec_key_id = type { i8, i8, %union.anon.146 }
%union.anon.146 = type { %struct.ieee802154_addr }
%struct.ieee802154_llsec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee802154_llsec_key = type { i8, i32, [16 x i8] }
%struct.llsec_dump_data = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.ieee802154_llsec_key_entry = type { %struct.list_head, %struct.ieee802154_llsec_key_id, ptr }
%struct.ieee802154_llsec_device = type { %struct.list_head, i16, i16, i64, i32, i8, i8, %struct.list_head }
%struct.ieee802154_llsec_table = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ieee802154_llsec_device_key = type { %struct.list_head, %struct.ieee802154_llsec_key_id, i32 }
%struct.ieee802154_llsec_seclevel = type { %struct.list_head, i8, i8, i8, i32 }

@ieee802154_list_iface.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ieee802154\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ieee802154_list_iface\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/ieee802154/nl-mac.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@ieee802154_dump_iface.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ieee802154_dump_iface\00", [42 x i8] zeroinitializer }, align 32
@ieee802154_set_macparams.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ieee802154_set_macparams\00", [39 x i8] zeroinitializer }, align 32
@ieee802154_llsec_getparams.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.3, i8 0, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ieee802154_llsec_getparams\00", [37 x i8] zeroinitializer }, align 32
@nl802154_family = external dso_local global %struct.genl_family, align 4
@ieee802154_llsec_setparams.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.3, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ieee802154_llsec_setparams\00", [37 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ieee802154_nl_start_confirm.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ieee802154_nl_start_confirm\00", [36 x i8] zeroinitializer }, align 32
@ieee802154_nl_fill_iface.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ieee802154_nl_fill_iface\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 413, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 445, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 472, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 652, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 706, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 55, i32 2 }
@___asan_gen_.39 = private constant [27 x i8] c"../net/ieee802154/nl-mac.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 82, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 991, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_associate_req(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca %struct.ieee802154_addr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #8
  %0 = call ptr @memset(ptr %addr, i32 255, i32 16)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 7
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %2, i32 10
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr ptr, ptr %2, i32 9
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %land.lhs.true, label %lor.lhs.false4.lor.lhs.false11_crit_edge

lor.lhs.false4.lor.lhs.false11_crit_edge:         ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false11

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %arrayidx9 = getelementptr ptr, ptr %2, i32 8
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false11_crit_edge

land.lhs.true.lor.lhs.false11_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false11:                                  ; preds = %land.lhs.true.lor.lhs.false11_crit_edge, %lor.lhs.false4.lor.lhs.false11_crit_edge
  %arrayidx13 = getelementptr ptr, ptr %2, i32 17
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %lor.lhs.false11.cleanup_crit_edge, label %if.end

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false11
  %call = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info)
  %tobool15.not = icmp eq ptr %call, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %ml_priv.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 128
  %13 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ml_priv.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %if.end17.do.body1.i_crit_edge, label %if.end21

if.end17.do.body1.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i

if.end21:                                         ; preds = %if.end17
  %17 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attrs, align 4
  %arrayidx23 = getelementptr ptr, ptr %18, i32 9
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %20, null
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %addr, align 8
  %22 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx23, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %temp.0.copyload.i.i = load i64, ptr %add.ptr.i.i, align 1
  %25 = tail call i64 @llvm.bswap.i64(i64 %temp.0.copyload.i.i) #8
  %26 = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %25, ptr %26, align 8
  br label %if.end33

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %addr, align 8
  %arrayidx31 = getelementptr ptr, ptr %18, i32 8
  %29 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx31, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i.i.i, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #8
  %34 = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %33, ptr %34, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then25
  %arrayidx35 = getelementptr ptr, ptr %18, i32 10
  %36 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx35, align 4
  %add.ptr.i.i.i75 = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i.i75 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i.i.i75, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #8
  %pan_id = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 1
  %41 = ptrtoint ptr %pan_id to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %pan_id, align 2
  %arrayidx38 = getelementptr ptr, ptr %18, i32 29
  %42 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %43, null
  br i1 %tobool39.not, label %if.end33.if.end45_crit_edge, label %if.then40

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i76 = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i76 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr.i.i76, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.end33.if.end45_crit_edge
  %page.0 = phi i8 [ %45, %if.then40 ], [ 0, %if.end33.if.end45_crit_edge ]
  %46 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ml_priv.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %arrayidx49 = getelementptr ptr, ptr %18, i32 7
  %50 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx49, align 4
  %add.ptr.i.i78 = getelementptr i8, ptr %51, i32 4
  %52 = ptrtoint ptr %add.ptr.i.i78 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr.i.i78, align 1
  %arrayidx52 = getelementptr ptr, ptr %18, i32 17
  %54 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx52, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %55, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i79 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr.i.i79, align 1
  %call54 = call i32 %49(ptr noundef nonnull %call, ptr noundef nonnull %addr, i8 noundef zeroext %53, i8 noundef zeroext %page.0, i8 noundef zeroext %57) #8
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end45, %if.end17.do.body1.i_crit_edge
  %ret.0 = phi i32 [ %call54, %if.end45 ], [ -95, %if.end17.do.body1.i_crit_edge ]
  %58 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %59 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pcpu_refcnt.i, align 4
  %61 = ptrtoint ptr %60 to i32
  %62 = call i32 @llvm.read_register.i32(metadata !26) #8
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
  %71 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !38

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #8, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %if.end.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %dev_put.exit ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee802154_nl_get_dev(ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  %name = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %name) #8
  %4 = call ptr @memset(ptr %name, i32 255, i32 17)
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @nla_strscpy(ptr noundef nonnull %name, ptr noundef %6, i32 noundef 17) #8
  %call4 = call ptr @dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %name) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %name) #8
  br label %if.end14

if.else:                                          ; preds = %entry
  %arrayidx6 = getelementptr ptr, ptr %1, i32 2
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %if.then8

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %call12 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %10) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.then
  %dev.0 = phi ptr [ %call4, %if.then ], [ %call12, %if.then8 ]
  %tobool15.not = icmp eq ptr %dev.0, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %type = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 32
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 804, i16 %12)
  %cmp.not = icmp eq i16 %12, 804
  br i1 %cmp.not, label %if.end17.cleanup_crit_edge, label %do.body1.i

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1.i:                                       ; preds = %if.end17
  %13 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 118
  %14 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcpu_refcnt.i, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %22, %16
  %23 = inttoptr i32 %add.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add13.i = add i32 %25, -1
  store i32 %add13.i, ptr %23, align 4
  %26 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !38

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #8, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %if.end17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %dev_put.exit ], [ null, %if.else.cleanup_crit_edge ], [ null, %if.end14.cleanup_crit_edge ], [ %dev.0, %if.end17.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !26) #8
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
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !38

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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_associate_resp(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca %struct.ieee802154_addr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #8
  %0 = call ptr @memset(ptr %addr, i32 255, i32 16)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 3
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %2, i32 15
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr ptr, ptr %2, i32 14
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %call = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info)
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %ml_priv.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 128
  %9 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ml_priv.i, align 8
  %assoc_resp = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %assoc_resp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %assoc_resp, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.end10.do.body1.i_crit_edge, label %if.end14

if.end10.do.body1.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %addr, align 8
  %14 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %attrs, align 4
  %arrayidx16 = getelementptr ptr, ptr %15, i32 15
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx16, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %temp.0.copyload.i.i = load i64, ptr %add.ptr.i.i, align 1
  %19 = tail call i64 @llvm.bswap.i64(i64 %temp.0.copyload.i.i) #8
  %20 = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %19, ptr %20, align 8
  tail call void @rtnl_lock() #8
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 83
  %22 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ieee802154_ptr, align 4
  %pan_id = getelementptr inbounds %struct.wpan_dev, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pan_id, align 8
  %pan_id18 = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 1
  %26 = ptrtoint ptr %pan_id18 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %pan_id18, align 2
  tail call void @rtnl_unlock() #8
  %27 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ml_priv.i, align 8
  %assoc_resp20 = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %assoc_resp20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %assoc_resp20, align 4
  %31 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %attrs, align 4
  %arrayidx22 = getelementptr ptr, ptr %32, i32 14
  %33 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx22, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i.i.i, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #8
  %arrayidx25 = getelementptr ptr, ptr %32, i32 3
  %38 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx25, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %39, i32 4
  %40 = ptrtoint ptr %add.ptr.i.i42 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr.i.i42, align 1
  %call27 = call i32 %30(ptr noundef nonnull %call, ptr noundef nonnull %addr, i16 noundef zeroext %37, i8 noundef zeroext %41) #8
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end14, %if.end10.do.body1.i_crit_edge
  %ret.0 = phi i32 [ %call27, %if.end14 ], [ -95, %if.end10.do.body1.i_crit_edge ]
  %42 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %43 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcpu_refcnt.i, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %51, %45
  %52 = inttoptr i32 %add.i to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add13.i = add i32 %54, -1
  store i32 %add13.i, ptr %52, align 4
  %55 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !38

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %42) #8, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %dev_put.exit ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_disassociate_req(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca %struct.ieee802154_addr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #8
  %0 = call ptr @memset(ptr %addr, i32 255, i32 16)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 15
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %2, i32 14
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %arrayidx5 = getelementptr ptr, ptr %2, i32 18
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info)
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %ml_priv.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 128
  %9 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ml_priv.i, align 8
  %disassoc_req = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %disassoc_req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disassoc_req, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %if.end9.do.body1.i_crit_edge, label %if.end13

if.end9.do.body1.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i

if.end13:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attrs, align 4
  %arrayidx15 = getelementptr ptr, ptr %14, i32 15
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %addr, align 8
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx15, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %temp.0.copyload.i.i = load i64, ptr %add.ptr.i.i, align 1
  %21 = tail call i64 @llvm.bswap.i64(i64 %temp.0.copyload.i.i) #8
  %22 = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %21, ptr %22, align 8
  br label %if.end25

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %addr, align 8
  %arrayidx23 = getelementptr ptr, ptr %14, i32 14
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx23, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i.i, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #8
  %30 = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %29, ptr %30, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then17
  tail call void @rtnl_lock() #8
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 83
  %32 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ieee802154_ptr, align 4
  %pan_id = getelementptr inbounds %struct.wpan_dev, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pan_id, align 8
  %pan_id26 = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 1
  %36 = ptrtoint ptr %pan_id26 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %pan_id26, align 2
  tail call void @rtnl_unlock() #8
  %37 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ml_priv.i, align 8
  %disassoc_req28 = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %disassoc_req28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %disassoc_req28, align 4
  %41 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %attrs, align 4
  %arrayidx30 = getelementptr ptr, ptr %42, i32 18
  %43 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx30, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i48 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr.i.i48, align 1
  %call32 = call i32 %40(ptr noundef nonnull %call, ptr noundef nonnull %addr, i8 noundef zeroext %46) #8
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end25, %if.end9.do.body1.i_crit_edge
  %ret.0 = phi i32 [ %call32, %if.end25 ], [ -95, %if.end9.do.body1.i_crit_edge ]
  %47 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %48 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcpu_refcnt.i, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %56, %50
  %57 = inttoptr i32 %add.i to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add13.i = add i32 %59, -1
  store i32 %add13.i, ptr %57, align 4
  %60 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !38

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #8, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %dev_put.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_start_req(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca %struct.ieee802154_addr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #8
  %0 = call ptr @memset(ptr %addr, i32 255, i32 16)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 10
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %2, i32 8
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr ptr, ptr %2, i32 7
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false8

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %arrayidx10 = getelementptr ptr, ptr %2, i32 23
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %lor.lhs.false8.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %arrayidx14 = getelementptr ptr, ptr %2, i32 24
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %lor.lhs.false12.cleanup_crit_edge, label %lor.lhs.false16

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %arrayidx18 = getelementptr ptr, ptr %2, i32 25
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %lor.lhs.false16.cleanup_crit_edge, label %lor.lhs.false20

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %arrayidx22 = getelementptr ptr, ptr %2, i32 26
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %16, null
  br i1 %tobool23.not, label %lor.lhs.false20.cleanup_crit_edge, label %lor.lhs.false24

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %arrayidx26 = getelementptr ptr, ptr %2, i32 27
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx26, align 4
  %tobool27.not = icmp eq ptr %18, null
  br i1 %tobool27.not, label %lor.lhs.false24.cleanup_crit_edge, label %if.end

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false24
  %call = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info)
  %tobool28.not = icmp eq ptr %call, null
  br i1 %tobool28.not, label %if.end.cleanup_crit_edge, label %if.end30

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %state.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 6
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end33, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end33:                                         ; preds = %if.end30
  %ml_priv.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 128
  %21 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ml_priv.i, align 8
  %start_req = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %start_req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %start_req, align 4
  %tobool35.not = icmp eq ptr %24, null
  br i1 %tobool35.not, label %if.end33.out_crit_edge, label %if.end37

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end37:                                         ; preds = %if.end33
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %addr, align 8
  %26 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %attrs, align 4
  %arrayidx39 = getelementptr ptr, ptr %27, i32 8
  %28 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx39, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i.i, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #8
  %33 = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %32, ptr %33, align 8
  %arrayidx42 = getelementptr ptr, ptr %27, i32 10
  %35 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx42, align 4
  %add.ptr.i.i.i119 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i.i119 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i.i.i119, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #8
  %pan_id = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 1
  %40 = ptrtoint ptr %pan_id to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %pan_id, align 2
  %arrayidx45 = getelementptr ptr, ptr %27, i32 7
  %41 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx45, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr.i.i, align 1
  %arrayidx48 = getelementptr ptr, ptr %27, i32 23
  %45 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx48, align 4
  %add.ptr.i.i120 = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i120 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr.i.i120, align 1
  %arrayidx51 = getelementptr ptr, ptr %27, i32 24
  %49 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx51, align 4
  %add.ptr.i.i121 = getelementptr i8, ptr %50, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr.i.i121, align 1
  %arrayidx54 = getelementptr ptr, ptr %27, i32 25
  %53 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx54, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %54, i32 4
  %55 = ptrtoint ptr %add.ptr.i.i122 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %add.ptr.i.i122, align 1
  %arrayidx57 = getelementptr ptr, ptr %27, i32 26
  %57 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx57, align 4
  %add.ptr.i.i123 = getelementptr i8, ptr %58, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i123 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %add.ptr.i.i123, align 1
  %arrayidx61 = getelementptr ptr, ptr %27, i32 27
  %61 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx61, align 4
  %add.ptr.i.i124 = getelementptr i8, ptr %62, i32 4
  %63 = ptrtoint ptr %add.ptr.i.i124 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr.i.i124, align 1
  %arrayidx65 = getelementptr ptr, ptr %27, i32 29
  %65 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx65, align 4
  %tobool66.not = icmp eq ptr %66, null
  br i1 %tobool66.not, label %if.end37.if.end71_crit_edge, label %if.then67

if.end37.if.end71_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then67:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i125 = getelementptr i8, ptr %66, i32 4
  %67 = ptrtoint ptr %add.ptr.i.i125 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %add.ptr.i.i125, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end37.if.end71_crit_edge
  %page.0 = phi i8 [ %68, %if.then67 ], [ 0, %if.end37.if.end71_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %31)
  %cmp = icmp eq i16 %31, -1
  br i1 %cmp, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ieee802154_nl_start_confirm(ptr noundef nonnull %call, i8 noundef zeroext -20)
  tail call fastcc void @dev_put(ptr noundef nonnull %call)
  br label %cleanup

if.end76:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtnl_lock() #8
  %69 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ml_priv.i, align 8
  %start_req78 = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %start_req78 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %start_req78, align 4
  %call82 = call i32 %72(ptr noundef nonnull %call, ptr noundef nonnull %addr, i8 noundef zeroext %44, i8 noundef zeroext %page.0, i8 noundef zeroext %48, i8 noundef zeroext %52, i8 noundef zeroext %56, i8 noundef zeroext %60, i8 noundef zeroext %64) #8
  call void @rtnl_unlock() #8
  call fastcc void @ieee802154_nl_start_confirm(ptr noundef nonnull %call, i8 noundef zeroext 0)
  br label %out

out:                                              ; preds = %if.end76, %if.end33.out_crit_edge, %if.end30.out_crit_edge
  %ret.0 = phi i32 [ -16, %if.end30.out_crit_edge ], [ %call82, %if.end76 ], [ -95, %if.end33.out_crit_edge ]
  call fastcc void @dev_put(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then74, %if.end.cleanup_crit_edge, %lor.lhs.false24.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %if.then74 ], [ -22, %lor.lhs.false24.cleanup_crit_edge ], [ -22, %lor.lhs.false20.cleanup_crit_edge ], [ -22, %lor.lhs.false16.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee802154_nl_start_confirm(ptr noundef %dev, i8 noundef zeroext %status) unnamed_addr #0 align 64 {
entry:
  %tmp.i2 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_nl_start_confirm.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_nl_start_confirm, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_nl_start_confirm.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call ptr @ieee802154_nl_create(i32 noundef 0, i8 noundef zeroext 14) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call.i = tail call i32 @strlen(ptr noundef %dev) #11
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef nonnull %call3, i32 noundef 1, i32 noundef %add.i, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool8.not = icmp eq i32 %call1.i, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end6.nla_put_failure_crit_edge

if.end6.nla_put_failure_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %if.end6
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i1 = call i32 @nla_put(ptr noundef nonnull %call3, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool10.not = icmp eq i32 %call.i1, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %3 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_addr, align 64
  %call12 = call i32 @nla_put(ptr noundef nonnull %call3, i32 noundef 5, i32 noundef 8, ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %lor.lhs.false11.nla_put_failure_crit_edge

lor.lhs.false11.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i2) #8
  %5 = ptrtoint ptr %tmp.i2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %status, ptr %tmp.i2, align 1
  %call.i3 = call i32 @nla_put(ptr noundef nonnull %call3, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i2) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool16.not = icmp eq i32 %call.i3, 0
  br i1 %tobool16.not, label %if.end18, label %lor.lhs.false14.nla_put_failure_crit_edge

lor.lhs.false14.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end18:                                         ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = call i32 @ieee802154_nl_mcast(ptr noundef nonnull %call3, i32 noundef 0) #8
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false14.nla_put_failure_crit_edge, %lor.lhs.false11.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %if.end6.nla_put_failure_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call3, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end18, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_scan_req(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 19
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %1, i32 20
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr ptr, ptr %1, i32 21
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %call = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info)
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %ml_priv.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 128
  %8 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ml_priv.i, align 8
  %scan_req = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scan_req, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.end10.do.body1.i_crit_edge, label %if.end14

if.end10.do.body1.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i

if.end14:                                         ; preds = %if.end10
  %12 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %attrs, align 4
  %arrayidx16 = getelementptr ptr, ptr %13, i32 19
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx16, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i.i, align 1
  %arrayidx19 = getelementptr ptr, ptr %13, i32 20
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx19, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i52, align 4
  %arrayidx22 = getelementptr ptr, ptr %13, i32 21
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx22, align 4
  %add.ptr.i.i53 = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i53 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr.i.i53, align 1
  %arrayidx25 = getelementptr ptr, ptr %13, i32 29
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %27, null
  br i1 %tobool26.not, label %if.end14.if.end31_crit_edge, label %if.then27

if.end14.if.end31_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i54 = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i54 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr.i.i54, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end14.if.end31_crit_edge
  %page.0 = phi i8 [ %29, %if.then27 ], [ 0, %if.end14.if.end31_crit_edge ]
  %call34 = tail call i32 %11(ptr noundef nonnull %call, i8 noundef zeroext %17, i32 noundef %21, i8 noundef zeroext %page.0, i8 noundef zeroext %25) #8
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end31, %if.end10.do.body1.i_crit_edge
  %ret.0 = phi i32 [ %call34, %if.end31 ], [ -95, %if.end10.do.body1.i_crit_edge ]
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %31 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcpu_refcnt.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = tail call i32 @llvm.read_register.i32(metadata !26) #8
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
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !38

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #8, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %dev_put.exit ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_list_iface(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_list_iface.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_list_iface, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_list_iface.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool8.not = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not, label %if.end6.do.body1.i36_crit_edge, label %if.end10

if.end6.do.body1.i36_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i36

if.end10:                                         ; preds = %if.end6
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  %call11 = tail call fastcc i32 @ieee802154_nl_fill_iface(ptr noundef nonnull %call.i.i, i32 noundef %1, i32 noundef 0, ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %out_free, label %do.body1.i

do.body1.i:                                       ; preds = %if.end10
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 118
  %3 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_refcnt.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !26) #8
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
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !38

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #8, !srcloc !39
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %16 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_net.i.i, align 4
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %18 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 21
  %20 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %21, ptr noundef nonnull %call.i.i, i32 noundef %19, i32 noundef 64) #8
  %22 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  br label %cleanup

out_free:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %do.body1.i36

do.body1.i36:                                     ; preds = %out_free, %if.end6.do.body1.i36_crit_edge
  %rc.0 = phi i32 [ %call11, %out_free ], [ -105, %if.end6.do.body1.i36_crit_edge ]
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i28 = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 118
  %24 = ptrtoint ptr %pcpu_refcnt.i28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcpu_refcnt.i28, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i29 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i29 to ptr
  %cpu.i30 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i30, align 4
  %arrayidx.i31 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i31, align 4
  %add.i32 = add i32 %32, %26
  %33 = inttoptr i32 %add.i32 to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add13.i33 = add i32 %35, -1
  store i32 %add13.i33, ptr %33, align 4
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i34 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i34)
  %tobool24.not.i35 = icmp eq i32 %and.i.i.i34, 0
  br i1 %tobool24.not.i35, label %if.then28.i37, label %do.body1.i36.dev_put.exit39_crit_edge, !prof !38

do.body1.i36.dev_put.exit39_crit_edge:            ; preds = %do.body1.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit39

if.then28.i37:                                    ; preds = %do.body1.i36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit39

dev_put.exit39:                                   ; preds = %if.then28.i37, %do.body1.i36.dev_put.exit39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #8, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit39, %dev_put.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %dev_put.exit39 ], [ %22, %dev_put.exit ], [ -19, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee802154_nl_fill_iface(ptr noundef %msg, i32 noundef %seq, i32 noundef %flags, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %tmp.i21 = alloca i8, align 1
  %tmp.i19 = alloca i8, align 1
  %tmp.i17 = alloca i8, align 1
  %tmp.i15 = alloca i8, align 1
  %tmp.i13 = alloca i32, align 4
  %tmp.i11 = alloca i8, align 1
  %tmp.i9 = alloca i8, align 1
  %tmp.i7 = alloca i8, align 1
  %tmp.i.i5 = alloca i16, align 2
  %tmp.i.i = alloca i16, align 2
  %tmp.i = alloca i32, align 4
  %params = alloca %struct.ieee802154_mac_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_nl_fill_iface.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_nl_fill_iface, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_nl_fill_iface.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call ptr @genlmsg_put(ptr noundef %msg, i32 noundef 0, i32 noundef %seq, ptr noundef nonnull @nl802154_family, i32 noundef %flags, i8 noundef zeroext 31) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end.cleanup87_crit_edge, label %if.end6

do.end.cleanup87_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

if.end6:                                          ; preds = %do.end
  %ml_priv.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv.i, align 8
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 83
  %2 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee802154_ptr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.body19, label %do.end27, !prof !38

do.body19:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ieee802154/nl-mac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 91, 0\0A.popsection", ""() #8, !srcloc !41
  unreachable

do.end27:                                         ; preds = %if.end6
  %dev28 = getelementptr inbounds %struct.wpan_phy, ptr %5, i32 0, i32 12
  %call29 = tail call ptr @get_device(ptr noundef %dev28) #8
  tail call void @rtnl_lock() #8
  %6 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ieee802154_ptr, align 4
  %short_addr31 = getelementptr inbounds %struct.wpan_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %short_addr31 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %short_addr31, align 2
  %pan_id33 = getelementptr inbounds %struct.wpan_dev, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %pan_id33 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pan_id33, align 8
  tail call void @rtnl_unlock() #8
  %call.i = tail call i32 @strlen(ptr noundef %dev) #11
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef %add.i, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool35.not = icmp eq i32 %call1.i, 0
  br i1 %tobool35.not, label %lor.lhs.false, label %do.end27.if.then.i_crit_edge

do.end27.if.then.i_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false:                                    ; preds = %do.end27
  %init_name.i.i = getelementptr inbounds %struct.wpan_phy, ptr %5, i32 0, i32 12, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lor.lhs.false.wpan_phy_name.exit_crit_edge

lor.lhs.false.wpan_phy_name.exit_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %wpan_phy_name.exit

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev28, align 4
  br label %wpan_phy_name.exit

wpan_phy_name.exit:                               ; preds = %if.end.i.i, %lor.lhs.false.wpan_phy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %lor.lhs.false.wpan_phy_name.exit_crit_edge ]
  %call.i1 = tail call i32 @strlen(ptr noundef %retval.0.i.i) #11
  %add.i2 = add i32 %call.i1, 1
  %call1.i3 = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 31, i32 noundef %add.i2, ptr noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool38.not = icmp eq i32 %call1.i3, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %wpan_phy_name.exit.if.then.i_crit_edge

wpan_phy_name.exit.if.then.i_crit_edge:           ; preds = %wpan_phy_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false39:                                  ; preds = %wpan_phy_name.exit
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %16 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tmp.i, align 4
  %call.i4 = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool41.not = icmp eq i32 %call.i4, 0
  br i1 %tobool41.not, label %lor.lhs.false42, label %lor.lhs.false39.if.then.i_crit_edge

lor.lhs.false39.if.then.i_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %call43 = call i32 @nla_put(ptr noundef %msg, i32 noundef 5, i32 noundef 8, ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %lor.lhs.false42.if.then.i_crit_edge

lor.lhs.false42.if.then.i_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %21 = call i16 @llvm.bswap.i16(i16 %9) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #8
  %22 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %tmp.i.i, align 2
  %call.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool47.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %lor.lhs.false45.if.then.i_crit_edge

lor.lhs.false45.if.then.i_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %23 = call i16 @llvm.bswap.i16(i16 %11) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i5) #8
  %24 = ptrtoint ptr %tmp.i.i5 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %tmp.i.i5, align 2
  %call.i.i6 = call i32 @nla_put(ptr noundef %msg, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i.i5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6)
  %tobool50.not = icmp eq i32 %call.i.i6, 0
  br i1 %tobool50.not, label %if.end52, label %lor.lhs.false48.if.then.i_crit_edge

lor.lhs.false48.if.then.i_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end52:                                         ; preds = %lor.lhs.false48
  %get_mac_params = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %get_mac_params to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_mac_params, align 4
  %tobool53.not = icmp eq ptr %26, null
  br i1 %tobool53.not, label %if.end52.if.end86_crit_edge, label %if.then54

if.end52.if.end86_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then54:                                        ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #8
  %27 = call ptr @memset(ptr %params, i32 255, i32 20)
  call void @rtnl_lock() #8
  %28 = ptrtoint ptr %get_mac_params to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_mac_params, align 4
  call void %29(ptr noundef %dev, ptr noundef nonnull %params) #8
  call void @rtnl_unlock() #8
  %30 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %params, align 4
  %32 = sdiv i8 %31, 100
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i7) #8
  %33 = ptrtoint ptr %tmp.i7 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %tmp.i7, align 1
  %call.i8 = call i32 @nla_put(ptr noundef %msg, i32 noundef 33, i32 noundef 1, ptr noundef nonnull %tmp.i7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool58.not = icmp eq i32 %call.i8, 0
  br i1 %tobool58.not, label %lor.lhs.false59, label %if.then54.cleanup.thread_crit_edge

if.then54.cleanup.thread_crit_edge:               ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

lor.lhs.false59:                                  ; preds = %if.then54
  %lbt = getelementptr inbounds %struct.ieee802154_mac_params, ptr %params, i32 0, i32 5
  %34 = ptrtoint ptr %lbt to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %lbt, align 1, !range !42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i9) #8
  %36 = ptrtoint ptr %tmp.i9 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %tmp.i9, align 1
  %call.i10 = call i32 @nla_put(ptr noundef %msg, i32 noundef 34, i32 noundef 1, ptr noundef nonnull %tmp.i9) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool63.not = icmp eq i32 %call.i10, 0
  br i1 %tobool63.not, label %lor.lhs.false64, label %lor.lhs.false59.cleanup.thread_crit_edge

lor.lhs.false59.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

lor.lhs.false64:                                  ; preds = %lor.lhs.false59
  %cca = getelementptr inbounds %struct.ieee802154_mac_params, ptr %params, i32 0, i32 6
  %37 = ptrtoint ptr %cca to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cca, align 4
  %conv65 = trunc i32 %38 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i11) #8
  %39 = ptrtoint ptr %tmp.i11 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv65, ptr %tmp.i11, align 1
  %call.i12 = call i32 @nla_put(ptr noundef %msg, i32 noundef 35, i32 noundef 1, ptr noundef nonnull %tmp.i11) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool67.not = icmp eq i32 %call.i12, 0
  br i1 %tobool67.not, label %lor.lhs.false68, label %lor.lhs.false64.cleanup.thread_crit_edge

lor.lhs.false64.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

lor.lhs.false68:                                  ; preds = %lor.lhs.false64
  %cca_ed_level = getelementptr inbounds %struct.ieee802154_mac_params, ptr %params, i32 0, i32 7
  %40 = ptrtoint ptr %cca_ed_level to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cca_ed_level, align 4
  %div69 = sdiv i32 %41, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i13) #8
  %42 = ptrtoint ptr %tmp.i13 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div69, ptr %tmp.i13, align 4
  %call.i14 = call i32 @nla_put(ptr noundef %msg, i32 noundef 36, i32 noundef 4, ptr noundef nonnull %tmp.i13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool71.not = icmp eq i32 %call.i14, 0
  br i1 %tobool71.not, label %lor.lhs.false72, label %lor.lhs.false68.cleanup.thread_crit_edge

lor.lhs.false68.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

lor.lhs.false72:                                  ; preds = %lor.lhs.false68
  %csma_retries = getelementptr inbounds %struct.ieee802154_mac_params, ptr %params, i32 0, i32 3
  %43 = ptrtoint ptr %csma_retries to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %csma_retries, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i15) #8
  %45 = ptrtoint ptr %tmp.i15 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %tmp.i15, align 1
  %call.i16 = call i32 @nla_put(ptr noundef %msg, i32 noundef 37, i32 noundef 1, ptr noundef nonnull %tmp.i15) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool74.not = icmp eq i32 %call.i16, 0
  br i1 %tobool74.not, label %lor.lhs.false75, label %lor.lhs.false72.cleanup.thread_crit_edge

lor.lhs.false72.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

lor.lhs.false75:                                  ; preds = %lor.lhs.false72
  %min_be = getelementptr inbounds %struct.ieee802154_mac_params, ptr %params, i32 0, i32 1
  %46 = ptrtoint ptr %min_be to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %min_be, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i17) #8
  %48 = ptrtoint ptr %tmp.i17 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %tmp.i17, align 1
  %call.i18 = call i32 @nla_put(ptr noundef %msg, i32 noundef 38, i32 noundef 1, ptr noundef nonnull %tmp.i17) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool77.not = icmp eq i32 %call.i18, 0
  br i1 %tobool77.not, label %lor.lhs.false78, label %lor.lhs.false75.cleanup.thread_crit_edge

lor.lhs.false75.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

lor.lhs.false78:                                  ; preds = %lor.lhs.false75
  %max_be = getelementptr inbounds %struct.ieee802154_mac_params, ptr %params, i32 0, i32 2
  %49 = ptrtoint ptr %max_be to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %max_be, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i19) #8
  %51 = ptrtoint ptr %tmp.i19 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %tmp.i19, align 1
  %call.i20 = call i32 @nla_put(ptr noundef %msg, i32 noundef 39, i32 noundef 1, ptr noundef nonnull %tmp.i19) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool80.not = icmp eq i32 %call.i20, 0
  br i1 %tobool80.not, label %lor.lhs.false81, label %lor.lhs.false78.cleanup.thread_crit_edge

lor.lhs.false78.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

lor.lhs.false81:                                  ; preds = %lor.lhs.false78
  %frame_retries = getelementptr inbounds %struct.ieee802154_mac_params, ptr %params, i32 0, i32 4
  %52 = ptrtoint ptr %frame_retries to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %frame_retries, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i21) #8
  %54 = ptrtoint ptr %tmp.i21 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %tmp.i21, align 1
  %call.i22 = call i32 @nla_put(ptr noundef %msg, i32 noundef 40, i32 noundef 1, ptr noundef nonnull %tmp.i21) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool83.not = icmp eq i32 %call.i22, 0
  br i1 %tobool83.not, label %cleanup, label %lor.lhs.false81.cleanup.thread_crit_edge

lor.lhs.false81.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %lor.lhs.false81.cleanup.thread_crit_edge, %lor.lhs.false78.cleanup.thread_crit_edge, %lor.lhs.false75.cleanup.thread_crit_edge, %lor.lhs.false72.cleanup.thread_crit_edge, %lor.lhs.false68.cleanup.thread_crit_edge, %lor.lhs.false64.cleanup.thread_crit_edge, %lor.lhs.false59.cleanup.thread_crit_edge, %if.then54.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #8
  br label %if.then.i

cleanup:                                          ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #8
  br label %if.end86

if.end86:                                         ; preds = %cleanup, %if.end52.if.end86_crit_edge
  call void @put_device(ptr noundef %dev28) #8
  %add.ptr1.i = getelementptr i8, ptr %call3, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %55 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %57 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup87

if.then.i:                                        ; preds = %cleanup.thread, %lor.lhs.false48.if.then.i_crit_edge, %lor.lhs.false45.if.then.i_crit_edge, %lor.lhs.false42.if.then.i_crit_edge, %lor.lhs.false39.if.then.i_crit_edge, %wpan_phy_name.exit.if.then.i_crit_edge, %do.end27.if.then.i_crit_edge
  call void @put_device(ptr noundef %dev28) #8
  %add.ptr1.i25 = getelementptr i8, ptr %call3, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i25, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup87_crit_edge, label %if.then.i.i.i

if.then.i.cleanup87_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %58 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %59, %add.ptr1.i25
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !38

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %60 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i25 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %61 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i) #8
  br label %cleanup87

cleanup87:                                        ; preds = %if.end.i.i.i, %if.then.i.cleanup87_crit_edge, %if.end86, %do.end.cleanup87_crit_edge
  %retval.0 = phi i32 [ 0, %if.end86 ], [ -90, %do.end.cleanup87_crit_edge ], [ -90, %if.then.i.cleanup87_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_dump_iface(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_dump_iface.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_dump_iface, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_dump_iface.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev_base_head = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 16
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %8 = ptrtoint ptr %dev_base_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn38 = load ptr, ptr %dev_base_head, align 4
  %cmp.not40 = icmp eq ptr %.pn38, %dev_base_head
  br i1 %cmp.not40, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cont.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn43 = phi ptr [ %.pn, %cont.for.body_crit_edge ], [ %.pn38, %do.end.for.body_crit_edge ]
  %idx.041 = phi i32 [ %inc, %cont.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %dev.044 = getelementptr i8, ptr %.pn43, i32 -40
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.041, i32 %7)
  %cmp8 = icmp slt i32 %idx.041, %7
  br i1 %cmp8, label %for.body.cont_crit_edge, label %lor.lhs.false

for.body.cont_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cont

lor.lhs.false:                                    ; preds = %for.body
  %type = getelementptr i8, ptr %.pn43, i32 168
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 804, i16 %10)
  %cmp9.not = icmp eq i16 %10, 804
  br i1 %cmp9.not, label %if.end12, label %lor.lhs.false.cont_crit_edge

lor.lhs.false.cont_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cont

if.end12:                                         ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nlmsg_seq, align 4
  %call15 = tail call fastcc i32 @ieee802154_nl_fill_iface(ptr noundef %skb, i32 noundef %14, i32 noundef 2, ptr noundef %dev.044)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end12.for.end_crit_edge, label %if.end12.cont_crit_edge

if.end12.cont_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cont

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cont:                                             ; preds = %if.end12.cont_crit_edge, %lor.lhs.false.cont_crit_edge, %for.body.cont_crit_edge
  %inc = add i32 %idx.041, 1
  %15 = ptrtoint ptr %.pn43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn43, align 4
  %cmp.not = icmp eq ptr %.pn, %dev_base_head
  br i1 %cmp.not, label %cont.for.end_crit_edge, label %cont.for.body_crit_edge

cont.for.body_crit_edge:                          ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cont.for.end_crit_edge:                           ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cont.for.end_crit_edge, %if.end12.for.end_crit_edge, %do.end.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %idx.041, %if.end12.for.end_crit_edge ], [ %inc, %cont.for.end_crit_edge ]
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %idx.0.lcssa, ptr %5, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_set_macparams(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.ieee802154_mac_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #8
  %0 = call ptr @memset(ptr %params, i32 255, i32 20)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_set_macparams.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_set_macparams, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_set_macparams.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %ml_priv.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 128
  %1 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ml_priv.i, align 8
  %get_mac_params = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %get_mac_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_mac_params, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %if.end6.do.body1.i176_crit_edge, label %lor.lhs.false

if.end6.do.body1.i176_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i176

lor.lhs.false:                                    ; preds = %if.end6
  %set_mac_params = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %set_mac_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_mac_params, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %lor.lhs.false.do.body1.i176_crit_edge, label %if.end11

lor.lhs.false.do.body1.i176_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i176

if.end11:                                         ; preds = %lor.lhs.false
  %state.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end14, label %if.end11.do.body1.i176_crit_edge

if.end11.do.body1.i176_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i176

if.end14:                                         ; preds = %if.end11
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %9 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 34
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %land.lhs.true, label %if.end14.if.end40_crit_edge

if.end14.if.end40_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end14
  %arrayidx17 = getelementptr ptr, ptr %10, i32 35
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %14, null
  br i1 %tobool18.not, label %land.lhs.true19, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true19:                                  ; preds = %land.lhs.true
  %arrayidx21 = getelementptr ptr, ptr %10, i32 36
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %16, null
  br i1 %tobool22.not, label %land.lhs.true23, label %land.lhs.true19.if.end40_crit_edge

land.lhs.true19.if.end40_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true23:                                  ; preds = %land.lhs.true19
  %arrayidx25 = getelementptr ptr, ptr %10, i32 37
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %18, null
  br i1 %tobool26.not, label %land.lhs.true27, label %land.lhs.true23.if.end40_crit_edge

land.lhs.true23.if.end40_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true27:                                  ; preds = %land.lhs.true23
  %arrayidx29 = getelementptr ptr, ptr %10, i32 38
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %20, null
  br i1 %tobool30.not, label %land.lhs.true31, label %land.lhs.true27.if.end40_crit_edge

land.lhs.true27.if.end40_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true31:                                  ; preds = %land.lhs.true27
  %arrayidx33 = getelementptr ptr, ptr %10, i32 39
  %21 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx33, align 4
  %tobool34.not = icmp eq ptr %22, null
  br i1 %tobool34.not, label %land.lhs.true35, label %land.lhs.true31.if.end40_crit_edge

land.lhs.true31.if.end40_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true35:                                  ; preds = %land.lhs.true31
  %arrayidx37 = getelementptr ptr, ptr %10, i32 40
  %23 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %24, null
  br i1 %tobool38.not, label %land.lhs.true35.do.body1.i176_crit_edge, label %land.lhs.true35.if.end40_crit_edge

land.lhs.true35.if.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true35.do.body1.i176_crit_edge:          ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i176

if.end40:                                         ; preds = %land.lhs.true35.if.end40_crit_edge, %land.lhs.true31.if.end40_crit_edge, %land.lhs.true27.if.end40_crit_edge, %land.lhs.true23.if.end40_crit_edge, %land.lhs.true19.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %if.end14.if.end40_crit_edge
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 83
  %25 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ieee802154_ptr, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %dev41 = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 12
  %call42 = tail call ptr @get_device(ptr noundef %dev41) #8
  tail call void @rtnl_lock() #8
  %29 = ptrtoint ptr %get_mac_params to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_mac_params, align 4
  call void %30(ptr noundef nonnull %call3, ptr noundef nonnull %params) #8
  %31 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %attrs, align 4
  %arrayidx45 = getelementptr ptr, ptr %32, i32 33
  %33 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx45, align 4
  %tobool46.not = icmp eq ptr %34, null
  br i1 %tobool46.not, label %if.end40.if.end52_crit_edge, label %if.then47

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then47:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr.i.i, align 1
  %mul = mul i8 %36, 100
  %37 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %mul, ptr %params, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end40.if.end52_crit_edge
  %arrayidx54 = getelementptr ptr, ptr %32, i32 34
  %38 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx54, align 4
  %tobool55.not = icmp eq ptr %39, null
  br i1 %tobool55.not, label %if.end52.if.end62_crit_edge, label %if.then56

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i160 = getelementptr i8, ptr %39, i32 4
  %40 = ptrtoint ptr %add.ptr.i.i160 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr.i.i160, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool60 = icmp ne i8 %41, 0
  %lbt = getelementptr inbounds %struct.ieee802154_mac_params, ptr %params, i32 0, i32 5
  %frombool61 = zext i1 %tobool60 to i8
  %42 = ptrtoint ptr %lbt to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool61, ptr %lbt, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.then56, %if.end52.if.end62_crit_edge
  %arrayidx64 = getelementptr ptr, ptr %32, i32 35
  %43 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx64, align 4
  %tobool65.not = icmp eq ptr %44, null
  br i1 %tobool65.not, label %if.end62.if.end71_crit_edge, label %if.then66

if.end62.if.end71_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i161 = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i161 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr.i.i161, align 1
  %conv70 = zext i8 %46 to i32
  %cca = getelementptr inbounds %struct.ieee802154_mac_params, ptr %params, i32 0, i32 6
  %47 = ptrtoint ptr %cca to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv70, ptr %cca, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.end62.if.end71_crit_edge
  %arrayidx73 = getelementptr ptr, ptr %32, i32 36
  %48 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx73, align 4
  %tobool74.not = icmp eq ptr %49, null
  br i1 %tobool74.not, label %if.end71.if.end80_crit_edge, label %if.then75

if.end71.if.end80_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i162 = getelementptr i8, ptr %49, i32 4
  %50 = ptrtoint ptr %add.ptr.i.i162 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i162, align 4
  %mul79 = mul i32 %51, 100
  %cca_ed_level = getelementptr inbounds %struct.ieee802154_mac_params, ptr %params, i32 0, i32 7
  %52 = ptrtoint ptr %cca_ed_level to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul79, ptr %cca_ed_level, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.end71.if.end80_crit_edge
  %arrayidx82 = getelementptr ptr, ptr %32, i32 37
  %53 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx82, align 4
  %tobool83.not = icmp eq ptr %54, null
  br i1 %tobool83.not, label %if.end80.if.end88_crit_edge, label %if.then84

if.end80.if.end88_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i163 = getelementptr i8, ptr %54, i32 4
  %55 = ptrtoint ptr %add.ptr.i.i163 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %add.ptr.i.i163, align 1
  %csma_retries = getelementptr inbounds %struct.ieee802154_mac_params, ptr %params, i32 0, i32 3
  %57 = ptrtoint ptr %csma_retries to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %csma_retries, align 1
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end80.if.end88_crit_edge
  %arrayidx90 = getelementptr ptr, ptr %32, i32 38
  %58 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx90, align 4
  %tobool91.not = icmp eq ptr %59, null
  br i1 %tobool91.not, label %if.end88.if.end96_crit_edge, label %if.then92

if.end88.if.end96_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i164 = getelementptr i8, ptr %59, i32 4
  %60 = ptrtoint ptr %add.ptr.i.i164 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i.i164, align 1
  %min_be = getelementptr inbounds %struct.ieee802154_mac_params, ptr %params, i32 0, i32 1
  %62 = ptrtoint ptr %min_be to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %min_be, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %if.end88.if.end96_crit_edge
  %arrayidx98 = getelementptr ptr, ptr %32, i32 39
  %63 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx98, align 4
  %tobool99.not = icmp eq ptr %64, null
  br i1 %tobool99.not, label %if.end96.if.end104_crit_edge, label %if.then100

if.end96.if.end104_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then100:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i165 = getelementptr i8, ptr %64, i32 4
  %65 = ptrtoint ptr %add.ptr.i.i165 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %add.ptr.i.i165, align 1
  %max_be = getelementptr inbounds %struct.ieee802154_mac_params, ptr %params, i32 0, i32 2
  %67 = ptrtoint ptr %max_be to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %max_be, align 2
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %if.end96.if.end104_crit_edge
  %arrayidx106 = getelementptr ptr, ptr %32, i32 40
  %68 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx106, align 4
  %tobool107.not = icmp eq ptr %69, null
  br i1 %tobool107.not, label %if.end104.do.body1.i_crit_edge, label %if.then108

if.end104.do.body1.i_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i166 = getelementptr i8, ptr %69, i32 4
  %70 = ptrtoint ptr %add.ptr.i.i166 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr.i.i166, align 1
  %frame_retries = getelementptr inbounds %struct.ieee802154_mac_params, ptr %params, i32 0, i32 4
  %72 = ptrtoint ptr %frame_retries to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %frame_retries, align 4
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then108, %if.end104.do.body1.i_crit_edge
  %73 = ptrtoint ptr %set_mac_params to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %set_mac_params, align 4
  %call114 = call i32 %74(ptr noundef nonnull %call3, ptr noundef nonnull %params) #8
  call void @rtnl_unlock() #8
  call void @put_device(ptr noundef %dev41) #8
  %75 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 118
  %76 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pcpu_refcnt.i, align 4
  %78 = ptrtoint ptr %77 to i32
  %79 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %84, %78
  %85 = inttoptr i32 %add.i to ptr
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %add13.i = add i32 %87, -1
  store i32 %add13.i, ptr %85, align 4
  %88 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i = and i32 %88, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !38

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %75) #8, !srcloc !39
  br label %cleanup

do.body1.i176:                                    ; preds = %land.lhs.true35.do.body1.i176_crit_edge, %if.end11.do.body1.i176_crit_edge, %lor.lhs.false.do.body1.i176_crit_edge, %if.end6.do.body1.i176_crit_edge
  %rc.0 = phi i32 [ -22, %land.lhs.true35.do.body1.i176_crit_edge ], [ -95, %lor.lhs.false.do.body1.i176_crit_edge ], [ -95, %if.end6.do.body1.i176_crit_edge ], [ -16, %if.end11.do.body1.i176_crit_edge ]
  %89 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i168 = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 118
  %90 = ptrtoint ptr %pcpu_refcnt.i168 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pcpu_refcnt.i168, align 4
  %92 = ptrtoint ptr %91 to i32
  %93 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i169 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i169 to ptr
  %cpu.i170 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cpu.i170 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu.i170, align 4
  %arrayidx.i171 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx.i171 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i171, align 4
  %add.i172 = add i32 %98, %92
  %99 = inttoptr i32 %add.i172 to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add13.i173 = add i32 %101, -1
  store i32 %add13.i173, ptr %99, align 4
  %102 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i174 = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i174)
  %tobool24.not.i175 = icmp eq i32 %and.i.i.i174, 0
  br i1 %tobool24.not.i175, label %if.then28.i177, label %do.body1.i176.dev_put.exit179_crit_edge, !prof !38

do.body1.i176.dev_put.exit179_crit_edge:          ; preds = %do.body1.i176
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit179

if.then28.i177:                                   ; preds = %do.body1.i176
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit179

dev_put.exit179:                                  ; preds = %if.then28.i177, %do.body1.i176.dev_put.exit179_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %89) #8, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit179, %dev_put.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %dev_put.exit179 ], [ 0, %dev_put.exit ], [ -19, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_llsec_getparams(ptr nocapture noundef readnone %skb, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i72 = alloca i32, align 4
  %tmp.i70 = alloca i8, align 1
  %tmp.i68 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  %params = alloca %struct.ieee802154_llsec_params, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %params) #8
  %0 = call ptr @memset(ptr %params, i32 255, i32 80)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_llsec_getparams.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_llsec_getparams, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_llsec_getparams.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %ml_priv.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 128
  %1 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ml_priv.i, align 8
  %llsec = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %llsec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %llsec, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %if.end6.do.body1.i_crit_edge, label %if.end10

if.end6.do.body1.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i

if.end10:                                         ; preds = %if.end6
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool12.not = icmp eq ptr %call.i.i, null
  br i1 %tobool12.not, label %if.end10.do.body1.i_crit_edge, label %if.end14

if.end10.do.body1.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i

if.end14:                                         ; preds = %if.end10
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %info, align 4
  %call15 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %6, ptr noundef nonnull @nl802154_family, i32 noundef 0, i8 noundef zeroext 36) #8
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.out_free_crit_edge, label %if.end18

if.end14.out_free_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end18:                                         ; preds = %if.end14
  %7 = ptrtoint ptr %llsec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %llsec, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call20 = call i32 %10(ptr noundef nonnull %call3, ptr noundef nonnull %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.end18.out_free_crit_edge, label %if.end22

if.end18.out_free_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end22:                                         ; preds = %if.end18
  %call.i = call i32 @strlen(ptr noundef nonnull %call3) #11
  %add.i = add i32 %call.i, 1
  %call1.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %add.i, ptr noundef nonnull %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool24.not = icmp eq i32 %call1.i, 0
  br i1 %tobool24.not, label %lor.lhs.false, label %if.end22.out_free_crit_edge

if.end22.out_free_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

lor.lhs.false:                                    ; preds = %if.end22
  %ifindex = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 17
  %11 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i, align 4
  %call.i67 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool26.not = icmp eq i32 %call.i67, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %lor.lhs.false.out_free_crit_edge

lor.lhs.false.out_free_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %params, align 8, !range !42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i68) #8
  %16 = ptrtoint ptr %tmp.i68 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %tmp.i68, align 1
  %call.i69 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 41, i32 noundef 1, ptr noundef nonnull %tmp.i68) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i68) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool30.not = icmp eq i32 %call.i69, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %lor.lhs.false27.out_free_crit_edge

lor.lhs.false27.out_free_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %out_level = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 2
  %17 = ptrtoint ptr %out_level to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %out_level, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i70) #8
  %19 = ptrtoint ptr %tmp.i70 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %tmp.i70, align 1
  %call.i71 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 42, i32 noundef 1, ptr noundef nonnull %tmp.i70) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool33.not = icmp eq i32 %call.i71, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %lor.lhs.false31.out_free_crit_edge

lor.lhs.false31.out_free_crit_edge:               ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

lor.lhs.false34:                                  ; preds = %lor.lhs.false31
  %frame_counter = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 1
  %20 = ptrtoint ptr %frame_counter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frame_counter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i72) #8
  %22 = ptrtoint ptr %tmp.i72 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i72, align 4
  %call.i73 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 47, i32 noundef 4, ptr noundef nonnull %tmp.i72) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i72) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool36.not = icmp eq i32 %call.i73, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %lor.lhs.false34.out_free_crit_edge

lor.lhs.false34.out_free_crit_edge:               ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

lor.lhs.false37:                                  ; preds = %lor.lhs.false34
  %out_key = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 3
  %call38 = call fastcc i32 @ieee802154_llsec_fill_key_id(ptr noundef nonnull %call.i.i, ptr noundef %out_key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %lor.lhs.false37.out_free_crit_edge

lor.lhs.false37.out_free_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end41:                                         ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @dev_put(ptr noundef nonnull %call3)
  %call42 = call i32 @ieee802154_nl_reply(ptr noundef nonnull %call.i.i, ptr noundef %info) #8
  br label %cleanup

out_free:                                         ; preds = %lor.lhs.false37.out_free_crit_edge, %lor.lhs.false34.out_free_crit_edge, %lor.lhs.false31.out_free_crit_edge, %lor.lhs.false27.out_free_crit_edge, %lor.lhs.false.out_free_crit_edge, %if.end22.out_free_crit_edge, %if.end18.out_free_crit_edge, %if.end14.out_free_crit_edge
  %rc.0 = phi i32 [ %call20, %if.end18.out_free_crit_edge ], [ -105, %if.end14.out_free_crit_edge ], [ -105, %lor.lhs.false37.out_free_crit_edge ], [ -105, %lor.lhs.false34.out_free_crit_edge ], [ -105, %lor.lhs.false31.out_free_crit_edge ], [ -105, %lor.lhs.false27.out_free_crit_edge ], [ -105, %lor.lhs.false.out_free_crit_edge ], [ -105, %if.end22.out_free_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %do.body1.i

do.body1.i:                                       ; preds = %out_free, %if.end10.do.body1.i_crit_edge, %if.end6.do.body1.i_crit_edge
  %rc.1 = phi i32 [ %rc.0, %out_free ], [ -105, %if.end10.do.body1.i_crit_edge ], [ -95, %if.end6.do.body1.i_crit_edge ]
  %23 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 118
  %24 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcpu_refcnt.i, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %add.i74 = add i32 %32, %26
  %33 = inttoptr i32 %add.i74 to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add13.i = add i32 %35, -1
  store i32 %add13.i, ptr %33, align 4
  %36 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !38

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #8, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %if.end41, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %dev_put.exit ], [ %call42, %if.end41 ], [ -19, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %params) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee802154_llsec_fill_key_id(ptr noundef %msg, ptr nocapture noundef readonly %desc) unnamed_addr #0 align 64 {
entry:
  %tmp.i.i79 = alloca i64, align 8
  %tmp.i77 = alloca i32, align 4
  %tmp.i75 = alloca i8, align 1
  %tmp.i.i73 = alloca i64, align 8
  %tmp.i.i71 = alloca i16, align 2
  %tmp.i.i = alloca i16, align 2
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %desc, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 43, i32 noundef 1, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %desc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then3, label %if.end.land.lhs.true30_crit_edge

if.end.land.lhs.true30_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true30

if.then3:                                         ; preds = %if.end
  %5 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2
  %pan_id = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pan_id, align 2
  %8 = call i16 @llvm.bswap.i16(i16 %7) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #8
  %9 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %tmp.i.i, align 2
  %call.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.return_crit_edge

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end7:                                          ; preds = %if.then3
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp10 = icmp eq i8 %11, 2
  br i1 %cmp10, label %land.lhs.true, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end7
  %12 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 8
  %15 = call i16 @llvm.bswap.i16(i16 %14) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i71) #8
  %16 = ptrtoint ptr %tmp.i.i71 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %tmp.i.i71, align 2
  %call.i.i72 = call i32 @nla_put(ptr noundef %msg, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i.i71) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72)
  %tobool13.not = icmp eq i32 %call.i.i72, 0
  br i1 %tobool13.not, label %if.end15thread-pre-split, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end15thread-pre-split:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr = load i8, ptr %5, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end15thread-pre-split, %if.end7.if.end15_crit_edge
  %18 = phi i8 [ %.pr, %if.end15thread-pre-split ], [ %11, %if.end7.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp18 = icmp eq i8 %18, 3
  br i1 %cmp18, label %land.lhs.true20, label %if.end15.if.end25_crit_edge

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true20:                                  ; preds = %if.end15
  %19 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %19, align 8
  %22 = call i64 @llvm.bswap.i64(i64 %21) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i73) #8
  %23 = ptrtoint ptr %tmp.i.i73 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %tmp.i.i73, align 8
  %call.i.i74 = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i.i73, i32 noundef 56) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i73) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74)
  %tobool22.not = icmp eq i32 %call.i.i74, 0
  br i1 %tobool22.not, label %land.lhs.true20.if.end25_crit_edge, label %land.lhs.true20.return_crit_edge

land.lhs.true20.return_crit_edge:                 ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true20.if.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true20.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr81 = load i8, ptr %desc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr81)
  %cmp28.not = icmp eq i8 %.pr81, 0
  br i1 %cmp28.not, label %if.end25.if.end52_crit_edge, label %if.end25.land.lhs.true30_crit_edge

if.end25.land.lhs.true30_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true30

if.end25.if.end52_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

land.lhs.true30:                                  ; preds = %if.end25.land.lhs.true30_crit_edge, %if.end.land.lhs.true30_crit_edge
  %id = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 1
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %id, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i75) #8
  %27 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %tmp.i75, align 1
  %call.i76 = call i32 @nla_put(ptr noundef %msg, i32 noundef 46, i32 noundef 1, ptr noundef nonnull %tmp.i75) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i75) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool32.not = icmp eq i32 %call.i76, 0
  br i1 %tobool32.not, label %if.end34, label %land.lhs.true30.return_crit_edge

land.lhs.true30.return_crit_edge:                 ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end34:                                         ; preds = %land.lhs.true30
  %28 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %28)
  %.pr83 = load i8, ptr %desc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr83)
  %cmp37 = icmp eq i8 %.pr83, 2
  br i1 %cmp37, label %land.lhs.true39, label %if.end34.if.end43_crit_edge

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.lhs.true39:                                  ; preds = %if.end34
  %29 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i77) #8
  %33 = ptrtoint ptr %tmp.i77 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tmp.i77, align 4
  %call.i78 = call i32 @nla_put(ptr noundef %msg, i32 noundef 44, i32 noundef 4, ptr noundef nonnull %tmp.i77) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool41.not = icmp eq i32 %call.i78, 0
  br i1 %tobool41.not, label %if.end43thread-pre-split, label %land.lhs.true39.return_crit_edge

land.lhs.true39.return_crit_edge:                 ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end43thread-pre-split:                         ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %34)
  %.pr85 = load i8, ptr %desc, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end43thread-pre-split, %if.end34.if.end43_crit_edge
  %35 = phi i8 [ %.pr85, %if.end43thread-pre-split ], [ %.pr83, %if.end34.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cmp46 = icmp eq i8 %35, 3
  br i1 %cmp46, label %land.lhs.true48, label %if.end43.if.end52_crit_edge

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

land.lhs.true48:                                  ; preds = %if.end43
  %36 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %36, align 8
  %39 = call i64 @llvm.bswap.i64(i64 %38) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i79) #8
  %40 = ptrtoint ptr %tmp.i.i79 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %tmp.i.i79, align 8
  %call.i.i80 = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 45, i32 noundef 8, ptr noundef nonnull %tmp.i.i79, i32 noundef 56) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i79) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80)
  %tobool50.not = icmp eq i32 %call.i.i80, 0
  br i1 %tobool50.not, label %land.lhs.true48.if.end52_crit_edge, label %land.lhs.true48.return_crit_edge

land.lhs.true48.return_crit_edge:                 ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true48.if.end52_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true48.if.end52_crit_edge, %if.end43.if.end52_crit_edge, %if.end25.if.end52_crit_edge
  br label %return

return:                                           ; preds = %if.end52, %land.lhs.true48.return_crit_edge, %land.lhs.true39.return_crit_edge, %land.lhs.true30.return_crit_edge, %land.lhs.true20.return_crit_edge, %land.lhs.true.return_crit_edge, %if.then3.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ -90, %entry.return_crit_edge ], [ -90, %if.then3.return_crit_edge ], [ -90, %land.lhs.true.return_crit_edge ], [ -90, %land.lhs.true20.return_crit_edge ], [ -90, %land.lhs.true30.return_crit_edge ], [ -90, %land.lhs.true39.return_crit_edge ], [ -90, %land.lhs.true48.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_nl_reply(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_llsec_setparams(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.ieee802154_llsec_params, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %params) #8
  %0 = call ptr @memset(ptr %params, i32 255, i32 80)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_llsec_setparams.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_llsec_setparams, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_llsec_setparams.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 41
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %land.lhs.true, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end6
  %arrayidx9 = getelementptr ptr, ptr %2, i32 43
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %land.lhs.true11, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %arrayidx13 = getelementptr ptr, ptr %2, i32 42
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %8, null
  br i1 %tobool14.not, label %land.lhs.true11.do.body1.i113_crit_edge, label %land.lhs.true11.if.end16_crit_edge

land.lhs.true11.if.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true11.do.body1.i113_crit_edge:          ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i113

if.end16:                                         ; preds = %land.lhs.true11.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %ml_priv.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 128
  %9 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ml_priv.i, align 8
  %llsec = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %llsec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %llsec, align 4
  %tobool18.not = icmp eq ptr %12, null
  br i1 %tobool18.not, label %if.end16.do.body1.i113_crit_edge, label %if.end20

if.end16.do.body1.i113_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i113

if.end20:                                         ; preds = %if.end16
  %arrayidx22 = getelementptr ptr, ptr %2, i32 42
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %14, null
  br i1 %tobool23.not, label %if.end20.if.end30_crit_edge, label %land.lhs.true24

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true24:                                  ; preds = %if.end20
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %16)
  %cmp = icmp ugt i8 %16, 7
  br i1 %cmp, label %land.lhs.true24.do.body1.i113_crit_edge, label %land.lhs.true24.if.end30_crit_edge

land.lhs.true24.if.end30_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true24.do.body1.i113_crit_edge:          ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i113

if.end30:                                         ; preds = %land.lhs.true24.if.end30_crit_edge, %if.end20.if.end30_crit_edge
  br i1 %tobool7.not, label %if.end30.if.end40_crit_edge, label %if.then34

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i101 = getelementptr i8, ptr %4, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i101 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr.i.i101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool38 = icmp ne i8 %18, 0
  %frombool39 = zext i1 %tobool38 to i8
  %19 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool39, ptr %params, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %if.end30.if.end40_crit_edge
  %changed.0 = phi i32 [ 1, %if.then34 ], [ 0, %if.end30.if.end40_crit_edge ]
  %arrayidx42 = getelementptr ptr, ptr %2, i32 43
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx42, align 4
  %tobool43.not = icmp eq ptr %21, null
  br i1 %tobool43.not, label %if.end40.if.end50_crit_edge, label %if.then44

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then44:                                        ; preds = %if.end40
  %out_key = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 3
  %call45 = call fastcc i32 @ieee802154_llsec_parse_key_id(ptr noundef %info, ptr noundef %out_key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.then44.do.body1.i113_crit_edge

if.then44.do.body1.i113_crit_edge:                ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i113

if.end48:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %or49 = or i32 %changed.0, 8
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %if.end40.if.end50_crit_edge
  %changed.1 = phi i32 [ %or49, %if.end48 ], [ %changed.0, %if.end40.if.end50_crit_edge ]
  %22 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %attrs, align 4
  %arrayidx52 = getelementptr ptr, ptr %23, i32 42
  %24 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx52, align 4
  %tobool53.not = icmp eq ptr %25, null
  br i1 %tobool53.not, label %if.end50.if.end59_crit_edge, label %if.then54

if.end50.if.end59_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i102 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i102 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i102, align 1
  %out_level = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 2
  %28 = ptrtoint ptr %out_level to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %out_level, align 8
  %or58 = or i32 %changed.1, 4
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end50.if.end59_crit_edge
  %changed.2 = phi i32 [ %or58, %if.then54 ], [ %changed.1, %if.end50.if.end59_crit_edge ]
  %arrayidx61 = getelementptr ptr, ptr %23, i32 47
  %29 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx61, align 4
  %tobool62.not = icmp eq ptr %30, null
  br i1 %tobool62.not, label %if.end59.do.body1.i_crit_edge, label %if.then63

if.end59.do.body1.i_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i103 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i103 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i103, align 4
  %frame_counter = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 1
  %33 = ptrtoint ptr %frame_counter to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %frame_counter, align 4
  %or67 = or i32 %changed.2, 2
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then63, %if.end59.do.body1.i_crit_edge
  %changed.3 = phi i32 [ %or67, %if.then63 ], [ %changed.2, %if.end59.do.body1.i_crit_edge ]
  %34 = ptrtoint ptr %llsec to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %llsec, align 4
  %set_params = getelementptr inbounds %struct.ieee802154_llsec_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_params, align 4
  %call70 = call i32 %37(ptr noundef nonnull %call3, ptr noundef nonnull %params, i32 noundef %changed.3) #8
  %38 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 118
  %39 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pcpu_refcnt.i, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %47, %41
  %48 = inttoptr i32 %add.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add13.i = add i32 %50, -1
  store i32 %add13.i, ptr %48, align 4
  %51 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !38

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #8, !srcloc !39
  br label %cleanup

do.body1.i113:                                    ; preds = %if.then44.do.body1.i113_crit_edge, %land.lhs.true24.do.body1.i113_crit_edge, %if.end16.do.body1.i113_crit_edge, %land.lhs.true11.do.body1.i113_crit_edge
  %rc.0 = phi i32 [ -22, %land.lhs.true24.do.body1.i113_crit_edge ], [ -22, %if.then44.do.body1.i113_crit_edge ], [ -22, %land.lhs.true11.do.body1.i113_crit_edge ], [ -95, %if.end16.do.body1.i113_crit_edge ]
  %52 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i105 = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 118
  %53 = ptrtoint ptr %pcpu_refcnt.i105 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pcpu_refcnt.i105, align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i106 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i106 to ptr
  %cpu.i107 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %cpu.i107 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu.i107, align 4
  %arrayidx.i108 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i108, align 4
  %add.i109 = add i32 %61, %55
  %62 = inttoptr i32 %add.i109 to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %add13.i110 = add i32 %64, -1
  store i32 %add13.i110, ptr %62, align 4
  %65 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i111 = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i111)
  %tobool24.not.i112 = icmp eq i32 %and.i.i.i111, 0
  br i1 %tobool24.not.i112, label %if.then28.i114, label %do.body1.i113.dev_put.exit116_crit_edge, !prof !38

do.body1.i113.dev_put.exit116_crit_edge:          ; preds = %do.body1.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit116

if.then28.i114:                                   ; preds = %do.body1.i113
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit116

dev_put.exit116:                                  ; preds = %if.then28.i114, %do.body1.i113.dev_put.exit116_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %52) #8, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit116, %dev_put.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %dev_put.exit116 ], [ %call70, %dev_put.exit ], [ -19, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %params) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ieee802154_llsec_parse_key_id(ptr nocapture noundef readonly %info, ptr nocapture noundef %desc) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %desc, i32 0, i32 24)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 43
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i.i, align 1
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %desc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs, align 4
  br i1 %cmp, label %if.then5, label %land.lhs.true

if.then5:                                         ; preds = %if.end
  %arrayidx7 = getelementptr ptr, ptr %9, i32 6
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.then5.return_crit_edge, label %if.end10

if.then5.return_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end10:                                         ; preds = %if.then5
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i.i, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #8
  %15 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2
  %pan_id = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %pan_id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %14, ptr %pan_id, align 2
  %17 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attrs, align 4
  %arrayidx15 = getelementptr ptr, ptr %18, i32 4
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %20, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %15, align 8
  %22 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %attrs, align 4
  %arrayidx20 = getelementptr ptr, ptr %23, i32 4
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx20, align 4
  %add.ptr.i.i.i109 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i.i109 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i.i.i109, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #8
  %29 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %28, ptr %29, align 8
  br label %return

if.else:                                          ; preds = %if.end10
  %arrayidx23 = getelementptr ptr, ptr %18, i32 5
  %31 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %32, null
  br i1 %tobool24.not, label %if.else.return_crit_edge, label %if.end26

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end26:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %15, align 8
  %34 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %attrs, align 4
  %arrayidx29 = getelementptr ptr, ptr %35, i32 5
  %36 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx29, align 4
  %add.ptr.i.i110 = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i110 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %temp.0.copyload.i.i = load i64, ptr %add.ptr.i.i110, align 1
  %39 = tail call i64 @llvm.bswap.i64(i64 %temp.0.copyload.i.i) #8
  %40 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %39, ptr %40, align 8
  br label %return

land.lhs.true:                                    ; preds = %if.end
  %arrayidx38 = getelementptr ptr, ptr %9, i32 46
  %42 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %43, null
  br i1 %tobool39.not, label %land.lhs.true.return_crit_edge, label %if.end41

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end41:                                         ; preds = %land.lhs.true
  %44 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %if.end70 [
    i8 2, label %land.lhs.true46
    i8 3, label %land.lhs.true56
  ]

land.lhs.true46:                                  ; preds = %if.end41
  %45 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %attrs, align 4
  %arrayidx48 = getelementptr ptr, ptr %46, i32 44
  %47 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx48, align 4
  %tobool49.not = icmp eq ptr %48, null
  br i1 %tobool49.not, label %land.lhs.true46.return_crit_edge, label %if.end70.thread118

land.lhs.true46.return_crit_edge:                 ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end70.thread118:                               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %attrs, align 4
  %arrayidx68119 = getelementptr ptr, ptr %50, i32 46
  %51 = ptrtoint ptr %arrayidx68119 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx68119, align 4
  %add.ptr.i.i111120 = getelementptr i8, ptr %52, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i111120 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr.i.i111120, align 1
  %id121 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 1
  %55 = ptrtoint ptr %id121 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %id121, align 1
  %56 = load ptr, ptr %attrs, align 4
  %arrayidx74 = getelementptr ptr, ptr %56, i32 44
  %57 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx74, align 4
  %add.ptr.i.i112 = getelementptr i8, ptr %58, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i112 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i.i112, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %62 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %61, ptr %62, align 8
  br label %return

land.lhs.true56:                                  ; preds = %if.end41
  %64 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %attrs, align 4
  %arrayidx58 = getelementptr ptr, ptr %65, i32 45
  %66 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx58, align 4
  %tobool59.not = icmp eq ptr %67, null
  br i1 %tobool59.not, label %land.lhs.true56.return_crit_edge, label %if.end70.thread122

land.lhs.true56.return_crit_edge:                 ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end70.thread122:                               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %attrs, align 4
  %arrayidx68123 = getelementptr ptr, ptr %69, i32 46
  %70 = ptrtoint ptr %arrayidx68123 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx68123, align 4
  %add.ptr.i.i111124 = getelementptr i8, ptr %71, i32 4
  %72 = ptrtoint ptr %add.ptr.i.i111124 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %add.ptr.i.i111124, align 1
  %id125 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 1
  %74 = ptrtoint ptr %id125 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %id125, align 1
  %75 = load ptr, ptr %attrs, align 4
  %arrayidx78 = getelementptr ptr, ptr %75, i32 45
  %76 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx78, align 4
  %add.ptr.i.i113 = getelementptr i8, ptr %77, i32 4
  %78 = ptrtoint ptr %add.ptr.i.i113 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %temp.0.copyload.i.i114 = load i64, ptr %add.ptr.i.i113, align 1
  %79 = tail call i64 @llvm.bswap.i64(i64 %temp.0.copyload.i.i114) #8
  %80 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 2
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %79, ptr %80, align 8
  br label %return

if.end70:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %attrs, align 4
  %arrayidx68 = getelementptr ptr, ptr %83, i32 46
  %84 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx68, align 4
  %add.ptr.i.i111 = getelementptr i8, ptr %85, i32 4
  %86 = ptrtoint ptr %add.ptr.i.i111 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %add.ptr.i.i111, align 1
  %id = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %desc, i32 0, i32 1
  %88 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %id, align 1
  br label %return

return:                                           ; preds = %if.end70, %if.end70.thread122, %land.lhs.true56.return_crit_edge, %if.end70.thread118, %land.lhs.true46.return_crit_edge, %land.lhs.true.return_crit_edge, %if.end26, %if.else.return_crit_edge, %if.then17, %if.then5.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.then5.return_crit_edge ], [ -22, %if.else.return_crit_edge ], [ -22, %land.lhs.true.return_crit_edge ], [ -22, %land.lhs.true46.return_crit_edge ], [ -22, %land.lhs.true56.return_crit_edge ], [ 0, %if.end70 ], [ 0, %if.end70.thread122 ], [ 0, %if.end70.thread118 ], [ 0, %if.end26 ], [ 0, %if.then17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_llsec_add_key(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %commands.i.i = alloca [8 x i32], align 4
  %key.i = alloca %struct.ieee802154_llsec_key, align 4
  %id.i = alloca %struct.ieee802154_llsec_key_id, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %nlhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlhdr, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlmsg_flags, align 2
  %4 = and i16 %3, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %4)
  %cmp.not = icmp eq i16 %4, 1536
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.end
  %ml_priv.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 128
  %5 = ptrtoint ptr %ml_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ml_priv.i.i, align 8
  %llsec.i = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %llsec.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %if.end.i.do.body1.i.i_crit_edge, label %if.else.i

if.end.i.do.body1.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i.i

if.else.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %key.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %id.i) #8
  %9 = call ptr @memset(ptr %id.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %commands.i.i) #8
  %10 = getelementptr inbounds [8 x i32], ptr %commands.i.i, i32 0, i32 1
  %11 = getelementptr inbounds [8 x i32], ptr %commands.i.i, i32 0, i32 2
  %12 = getelementptr inbounds [8 x i32], ptr %commands.i.i, i32 0, i32 3
  %13 = getelementptr inbounds [8 x i32], ptr %commands.i.i, i32 0, i32 4
  %14 = getelementptr inbounds [8 x i32], ptr %commands.i.i, i32 0, i32 5
  %15 = getelementptr inbounds [8 x i32], ptr %commands.i.i, i32 0, i32 6
  %16 = getelementptr inbounds [8 x i32], ptr %commands.i.i, i32 0, i32 7
  %17 = call ptr @memset(ptr %commands.i.i, i32 255, i32 32)
  %18 = call ptr @memset(ptr %key.i, i32 0, i32 24)
  %attrs.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %19 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %attrs.i.i, align 4
  %arrayidx.i.i4 = getelementptr ptr, ptr %20, i32 49
  %21 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i4, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.else.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.else.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_llsec_parse_key.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.else.i
  %arrayidx2.i.i = getelementptr ptr, ptr %20, i32 48
  %23 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %24, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_llsec_parse_key.exit.thread.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %22, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i.i.i.i, align 1
  %27 = and i8 %26, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool6.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %arrayidx8.i.i = getelementptr ptr, ptr %20, i32 50
  %28 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx8.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %29, null
  br i1 %tobool9.not.i.i, label %land.lhs.true.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge, label %land.lhs.true.i.i.if.end11.i.i_crit_edge

land.lhs.true.i.i.if.end11.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

land.lhs.true.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_llsec_parse_key.exit.thread.i

if.end11.i.i:                                     ; preds = %land.lhs.true.i.i.if.end11.i.i_crit_edge, %if.end.i.i.if.end11.i.i_crit_edge
  %arrayidx13.i.i = getelementptr ptr, ptr %20, i32 50
  %30 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx13.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %31, null
  br i1 %tobool14.not.i.i, label %if.end11.i.i.lor.lhs.false.i_crit_edge, label %if.then15.i.i

if.end11.i.i.lor.lhs.false.i_crit_edge:           ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

if.then15.i.i:                                    ; preds = %if.end11.i.i
  %call18.i.i = call i32 @nla_memcpy(ptr noundef nonnull %commands.i.i, ptr noundef nonnull %31, i32 noundef 32) #8
  %32 = ptrtoint ptr %commands.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %commands.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool20.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool20.not.i.i, label %lor.lhs.false21.i.i, label %if.then15.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge

if.then15.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_llsec_parse_key.exit.thread.i

lor.lhs.false21.i.i:                              ; preds = %if.then15.i.i
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool23.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool23.not.i.i, label %lor.lhs.false24.i.i, label %lor.lhs.false21.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge

lor.lhs.false21.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge: ; preds = %lor.lhs.false21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_llsec_parse_key.exit.thread.i

lor.lhs.false24.i.i:                              ; preds = %lor.lhs.false21.i.i
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool26.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool26.not.i.i, label %lor.lhs.false27.i.i, label %lor.lhs.false24.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge

lor.lhs.false24.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge: ; preds = %lor.lhs.false24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_llsec_parse_key.exit.thread.i

lor.lhs.false27.i.i:                              ; preds = %lor.lhs.false24.i.i
  %38 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool29.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool29.not.i.i, label %lor.lhs.false30.i.i, label %lor.lhs.false27.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge

lor.lhs.false27.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge: ; preds = %lor.lhs.false27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_llsec_parse_key.exit.thread.i

lor.lhs.false30.i.i:                              ; preds = %lor.lhs.false27.i.i
  %40 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool32.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool32.not.i.i, label %lor.lhs.false33.i.i, label %lor.lhs.false30.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge

lor.lhs.false30.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge: ; preds = %lor.lhs.false30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_llsec_parse_key.exit.thread.i

lor.lhs.false33.i.i:                              ; preds = %lor.lhs.false30.i.i
  %42 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool35.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool35.not.i.i, label %lor.lhs.false36.i.i, label %lor.lhs.false33.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge

lor.lhs.false33.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge: ; preds = %lor.lhs.false33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_llsec_parse_key.exit.thread.i

lor.lhs.false36.i.i:                              ; preds = %lor.lhs.false33.i.i
  %44 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool38.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool38.not.i.i, label %lor.lhs.false39.i.i, label %lor.lhs.false36.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge

lor.lhs.false36.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge: ; preds = %lor.lhs.false36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_llsec_parse_key.exit.thread.i

lor.lhs.false39.i.i:                              ; preds = %lor.lhs.false36.i.i
  %46 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %47)
  %cmp.i.i = icmp ugt i32 %47, 1023
  br i1 %cmp.i.i, label %lor.lhs.false39.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge, label %if.end43.i.i

lor.lhs.false39.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge: ; preds = %lor.lhs.false39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_llsec_parse_key.exit.thread.i

if.end43.i.i:                                     ; preds = %lor.lhs.false39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_frame_ids.i.i = getelementptr inbounds %struct.ieee802154_llsec_key, ptr %key.i, i32 0, i32 1
  %48 = ptrtoint ptr %cmd_frame_ids.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %cmd_frame_ids.i.i, align 4
  br label %lor.lhs.false.i

ieee802154_llsec_parse_key.exit.thread.i:         ; preds = %lor.lhs.false39.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge, %lor.lhs.false36.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge, %lor.lhs.false33.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge, %lor.lhs.false30.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge, %lor.lhs.false27.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge, %lor.lhs.false24.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge, %lor.lhs.false21.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge, %if.then15.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge, %land.lhs.true.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge, %lor.lhs.false.i.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge, %if.else.i.ieee802154_llsec_parse_key.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %commands.i.i) #8
  br label %llsec_add_key.exit

lor.lhs.false.i:                                  ; preds = %if.end43.i.i, %if.end11.i.i.lor.lhs.false.i_crit_edge
  %49 = ptrtoint ptr %key.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %26, ptr %key.i, align 4
  %key46.i.i = getelementptr inbounds %struct.ieee802154_llsec_key, ptr %key.i, i32 0, i32 2
  %50 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %attrs.i.i, align 4
  %arrayidx49.i.i = getelementptr ptr, ptr %51, i32 48
  %52 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx49.i.i, align 4
  %call50.i.i = call i32 @nla_memcpy(ptr noundef %key46.i.i, ptr noundef %53, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %commands.i.i) #8
  %call2.i = call fastcc i32 @ieee802154_llsec_parse_key_id(ptr noundef %info, ptr noundef nonnull %id.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i7, label %lor.lhs.false.i.llsec_add_key.exit_crit_edge

lor.lhs.false.i.llsec_add_key.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_add_key.exit

if.end.i7:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %llsec.i, align 4
  %add_key.i = getelementptr inbounds %struct.ieee802154_llsec_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %add_key.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add_key.i, align 4
  %call4.i6 = call i32 %57(ptr noundef nonnull %call.i, ptr noundef nonnull %id.i, ptr noundef nonnull %key.i) #8
  br label %llsec_add_key.exit

llsec_add_key.exit:                               ; preds = %if.end.i7, %lor.lhs.false.i.llsec_add_key.exit_crit_edge, %ieee802154_llsec_parse_key.exit.thread.i
  %retval.0.i8 = phi i32 [ %call4.i6, %if.end.i7 ], [ -22, %lor.lhs.false.i.llsec_add_key.exit_crit_edge ], [ -22, %ieee802154_llsec_parse_key.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %id.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %key.i) #8
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %llsec_add_key.exit, %if.end.i.do.body1.i.i_crit_edge
  %rc.0.i = phi i32 [ %retval.0.i8, %llsec_add_key.exit ], [ -95, %if.end.i.do.body1.i.i_crit_edge ]
  %58 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %59 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  %62 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %67, %61
  %68 = inttoptr i32 %add.i.i to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add13.i.i = add i32 %70, -1
  store i32 %add13.i.i, ptr %68, align 4
  %71 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i.i = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !38

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #8, !srcloc !39
  br label %return

return:                                           ; preds = %dev_put.exit.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %rc.0.i, %dev_put.exit.i ], [ -19, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_llsec_del_key(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %id.i = alloca %struct.ieee802154_llsec_key_id, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.ieee802154_nl_llsec_change.exit_crit_edge, label %if.end.i

entry.ieee802154_nl_llsec_change.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_nl_llsec_change.exit

if.end.i:                                         ; preds = %entry
  %ml_priv.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv.i.i, align 8
  %llsec.i = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %llsec.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.end.i.do.body1.i.i_crit_edge, label %if.else.i

if.end.i.do.body1.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i.i

if.else.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %id.i) #8
  %4 = call ptr @memset(ptr %id.i, i32 255, i32 24)
  %call1.i = call fastcc i32 @ieee802154_llsec_parse_key_id(ptr noundef %info, ptr noundef nonnull %id.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i2 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i2, label %if.end.i4, label %if.else.i.llsec_remove_key.exit_crit_edge

if.else.i.llsec_remove_key.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_remove_key.exit

if.end.i4:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %llsec.i, align 4
  %del_key.i = getelementptr inbounds %struct.ieee802154_llsec_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %del_key.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %del_key.i, align 4
  %call2.i = call i32 %8(ptr noundef nonnull %call.i, ptr noundef nonnull %id.i) #8
  br label %llsec_remove_key.exit

llsec_remove_key.exit:                            ; preds = %if.end.i4, %if.else.i.llsec_remove_key.exit_crit_edge
  %retval.0.i5 = phi i32 [ %call2.i, %if.end.i4 ], [ -22, %if.else.i.llsec_remove_key.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %id.i) #8
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %llsec_remove_key.exit, %if.end.i.do.body1.i.i_crit_edge
  %rc.0.i = phi i32 [ %retval.0.i5, %llsec_remove_key.exit ], [ -95, %if.end.i.do.body1.i.i_crit_edge ]
  %9 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %10 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %18, %12
  %19 = inttoptr i32 %add.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add13.i.i = add i32 %21, -1
  store i32 %add13.i.i, ptr %19, align 4
  %22 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !38

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #8, !srcloc !39
  br label %ieee802154_nl_llsec_change.exit

ieee802154_nl_llsec_change.exit:                  ; preds = %dev_put.exit.i, %entry.ieee802154_nl_llsec_change.exit_crit_edge
  %retval.0.i = phi i32 [ %rc.0.i, %dev_put.exit.i ], [ -19, %entry.ieee802154_nl_llsec_change.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_llsec_dump_keys(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ieee802154_llsec_dump_table(ptr noundef %skb, ptr noundef %cb, ptr noundef nonnull @llsec_iter_keys)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee802154_llsec_dump_table(ptr noundef %skb, ptr nocapture noundef %cb, ptr nocapture noundef readonly %step) unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.llsec_dump_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data) #8
  %5 = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 1
  %6 = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 2
  %7 = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 3
  %8 = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 4
  %9 = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 5
  %10 = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 6
  %11 = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 7
  %12 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %13 = call ptr @memset(ptr %data, i32 255, i32 32)
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %12, align 4
  %dev_base_head = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 16
  %16 = ptrtoint ptr %dev_base_head to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn51 = load ptr, ptr %dev_base_head, align 4
  %cmp.not53 = icmp eq ptr %.pn51, %dev_base_head
  br i1 %cmp.not53, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx10 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %arrayidx11 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %skip.for.body_crit_edge, %for.body.lr.ph
  %.pn56 = phi ptr [ %.pn51, %for.body.lr.ph ], [ %.pn, %skip.for.body_crit_edge ]
  %idx.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %skip.for.body_crit_edge ]
  %dev.057 = getelementptr i8, ptr %.pn56, i32 -40
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.054, i32 %15)
  %cmp2 = icmp slt i32 %idx.054, %15
  br i1 %cmp2, label %for.body.skip_crit_edge, label %lor.lhs.false

for.body.skip_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

lor.lhs.false:                                    ; preds = %for.body
  %type = getelementptr i8, ptr %.pn56, i32 168
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 804, i16 %18)
  %cmp3.not = icmp eq i16 %18, 804
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.skip_crit_edge

lor.lhs.false.skip_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

if.end:                                           ; preds = %lor.lhs.false
  %ml_priv.i = getelementptr i8, ptr %.pn56, i32 1040
  %19 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ml_priv.i, align 8
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %10, align 4
  %llsec = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %20, i32 0, i32 7
  %22 = ptrtoint ptr %llsec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %llsec, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end.skip_crit_edge, label %if.end8

if.end.skip_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

if.end8:                                          ; preds = %if.end
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %skb, ptr %data, align 4
  %25 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx10, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %5, align 4
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx11, align 4
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %6, align 4
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev.057, ptr %9, align 4
  %32 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3, i32 12
  %34 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %portid, align 4
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %7, align 4
  %37 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nlmsg_seq, align 4
  %41 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %8, align 4
  %lock_table = getelementptr inbounds %struct.ieee802154_llsec_ops, ptr %23, i32 0, i32 10
  %42 = ptrtoint ptr %lock_table to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lock_table, align 4
  call void %43(ptr noundef %dev.057) #8
  %44 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %10, align 4
  %llsec20 = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %llsec20 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %llsec20, align 4
  %get_table = getelementptr inbounds %struct.ieee802154_llsec_ops, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %get_table to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_table, align 4
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %9, align 4
  call void %49(ptr noundef %51, ptr noundef %11) #8
  %call22 = call i32 %step(ptr noundef nonnull %data) #8, !callees !43
  %52 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %10, align 4
  %llsec24 = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %llsec24 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %llsec24, align 4
  %unlock_table = getelementptr inbounds %struct.ieee802154_llsec_ops, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %unlock_table to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %unlock_table, align 4
  call void %57(ptr noundef %dev.057) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp25 = icmp slt i32 %call22, 0
  br i1 %cmp25, label %if.end8.for.end_crit_edge, label %if.end8.skip_crit_edge

if.end8.skip_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

skip:                                             ; preds = %if.end8.skip_crit_edge, %if.end.skip_crit_edge, %lor.lhs.false.skip_crit_edge, %for.body.skip_crit_edge
  %inc = add i32 %idx.054, 1
  %58 = ptrtoint ptr %.pn56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn = load ptr, ptr %.pn56, align 4
  %cmp.not = icmp eq ptr %.pn, %dev_base_head
  br i1 %cmp.not, label %skip.for.end_crit_edge, label %skip.for.body_crit_edge

skip.for.body_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

skip.for.end_crit_edge:                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %skip.for.end_crit_edge, %if.end8.for.end_crit_edge, %entry.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %idx.054, %if.end8.for.end_crit_edge ], [ %inc, %skip.for.end_crit_edge ]
  %59 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %idx.0.lcssa, ptr %12, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %60 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data) #8
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llsec_iter_keys(ptr nocapture noundef %data) #0 align 64 {
entry:
  %tmp.i2.i = alloca i8, align 1
  %tmp.i.i = alloca i32, align 4
  %commands.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %pos.026 = load ptr, ptr %1, align 4
  %cmp.not27 = icmp eq ptr %pos.026, %1
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %s_idx = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 1
  %nlmsg_seq = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 4
  %dev = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 5
  %3 = getelementptr inbounds [8 x i32], ptr %commands.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.029 = phi ptr [ %pos.026, %for.body.lr.ph ], [ %pos.0, %for.inc.for.body_crit_edge ]
  %idx.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %inc = add i32 %idx.028, 1
  %4 = ptrtoint ptr %s_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.028, i32 %5)
  %cmp3 = icmp slt i32 %idx.028, %5
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nlmsg_seq, align 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %commands.i) #8
  %12 = call ptr @memset(ptr %commands.i, i32 255, i32 32)
  %call.i = call ptr @genlmsg_put(ptr noundef %7, i32 noundef 0, i32 noundef %9, ptr noundef nonnull @nl802154_family, i32 noundef 2, i8 noundef zeroext 38) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.ieee802154_nl_fill_key.exit.thread_crit_edge, label %if.end.i

if.end.ieee802154_nl_fill_key.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_nl_fill_key.exit.thread

if.end.i:                                         ; preds = %if.end
  %call.i.i = call i32 @strlen(ptr noundef %11) #11
  %add.i.i = add i32 %call.i.i, 1
  %call1.i.i = call i32 @nla_put(ptr noundef %7, i32 noundef 1, i32 noundef %add.i.i, ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 17
  %13 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %15 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tmp.i.i, align 4
  %call.i1.i = call i32 @nla_put(ptr noundef %7, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool4.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.if.then.i.i_crit_edge

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %id.i = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.029, i32 0, i32 1
  %call6.i = call fastcc i32 @ieee802154_llsec_fill_key_id(ptr noundef %7, ptr noundef %id.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false5.i.if.then.i.i_crit_edge

lor.lhs.false5.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false5.i
  %key9.i = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.029, i32 0, i32 2
  %16 = ptrtoint ptr %key9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %key9.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i2.i) #8
  %20 = ptrtoint ptr %tmp.i2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %tmp.i2.i, align 1
  %call.i3.i = call i32 @nla_put(ptr noundef %7, i32 noundef 49, i32 noundef 1, ptr noundef nonnull %tmp.i2.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool11.not.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %lor.lhs.false8.i.if.then.i.i_crit_edge

lor.lhs.false8.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end13.i:                                       ; preds = %lor.lhs.false8.i
  %21 = ptrtoint ptr %key9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %key9.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %25 = and i8 %24, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool16.not.i = icmp eq i8 %25, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end25.i_crit_edge, label %if.then17.i

if.end13.i.if.end25.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then17.i:                                      ; preds = %if.end13.i
  %26 = call ptr @memset(ptr %commands.i, i32 0, i32 28)
  %cmd_frame_ids.i = getelementptr inbounds %struct.ieee802154_llsec_key, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %cmd_frame_ids.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmd_frame_ids.i, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %3, align 4
  %call21.i = call i32 @nla_put(ptr noundef %7, i32 noundef 50, i32 noundef 32, ptr noundef nonnull %commands.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.then17.i.if.end25.i_crit_edge, label %if.then17.i.if.then.i.i_crit_edge

if.then17.i.if.then.i.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then17.i.if.end25.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then17.i.if.end25.i_crit_edge, %if.end13.i.if.end25.i_crit_edge
  %30 = ptrtoint ptr %key9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %key9.i, align 8
  %key27.i = getelementptr inbounds %struct.ieee802154_llsec_key, ptr %31, i32 0, i32 2
  %call29.i = call i32 @nla_put(ptr noundef %7, i32 noundef 48, i32 noundef 16, ptr noundef %key27.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end5, label %if.end25.i.if.then.i.i_crit_edge

if.end25.i.if.then.i.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end25.i.if.then.i.i_crit_edge, %if.then17.i.if.then.i.i_crit_edge, %lor.lhs.false8.i.if.then.i.i_crit_edge, %lor.lhs.false5.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i4.i = getelementptr i8, ptr %call.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i4.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.ieee802154_nl_fill_key.exit.thread_crit_edge, label %if.then.i.i.i.i

if.then.i.i.ieee802154_nl_fill_key.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_nl_fill_key.exit.thread

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %32 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %33, %add.ptr1.i4.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !38

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %34 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i4.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %7, i32 noundef %sub.ptr.sub.i.i.i.i) #8
  br label %ieee802154_nl_fill_key.exit.thread

ieee802154_nl_fill_key.exit.thread:               ; preds = %if.end.i.i.i.i, %if.then.i.i.ieee802154_nl_fill_key.exit.thread_crit_edge, %if.end.ieee802154_nl_fill_key.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %commands.i) #8
  br label %for.end

if.end5:                                          ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr1.i.i = getelementptr i8, ptr %call.i, i32 -20
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 16
  %36 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %38 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %commands.i) #8
  %39 = ptrtoint ptr %s_idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_idx, align 4
  %inc7 = add i32 %40, 1
  store i32 %inc7, ptr %s_idx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %for.body.for.inc_crit_edge
  %41 = ptrtoint ptr %pos.029 to i32
  call void @__asan_load4_noabort(i32 %41)
  %pos.0 = load ptr, ptr %pos.029, align 4
  %42 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %table, align 4
  %cmp.not = icmp eq ptr %pos.0, %43
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ieee802154_nl_fill_key.exit.thread, %entry.for.end_crit_edge
  %rc.0 = phi i32 [ -90, %ieee802154_nl_fill_key.exit.thread ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_llsec_add_dev(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ieee802154_llsec_device, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %nlhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlhdr, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlmsg_flags, align 2
  %4 = and i16 %3, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %4)
  %cmp.not = icmp eq i16 %4, 1536
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.end
  %ml_priv.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 128
  %5 = ptrtoint ptr %ml_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ml_priv.i.i, align 8
  %llsec.i = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %llsec.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %if.end.i.do.body1.i.i_crit_edge, label %if.else.i

if.end.i.do.body1.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i.i

if.else.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %desc.i) #8
  %9 = call ptr @memset(ptr %desc.i, i32 0, i32 40)
  %attrs.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %10 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attrs.i.i, align 4
  %arrayidx.i.i4 = getelementptr ptr, ptr %11, i32 47
  %12 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i4, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.else.i.llsec_add_dev.exit_crit_edge, label %lor.lhs.false.i.i

if.else.i.llsec_add_dev.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_add_dev.exit

lor.lhs.false.i.i:                                ; preds = %if.else.i
  %arrayidx2.i.i = getelementptr ptr, ptr %11, i32 5
  %14 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.llsec_add_dev.exit_crit_edge, label %lor.lhs.false4.i.i

lor.lhs.false.i.i.llsec_add_dev.exit_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_add_dev.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %arrayidx6.i.i = getelementptr ptr, ptr %11, i32 54
  %16 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %17, null
  br i1 %tobool7.not.i.i, label %lor.lhs.false4.i.i.llsec_add_dev.exit_crit_edge, label %lor.lhs.false8.i.i

lor.lhs.false4.i.i.llsec_add_dev.exit_crit_edge:  ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_add_dev.exit

lor.lhs.false8.i.i:                               ; preds = %lor.lhs.false4.i.i
  %arrayidx10.i.i = getelementptr ptr, ptr %11, i32 55
  %18 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx10.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %19, null
  br i1 %tobool11.not.i.i, label %lor.lhs.false8.i.i.llsec_add_dev.exit_crit_edge, label %lor.lhs.false12.i.i

lor.lhs.false8.i.i.llsec_add_dev.exit_crit_edge:  ; preds = %lor.lhs.false8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_add_dev.exit

lor.lhs.false12.i.i:                              ; preds = %lor.lhs.false8.i.i
  %arrayidx14.i.i = getelementptr ptr, ptr %11, i32 6
  %20 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx14.i.i, align 4
  %tobool15.i.i = icmp ne ptr %21, null
  %arrayidx18.i.i = getelementptr ptr, ptr %11, i32 4
  %22 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx18.i.i, align 4
  %tobool19.i.i = icmp eq ptr %23, null
  %cmp.not.i.i = xor i1 %tobool15.i.i, %tobool19.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %lor.lhs.false12.i.i.llsec_add_dev.exit_crit_edge

lor.lhs.false12.i.i.llsec_add_dev.exit_crit_edge: ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_add_dev.exit

if.end.i.i:                                       ; preds = %lor.lhs.false12.i.i
  br i1 %tobool15.i.i, label %if.then27.i.i, label %if.end.i.i.if.end34.i.i_crit_edge

if.end.i.i.if.end34.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i.i

if.then27.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %21, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i.i.i.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #8
  %pan_id.i.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %desc.i, i32 0, i32 1
  %27 = ptrtoint ptr %pan_id.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %pan_id.i.i, align 8
  %28 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx18.i.i, align 4
  %add.ptr.i.i.i77.i.i = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i.i77.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i.i77.i.i, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #8
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then27.i.i, %if.end.i.i.if.end34.i.i_crit_edge
  %.sink.i.i = phi i16 [ %32, %if.then27.i.i ], [ -257, %if.end.i.i.if.end34.i.i_crit_edge ]
  %33 = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %desc.i, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %.sink.i.i, ptr %33, align 2
  %35 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx2.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %temp.0.copyload.i.i.i.i = load i64, ptr %add.ptr.i.i.i.i, align 1
  %38 = tail call i64 @llvm.bswap.i64(i64 %temp.0.copyload.i.i.i.i) #8
  %hwaddr.i.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %desc.i, i32 0, i32 3
  %39 = ptrtoint ptr %hwaddr.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %hwaddr.i.i, align 8
  %40 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i4, align 4
  %add.ptr.i.i78.i.i = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i78.i.i, align 4
  %frame_counter.i.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %desc.i, i32 0, i32 4
  %44 = ptrtoint ptr %frame_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %frame_counter.i.i, align 8
  %45 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx6.i.i, align 4
  %add.ptr.i.i79.i.i = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i79.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr.i.i79.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool44.i.i = icmp ne i8 %48, 0
  %seclevel_exempt.i.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %desc.i, i32 0, i32 5
  %frombool.i.i = zext i1 %tobool44.i.i to i8
  %49 = ptrtoint ptr %seclevel_exempt.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %frombool.i.i, ptr %seclevel_exempt.i.i, align 4
  %50 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx10.i.i, align 4
  %add.ptr.i.i80.i.i = getelementptr i8, ptr %51, i32 4
  %52 = ptrtoint ptr %add.ptr.i.i80.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr.i.i80.i.i, align 1
  %key_mode.i.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %desc.i, i32 0, i32 6
  %54 = ptrtoint ptr %key_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %key_mode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp53.i.i = icmp ugt i8 %53, 2
  br i1 %cmp53.i.i, label %if.end34.i.i.llsec_add_dev.exit_crit_edge, label %if.end.i6

if.end34.i.i.llsec_add_dev.exit_crit_edge:        ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_add_dev.exit

if.end.i6:                                        ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %llsec.i, align 4
  %add_dev.i = getelementptr inbounds %struct.ieee802154_llsec_ops, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %add_dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add_dev.i, align 4
  %call2.i = call i32 %58(ptr noundef nonnull %call.i, ptr noundef nonnull %desc.i) #8
  br label %llsec_add_dev.exit

llsec_add_dev.exit:                               ; preds = %if.end.i6, %if.end34.i.i.llsec_add_dev.exit_crit_edge, %lor.lhs.false12.i.i.llsec_add_dev.exit_crit_edge, %lor.lhs.false8.i.i.llsec_add_dev.exit_crit_edge, %lor.lhs.false4.i.i.llsec_add_dev.exit_crit_edge, %lor.lhs.false.i.i.llsec_add_dev.exit_crit_edge, %if.else.i.llsec_add_dev.exit_crit_edge
  %retval.0.i7 = phi i32 [ %call2.i, %if.end.i6 ], [ -22, %lor.lhs.false12.i.i.llsec_add_dev.exit_crit_edge ], [ -22, %lor.lhs.false8.i.i.llsec_add_dev.exit_crit_edge ], [ -22, %lor.lhs.false4.i.i.llsec_add_dev.exit_crit_edge ], [ -22, %lor.lhs.false.i.i.llsec_add_dev.exit_crit_edge ], [ -22, %if.else.i.llsec_add_dev.exit_crit_edge ], [ -22, %if.end34.i.i.llsec_add_dev.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %desc.i) #8
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %llsec_add_dev.exit, %if.end.i.do.body1.i.i_crit_edge
  %rc.0.i = phi i32 [ %retval.0.i7, %llsec_add_dev.exit ], [ -95, %if.end.i.do.body1.i.i_crit_edge ]
  %59 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %60 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  %63 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %68, %62
  %69 = inttoptr i32 %add.i.i to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %add13.i.i = add i32 %71, -1
  store i32 %add13.i.i, ptr %69, align 4
  %72 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i.i = and i32 %72, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !38

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #8, !srcloc !39
  br label %return

return:                                           ; preds = %dev_put.exit.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %rc.0.i, %dev_put.exit.i ], [ -19, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_llsec_del_dev(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.ieee802154_nl_llsec_change.exit_crit_edge, label %if.end.i

entry.ieee802154_nl_llsec_change.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_nl_llsec_change.exit

if.end.i:                                         ; preds = %entry
  %ml_priv.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv.i.i, align 8
  %llsec.i = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %llsec.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.end.i.do.body1.i.i_crit_edge, label %if.else.i

if.end.i.do.body1.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i.i

if.else.i:                                        ; preds = %if.end.i
  %attrs.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i1 = icmp eq ptr %7, null
  br i1 %tobool.not.i1, label %if.else.i.do.body1.i.i_crit_edge, label %if.end.i5

if.else.i.do.body1.i.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i.i

if.end.i5:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %temp.0.copyload.i.i.i = load i64, ptr %add.ptr.i.i.i, align 1
  %9 = tail call i64 @llvm.bswap.i64(i64 %temp.0.copyload.i.i.i) #8
  %del_dev.i = getelementptr inbounds %struct.ieee802154_llsec_ops, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %del_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %del_dev.i, align 4
  %call4.i4 = tail call i32 %11(ptr noundef nonnull %call.i, i64 noundef %9) #8
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %if.end.i5, %if.else.i.do.body1.i.i_crit_edge, %if.end.i.do.body1.i.i_crit_edge
  %rc.0.i = phi i32 [ -95, %if.end.i.do.body1.i.i_crit_edge ], [ %call4.i4, %if.end.i5 ], [ -22, %if.else.i.do.body1.i.i_crit_edge ]
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %13 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %21, %15
  %22 = inttoptr i32 %add.i.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add13.i.i = add i32 %24, -1
  store i32 %add13.i.i, ptr %22, align 4
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !38

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #8, !srcloc !39
  br label %ieee802154_nl_llsec_change.exit

ieee802154_nl_llsec_change.exit:                  ; preds = %dev_put.exit.i, %entry.ieee802154_nl_llsec_change.exit_crit_edge
  %retval.0.i = phi i32 [ %rc.0.i, %dev_put.exit.i ], [ -19, %entry.ieee802154_nl_llsec_change.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_llsec_dump_devs(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ieee802154_llsec_dump_table(ptr noundef %skb, ptr noundef %cb, ptr noundef nonnull @llsec_iter_devs)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llsec_iter_devs(ptr nocapture noundef %data) #0 align 64 {
entry:
  %tmp.i10.i = alloca i8, align 1
  %tmp.i8.i = alloca i8, align 1
  %tmp.i6.i = alloca i32, align 4
  %tmp.i.i4.i = alloca i64, align 8
  %tmp.i.i2.i = alloca i16, align 2
  %tmp.i.i.i = alloca i16, align 2
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %devices = getelementptr inbounds %struct.ieee802154_llsec_table, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %pos.024 = load ptr, ptr %devices, align 4
  %cmp.not26 = icmp eq ptr %pos.024, %devices
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %s_idx = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 1
  %nlmsg_seq = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 4
  %dev = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.028 = phi ptr [ %pos.024, %for.body.lr.ph ], [ %pos.0, %for.inc.for.body_crit_edge ]
  %idx.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %inc = add i32 %idx.027, 1
  %3 = ptrtoint ptr %s_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.027, i32 %4)
  %cmp3 = icmp slt i32 %idx.027, %4
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nlmsg_seq, align 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i = call ptr @genlmsg_put(ptr noundef %6, i32 noundef 0, i32 noundef %8, ptr noundef nonnull @nl802154_family, i32 noundef 2, i8 noundef zeroext 41) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.for.end_crit_edge, label %if.end.i

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.i:                                         ; preds = %if.end
  %call.i.i = call i32 @strlen(ptr noundef %10) #11
  %add.i.i = add i32 %call.i.i, 1
  %call1.i.i = call i32 @nla_put(ptr noundef %6, i32 noundef 1, i32 noundef %add.i.i, ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %13 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i.i, align 4
  %call.i1.i = call i32 @nla_put(ptr noundef %6, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool4.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.if.then.i.i_crit_edge

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %pan_id.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %pos.028, i32 0, i32 1
  %14 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pan_id.i, align 8
  %16 = call i16 @llvm.bswap.i16(i16 %15) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #8
  %17 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %tmp.i.i.i, align 2
  %call.i.i.i = call i32 @nla_put(ptr noundef %6, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false5.i.if.then.i.i_crit_edge

lor.lhs.false5.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false5.i
  %short_addr.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %pos.028, i32 0, i32 2
  %18 = ptrtoint ptr %short_addr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %short_addr.i, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %19) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i2.i) #8
  %21 = ptrtoint ptr %tmp.i.i2.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %tmp.i.i2.i, align 2
  %call.i.i3.i = call i32 @nla_put(ptr noundef %6, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i.i2.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i3.i)
  %tobool10.not.i = icmp eq i32 %call.i.i3.i, 0
  br i1 %tobool10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false8.i.if.then.i.i_crit_edge

lor.lhs.false8.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false11.i:                                ; preds = %lor.lhs.false8.i
  %hwaddr.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %pos.028, i32 0, i32 3
  %22 = ptrtoint ptr %hwaddr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %hwaddr.i, align 8
  %24 = call i64 @llvm.bswap.i64(i64 %23) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i4.i) #8
  %25 = ptrtoint ptr %tmp.i.i4.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %tmp.i.i4.i, align 8
  %call.i.i5.i = call i32 @nla_put_64bit(ptr noundef %6, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i.i4.i, i32 noundef 56) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i4.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i5.i)
  %tobool13.not.i = icmp eq i32 %call.i.i5.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false14.i, label %lor.lhs.false11.i.if.then.i.i_crit_edge

lor.lhs.false11.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false14.i:                                ; preds = %lor.lhs.false11.i
  %frame_counter.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %pos.028, i32 0, i32 4
  %26 = ptrtoint ptr %frame_counter.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frame_counter.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i6.i) #8
  %28 = ptrtoint ptr %tmp.i6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmp.i6.i, align 4
  %call.i7.i = call i32 @nla_put(ptr noundef %6, i32 noundef 47, i32 noundef 4, ptr noundef nonnull %tmp.i6.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i6.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool16.not.i = icmp eq i32 %call.i7.i, 0
  br i1 %tobool16.not.i, label %lor.lhs.false17.i, label %lor.lhs.false14.i.if.then.i.i_crit_edge

lor.lhs.false14.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false14.i
  %seclevel_exempt.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %pos.028, i32 0, i32 5
  %29 = ptrtoint ptr %seclevel_exempt.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %seclevel_exempt.i, align 4, !range !42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i8.i) #8
  %31 = ptrtoint ptr %tmp.i8.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %tmp.i8.i, align 1
  %call.i9.i = call i32 @nla_put(ptr noundef %6, i32 noundef 54, i32 noundef 1, ptr noundef nonnull %tmp.i8.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i8.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool20.not.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool20.not.i, label %lor.lhs.false21.i, label %lor.lhs.false17.i.if.then.i.i_crit_edge

lor.lhs.false17.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false17.i
  %key_mode.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %pos.028, i32 0, i32 6
  %32 = ptrtoint ptr %key_mode.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %key_mode.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i10.i) #8
  %34 = ptrtoint ptr %tmp.i10.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %tmp.i10.i, align 1
  %call.i11.i = call i32 @nla_put(ptr noundef %6, i32 noundef 55, i32 noundef 1, ptr noundef nonnull %tmp.i10.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i10.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool23.not.i = icmp eq i32 %call.i11.i, 0
  br i1 %tobool23.not.i, label %if.end5, label %lor.lhs.false21.i.if.then.i.i_crit_edge

lor.lhs.false21.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false21.i.if.then.i.i_crit_edge, %lor.lhs.false17.i.if.then.i.i_crit_edge, %lor.lhs.false14.i.if.then.i.i_crit_edge, %lor.lhs.false11.i.if.then.i.i_crit_edge, %lor.lhs.false8.i.if.then.i.i_crit_edge, %lor.lhs.false5.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i12.i = getelementptr i8, ptr %call.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i12.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.for.end_crit_edge, label %if.then.i.i.i.i

if.then.i.i.for.end_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 19
  %35 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %36, %add.ptr1.i12.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !38

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %37 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i12.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %6, i32 noundef %sub.ptr.sub.i.i.i.i) #8
  br label %for.end

if.end5:                                          ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr1.i.i = getelementptr i8, ptr %call.i, i32 -20
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 16
  %39 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %41 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  %42 = ptrtoint ptr %s_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_idx, align 4
  %inc7 = add i32 %43, 1
  store i32 %inc7, ptr %s_idx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %for.body.for.inc_crit_edge
  %44 = ptrtoint ptr %pos.028 to i32
  call void @__asan_load4_noabort(i32 %44)
  %pos.0 = load ptr, ptr %pos.028, align 4
  %45 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %table, align 4
  %devices2 = getelementptr inbounds %struct.ieee802154_llsec_table, ptr %46, i32 0, i32 1
  %cmp.not = icmp eq ptr %pos.0, %devices2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.i.i.i.i, %if.then.i.i.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %rc.0 = phi i32 [ -90, %if.then.i.i.for.end_crit_edge ], [ -90, %if.end.i.i.i.i ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ -90, %if.end.for.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_llsec_add_devkey(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.ieee802154_llsec_device_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %nlhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlhdr, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlmsg_flags, align 2
  %4 = and i16 %3, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %4)
  %cmp.not = icmp eq i16 %4, 1536
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.end
  %ml_priv.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 128
  %5 = ptrtoint ptr %ml_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ml_priv.i.i, align 8
  %llsec.i = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %llsec.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %if.end.i.do.body1.i.i_crit_edge, label %if.else.i

if.end.i.do.body1.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i.i

if.else.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %key.i) #8
  %9 = call ptr @memset(ptr %key.i, i32 255, i32 40)
  %attrs.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %10 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 47
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i4 = icmp eq ptr %13, null
  br i1 %tobool.not.i4, label %if.else.i.llsec_add_devkey.exit_crit_edge, label %lor.lhs.false.i

if.else.i.llsec_add_devkey.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_add_devkey.exit

lor.lhs.false.i:                                  ; preds = %if.else.i
  %arrayidx2.i = getelementptr ptr, ptr %11, i32 5
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2.i, align 4
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.llsec_add_devkey.exit_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.llsec_add_devkey.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_add_devkey.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %key_id.i = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %key.i, i32 0, i32 1
  %call5.i = call fastcc i32 @ieee802154_llsec_parse_key_id(ptr noundef %info, ptr noundef %key_id.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i6, label %lor.lhs.false4.i.llsec_add_devkey.exit_crit_edge

lor.lhs.false4.i.llsec_add_devkey.exit_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_add_devkey.exit

if.end.i6:                                        ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %attrs.i, align 4
  %arrayidx8.i = getelementptr ptr, ptr %17, i32 5
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx8.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %temp.0.copyload.i.i.i = load i64, ptr %add.ptr.i.i.i, align 1
  %21 = tail call i64 @llvm.bswap.i64(i64 %temp.0.copyload.i.i.i) #8
  %arrayidx11.i = getelementptr ptr, ptr %17, i32 47
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx11.i, align 4
  %add.ptr.i.i21.i = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i21.i, align 4
  %frame_counter.i = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %key.i, i32 0, i32 2
  %26 = ptrtoint ptr %frame_counter.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %frame_counter.i, align 8
  %27 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %llsec.i, align 4
  %add_devkey.i = getelementptr inbounds %struct.ieee802154_llsec_ops, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %add_devkey.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add_devkey.i, align 4
  %call13.i = call i32 %30(ptr noundef nonnull %call.i, i64 noundef %21, ptr noundef nonnull %key.i) #8
  br label %llsec_add_devkey.exit

llsec_add_devkey.exit:                            ; preds = %if.end.i6, %lor.lhs.false4.i.llsec_add_devkey.exit_crit_edge, %lor.lhs.false.i.llsec_add_devkey.exit_crit_edge, %if.else.i.llsec_add_devkey.exit_crit_edge
  %retval.0.i7 = phi i32 [ %call13.i, %if.end.i6 ], [ -22, %lor.lhs.false4.i.llsec_add_devkey.exit_crit_edge ], [ -22, %lor.lhs.false.i.llsec_add_devkey.exit_crit_edge ], [ -22, %if.else.i.llsec_add_devkey.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %key.i) #8
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %llsec_add_devkey.exit, %if.end.i.do.body1.i.i_crit_edge
  %rc.0.i = phi i32 [ %retval.0.i7, %llsec_add_devkey.exit ], [ -95, %if.end.i.do.body1.i.i_crit_edge ]
  %31 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %32 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %40, %34
  %41 = inttoptr i32 %add.i.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add13.i.i = add i32 %43, -1
  store i32 %add13.i.i, ptr %41, align 4
  %44 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !38

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #8, !srcloc !39
  br label %return

return:                                           ; preds = %dev_put.exit.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %rc.0.i, %dev_put.exit.i ], [ -19, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_llsec_del_devkey(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.ieee802154_llsec_device_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.ieee802154_nl_llsec_change.exit_crit_edge, label %if.end.i

entry.ieee802154_nl_llsec_change.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_nl_llsec_change.exit

if.end.i:                                         ; preds = %entry
  %ml_priv.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv.i.i, align 8
  %llsec.i = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %llsec.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.end.i.do.body1.i.i_crit_edge, label %if.else.i

if.end.i.do.body1.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i.i

if.else.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %key.i) #8
  %4 = call ptr @memset(ptr %key.i, i32 255, i32 40)
  %attrs.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %6, i32 5
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i2 = icmp eq ptr %8, null
  br i1 %tobool.not.i2, label %if.else.i.llsec_del_devkey.exit_crit_edge, label %lor.lhs.false.i

if.else.i.llsec_del_devkey.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_del_devkey.exit

lor.lhs.false.i:                                  ; preds = %if.else.i
  %key_id.i = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %key.i, i32 0, i32 1
  %call1.i = call fastcc i32 @ieee802154_llsec_parse_key_id(ptr noundef %info, ptr noundef %key_id.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i3 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i3, label %if.end.i5, label %lor.lhs.false.i.llsec_del_devkey.exit_crit_edge

lor.lhs.false.i.llsec_del_devkey.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_del_devkey.exit

if.end.i5:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attrs.i, align 4
  %arrayidx4.i = getelementptr ptr, ptr %10, i32 5
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %temp.0.copyload.i.i.i = load i64, ptr %add.ptr.i.i.i, align 1
  %14 = tail call i64 @llvm.bswap.i64(i64 %temp.0.copyload.i.i.i) #8
  %15 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %llsec.i, align 4
  %del_devkey.i = getelementptr inbounds %struct.ieee802154_llsec_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %del_devkey.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %del_devkey.i, align 4
  %call6.i = call i32 %18(ptr noundef nonnull %call.i, i64 noundef %14, ptr noundef nonnull %key.i) #8
  br label %llsec_del_devkey.exit

llsec_del_devkey.exit:                            ; preds = %if.end.i5, %lor.lhs.false.i.llsec_del_devkey.exit_crit_edge, %if.else.i.llsec_del_devkey.exit_crit_edge
  %retval.0.i6 = phi i32 [ %call6.i, %if.end.i5 ], [ -22, %lor.lhs.false.i.llsec_del_devkey.exit_crit_edge ], [ -22, %if.else.i.llsec_del_devkey.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %key.i) #8
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %llsec_del_devkey.exit, %if.end.i.do.body1.i.i_crit_edge
  %rc.0.i = phi i32 [ %retval.0.i6, %llsec_del_devkey.exit ], [ -95, %if.end.i.do.body1.i.i_crit_edge ]
  %19 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %20 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %28, %22
  %29 = inttoptr i32 %add.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add13.i.i = add i32 %31, -1
  store i32 %add13.i.i, ptr %29, align 4
  %32 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !38

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #8, !srcloc !39
  br label %ieee802154_nl_llsec_change.exit

ieee802154_nl_llsec_change.exit:                  ; preds = %dev_put.exit.i, %entry.ieee802154_nl_llsec_change.exit_crit_edge
  %retval.0.i = phi i32 [ %rc.0.i, %dev_put.exit.i ], [ -19, %entry.ieee802154_nl_llsec_change.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_llsec_dump_devkeys(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ieee802154_llsec_dump_table(ptr noundef %skb, ptr noundef %cb, ptr noundef nonnull @llsec_iter_devkeys)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llsec_iter_devkeys(ptr nocapture noundef %data) #0 align 64 {
entry:
  %tmp.i2.i = alloca i32, align 4
  %tmp.i.i.i = alloca i64, align 8
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %devices = getelementptr inbounds %struct.ieee802154_llsec_table, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %dpos.063 = load ptr, ptr %devices, align 4
  %cmp.not65 = icmp eq ptr %dpos.063, %devices
  br i1 %cmp.not65, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %s_idx = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 1
  %s_idx2 = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 2
  %nlmsg_seq = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 4
  %dev = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc29.for.body_crit_edge, %for.body.lr.ph
  %dpos.067 = phi ptr [ %dpos.063, %for.body.lr.ph ], [ %dpos.0, %for.inc29.for.body_crit_edge ]
  %idx.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc29.for.body_crit_edge ]
  %inc = add i32 %idx.066, 1
  %3 = ptrtoint ptr %s_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.066, i32 %4)
  %cmp3 = icmp slt i32 %idx.066, %4
  br i1 %cmp3, label %for.body.for.inc29_crit_edge, label %if.end

for.body.for.inc29_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc29

if.end:                                           ; preds = %for.body
  %keys = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dpos.067, i32 0, i32 7
  %5 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %5)
  %kpos.059 = load ptr, ptr %keys, align 8
  %cmp11.not60 = icmp eq ptr %kpos.059, %keys
  br i1 %cmp11.not60, label %if.end.for.end_crit_edge, label %for.body13.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body13.lr.ph:                                 ; preds = %if.end
  %hwaddr = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dpos.067, i32 0, i32 3
  br label %for.body13

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %for.body13.lr.ph
  %kpos.062 = phi ptr [ %kpos.059, %for.body13.lr.ph ], [ %kpos.0, %for.inc.for.body13_crit_edge ]
  %idx2.061 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc14, %for.inc.for.body13_crit_edge ]
  %inc14 = add i32 %idx2.061, 1
  %6 = ptrtoint ptr %s_idx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_idx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx2.061, i32 %7)
  %cmp15 = icmp slt i32 %idx2.061, %7
  br i1 %cmp15, label %for.body13.for.inc_crit_edge, label %if.end17

for.body13.for.inc_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end17:                                         ; preds = %for.body13
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlmsg_seq, align 4
  %12 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %hwaddr, align 8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.i = call ptr @genlmsg_put(ptr noundef %9, i32 noundef 0, i32 noundef %11, ptr noundef nonnull @nl802154_family, i32 noundef 2, i8 noundef zeroext 44) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end17.cleanup_crit_edge, label %if.end.i

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end17
  %call.i.i = call i32 @strlen(ptr noundef %15) #11
  %add.i.i = add i32 %call.i.i, 1
  %call1.i.i = call i32 @nla_put(ptr noundef %9, i32 noundef 1, i32 noundef %add.i.i, ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %18 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tmp.i.i, align 4
  %call.i1.i = call i32 @nla_put(ptr noundef %9, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool4.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.if.then.i.i_crit_edge

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %19 = call i64 @llvm.bswap.i64(i64 %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i.i) #8
  %20 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %tmp.i.i.i, align 8
  %call.i.i.i = call i32 @nla_put_64bit(ptr noundef %9, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i.i.i, i32 noundef 56) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false5.i.if.then.i.i_crit_edge

lor.lhs.false5.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false5.i
  %frame_counter.i = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %kpos.062, i32 0, i32 2
  %21 = ptrtoint ptr %frame_counter.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frame_counter.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i2.i) #8
  %23 = ptrtoint ptr %tmp.i2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %tmp.i2.i, align 4
  %call.i3.i = call i32 @nla_put(ptr noundef %9, i32 noundef 47, i32 noundef 4, ptr noundef nonnull %tmp.i2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool10.not.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false8.i.if.then.i.i_crit_edge

lor.lhs.false8.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false11.i:                                ; preds = %lor.lhs.false8.i
  %key_id.i = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %kpos.062, i32 0, i32 1
  %call12.i = call fastcc i32 @ieee802154_llsec_fill_key_id(ptr noundef %9, ptr noundef %key_id.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end19, label %lor.lhs.false11.i.if.then.i.i_crit_edge

lor.lhs.false11.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false11.i.if.then.i.i_crit_edge, %lor.lhs.false8.i.if.then.i.i_crit_edge, %lor.lhs.false5.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i4.i = getelementptr i8, ptr %call.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i4.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %25, %add.ptr1.i4.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !38

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %26 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i4.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %9, i32 noundef %sub.ptr.sub.i.i.i.i) #8
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr1.i.i = getelementptr i8, ptr %call.i, i32 -20
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %30 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  %31 = ptrtoint ptr %s_idx2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_idx2, align 4
  %inc21 = add i32 %32, 1
  store i32 %inc21, ptr %s_idx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %for.body13.for.inc_crit_edge
  %33 = ptrtoint ptr %kpos.062 to i32
  call void @__asan_load4_noabort(i32 %33)
  %kpos.0 = load ptr, ptr %kpos.062, align 8
  %cmp11.not = icmp eq ptr %kpos.0, %keys
  br i1 %cmp11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body13_crit_edge

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %34 = ptrtoint ptr %s_idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_idx, align 4
  %inc28 = add i32 %35, 1
  store i32 %inc28, ptr %s_idx, align 4
  br label %for.inc29

for.inc29:                                        ; preds = %for.end, %for.body.for.inc29_crit_edge
  %36 = ptrtoint ptr %dpos.067 to i32
  call void @__asan_load4_noabort(i32 %36)
  %dpos.0 = load ptr, ptr %dpos.067, align 4
  %37 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %table, align 4
  %devices2 = getelementptr inbounds %struct.ieee802154_llsec_table, ptr %38, i32 0, i32 1
  %cmp.not = icmp eq ptr %dpos.0, %devices2
  br i1 %cmp.not, label %for.inc29.cleanup_crit_edge, label %for.inc29.for.body_crit_edge

for.inc29.for.body_crit_edge:                     ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc29.cleanup_crit_edge:                      ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc29.cleanup_crit_edge, %if.end.i.i.i.i, %if.then.i.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %if.then.i.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i.i ], [ 0, %entry.cleanup_crit_edge ], [ -90, %if.end17.cleanup_crit_edge ], [ 0, %for.inc29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_llsec_add_seclevel(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %sl.i = alloca %struct.ieee802154_llsec_seclevel, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %nlhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlhdr, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlmsg_flags, align 2
  %4 = and i16 %3, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %4)
  %cmp.not = icmp eq i16 %4, 1536
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.end
  %ml_priv.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 128
  %5 = ptrtoint ptr %ml_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ml_priv.i.i, align 8
  %llsec.i = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %llsec.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %if.end.i.do.body1.i.i_crit_edge, label %if.else.i

if.end.i.do.body1.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i.i

if.else.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sl.i) #8
  %9 = call ptr @memset(ptr %sl.i, i32 0, i32 12)
  %attrs.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %10 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attrs.i.i, align 4
  %arrayidx.i.i4 = getelementptr ptr, ptr %11, i32 51
  %12 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i4, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.else.i.llsec_add_seclevel.exit_crit_edge, label %lor.lhs.false.i.i

if.else.i.llsec_add_seclevel.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_add_seclevel.exit

lor.lhs.false.i.i:                                ; preds = %if.else.i
  %arrayidx2.i.i = getelementptr ptr, ptr %11, i32 53
  %14 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.llsec_add_seclevel.exit_crit_edge, label %lor.lhs.false4.i.i

lor.lhs.false.i.i.llsec_add_seclevel.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_add_seclevel.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %arrayidx6.i.i = getelementptr ptr, ptr %11, i32 54
  %16 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %17, null
  br i1 %tobool7.not.i.i, label %lor.lhs.false4.i.i.llsec_add_seclevel.exit_crit_edge, label %if.end.i.i

lor.lhs.false4.i.i.llsec_add_seclevel.exit_crit_edge: ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_add_seclevel.exit

if.end.i.i:                                       ; preds = %lor.lhs.false4.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i.i.i.i, align 1
  %frame_type.i.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl.i, i32 0, i32 1
  %20 = ptrtoint ptr %frame_type.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %frame_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.i.i = icmp eq i8 %19, 3
  br i1 %cmp.i.i, label %if.then12.i.i, label %if.end.i.i.if.end.i6_crit_edge

if.end.i.i.if.end.i6_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i6

if.then12.i.i:                                    ; preds = %if.end.i.i
  %arrayidx14.i.i = getelementptr ptr, ptr %11, i32 52
  %21 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx14.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %22, null
  br i1 %tobool15.not.i.i, label %if.then12.i.i.llsec_add_seclevel.exit_crit_edge, label %if.end17.i.i

if.then12.i.i.llsec_add_seclevel.exit_crit_edge:  ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_add_seclevel.exit

if.end17.i.i:                                     ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i43.i.i = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i43.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i.i43.i.i, align 1
  %cmd_frame_id.i.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl.i, i32 0, i32 2
  %25 = ptrtoint ptr %cmd_frame_id.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %cmd_frame_id.i.i, align 1
  br label %if.end.i6

if.end.i6:                                        ; preds = %if.end17.i.i, %if.end.i.i.if.end.i6_crit_edge
  %26 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx2.i.i, align 4
  %add.ptr.i.i44.i.i = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i44.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr.i.i44.i.i, align 1
  %conv25.i.i = zext i8 %29 to i32
  %sec_levels.i.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl.i, i32 0, i32 4
  %30 = ptrtoint ptr %sec_levels.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv25.i.i, ptr %sec_levels.i.i, align 4
  %31 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx6.i.i, align 4
  %add.ptr.i.i45.i.i = getelementptr i8, ptr %32, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i45.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr.i.i45.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool29.i.i = icmp ne i8 %34, 0
  %device_override.i.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl.i, i32 0, i32 3
  %frombool.i.i = zext i1 %tobool29.i.i to i8
  %35 = ptrtoint ptr %device_override.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool.i.i, ptr %device_override.i.i, align 2
  %36 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %llsec.i, align 4
  %add_seclevel.i = getelementptr inbounds %struct.ieee802154_llsec_ops, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %add_seclevel.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add_seclevel.i, align 4
  %call2.i = call i32 %39(ptr noundef nonnull %call.i, ptr noundef nonnull %sl.i) #8
  br label %llsec_add_seclevel.exit

llsec_add_seclevel.exit:                          ; preds = %if.end.i6, %if.then12.i.i.llsec_add_seclevel.exit_crit_edge, %lor.lhs.false4.i.i.llsec_add_seclevel.exit_crit_edge, %lor.lhs.false.i.i.llsec_add_seclevel.exit_crit_edge, %if.else.i.llsec_add_seclevel.exit_crit_edge
  %retval.0.i7 = phi i32 [ %call2.i, %if.end.i6 ], [ -22, %lor.lhs.false4.i.i.llsec_add_seclevel.exit_crit_edge ], [ -22, %lor.lhs.false.i.i.llsec_add_seclevel.exit_crit_edge ], [ -22, %if.else.i.llsec_add_seclevel.exit_crit_edge ], [ -22, %if.then12.i.i.llsec_add_seclevel.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sl.i) #8
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %llsec_add_seclevel.exit, %if.end.i.do.body1.i.i_crit_edge
  %rc.0.i = phi i32 [ %retval.0.i7, %llsec_add_seclevel.exit ], [ -95, %if.end.i.do.body1.i.i_crit_edge ]
  %40 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %41 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %49, %43
  %50 = inttoptr i32 %add.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add13.i.i = add i32 %52, -1
  store i32 %add13.i.i, ptr %50, align 4
  %53 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !38

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #8, !srcloc !39
  br label %return

return:                                           ; preds = %dev_put.exit.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %rc.0.i, %dev_put.exit.i ], [ -19, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_llsec_del_seclevel(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %sl.i = alloca %struct.ieee802154_llsec_seclevel, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @ieee802154_nl_get_dev(ptr noundef %info) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.ieee802154_nl_llsec_change.exit_crit_edge, label %if.end.i

entry.ieee802154_nl_llsec_change.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee802154_nl_llsec_change.exit

if.end.i:                                         ; preds = %entry
  %ml_priv.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv.i.i, align 8
  %llsec.i = getelementptr inbounds %struct.ieee802154_mlme_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %llsec.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.end.i.do.body1.i.i_crit_edge, label %if.else.i

if.end.i.do.body1.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i.i

if.else.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sl.i) #8
  %4 = call ptr @memset(ptr %sl.i, i32 0, i32 12)
  %attrs.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs.i.i, align 4
  %arrayidx.i.i2 = getelementptr ptr, ptr %6, i32 51
  %7 = ptrtoint ptr %arrayidx.i.i2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i2, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.else.i.llsec_del_seclevel.exit_crit_edge, label %lor.lhs.false.i.i

if.else.i.llsec_del_seclevel.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_del_seclevel.exit

lor.lhs.false.i.i:                                ; preds = %if.else.i
  %arrayidx2.i.i = getelementptr ptr, ptr %6, i32 53
  %9 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.llsec_del_seclevel.exit_crit_edge, label %lor.lhs.false4.i.i

lor.lhs.false.i.i.llsec_del_seclevel.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_del_seclevel.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %arrayidx6.i.i = getelementptr ptr, ptr %6, i32 54
  %11 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx6.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %12, null
  br i1 %tobool7.not.i.i, label %lor.lhs.false4.i.i.llsec_del_seclevel.exit_crit_edge, label %if.end.i.i

lor.lhs.false4.i.i.llsec_del_seclevel.exit_crit_edge: ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_del_seclevel.exit

if.end.i.i:                                       ; preds = %lor.lhs.false4.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %8, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i.i.i.i, align 1
  %frame_type.i.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl.i, i32 0, i32 1
  %15 = ptrtoint ptr %frame_type.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %frame_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp.i.i = icmp eq i8 %14, 3
  br i1 %cmp.i.i, label %if.then12.i.i, label %if.end.i.i.if.end.i4_crit_edge

if.end.i.i.if.end.i4_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i4

if.then12.i.i:                                    ; preds = %if.end.i.i
  %arrayidx14.i.i = getelementptr ptr, ptr %6, i32 52
  %16 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx14.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %17, null
  br i1 %tobool15.not.i.i, label %if.then12.i.i.llsec_del_seclevel.exit_crit_edge, label %if.end17.i.i

if.then12.i.i.llsec_del_seclevel.exit_crit_edge:  ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llsec_del_seclevel.exit

if.end17.i.i:                                     ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i43.i.i = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i43.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i.i43.i.i, align 1
  %cmd_frame_id.i.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl.i, i32 0, i32 2
  %20 = ptrtoint ptr %cmd_frame_id.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %cmd_frame_id.i.i, align 1
  br label %if.end.i4

if.end.i4:                                        ; preds = %if.end17.i.i, %if.end.i.i.if.end.i4_crit_edge
  %21 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx2.i.i, align 4
  %add.ptr.i.i44.i.i = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i44.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i.i44.i.i, align 1
  %conv25.i.i = zext i8 %24 to i32
  %sec_levels.i.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl.i, i32 0, i32 4
  %25 = ptrtoint ptr %sec_levels.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv25.i.i, ptr %sec_levels.i.i, align 4
  %26 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx6.i.i, align 4
  %add.ptr.i.i45.i.i = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i45.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr.i.i45.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool29.i.i = icmp ne i8 %29, 0
  %device_override.i.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl.i, i32 0, i32 3
  %frombool.i.i = zext i1 %tobool29.i.i to i8
  %30 = ptrtoint ptr %device_override.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool.i.i, ptr %device_override.i.i, align 2
  %31 = ptrtoint ptr %llsec.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %llsec.i, align 4
  %del_seclevel.i = getelementptr inbounds %struct.ieee802154_llsec_ops, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %del_seclevel.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %del_seclevel.i, align 4
  %call2.i = call i32 %34(ptr noundef nonnull %call.i, ptr noundef nonnull %sl.i) #8
  br label %llsec_del_seclevel.exit

llsec_del_seclevel.exit:                          ; preds = %if.end.i4, %if.then12.i.i.llsec_del_seclevel.exit_crit_edge, %lor.lhs.false4.i.i.llsec_del_seclevel.exit_crit_edge, %lor.lhs.false.i.i.llsec_del_seclevel.exit_crit_edge, %if.else.i.llsec_del_seclevel.exit_crit_edge
  %retval.0.i5 = phi i32 [ %call2.i, %if.end.i4 ], [ -22, %lor.lhs.false4.i.i.llsec_del_seclevel.exit_crit_edge ], [ -22, %lor.lhs.false.i.i.llsec_del_seclevel.exit_crit_edge ], [ -22, %if.else.i.llsec_del_seclevel.exit_crit_edge ], [ -22, %if.then12.i.i.llsec_del_seclevel.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sl.i) #8
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %llsec_del_seclevel.exit, %if.end.i.do.body1.i.i_crit_edge
  %rc.0.i = phi i32 [ %retval.0.i5, %llsec_del_seclevel.exit ], [ -95, %if.end.i.do.body1.i.i_crit_edge ]
  %35 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %36 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %44, %38
  %45 = inttoptr i32 %add.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add13.i.i = add i32 %47, -1
  store i32 %add13.i.i, ptr %45, align 4
  %48 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i.i = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !38

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #8, !srcloc !39
  br label %ieee802154_nl_llsec_change.exit

ieee802154_nl_llsec_change.exit:                  ; preds = %dev_put.exit.i, %entry.ieee802154_nl_llsec_change.exit_crit_edge
  %retval.0.i = phi i32 [ %rc.0.i, %dev_put.exit.i ], [ -19, %entry.ieee802154_nl_llsec_change.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_llsec_dump_seclevels(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ieee802154_llsec_dump_table(ptr noundef %skb, ptr noundef %cb, ptr noundef nonnull @llsec_iter_seclevels)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llsec_iter_seclevels(ptr nocapture noundef %data) #0 align 64 {
entry:
  %tmp.i8.i = alloca i8, align 1
  %tmp.i6.i = alloca i8, align 1
  %tmp.i4.i = alloca i8, align 1
  %tmp.i2.i = alloca i8, align 1
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %security_levels = getelementptr inbounds %struct.ieee802154_llsec_table, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %security_levels to i32
  call void @__asan_load4_noabort(i32 %2)
  %pos.024 = load ptr, ptr %security_levels, align 4
  %cmp.not26 = icmp eq ptr %pos.024, %security_levels
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %s_idx = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 1
  %nlmsg_seq = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 4
  %dev = getelementptr inbounds %struct.llsec_dump_data, ptr %data, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.028 = phi ptr [ %pos.024, %for.body.lr.ph ], [ %pos.0, %for.inc.for.body_crit_edge ]
  %idx.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %inc = add i32 %idx.027, 1
  %3 = ptrtoint ptr %s_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.027, i32 %4)
  %cmp3 = icmp slt i32 %idx.027, %4
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nlmsg_seq, align 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i = call ptr @genlmsg_put(ptr noundef %6, i32 noundef 0, i32 noundef %8, ptr noundef nonnull @nl802154_family, i32 noundef 2, i8 noundef zeroext 47) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.for.end_crit_edge, label %if.end.i

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.i:                                         ; preds = %if.end
  %call.i.i = call i32 @strlen(ptr noundef %10) #11
  %add.i.i = add i32 %call.i.i, 1
  %call1.i.i = call i32 @nla_put(ptr noundef %6, i32 noundef 1, i32 noundef %add.i.i, ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %13 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i.i, align 4
  %call.i1.i = call i32 @nla_put(ptr noundef %6, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool4.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.if.then.i.i_crit_edge

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %frame_type.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %pos.028, i32 0, i32 1
  %14 = ptrtoint ptr %frame_type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %frame_type.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i2.i) #8
  %16 = ptrtoint ptr %tmp.i2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %tmp.i2.i, align 1
  %call.i3.i = call i32 @nla_put(ptr noundef %6, i32 noundef 51, i32 noundef 1, ptr noundef nonnull %tmp.i2.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool7.not.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false5.i.if.then.i.i_crit_edge

lor.lhs.false5.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false5.i
  %sec_levels.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %pos.028, i32 0, i32 4
  %17 = ptrtoint ptr %sec_levels.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sec_levels.i, align 4
  %conv.i = trunc i32 %18 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i4.i) #8
  %19 = ptrtoint ptr %tmp.i4.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %tmp.i4.i, align 1
  %call.i5.i = call i32 @nla_put(ptr noundef %6, i32 noundef 53, i32 noundef 1, ptr noundef nonnull %tmp.i4.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i4.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool10.not.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false8.i.if.then.i.i_crit_edge

lor.lhs.false8.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false11.i:                                ; preds = %lor.lhs.false8.i
  %device_override.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %pos.028, i32 0, i32 3
  %20 = ptrtoint ptr %device_override.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %device_override.i, align 2, !range !42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i6.i) #8
  %22 = ptrtoint ptr %tmp.i6.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %tmp.i6.i, align 1
  %call.i7.i = call i32 @nla_put(ptr noundef %6, i32 noundef 54, i32 noundef 1, ptr noundef nonnull %tmp.i6.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i6.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool15.not.i = icmp eq i32 %call.i7.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %lor.lhs.false11.i.if.then.i.i_crit_edge

lor.lhs.false11.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end17.i:                                       ; preds = %lor.lhs.false11.i
  %23 = ptrtoint ptr %frame_type.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %frame_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp.i = icmp eq i8 %24, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end17.i.if.end5_crit_edge

if.end17.i.if.end5_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true.i:                                  ; preds = %if.end17.i
  %cmd_frame_id.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %pos.028, i32 0, i32 2
  %25 = ptrtoint ptr %cmd_frame_id.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cmd_frame_id.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i8.i) #8
  %27 = ptrtoint ptr %tmp.i8.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %tmp.i8.i, align 1
  %call.i9.i = call i32 @nla_put(ptr noundef %6, i32 noundef 52, i32 noundef 1, ptr noundef nonnull %tmp.i8.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i8.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool22.not.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true.i.if.end5_crit_edge, label %land.lhs.true.i.if.then.i.i_crit_edge

land.lhs.true.i.if.then.i.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then.i.i:                                      ; preds = %land.lhs.true.i.if.then.i.i_crit_edge, %lor.lhs.false11.i.if.then.i.i_crit_edge, %lor.lhs.false8.i.if.then.i.i_crit_edge, %lor.lhs.false5.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i10.i = getelementptr i8, ptr %call.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i10.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.for.end_crit_edge, label %if.then.i.i.i.i

if.then.i.i.for.end_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %29, %add.ptr1.i10.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !38

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %30 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i10.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %6, i32 noundef %sub.ptr.sub.i.i.i.i) #8
  br label %for.end

if.end5:                                          ; preds = %land.lhs.true.i.if.end5_crit_edge, %if.end17.i.if.end5_crit_edge
  %add.ptr1.i.i = getelementptr i8, ptr %call.i, i32 -20
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %34 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  %35 = ptrtoint ptr %s_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_idx, align 4
  %inc7 = add i32 %36, 1
  store i32 %inc7, ptr %s_idx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %for.body.for.inc_crit_edge
  %37 = ptrtoint ptr %pos.028 to i32
  call void @__asan_load4_noabort(i32 %37)
  %pos.0 = load ptr, ptr %pos.028, align 4
  %38 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %table, align 4
  %security_levels2 = getelementptr inbounds %struct.ieee802154_llsec_table, ptr %39, i32 0, i32 2
  %cmp.not = icmp eq ptr %pos.0, %security_levels2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.i.i.i.i, %if.then.i.i.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %rc.0 = phi i32 [ -90, %if.then.i.i.for.end_crit_edge ], [ -90, %if.end.i.i.i.i ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ -90, %if.end.for.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802154_nl_create(i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_nl_mcast(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store8_noabort(i32)

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
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ieee802154/nl-mac.c", i32 413, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ieee802154_list_iface.__UNIQUE_ID_ddebug460, !1, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ieee802154/nl-mac.c", i32 445, i32 2}
!8 = !{ptr @ieee802154_dump_iface.__UNIQUE_ID_ddebug461, !7, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/ieee802154/nl-mac.c", i32 472, i32 2}
!11 = !{ptr @ieee802154_set_macparams.__UNIQUE_ID_ddebug462, !10, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ieee802154/nl-mac.c", i32 652, i32 2}
!14 = !{ptr @ieee802154_llsec_getparams.__UNIQUE_ID_ddebug463, !13, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ieee802154/nl-mac.c", i32 706, i32 2}
!17 = !{ptr @ieee802154_llsec_setparams.__UNIQUE_ID_ddebug464, !16, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/ieee802154/nl-mac.c", i32 55, i32 2}
!20 = !{ptr @ieee802154_nl_start_confirm.__UNIQUE_ID_ddebug458, !19, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/ieee802154/nl-mac.c", i32 82, i32 2}
!23 = !{ptr @ieee802154_nl_fill_iface.__UNIQUE_ID_ddebug459, !22, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/net/netlink.h", i32 991, i32 3}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 994330, i64 994391}
!37 = !{i64 997062}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 997347}
!40 = !{i64 2148210376, i64 2148210381, i64 2148210394, i64 2148210438, i64 2148210472, i64 2148210493}
!41 = !{i64 2156943934, i64 2156944421, i64 2156943971, i64 2156944027, i64 2156944061, i64 2156944085, i64 2156944126, i64 2156944147, i64 2156944175, i64 2156944209}
!42 = !{i8 0, i8 2}
!43 = !{ptr @llsec_iter_devkeys, ptr @llsec_iter_devs, ptr @llsec_iter_keys, ptr @llsec_iter_seclevels}
