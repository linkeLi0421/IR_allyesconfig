; ModuleID = '/llk/IR_all_yes/net/bridge/br_stp_bpdu.c_pt.bc'
source_filename = "../net/bridge/br_stp_bpdu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.83 }
%struct.atomic_t = type { i32 }
%union.anon.83 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.143, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.list_head = type { ptr, ptr }
%union.anon.143 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.144, %union.anon.145, i16, i16 }
%union.anon.144 = type { %struct.in6_addr }
%union.anon.145 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.hlist_head = type { ptr }
%struct.br_config_bpdu = type { i8, %struct.bridge_id, i32, %struct.bridge_id, i16, i32, i32, i32, i32 }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.113, [48 x i8], %union.anon.114, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.116, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%union.anon.6 = type { ptr }
%union.anon.113 = type { i64 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, ptr }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.118, i32, i32, i32, i16, i16, %union.anon.120, i32, %union.anon.121, %union.anon.122, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.118 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i16 }
%struct.llc_pdu_un = type { i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.56, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.56 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }

@br_stp_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015%s: BPDU received on blocked port %u(%s)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"br_stp_rcv\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/bridge/br_stp_bpdu.c\00", [39 x i8] zeroinitializer }, align 32
@br_stp_rcv._entry_ptr = internal global ptr @br_stp_rcv._entry, section ".printk_index", align 4
@br_stp_rcv._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015%s: port %u config from %pM (message_age %ul > max_age %ul)\0A\00", [33 x i8] zeroinitializer }, align 32
@br_stp_rcv._entry_ptr.5 = internal global ptr @br_stp_rcv._entry.3, section ".printk_index", align 4
@nf_hooks_needed = external dso_local global [13 x [7 x %struct.static_key]], align 4
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_hook.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@br_rx_handler_check_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@br_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 182, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private constant [28 x i8] c"../net/bridge/br_stp_bpdu.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 230, i32 5 }
@___asan_gen_.39 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 229, i32 15 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 695, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 723, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 850, i32 9 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @br_stp_rcv._entry, ptr @br_stp_rcv._entry.3, ptr @br_stp_rcv._entry_ptr, ptr @br_stp_rcv._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_stp_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_stp_rcv._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_send_config_bpdu(ptr nocapture noundef %p, ptr noundef readonly %bpdu) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [35 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %stp_enabled = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %buf, align 4
  %5 = ptrtoint ptr %bpdu to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %bpdu, align 4
  %bf.load.lobit = lshr i8 %bf.load, 7
  %6 = shl i8 %bf.load, 1
  %7 = and i8 %6, -128
  %or132 = or i8 %7, %bf.load.lobit
  %arrayidx9 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or132, ptr %arrayidx9, align 4
  %root = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1
  %9 = ptrtoint ptr %root to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %root, align 1
  %arrayidx11 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx11, align 1
  %arrayidx14 = getelementptr %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 6
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx15, align 2
  %addr = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %addr, align 1
  %arrayidx18 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 7
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx18, align 1
  %arrayidx21 = getelementptr %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx21, align 1
  %arrayidx22 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 8
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx22, align 4
  %arrayidx25 = getelementptr %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx25, align 1
  %arrayidx26 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 9
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx26, align 1
  %arrayidx29 = getelementptr %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1, i32 1, i32 3
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx29, align 1
  %arrayidx30 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 10
  %26 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx30, align 2
  %arrayidx33 = getelementptr %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1, i32 1, i32 4
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx33, align 1
  %arrayidx34 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx34, align 1
  %arrayidx37 = getelementptr %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1, i32 1, i32 5
  %30 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx37, align 1
  %arrayidx38 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 12
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx38, align 4
  %root_path_cost = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 2
  %33 = ptrtoint ptr %root_path_cost to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %root_path_cost, align 4
  %35 = lshr i32 %34, 24
  %conv39 = trunc i32 %35 to i8
  %arrayidx40 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 13
  %36 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv39, ptr %arrayidx40, align 1
  %37 = lshr i32 %34, 16
  %conv44 = trunc i32 %37 to i8
  %arrayidx45 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 14
  %38 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv44, ptr %arrayidx45, align 2
  %39 = lshr i32 %34, 8
  %conv49 = trunc i32 %39 to i8
  %arrayidx50 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 15
  %40 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv49, ptr %arrayidx50, align 1
  %conv53 = trunc i32 %34 to i8
  %arrayidx54 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 16
  %41 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv53, ptr %arrayidx54, align 4
  %bridge_id = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3
  %42 = ptrtoint ptr %bridge_id to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bridge_id, align 4
  %arrayidx57 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 17
  %44 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx57, align 1
  %arrayidx60 = getelementptr %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx60, align 1
  %arrayidx61 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 18
  %47 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx61, align 2
  %addr63 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %addr63 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %addr63, align 2
  %arrayidx65 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 19
  %50 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx65, align 1
  %arrayidx68 = getelementptr %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3, i32 1, i32 1
  %51 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx68, align 1
  %arrayidx69 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 20
  %53 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx69, align 4
  %arrayidx72 = getelementptr %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3, i32 1, i32 2
  %54 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx72, align 2
  %arrayidx73 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 21
  %56 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx73, align 1
  %arrayidx76 = getelementptr %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3, i32 1, i32 3
  %57 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx76, align 1
  %arrayidx77 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 22
  %59 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx77, align 2
  %arrayidx80 = getelementptr %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3, i32 1, i32 4
  %60 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx80, align 2
  %arrayidx81 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 23
  %62 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx81, align 1
  %arrayidx84 = getelementptr %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3, i32 1, i32 5
  %63 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx84, align 1
  %arrayidx85 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 24
  %65 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx85, align 4
  %port_id = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 4
  %66 = ptrtoint ptr %port_id to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %port_id, align 4
  %68 = lshr i16 %67, 8
  %conv89 = trunc i16 %68 to i8
  %arrayidx90 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 25
  %69 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv89, ptr %arrayidx90, align 1
  %conv94 = trunc i16 %67 to i8
  %arrayidx95 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 26
  %70 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv94, ptr %arrayidx95, align 2
  %add.ptr = getelementptr inbounds i8, ptr %buf, i32 27
  %message_age = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 5
  %71 = ptrtoint ptr %message_age to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %message_age, align 4
  %mul.i = shl i32 %72, 8
  %div.i = sdiv i32 %mul.i, 100
  %conv.i = trunc i32 %div.i to i16
  %73 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %conv.i, ptr %add.ptr, align 1
  %add.ptr97 = getelementptr inbounds i8, ptr %buf, i32 29
  %max_age = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 6
  %74 = ptrtoint ptr %max_age to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_age, align 4
  %mul.i133 = shl i32 %75, 8
  %div.i134 = sdiv i32 %mul.i133, 100
  %conv.i135 = trunc i32 %div.i134 to i16
  %76 = ptrtoint ptr %add.ptr97 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %conv.i135, ptr %add.ptr97, align 1
  %add.ptr99 = getelementptr inbounds i8, ptr %buf, i32 31
  %hello_time = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 7
  %77 = ptrtoint ptr %hello_time to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %hello_time, align 4
  %mul.i136 = shl i32 %78, 8
  %div.i137 = sdiv i32 %mul.i136, 100
  %conv.i138 = trunc i32 %div.i137 to i16
  %79 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %conv.i138, ptr %add.ptr99, align 1
  %add.ptr101 = getelementptr inbounds i8, ptr %buf, i32 33
  %forward_delay = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 8
  %80 = ptrtoint ptr %forward_delay to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %forward_delay, align 4
  %mul.i139 = shl i32 %81, 8
  %div.i140 = sdiv i32 %mul.i139, 100
  %conv.i141 = trunc i32 %div.i140 to i16
  %82 = ptrtoint ptr %add.ptr101 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %conv.i141, ptr %add.ptr101, align 1
  call fastcc void @br_send_bpdu(ptr noundef %p, ptr noundef nonnull %buf, i32 noundef 35)
  %tx_bpdu = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 36, i32 3
  %83 = ptrtoint ptr %tx_bpdu to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %tx_bpdu, align 8
  %inc = add i64 %84, 1
  store i64 %inc, ptr %tx_bpdu, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @br_send_bpdu(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %data, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %length, 3
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #6
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = getelementptr inbounds %struct.anon.4, ptr %call.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %2, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4, ptr %protocol, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %5 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %priority, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 3
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 3
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_data.exit, label %do.body3.i.i, !prof !48

do.body3.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

__skb_put_data.exit:                              ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i, i32 %length
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i.i, ptr %tail.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %14, %length
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %15 = call ptr @memcpy(ptr %add.ptr1.i, ptr %data, i32 %length)
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 3) #6
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %20 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %conv.i.i.i
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 66, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 66, ptr %ssap4.i, align 1
  %23 = load ptr, ptr %head.i.i, align 8
  %24 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i22 = zext i16 %24 to i32
  %add.ptr.i.i.i23 = getelementptr i8, ptr %23, i32 %conv.i.i.i22
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i23, i32 0, i32 2
  %25 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 3, ptr %ctrl_1.i, align 1
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 86
  %28 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_addr, align 64
  %30 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p, align 8
  %group_addr = getelementptr inbounds %struct.net_bridge, ptr %31, i32 0, i32 27
  %call3 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call.i.i, ptr noundef %29, ptr noundef %group_addr) #6
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %34 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %36 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 127
  %39 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nd_net.i, align 4
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %2, align 8
  %call.i25 = tail call fastcc i32 @nf_hook(ptr noundef %40, ptr noundef nonnull %call.i.i, ptr noundef %42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i25)
  %cmp.i = icmp eq i32 %call.i25, 1
  br i1 %cmp.i, label %if.then.i, label %__skb_put_data.exit.cleanup_crit_edge

__skb_put_data.exit.cleanup_crit_edge:            ; preds = %__skb_put_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %__skb_put_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i26 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %__skb_put_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_send_tcn_bpdu(ptr nocapture noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %stp_enabled = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buf, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %6, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %5, align 1
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %4, align 1
  call fastcc void @br_send_bpdu(ptr noundef %p, ptr noundef nonnull %buf, i32 noundef 4)
  %tx_tcn = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 36, i32 5
  %11 = ptrtoint ptr %tx_tcn to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tx_tcn, align 8
  %inc = add i64 %12, 1
  store i64 %inc, ptr %tx_tcn, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_stp_rcv(ptr nocapture noundef readnone %proto, ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %bpdu = alloca %struct.br_config_bpdu, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 4
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !50

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp3.i = icmp ult i32 %1, 4
  br i1 %cmp3.i, label %if.end.i.err_crit_edge, label %pskb_may_pull.exit, !prof !50

if.end.i.err_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 4, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #6
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.err_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

pskb_may_pull.exit.err_crit_edge:                 ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx2 = getelementptr i8, ptr %5, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp4.not = icmp eq i8 %9, 0
  br i1 %cmp4.not, label %lor.lhs.false6, label %lor.lhs.false.err_crit_edge

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %arrayidx7 = getelementptr i8, ptr %5, i32 2
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp9.not = icmp eq i8 %11, 0
  br i1 %cmp9.not, label %if.end12, label %lor.lhs.false6.err_crit_edge

lor.lhs.false6.err_crit_edge:                     ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end12:                                         ; preds = %lor.lhs.false6
  %rx_handler.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 94
  %12 = ptrtoint ptr %rx_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %rx_handler.i.i, align 32
  %call.i.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end12.br_rx_handler_check_rcu.exit.i_crit_edge

if.end12.br_rx_handler_check_rcu.exit.i_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_rx_handler_check_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %if.end12
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.br_rx_handler_check_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_rx_handler_check_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @br_rx_handler_check_rcu.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true4.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.br_rx_handler_check_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_rx_handler_check_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @br_rx_handler_check_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 850, ptr noundef nonnull @.str.7) #6
  br label %br_rx_handler_check_rcu.exit.i

br_rx_handler_check_rcu.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true4.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, %land.lhs.true.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, %if.end12.br_rx_handler_check_rcu.exit.i_crit_edge
  %call9.i.i = tail call ptr @br_get_rx_handler(ptr noundef %dev) #6
  %cmp.i.i = icmp eq ptr %13, %call9.i.i
  br i1 %cmp.i.i, label %cond.true.i, label %br_rx_handler_check_rcu.exit.i.err_crit_edge

br_rx_handler_check_rcu.exit.i.err_crit_edge:     ; preds = %br_rx_handler_check_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

cond.true.i:                                      ; preds = %br_rx_handler_check_rcu.exit.i
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %14 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %rx_handler_data.i.i, align 4
  %call.i3.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i7.i, label %cond.true.i.br_port_get_check_rcu.exit_crit_edge

cond.true.i.br_port_get_check_rcu.exit_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_port_get_check_rcu.exit

land.lhs.true.i7.i:                               ; preds = %cond.true.i
  %call2.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i5.i)
  %tobool3.not.i6.i = icmp eq i32 %call2.i5.i, 0
  br i1 %tobool3.not.i6.i, label %land.lhs.true.i7.i.br_port_get_check_rcu.exit_crit_edge, label %land.lhs.true4.i8.i

land.lhs.true.i7.i.br_port_get_check_rcu.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_port_get_check_rcu.exit

land.lhs.true4.i8.i:                              ; preds = %land.lhs.true.i7.i
  %.b9.i.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i8.i.br_port_get_check_rcu.exit_crit_edge, label %if.then.i9.i

land.lhs.true4.i8.i.br_port_get_check_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_port_get_check_rcu.exit

if.then.i9.i:                                     ; preds = %land.lhs.true4.i8.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 416, ptr noundef nonnull @.str.7) #6
  br label %br_port_get_check_rcu.exit

br_port_get_check_rcu.exit:                       ; preds = %if.then.i9.i, %land.lhs.true4.i8.i.br_port_get_check_rcu.exit_crit_edge, %land.lhs.true.i7.i.br_port_get_check_rcu.exit_crit_edge, %cond.true.i.br_port_get_check_rcu.exit_crit_edge
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %br_port_get_check_rcu.exit.err_crit_edge, label %if.end15

br_port_get_check_rcu.exit.err_crit_edge:         ; preds = %br_port_get_check_rcu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end15:                                         ; preds = %br_port_get_check_rcu.exit
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  tail call void @_raw_spin_lock(ptr noundef %17) #6
  %stp_enabled = getelementptr inbounds %struct.net_bridge, ptr %17, i32 0, i32 28
  %18 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp17.not = icmp eq i32 %19, 1
  br i1 %cmp17.not, label %if.end20, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end20:                                         ; preds = %if.end15
  %dev21 = getelementptr inbounds %struct.net_bridge, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev21, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end20.out_crit_edge, label %if.end24

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end24:                                         ; preds = %if.end20
  %state = getelementptr inbounds %struct.net_bridge_port, ptr %15, i32 0, i32 8
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp26 = icmp eq i8 %25, 0
  br i1 %cmp26, label %if.end24.out_crit_edge, label %if.end29

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end29:                                         ; preds = %if.end24
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %26 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %28 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %29 to i32
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %conv.i.i
  %group_addr = getelementptr inbounds %struct.net_bridge, ptr %17, i32 0, i32 27
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i, align 4
  %32 = ptrtoint ptr %group_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %group_addr, align 4
  %xor.i = xor i32 %33, %31
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.net_bridge, ptr %17, i32 0, i32 27, i32 4
  %36 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %37, %35
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end34, label %if.end29.out_crit_edge

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end34:                                         ; preds = %if.end29
  %flags35 = getelementptr inbounds %struct.net_bridge_port, ptr %15, i32 0, i32 4
  %38 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags35, align 4
  %and36 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end46, label %do.end

do.end:                                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %port_no = getelementptr inbounds %struct.net_bridge_port, ptr %15, i32 0, i32 9
  %40 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %port_no, align 2
  %conv41 = zext i16 %41 to i32
  %dev42 = getelementptr inbounds %struct.net_bridge_port, ptr %15, i32 0, i32 1
  %42 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev42, align 4
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %21, i32 noundef %conv41, ptr noundef %43) #9
  tail call void @br_stp_disable_port(ptr noundef nonnull %15) #6
  br label %out

if.end46:                                         ; preds = %if.end34
  %call47 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #6
  %44 = ptrtoint ptr %call47 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %call47, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i8 %45, label %if.end46.out_crit_edge [
    i8 0, label %if.then52
    i8 -128, label %if.then187
  ]

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then52:                                        ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %bpdu) #6
  %47 = call ptr @memset(ptr %bpdu, i32 255, i32 44)
  %call53 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef 32)
  br i1 %call53, label %if.end55, label %if.then52.cleanup_crit_edge

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %if.then52
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %arrayidx57 = getelementptr i8, ptr %49, i32 1
  %50 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx57, align 1
  %52 = ptrtoint ptr %bpdu to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load = load i8, ptr %bpdu, align 4
  %bf.shl = shl i8 %51, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %bpdu, align 4
  %53 = load i8, ptr %arrayidx57, align 1
  %54 = lshr i8 %53, 1
  %bf.shl68 = and i8 %54, 64
  %bf.clear69 = and i8 %bf.set, -65
  %bf.set70 = or i8 %bf.shl68, %bf.clear69
  store i8 %bf.set70, ptr %bpdu, align 4
  %arrayidx72 = getelementptr i8, ptr %49, i32 2
  %55 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx72, align 1
  %root = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1
  %57 = ptrtoint ptr %root to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %root, align 1
  %arrayidx74 = getelementptr i8, ptr %49, i32 3
  %58 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx74, align 1
  %arrayidx77 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx77, align 2
  %arrayidx78 = getelementptr i8, ptr %49, i32 4
  %61 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx78, align 1
  %addr = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %addr, align 1
  %arrayidx81 = getelementptr i8, ptr %49, i32 5
  %64 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx81, align 1
  %arrayidx84 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1, i32 1, i32 1
  %66 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx84, align 4
  %arrayidx85 = getelementptr i8, ptr %49, i32 6
  %67 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx85, align 1
  %arrayidx88 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1, i32 1, i32 2
  %69 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx88, align 1
  %arrayidx89 = getelementptr i8, ptr %49, i32 7
  %70 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx89, align 1
  %arrayidx92 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1, i32 1, i32 3
  %72 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx92, align 2
  %arrayidx93 = getelementptr i8, ptr %49, i32 8
  %73 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx93, align 1
  %arrayidx96 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1, i32 1, i32 4
  %75 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx96, align 1
  %arrayidx97 = getelementptr i8, ptr %49, i32 9
  %76 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx97, align 1
  %arrayidx100 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1, i32 1, i32 5
  %78 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx100, align 4
  %arrayidx101 = getelementptr i8, ptr %49, i32 10
  %79 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %80 to i32
  %shl = shl nuw i32 %conv102, 24
  %arrayidx103 = getelementptr i8, ptr %49, i32 11
  %81 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %82 to i32
  %shl105 = shl nuw nsw i32 %conv104, 16
  %or = or i32 %shl105, %shl
  %arrayidx106 = getelementptr i8, ptr %49, i32 12
  %83 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %84 to i32
  %shl108 = shl nuw nsw i32 %conv107, 8
  %or109 = or i32 %or, %shl108
  %arrayidx110 = getelementptr i8, ptr %49, i32 13
  %85 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %86 to i32
  %or112 = or i32 %or109, %conv111
  %root_path_cost = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 2
  %87 = ptrtoint ptr %root_path_cost to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or112, ptr %root_path_cost, align 4
  %arrayidx113 = getelementptr i8, ptr %49, i32 14
  %88 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx113, align 1
  %bridge_id = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3
  %90 = ptrtoint ptr %bridge_id to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %bridge_id, align 4
  %arrayidx116 = getelementptr i8, ptr %49, i32 15
  %91 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx116, align 1
  %arrayidx119 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx119, align 1
  %arrayidx120 = getelementptr i8, ptr %49, i32 16
  %94 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx120, align 1
  %addr122 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3, i32 1
  %96 = ptrtoint ptr %addr122 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %addr122, align 2
  %arrayidx124 = getelementptr i8, ptr %49, i32 17
  %97 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx124, align 1
  %arrayidx127 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3, i32 1, i32 1
  %99 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx127, align 1
  %arrayidx128 = getelementptr i8, ptr %49, i32 18
  %100 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx128, align 1
  %arrayidx131 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3, i32 1, i32 2
  %102 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %arrayidx131, align 4
  %arrayidx132 = getelementptr i8, ptr %49, i32 19
  %103 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx132, align 1
  %arrayidx135 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3, i32 1, i32 3
  %105 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %arrayidx135, align 1
  %arrayidx136 = getelementptr i8, ptr %49, i32 20
  %106 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx136, align 1
  %arrayidx139 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3, i32 1, i32 4
  %108 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx139, align 2
  %arrayidx140 = getelementptr i8, ptr %49, i32 21
  %109 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx140, align 1
  %arrayidx143 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3, i32 1, i32 5
  %111 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %arrayidx143, align 1
  %arrayidx144 = getelementptr i8, ptr %49, i32 22
  %112 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %113 to i16
  %shl146 = shl nuw i16 %conv145, 8
  %arrayidx147 = getelementptr i8, ptr %49, i32 23
  %114 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %115 to i16
  %or149 = or i16 %shl146, %conv148
  %port_id = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 4
  %116 = ptrtoint ptr %port_id to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %or149, ptr %port_id, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 24
  %117 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %add.ptr, align 1
  %conv.i = zext i16 %118 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 100
  %sub.i245 = add nuw nsw i32 %mul.i, 255
  %div1.i = lshr i32 %sub.i245, 8
  %message_age = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 5
  %119 = ptrtoint ptr %message_age to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %div1.i, ptr %message_age, align 4
  %add.ptr152 = getelementptr i8, ptr %49, i32 26
  %120 = ptrtoint ptr %add.ptr152 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 2)
  %121 = load i16, ptr %add.ptr152, align 1
  %conv.i246 = zext i16 %121 to i32
  %mul.i247 = mul nuw nsw i32 %conv.i246, 100
  %sub.i248 = add nuw nsw i32 %mul.i247, 255
  %div1.i249 = lshr i32 %sub.i248, 8
  %max_age = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 6
  %122 = ptrtoint ptr %max_age to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %div1.i249, ptr %max_age, align 4
  %add.ptr154 = getelementptr i8, ptr %49, i32 28
  %123 = ptrtoint ptr %add.ptr154 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %add.ptr154, align 1
  %conv.i250 = zext i16 %124 to i32
  %mul.i251 = mul nuw nsw i32 %conv.i250, 100
  %sub.i252 = add nuw nsw i32 %mul.i251, 255
  %div1.i253 = lshr i32 %sub.i252, 8
  %hello_time = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 7
  %125 = ptrtoint ptr %hello_time to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %div1.i253, ptr %hello_time, align 4
  %add.ptr156 = getelementptr i8, ptr %49, i32 30
  %126 = ptrtoint ptr %add.ptr156 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %add.ptr156, align 1
  %conv.i254 = zext i16 %127 to i32
  %mul.i255 = mul nuw nsw i32 %conv.i254, 100
  %sub.i256 = add nuw nsw i32 %mul.i255, 255
  %div1.i257 = lshr i32 %sub.i256, 8
  %forward_delay = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 8
  %128 = ptrtoint ptr %forward_delay to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %div1.i257, ptr %forward_delay, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %div1.i249)
  %cmp160 = icmp ugt i32 %div1.i, %div1.i249
  br i1 %cmp160, label %if.then162, label %if.end182

if.then162:                                       ; preds = %if.end55
  %call163 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then162.cleanup_crit_edge, label %do.end168

if.then162.cleanup_crit_edge:                     ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end168:                                        ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %15, align 8
  %dev171 = getelementptr inbounds %struct.net_bridge, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %dev171 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev171, align 4
  %port_no174 = getelementptr inbounds %struct.net_bridge_port, ptr %15, i32 0, i32 9
  %133 = ptrtoint ptr %port_no174 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %port_no174, align 2
  %conv175 = zext i16 %134 to i32
  %135 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %head.i.i, align 8
  %137 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i260 = zext i16 %138 to i32
  %add.ptr.i.i261 = getelementptr i8, ptr %136, i32 %conv.i.i260
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i261, i32 0, i32 1
  %139 = ptrtoint ptr %message_age to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %message_age, align 4
  %141 = ptrtoint ptr %max_age to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %max_age, align 4
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %132, i32 noundef %conv175, ptr noundef %h_source, i32 noundef %140, i32 noundef %142) #9
  br label %cleanup

if.end182:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  call void @br_received_config_bpdu(ptr noundef nonnull %15, ptr noundef nonnull %bpdu) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end182, %do.end168, %if.then162.cleanup_crit_edge, %if.then52.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %bpdu) #6
  br label %out

if.then187:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @br_received_tcn_bpdu(ptr noundef nonnull %15) #6
  br label %out

out:                                              ; preds = %if.then187, %cleanup, %if.end46.out_crit_edge, %do.end, %if.end29.out_crit_edge, %if.end24.out_crit_edge, %if.end20.out_crit_edge, %if.end15.out_crit_edge
  call void @_raw_spin_unlock(ptr noundef %17) #6
  br label %err

err:                                              ; preds = %out, %br_port_get_check_rcu.exit.err_crit_edge, %br_rx_handler_check_rcu.exit.i.err_crit_edge, %lor.lhs.false6.err_crit_edge, %lor.lhs.false.err_crit_edge, %if.end.err_crit_edge, %pskb_may_pull.exit.err_crit_edge, %if.end.i.err_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp.not = icmp ult i32 %sub.i, %len
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge, !prof !50

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp3 = icmp ult i32 %1, %len
  br i1 %cmp3, label %if.end.return_crit_edge, label %if.end11, !prof !50

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %len, %sub.i
  %call13 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub) #6
  %cmp14 = icmp ne ptr %call13, null
  br label %return

return:                                           ; preds = %if.end11, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp14, %if.end11 ], [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_stp_disable_port(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_received_config_bpdu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_received_tcn_bpdu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_mac_hdr_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_send_bpdu_finish(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dev_queue_xmit(ptr noundef %skb) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(ptr noundef %net, ptr noundef %skb, ptr noundef %outdev) unnamed_addr #2 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([13 x [7 x %struct.static_key]], ptr @nf_hooks_needed, i32 0, i32 7, i32 3), ptr blockaddress(@nf_hook, %if.end)) #6
          to label %cleanup [label %if.end], !srcloc !51

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !52
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx108 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 6, i32 3
  %4 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx108, align 4
  %call110 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %land.lhs.true112, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true112:                                 ; preds = %rcu_read_lock.exit
  %call113 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.lhs.true112.sw.epilog_crit_edge, label %land.lhs.true115

land.lhs.true112.sw.epilog_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true115:                                 ; preds = %land.lhs.true112
  %.b1 = load i1, ptr @nf_hook.__warned.10, align 1
  br i1 %.b1, label %land.lhs.true115.sw.epilog_crit_edge, label %if.then117

land.lhs.true115.sw.epilog_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then117:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nf_hook.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 243, ptr noundef nonnull @.str.7) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then117, %land.lhs.true115.sw.epilog_crit_edge, %land.lhs.true112.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %5, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #6
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 4
  store i8 3, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 7, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %11 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %12 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @br_send_bpdu_finish, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %5, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #6
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !53
  %13 = call i32 @llvm.read_register.i32(metadata !38) #6
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #6
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_get_rx_handler(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !32, !33, !35, !36}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bridge/br_stp_bpdu.c", i32 182, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @br_stp_rcv._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @br_stp_rcv._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bridge/br_stp_bpdu.c", i32 230, i32 5}
!8 = !{ptr @br_stp_rcv._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @br_stp_rcv._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/bridge/br_private.h", i32 850, i32 9}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/bridge/br_private.h", i32 416, i32 9}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2154600207, i64 2154600695, i64 2154600244, i64 2154600300, i64 2154600334, i64 2154600358, i64 2154600399, i64 2154600420, i64 2154600448, i64 2154600482}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 2148695339, i64 2148695344, i64 2148695357, i64 2148695401, i64 2148695435, i64 2148695456}
!52 = !{i64 2149351847}
!53 = !{i64 2149352113}
