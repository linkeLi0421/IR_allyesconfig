; ModuleID = '/llk/IR_all_yes/net/tipc/bearer.c_pt.bc'
source_filename = "../net/tipc/bearer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.tipc_media = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [16 x i8] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tipc_media_addr = type { [32 x i8], i8, i8 }
%struct.tipc_net = type { [16 x i8], i32, i32, i32, [33 x i8], i32, i32, i8, %struct.spinlock, [512 x %struct.hlist_head], %struct.list_head, i32, i32, [3 x ptr], i32, [4 x ptr], %struct.spinlock, ptr, ptr, %struct.rhashtable, %struct.spinlock, ptr, ptr, %struct.atomic_t, i16, %struct.packet_type, ptr, %struct.work_struct, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tipc_bearer = type { ptr, i32, %struct.tipc_media_addr, [32 x i8], ptr, %struct.tipc_media_addr, %struct.packet_type, %struct.callback_head, i32, i32, i32, i32, i32, i32, ptr, i8, i32, %struct.refcount_struct }
%struct.callback_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.108 = type { ptr }
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
%struct.sk_buff = type { %union.anon.82, %union.anon.109, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.109 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.tipc_nl_msg = type { ptr, i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.127, [0 x i32], %union.anon.128, i16, i16, %union.anon.129, %struct.refcount_struct, [0 x i32], %union.anon.130 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { %struct.hlist_node }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.tipc_bearer_names = type { [16 x i8], [16 x i8] }

@media_info_array = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @eth_media_info, ptr @ib_media_info, ptr @udp_media_info, ptr null], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s(%s)\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UNKNOWN(%u)\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-%x\00", [28 x i8] zeroinitializer }, align 32
@tipc_net_id = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@tipc_bearer_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/tipc/bearer.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@tipc_bearer_get_name.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_bearer_add_dest.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@tipc_bearer_remove_dest.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_enable_l2_media._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016tipc: Enabling <%s> not permitted\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tipc_enable_l2_media\00", [43 x i8] zeroinitializer }, align 32
@tipc_enable_l2_media._entry_ptr = internal global ptr @tipc_enable_l2_media._entry, section ".printk_index", align 4
@tipc_enable_l2_media._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014tipc: Failed to obtain node identity\0A\00", [56 x i8] zeroinitializer }, align 32
@tipc_enable_l2_media._entry_ptr.10 = internal global ptr @tipc_enable_l2_media._entry.8, section ".printk_index", align 4
@tipc_disable_l2_media.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_l2_send_msg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_bearer_mtu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @tipc_l2_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@tipc_bearer_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_nl_bearer_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_nl_bearer_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@tipc_nl_bearer_get.__msg = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Bearer not found\00", [47 x i8] zeroinitializer }, align 32
@__tipc_nl_bearer_disable.__msg = internal constant [17 x i8] c"Bearer not found\00", align 1
@tipc_nl_bearer_add.__msg = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Bearer not found\00", [47 x i8] zeroinitializer }, align 32
@__tipc_nl_bearer_set.__msg = internal constant [17 x i8] c"Bearer not found\00", align 1
@__tipc_nl_bearer_set.__msg.11 = internal constant [28 x i8] c"MTU property is unsupported\00", align 1
@__tipc_nl_bearer_set.__msg.12 = internal constant [26 x i8] c"MTU value is out-of-range\00", align 1
@tipc_nl_media_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@tipc_nl_media_get.__msg = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Media not found\00", [16 x i8] zeroinitializer }, align 32
@__tipc_nl_media_set.__msg = internal constant [16 x i8] c"Media not found\00", align 1
@__tipc_nl_media_set.__msg.13 = internal constant [28 x i8] c"MTU property is unsupported\00", align 1
@__tipc_nl_media_set.__msg.14 = internal constant [26 x i8] c"MTU value is out-of-range\00", align 1
@eth_media_info = external dso_local global %struct.tipc_media, align 4
@ib_media_info = external dso_local global %struct.tipc_media, align 4
@udp_media_info = external dso_local global %struct.tipc_media, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MTU too low for tipc bearer\0A\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@bearer_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_l2_rcv_msg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_l2_rcv_msg.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_l2_device_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_tipc_l2_device_event = external dso_local global %struct.tracepoint, align 4
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/tipc/trace.h\00", [47 x i8] zeroinitializer }, align 32
@trace_tipc_l2_device_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@tipc_reset_bearer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016tipc: Resetting bearer <%s>\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tipc_reset_bearer\00", [46 x i8] zeroinitializer }, align 32
@tipc_reset_bearer._entry_ptr = internal global ptr @tipc_reset_bearer._entry, section ".printk_index", align 4
@bearer_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016tipc: Disabling bearer <%s>\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bearer_disable\00", [17 x i8] zeroinitializer }, align 32
@bearer_disable._entry_ptr = internal global ptr @bearer_disable._entry, section ".printk_index", align 4
@tipc_genl_family = external dso_local global %struct.genl_family, align 4
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"illegal name\00", [19 x i8] zeroinitializer }, align 32
@tipc_enable_bearer.__msg = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Illegal name\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"illegal priority\00", [47 x i8] zeroinitializer }, align 32
@tipc_enable_bearer.__msg.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Illegal priority\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"media not registered\00", [43 x i8] zeroinitializer }, align 32
@tipc_enable_bearer.__msg.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Media not registered\00", [43 x i8] zeroinitializer }, align 32
@tipc_enable_bearer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"already enabled\00", [16 x i8] zeroinitializer }, align 32
@tipc_enable_bearer.__msg.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Already enabled\00", [16 x i8] zeroinitializer }, align 32
@tipc_enable_bearer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014tipc: Bearer <%s>: already 2 bearers with priority %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tipc_enable_bearer\00", [45 x i8] zeroinitializer }, align 32
@tipc_enable_bearer._entry_ptr = internal global ptr @tipc_enable_bearer._entry, section ".printk_index", align 4
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot adjust to lower\00", [41 x i8] zeroinitializer }, align 32
@tipc_enable_bearer.__msg.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot adjust to lower\00", [41 x i8] zeroinitializer }, align 32
@tipc_enable_bearer._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.37, ptr @.str.3, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014tipc: Bearer <%s>: trying with adjusted priority\0A\00", [44 x i8] zeroinitializer }, align 32
@tipc_enable_bearer._entry_ptr.42 = internal global ptr @tipc_enable_bearer._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max 3 bearers permitted\00", [40 x i8] zeroinitializer }, align 32
@tipc_enable_bearer.__msg.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Max 3 bearers permitted\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable media\00", [41 x i8] zeroinitializer }, align 32
@tipc_enable_bearer.__msg.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to enable media\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to create discoverer\00", [36 x i8] zeroinitializer }, align 32
@tipc_enable_bearer.__msg.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to create discoverer\00", [36 x i8] zeroinitializer }, align 32
@tipc_enable_bearer._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.37, ptr @.str.3, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016tipc: Enabled bearer <%s>, priority %u\0A\00", [54 x i8] zeroinitializer }, align 32
@tipc_enable_bearer._entry_ptr.51 = internal global ptr @tipc_enable_bearer._entry.49, section ".printk_index", align 4
@tipc_enable_bearer._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.37, ptr @.str.3, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014tipc: Enabling of bearer <%s> rejected, %s\0A\00", [50 x i8] zeroinitializer }, align 32
@tipc_enable_bearer._entry_ptr.54 = internal global ptr @tipc_enable_bearer._entry.52, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tipc_udp_mtu_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.57, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014tipc: MTU too low for tipc bearer\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tipc_udp_mtu_bad\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/tipc/udp_media.h\00", [43 x i8] zeroinitializer }, align 32
@tipc_udp_mtu_bad._entry_ptr = internal global ptr @tipc_udp_mtu_bad._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 4, i64 6, i64 7, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"media_info_array\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 51, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 118, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 122, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 125, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 184, i32 7 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 218, i32 6 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 441, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 452, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [9 x i8] c"notifier\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 719, i32 30 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 932, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1073, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1275, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 45, i32 7 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 695, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 723, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [21 x i8] c"../net/tipc/bearer.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 261, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"../net/tipc/trace.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 395, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 108, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 382, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 411, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 991, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 262, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 263, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 268, i32 12 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 269, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 275, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 276, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 293, i32 13 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 294, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 300, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 304, i32 14 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 305, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 309, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 319, i32 12 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 320, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 333, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 334, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 350, i32 12 }
@___asan_gen_.209 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 351, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 367, i32 2 }
@___asan_gen_.222 = private constant [21 x i8] c"../net/tipc/bearer.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 371, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [24 x i8] c"../net/tipc/udp_media.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 55, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @bearer_disable._entry, ptr @bearer_disable._entry_ptr, ptr @tipc_enable_bearer._entry, ptr @tipc_enable_bearer._entry.40, ptr @tipc_enable_bearer._entry.49, ptr @tipc_enable_bearer._entry.52, ptr @tipc_enable_bearer._entry_ptr, ptr @tipc_enable_bearer._entry_ptr.42, ptr @tipc_enable_bearer._entry_ptr.51, ptr @tipc_enable_bearer._entry_ptr.54, ptr @tipc_enable_l2_media._entry, ptr @tipc_enable_l2_media._entry.8, ptr @tipc_enable_l2_media._entry_ptr, ptr @tipc_enable_l2_media._entry_ptr.10, ptr @tipc_reset_bearer._entry, ptr @tipc_reset_bearer._entry_ptr, ptr @tipc_udp_mtu_bad._entry, ptr @tipc_udp_mtu_bad._entry_ptr, ptr @media_info_array, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @notifier, ptr @tipc_nl_bearer_get.__msg, ptr @tipc_nl_bearer_add.__msg, ptr @tipc_nl_media_get.__msg, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @tipc_enable_bearer.__msg, ptr @.str.30, ptr @tipc_enable_bearer.__msg.31, ptr @.str.32, ptr @tipc_enable_bearer.__msg.33, ptr @.str.34, ptr @tipc_enable_bearer.__msg.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @tipc_enable_bearer.__msg.39, ptr @.str.41, ptr @.str.43, ptr @tipc_enable_bearer.__msg.44, ptr @.str.45, ptr @tipc_enable_bearer.__msg.46, ptr @.str.47, ptr @tipc_enable_bearer.__msg.48, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_info_array to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_enable_l2_media._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_enable_l2_media._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_bearer_get.__msg to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_bearer_add.__msg to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_media_get.__msg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_reset_bearer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bearer_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_enable_bearer.__msg to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_enable_bearer.__msg.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_enable_bearer.__msg.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_enable_bearer.__msg.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_enable_bearer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_enable_bearer.__msg.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_enable_bearer._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_enable_bearer.__msg.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_enable_bearer.__msg.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_enable_bearer.__msg.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_enable_bearer._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_enable_bearer._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_udp_mtu_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tipc_media_find(ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef getelementptr inbounds (%struct.tipc_media, ptr @eth_media_info, i32 0, i32 14), ptr noundef %name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.cond

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond:                                         ; preds = %entry
  %call.1 = tail call i32 @strcmp(ptr noundef getelementptr inbounds (%struct.tipc_media, ptr @ib_media_info, i32 0, i32 14), ptr noundef %name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %call.2 = tail call i32 @strcmp(ptr noundef getelementptr inbounds (%struct.tipc_media, ptr @udp_media_info, i32 0, i32 14), ptr noundef %name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  %spec.select = select i1 %tobool.not.2, ptr getelementptr inbounds ([4 x ptr], ptr @media_info_array, i32 0, i32 2), ptr getelementptr inbounds ([4 x ptr], ptr @media_info_array, i32 0, i32 3)
  br label %for.end

for.end:                                          ; preds = %for.cond.1, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %arrayidx.lcssa = phi ptr [ @media_info_array, %entry.for.end_crit_edge ], [ getelementptr inbounds ([4 x ptr], ptr @media_info_array, i32 0, i32 1), %for.cond.for.end_crit_edge ], [ %spec.select, %for.cond.1 ]
  %0 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.lcssa, align 4
  ret ptr %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_media_addr_printf(ptr noundef %buf, i32 noundef %len, ptr noundef %a) local_unnamed_addr #3 align 64 {
entry:
  %addr_str = alloca [60 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %addr_str) #12
  %0 = call ptr @memset(ptr %addr_str, i32 255, i32 60)
  %media_id = getelementptr inbounds %struct.tipc_media_addr, ptr %a, i32 0, i32 1
  %1 = ptrtoint ptr %media_id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %media_id, align 1
  %conv.i = zext i8 %2 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tipc_media, ptr @eth_media_info, i32 0, i32 12) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.tipc_media, ptr @eth_media_info, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp2.i = icmp eq i32 %3, %conv.i
  br i1 %cmp2.i, label %entry.media_find_id.exit_crit_edge, label %for.cond.i

entry.media_find_id.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %media_find_id.exit

for.cond.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tipc_media, ptr @ib_media_info, i32 0, i32 12) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.tipc_media, ptr @ib_media_info, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i)
  %cmp2.1.i = icmp eq i32 %4, %conv.i
  br i1 %cmp2.1.i, label %for.cond.i.media_find_id.exit_crit_edge, label %for.cond.1.i

for.cond.i.media_find_id.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %media_find_id.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tipc_media, ptr @udp_media_info, i32 0, i32 12) to i32))
  %5 = load i32, ptr getelementptr inbounds (%struct.tipc_media, ptr @udp_media_info, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i)
  %cmp2.2.i = icmp eq i32 %5, %conv.i
  %spec.select.i = select i1 %cmp2.2.i, ptr getelementptr inbounds ([4 x ptr], ptr @media_info_array, i32 0, i32 2), ptr getelementptr inbounds ([4 x ptr], ptr @media_info_array, i32 0, i32 3)
  br label %media_find_id.exit

media_find_id.exit:                               ; preds = %for.cond.1.i, %for.cond.i.media_find_id.exit_crit_edge, %entry.media_find_id.exit_crit_edge
  %arrayidx.lcssa.i = phi ptr [ @media_info_array, %entry.media_find_id.exit_crit_edge ], [ getelementptr inbounds ([4 x ptr], ptr @media_info_array, i32 0, i32 1), %for.cond.i.media_find_id.exit_crit_edge ], [ %spec.select.i, %for.cond.1.i ]
  %6 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.lcssa.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %media_find_id.exit.if.else_crit_edge, label %land.lhs.true

media_find_id.exit.if.else_crit_edge:             ; preds = %media_find_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %media_find_id.exit
  %addr2str = getelementptr inbounds %struct.tipc_media, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %addr2str to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr2str, align 4
  %call1 = call i32 %9(ptr noundef %a, ptr noundef nonnull %addr_str, i32 noundef 60) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.tipc_media, ptr %7, i32 0, i32 14
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull %addr_str) #12
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %media_find_id.exit.if.else_crit_edge
  %10 = ptrtoint ptr %media_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %media_id, align 1
  %conv = zext i8 %11 to i32
  %call7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.1, i32 noundef %conv) #12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else
  %i.026 = phi i32 [ 0, %if.else ], [ %inc, %for.body.for.body_crit_edge ]
  %ret.025 = phi i32 [ %call7, %if.else ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %ret.025
  %sub = sub i32 %len, %ret.025
  %arrayidx = getelementptr [32 x i8], ptr %a, i32 0, i32 %i.026
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv9 = zext i8 %13 to i32
  %call10 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.2, i32 noundef %conv9) #12
  %add = add i32 %call10, %ret.025
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then
  %ret.1 = phi i32 [ %call5, %if.then ], [ %add, %for.body.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %addr_str) #12
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tipc_bearer_find(ptr noundef %net, ptr nocapture noundef readonly %name) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @tipc_bearer_find.__warned, align 1
  br i1 %.b18, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_bearer_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 184, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %arrayidx = getelementptr %struct.tipc_net, ptr %call, i32 0, i32 15, i32 0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %do.end.for.inc_crit_edge, label %land.lhs.true6

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true6:                                   ; preds = %do.end
  %name7 = getelementptr inbounds %struct.tipc_bearer, ptr %2, i32 0, i32 3
  %call8 = tail call i32 @strcmp(ptr noundef %name7, ptr noundef %name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.for.inc_crit_edge

land.lhs.true6.for.inc_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true6.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %call1.1 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call1.1, label %for.inc.do.end.1_crit_edge, label %land.lhs.true.1

for.inc.do.end.1_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.1

land.lhs.true.1:                                  ; preds = %for.inc
  %call2.1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool.not.1, label %land.lhs.true.1.do.end.1_crit_edge, label %land.lhs.true3.1

land.lhs.true.1.do.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.1

land.lhs.true3.1:                                 ; preds = %land.lhs.true.1
  %.b18.1 = load i1, ptr @tipc_bearer_find.__warned, align 1
  br i1 %.b18.1, label %land.lhs.true3.1.do.end.1_crit_edge, label %if.then.1

land.lhs.true3.1.do.end.1_crit_edge:              ; preds = %land.lhs.true3.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.1

if.then.1:                                        ; preds = %land.lhs.true3.1
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_bearer_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 184, ptr noundef nonnull @.str.4) #12
  br label %do.end.1

do.end.1:                                         ; preds = %if.then.1, %land.lhs.true3.1.do.end.1_crit_edge, %land.lhs.true.1.do.end.1_crit_edge, %for.inc.do.end.1_crit_edge
  %arrayidx.1 = getelementptr %struct.tipc_net, ptr %call, i32 0, i32 15, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1, align 4
  %tobool5.not.1 = icmp eq ptr %4, null
  br i1 %tobool5.not.1, label %do.end.1.for.inc.1_crit_edge, label %land.lhs.true6.1

do.end.1.for.inc.1_crit_edge:                     ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true6.1:                                 ; preds = %do.end.1
  %name7.1 = getelementptr inbounds %struct.tipc_bearer, ptr %4, i32 0, i32 3
  %call8.1 = tail call i32 @strcmp(ptr noundef %name7.1, ptr noundef %name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %land.lhs.true6.1.cleanup_crit_edge, label %land.lhs.true6.1.for.inc.1_crit_edge

land.lhs.true6.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true6.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true6.1.cleanup_crit_edge:               ; preds = %land.lhs.true6.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true6.1.for.inc.1_crit_edge, %do.end.1.for.inc.1_crit_edge
  %call1.2 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call1.2, label %for.inc.1.do.end.2_crit_edge, label %land.lhs.true.2

for.inc.1.do.end.2_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %call2.2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %tobool.not.2 = icmp eq i32 %call2.2, 0
  br i1 %tobool.not.2, label %land.lhs.true.2.do.end.2_crit_edge, label %land.lhs.true3.2

land.lhs.true.2.do.end.2_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.2

land.lhs.true3.2:                                 ; preds = %land.lhs.true.2
  %.b18.2 = load i1, ptr @tipc_bearer_find.__warned, align 1
  br i1 %.b18.2, label %land.lhs.true3.2.do.end.2_crit_edge, label %if.then.2

land.lhs.true3.2.do.end.2_crit_edge:              ; preds = %land.lhs.true3.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.2

if.then.2:                                        ; preds = %land.lhs.true3.2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_bearer_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 184, ptr noundef nonnull @.str.4) #12
  br label %do.end.2

do.end.2:                                         ; preds = %if.then.2, %land.lhs.true3.2.do.end.2_crit_edge, %land.lhs.true.2.do.end.2_crit_edge, %for.inc.1.do.end.2_crit_edge
  %arrayidx.2 = getelementptr %struct.tipc_net, ptr %call, i32 0, i32 15, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.2, align 4
  %tobool5.not.2 = icmp eq ptr %6, null
  br i1 %tobool5.not.2, label %do.end.2.for.inc.2_crit_edge, label %land.lhs.true6.2

do.end.2.for.inc.2_crit_edge:                     ; preds = %do.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true6.2:                                 ; preds = %do.end.2
  %name7.2 = getelementptr inbounds %struct.tipc_bearer, ptr %6, i32 0, i32 3
  %call8.2 = tail call i32 @strcmp(ptr noundef %name7.2, ptr noundef %name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %tobool9.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool9.not.2, label %land.lhs.true6.2.cleanup_crit_edge, label %land.lhs.true6.2.for.inc.2_crit_edge

land.lhs.true6.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true6.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true6.2.cleanup_crit_edge:               ; preds = %land.lhs.true6.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true6.2.for.inc.2_crit_edge, %do.end.2.for.inc.2_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.2, %land.lhs.true6.2.cleanup_crit_edge, %land.lhs.true6.1.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %land.lhs.true6.cleanup_crit_edge ], [ %4, %land.lhs.true6.1.cleanup_crit_edge ], [ %6, %land.lhs.true6.2.cleanup_crit_edge ], [ null, %for.inc.2 ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 45, ptr noundef nonnull @.str.5) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %8 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_bearer_get_name(ptr noundef %net, ptr noundef %name, i32 noundef %bearer_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bearer_id)
  %cmp = icmp ugt i32 %bearer_id, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call1, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @tipc_bearer_get_name.__warned, align 1
  br i1 %.b15, label %land.lhs.true3.do.end_crit_edge, label %if.then5

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_bearer_get_name.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 204, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %arrayidx = getelementptr %struct.tipc_net, ptr %call.i, i32 0, i32 15, i32 %bearer_id
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %2, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %name10 = getelementptr inbounds %struct.tipc_bearer, ptr %2, i32 0, i32 3
  %call11 = tail call ptr @strcpy(ptr noundef %name, ptr noundef %name10) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_bearer_add_dest(ptr noundef %net, i32 noundef %bearer_id, i32 noundef %dest) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr %struct.tipc_net, ptr %call, i32 0, i32 15, i32 %bearer_id
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @tipc_bearer_add_dest.__warned, align 1
  br i1 %.b14, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_bearer_add_dest.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 218, ptr noundef nonnull @.str.5) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.end8.if.end12_crit_edge, label %if.then11

do.end8.if.end12_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %disc = getelementptr inbounds %struct.tipc_bearer, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %disc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disc, align 4
  tail call void @tipc_disc_add_dest(ptr noundef %8) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end8.if.end12_crit_edge
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i15, label %if.end12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

if.end12.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %if.end12
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %if.end12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %9 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i22 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_disc_add_dest(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_bearer_remove_dest(ptr noundef %net, i32 noundef %bearer_id, i32 noundef %dest) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr %struct.tipc_net, ptr %call, i32 0, i32 15, i32 %bearer_id
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @tipc_bearer_remove_dest.__warned, align 1
  br i1 %.b14, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_bearer_remove_dest.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 230, ptr noundef nonnull @.str.5) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.end8.if.end12_crit_edge, label %if.then11

do.end8.if.end12_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %disc = getelementptr inbounds %struct.tipc_bearer, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %disc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disc, align 4
  tail call void @tipc_disc_remove_dest(ptr noundef %8) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end8.if.end12_crit_edge
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i15, label %if.end12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

if.end12.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %if.end12
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %if.end12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %9 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i22 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_disc_remove_dest(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_bearer_hold(ptr noundef %b) local_unnamed_addr #3 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %b, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  %refcnt = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #12
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.rhs
  %2 = phi i32 [ %1, %land.rhs ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %refcnt) #12, !srcloc !170
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !171

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !171

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #12
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #12
  br label %land.end

land.end:                                         ; preds = %refcount_inc_not_zero.exit, %entry.land.end_crit_edge
  %12 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool12.i.i.i, %refcount_inc_not_zero.exit ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_bearer_put(ptr noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %b, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %refcnt = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 17
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !172
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !173
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i, !prof !171

if.end5.i.i.i.if.end6_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #12
  br label %if.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !174
  %rcu = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 156 to ptr)) #12
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_enable_l2_media(ptr noundef %net, ptr noundef %b, ptr nocapture noundef readnone %attr) local_unnamed_addr #3 align 64 {
entry:
  %node_id = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 3
  %call = tail call ptr @strchr(ptr noundef %name, i32 noundef 58)
  %add.ptr = getelementptr i8, ptr %call, i32 1
  %media = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 4
  %0 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %media, align 4
  %hwaddr_len1 = getelementptr inbounds %struct.tipc_media, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hwaddr_len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwaddr_len1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %node_id) #12
  %4 = call ptr @memset(ptr %node_id, i32 0, i32 16)
  %call2 = tail call ptr @dev_get_by_name(ptr noundef %net, ptr noundef %add.ptr) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 20
  %5 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %6)
  %cmp.i = icmp ugt i32 %6, 99
  br i1 %cmp.i, label %if.end5, label %do.body1.i

do.body1.i:                                       ; preds = %if.end
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call2, ptr noundef nonnull @.str.19) #16
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !175
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 118
  %8 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcpu_refcnt.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add13.i = add i32 %19, -1
  store i32 %add13.i, ptr %17, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !176
  %and.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !177

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #12, !srcloc !178
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %loopback_dev = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 27
  %21 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %loopback_dev, align 4
  %cmp = icmp eq ptr %call2, %22
  br i1 %cmp, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dev_put(ptr noundef nonnull %call2)
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name) #16
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %23 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %23) #12
  %node_id_string.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %node_id_string.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %char0.i = load i8, ptr %node_id_string.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool.not.i160 = icmp eq i8 %char0.i, 0
  %tobool12.not166 = icmp eq ptr %call.i.i, null
  %tobool12.not = select i1 %tobool.not.i160, i1 true, i1 %tobool12.not166
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %cmp13 = icmp slt i32 %3, 17
  %or.cond = select i1 %tobool12.not, i1 %cmp13, i1 false
  br i1 %or.cond, label %if.then14, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 86
  %25 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_addr, align 64
  %27 = call ptr @memcpy(ptr %node_id, ptr %26, i32 %3)
  %call17 = call i32 @tipc_net_init(ptr noundef %net, ptr noundef nonnull %node_id, i32 noundef 0) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end10.if.end18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %28 = load i32, ptr @tipc_net_id, align 4
  %call.i.i161 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %28) #12
  %node_id_string.i162 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i161, i32 0, i32 4
  %29 = ptrtoint ptr %node_id_string.i162 to i32
  call void @__asan_load1_noabort(i32 %29)
  %char0.i163 = load i8, ptr %node_id_string.i162, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i163)
  %tobool.not.i164 = icmp eq i8 %char0.i163, 0
  %tobool20.not167 = icmp eq ptr %call.i.i161, null
  %tobool20.not = select i1 %tobool.not.i164, i1 true, i1 %tobool20.not167
  br i1 %tobool20.not, label %if.then21, label %do.body28

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @dev_put(ptr noundef nonnull %call2)
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #16
  br label %cleanup

do.body28:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !179
  %30 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call2, ptr %b, align 4
  %pt = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 6
  %dev66 = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 6, i32 2
  %31 = ptrtoint ptr %dev66 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call2, ptr %dev66, align 4
  %32 = ptrtoint ptr %pt to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -30518, ptr %pt, align 4
  %func = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 6, i32 4
  %33 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @tipc_l2_rcv_msg, ptr %func, align 4
  call void @dev_add_pack(ptr noundef %pt) #12
  %bcast_addr = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5
  %34 = call ptr @memset(ptr %bcast_addr, i32 0, i32 34)
  %broadcast = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 99
  %35 = call ptr @memcpy(ptr %bcast_addr, ptr %broadcast, i32 %3)
  %36 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %media, align 4
  %type_id = getelementptr inbounds %struct.tipc_media, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %type_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type_id, align 4
  %conv = trunc i32 %39 to i8
  %media_id = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %media_id to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv, ptr %media_id, align 4
  %broadcast76 = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5, i32 2
  %41 = ptrtoint ptr %broadcast76 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %broadcast76, align 1
  %42 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mtu.i, align 4
  %mtu77 = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 1
  %44 = ptrtoint ptr %mtu77 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %mtu77, align 4
  %raw2addr = getelementptr inbounds %struct.tipc_media, ptr %37, i32 0, i32 6
  %45 = ptrtoint ptr %raw2addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %raw2addr, align 4
  %addr = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 2
  %dev_addr79 = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 86
  %47 = ptrtoint ptr %dev_addr79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_addr79, align 64
  %call80 = call i32 %46(ptr noundef %b, ptr noundef %addr, ptr noundef %48) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !180
  %tipc_ptr110 = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 76
  %49 = ptrtoint ptr %tipc_ptr110 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %b, ptr %tipc_ptr110, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body28, %if.then21, %if.then6, %dev_put.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %dev_put.exit ], [ -22, %if.then6 ], [ 0, %do.body28 ], [ -22, %if.then21 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %node_id) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !175
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !158) #12
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
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !176
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !177

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !178
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_net_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_l2_rcv_msg(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %pt, ptr noundef %orig_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tipc_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 76
  %4 = ptrtoint ptr %tipc_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %tipc_ptr, align 8
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b49 = load i1, ptr @tipc_l2_rcv_msg.__warned, align 1
  br i1 %.b49, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_l2_rcv_msg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 648, ptr noundef nonnull @.str.5) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %cond.false, label %do.end7.land.lhs.true29_crit_edge

do.end7.land.lhs.true29_crit_edge:                ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true29

cond.false:                                       ; preds = %do.end7
  %tipc_ptr14 = getelementptr inbounds %struct.net_device, ptr %orig_dev, i32 0, i32 76
  %6 = ptrtoint ptr %tipc_ptr14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %tipc_ptr14, align 8
  %call16 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %cond.false.cond.end_crit_edge

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

land.lhs.true18:                                  ; preds = %cond.false
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true18.cond.end_crit_edge, label %land.lhs.true21

land.lhs.true18.cond.end_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %.b4748 = load i1, ptr @tipc_l2_rcv_msg.__warned.20, align 1
  br i1 %.b4748, label %land.lhs.true21.cond.end_crit_edge, label %if.then23

land.lhs.true21.cond.end_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_l2_rcv_msg.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 649, ptr noundef nonnull @.str.5) #12
  br label %cond.end

cond.end:                                         ; preds = %if.then23, %land.lhs.true21.cond.end_crit_edge, %land.lhs.true18.cond.end_crit_edge, %cond.false.cond.end_crit_edge
  %tobool28.not = icmp eq ptr %7, null
  br i1 %tobool28.not, label %cond.end.if.end39_crit_edge, label %cond.end.land.lhs.true29_crit_edge, !prof !177

cond.end.land.lhs.true29_crit_edge:               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true29

cond.end.if.end39_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

land.lhs.true29:                                  ; preds = %cond.end.land.lhs.true29_crit_edge, %do.end7.land.lhs.true29_crit_edge
  %cond62 = phi ptr [ %7, %cond.end.land.lhs.true29_crit_edge ], [ %5, %do.end7.land.lhs.true29_crit_edge ]
  %up = getelementptr inbounds %struct.tipc_bearer, ptr %cond62, i32 0, i32 16
  %8 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %up, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool31.not = icmp eq i32 %and1.i, 0
  br i1 %tobool31.not, label %land.lhs.true29.if.end39_crit_edge, label %land.rhs, !prof !177

land.lhs.true29.if.end39_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

land.rhs:                                         ; preds = %land.lhs.true29
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %10 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %bf.load)
  %cmp = icmp ult i16 %bf.load, 24576
  br i1 %cmp, label %if.then35, label %land.rhs.if.end39_crit_edge, !prof !171

land.rhs.if.end39_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then35:                                        ; preds = %land.rhs
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %skb, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %12, align 2
  %dev37 = getelementptr inbounds %struct.tipc_bearer, ptr %cond62, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev37, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 127
  %16 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nd_net.i, align 4
  tail call void @tipc_rcv(ptr noundef %17, ptr noundef %skb, ptr noundef nonnull %cond62) #12
  %call.i51 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i51, label %if.then35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i54

if.then35.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i54:                                ; preds = %if.then35
  %call1.i52 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i56

land.lhs.true.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i56:                               ; preds = %land.lhs.true.i54
  %.b4.i55 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55, label %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, label %if.then.i57

land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i57:                                      ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i57, %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, %if.then35.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %18 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i58 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i58 to ptr
  %preempt_count.i.i.i.i59 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i59, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i59, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

if.end39:                                         ; preds = %land.rhs.if.end39_crit_edge, %land.lhs.true29.if.end39_crit_edge, %cond.end.if.end39_crit_edge
  tail call fastcc void @rcu_read_unlock()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ 1, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_disable_l2_media(ptr noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @tipc_disable_l2_media.__warned, align 1
  br i1 %.b18, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_disable_l2_media.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 481, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b, align 4
  %pt = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 6
  tail call void @dev_remove_pack(ptr noundef %pt) #12
  %tipc_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 76
  %2 = ptrtoint ptr %tipc_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %tipc_ptr, align 8
  tail call void @synchronize_net() #12
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.dev_put.exit_crit_edge, label %do.body1.i

do.end.dev_put.exit_crit_edge:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit

do.body1.i:                                       ; preds = %do.end
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !175
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %4 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcpu_refcnt.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add13.i = add i32 %15, -1
  store i32 %add13.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !176
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !177

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #12, !srcloc !178
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %do.end.dev_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_l2_send_msg(ptr nocapture noundef readnone %net, ptr noundef %skb, ptr noundef %b, ptr noundef %dest) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %b, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b35 = load i1, ptr @tipc_l2_send_msg.__warned, align 1
  br i1 %.b35, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_l2_send_msg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 501, ptr noundef nonnull @.str.5) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %do.end7.cleanup_crit_edge, label %if.end11

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %3 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.neg = add nuw nsw i32 %conv, 127
  %sub = sub i32 %sub.ptr.sub.i.neg, %sub.ptr.lhs.cast.i
  %add = add i32 %sub, %sub.ptr.rhs.cast.i
  %and = and i32 %add, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp sgt i32 %and, 0
  br i1 %cmp, label %land.lhs.true14, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true14:                                  ; preds = %if.end11
  %call15 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and, i32 noundef 0, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true14.if.end18_crit_edge, label %if.then17

land.lhs.true14.if.end18_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true14.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i38 = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i39 = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i40 = sub i32 %sub.ptr.lhs.cast.i38, %sub.ptr.rhs.cast.i39
  %conv.i = trunc i32 %sub.ptr.sub.i40 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %network_header.i, align 4
  %13 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %13, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -30518, ptr %protocol, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 49
  %20 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end18.dev_hard_header.exit_crit_edge, label %lor.lhs.false.i

if.end18.dev_hard_header.exit_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hard_header.exit

lor.lhs.false.i:                                  ; preds = %if.end18
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool2.not.i = icmp eq ptr %23, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dev_hard_header.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dev_hard_header.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hard_header.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %23(ptr noundef %skb, ptr noundef nonnull %1, i16 noundef zeroext -30518, ptr noundef %dest, ptr noundef %17, i32 noundef %19) #12
  br label %dev_hard_header.exit

dev_hard_header.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.dev_hard_header.exit_crit_edge, %if.end18.dev_hard_header.exit_crit_edge
  %call20 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %dev_hard_header.exit, %if.then17, %do.end7.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_bearer_bcast_support(ptr noundef %net, i32 noundef %bearer_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %4 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %4) #12
  %arrayidx.i = getelementptr %struct.tipc_net, ptr %call.i.i, i32 0, i32 15, i32 %bearer_id
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx.i, align 4
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i4 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5, label %rcu_read_lock.exit.bearer_get.exit_crit_edge

rcu_read_lock.exit.bearer_get.exit_crit_edge:     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bearer_get.exit

land.lhs.true.i5:                                 ; preds = %rcu_read_lock.exit
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i5.bearer_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i5.bearer_get.exit_crit_edge:       ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %bearer_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i5
  %.b10.i = load i1, ptr @bearer_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.bearer_get.exit_crit_edge, label %if.then.i6

land.lhs.true5.i.bearer_get.exit_crit_edge:       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bearer_get.exit

if.then.i6:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bearer_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 66, ptr noundef nonnull @.str.5) #12
  br label %bearer_get.exit

bearer_get.exit:                                  ; preds = %if.then.i6, %land.lhs.true5.i.bearer_get.exit_crit_edge, %land.lhs.true.i5.bearer_get.exit_crit_edge, %rcu_read_lock.exit.bearer_get.exit_crit_edge
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %bearer_get.exit.if.end_crit_edge, label %if.then

bearer_get.exit.if.end_crit_edge:                 ; preds = %bearer_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %bearer_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %broadcast = getelementptr inbounds %struct.tipc_bearer, ptr %6, i32 0, i32 5, i32 2
  %7 = ptrtoint ptr %broadcast to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %broadcast, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %bearer_get.exit.if.end_crit_edge
  %supp.0.off0 = phi i1 [ %cmp, %if.then ], [ false, %bearer_get.exit.if.end_crit_edge ]
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i7, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %if.end
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %9 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i14 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i1 %supp.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_bearer_mtu(ptr noundef %net, i32 noundef %bearer_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %4 = load i32, ptr @tipc_net_id, align 4
  %call.i16 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %4) #12
  %arrayidx = getelementptr %struct.tipc_net, ptr %call.i16, i32 0, i32 15, i32 %bearer_id
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @tipc_bearer_mtu.__warned, align 1
  br i1 %.b15, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_bearer_mtu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 538, ptr noundef nonnull @.str.5) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %mtu12 = getelementptr inbounds %struct.tipc_bearer, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %mtu12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %mtu.0 = phi i32 [ %8, %if.then11 ], [ 0, %do.end8.if.end13_crit_edge ]
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i17, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end13
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %9 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i24 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %mtu.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_bearer_xmit_skb(ptr noundef %net, i32 noundef %bearer_id, ptr noundef %skb, ptr noundef %dest) local_unnamed_addr #3 align 64 {
entry:
  %skb.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skb.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %skb, ptr %skb.addr, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %7 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %7) #12
  %arrayidx.i = getelementptr %struct.tipc_net, ptr %call.i.i, i32 0, i32 15, i32 %bearer_id
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.i, align 4
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i19 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20, label %rcu_read_lock.exit.bearer_get.exit_crit_edge

rcu_read_lock.exit.bearer_get.exit_crit_edge:     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bearer_get.exit

land.lhs.true.i20:                                ; preds = %rcu_read_lock.exit
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i20.bearer_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i20.bearer_get.exit_crit_edge:      ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %bearer_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i20
  %.b10.i = load i1, ptr @bearer_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.bearer_get.exit_crit_edge, label %if.then.i21

land.lhs.true5.i.bearer_get.exit_crit_edge:       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bearer_get.exit

if.then.i21:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bearer_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 66, ptr noundef nonnull @.str.5) #12
  br label %bearer_get.exit

bearer_get.exit:                                  ; preds = %if.then.i21, %land.lhs.true5.i.bearer_get.exit_crit_edge, %land.lhs.true.i20.bearer_get.exit_crit_edge, %rcu_read_lock.exit.bearer_get.exit_crit_edge
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %bearer_get.exit.if.else_crit_edge, label %land.rhs, !prof !177

bearer_get.exit.if.else_crit_edge:                ; preds = %bearer_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.rhs:                                         ; preds = %bearer_get.exit
  %up = getelementptr inbounds %struct.tipc_bearer, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %up, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp eq i32 %and1.i, 0
  br i1 %tobool3.not, label %lor.rhs, label %land.rhs.if.then_crit_edge

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.rhs:                                          ; preds = %land.rhs
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %14)
  %cmp.i = icmp eq i32 %14, 234881024
  br i1 %cmp.i, label %msg_is_reset.exit, label %lor.rhs.if.else_crit_edge, !prof !181

lor.rhs.if.else_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

msg_is_reset.exit:                                ; preds = %lor.rhs
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %shr.i.i4.mask.i = and i32 %16, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i.i4.mask.i)
  %cmp2.i = icmp eq i32 %shr.i.i4.mask.i, 536870912
  br i1 %cmp2.i, label %msg_is_reset.exit.if.then_crit_edge, label %msg_is_reset.exit.if.else_crit_edge, !prof !171

msg_is_reset.exit.if.else_crit_edge:              ; preds = %msg_is_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

msg_is_reset.exit.if.then_crit_edge:              ; preds = %msg_is_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %msg_is_reset.exit.if.then_crit_edge, %land.rhs.if.then_crit_edge
  %call7 = call i32 @tipc_crypto_xmit(ptr noundef %net, ptr noundef nonnull %skb.addr, ptr noundef nonnull %9, ptr noundef %dest, ptr noundef null) #12
  %17 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb.addr, align 4
  %tobool8.not = icmp eq ptr %18, null
  br i1 %tobool8.not, label %if.then.if.end11_crit_edge, label %if.then9

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %media = getelementptr inbounds %struct.tipc_bearer, ptr %9, i32 0, i32 4
  %19 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %media, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call10 = call i32 %22(ptr noundef %net, ptr noundef nonnull %18, ptr noundef nonnull %9, ptr noundef %dest) #12
  br label %if.end11

if.else:                                          ; preds = %msg_is_reset.exit.if.else_crit_edge, %lor.rhs.if.else_crit_edge, %bearer_get.exit.if.else_crit_edge
  %23 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb.addr, align 4
  tail call void @kfree_skb_reason(ptr noundef %24, i32 noundef 0) #12
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9, %if.then.if.end11_crit_edge
  %call.i22 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i22, label %if.end11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

if.end11.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %if.end11
  %call1.i23 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %if.end11.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %25 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i29 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i29 to ptr
  %preempt_count.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i30, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i30, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_crypto_xmit(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_bearer_xmit(ptr noundef %net, i32 noundef %bearer_id, ptr noundef %xmitq, ptr noundef %dst, ptr noundef %__dnode) local_unnamed_addr #3 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #12
  %0 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xmitq, align 4
  %cmp.i.not = icmp eq ptr %1, %xmitq
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %6 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %6) #12
  %arrayidx.i = getelementptr %struct.tipc_net, ptr %call.i.i, i32 0, i32 15, i32 %bearer_id
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx.i, align 4
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i41 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i41, label %land.lhs.true.i42, label %rcu_read_lock.exit.bearer_get.exit_crit_edge

rcu_read_lock.exit.bearer_get.exit_crit_edge:     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bearer_get.exit

land.lhs.true.i42:                                ; preds = %rcu_read_lock.exit
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i42.bearer_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i42.bearer_get.exit_crit_edge:      ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %bearer_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i42
  %.b10.i = load i1, ptr @bearer_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.bearer_get.exit_crit_edge, label %if.then.i43

land.lhs.true5.i.bearer_get.exit_crit_edge:       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bearer_get.exit

if.then.i43:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bearer_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 66, ptr noundef nonnull @.str.5) #12
  br label %bearer_get.exit

bearer_get.exit:                                  ; preds = %if.then.i43, %land.lhs.true5.i.bearer_get.exit_crit_edge, %land.lhs.true.i42.bearer_get.exit_crit_edge, %rcu_read_lock.exit.bearer_get.exit_crit_edge
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.then6, label %bearer_get.exit.if.end7_crit_edge, !prof !177

bearer_get.exit.if.end7_crit_edge:                ; preds = %bearer_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %bearer_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__skb_queue_purge(ptr noundef %xmitq)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %bearer_get.exit.if.end7_crit_edge
  %9 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xmitq, align 4
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %skb, align 4
  %cmp.not58 = icmp eq ptr %10, %xmitq
  br i1 %cmp.not58, label %if.end7.for.end_crit_edge, label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %up = getelementptr inbounds %struct.tipc_bearer, ptr %8, i32 0, i32 16
  %media = getelementptr inbounds %struct.tipc_bearer, ptr %8, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp.059.in = phi ptr [ %10, %for.body.lr.ph ], [ %tmp.059, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %tmp.059.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp.059 = load ptr, ptr %tmp.059.in, align 8
  %13 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xmitq, align 4
  %cmp.i.i = icmp eq ptr %14, %xmitq
  %tobool.not.i4456 = icmp eq ptr %14, null
  %tobool.not.i44 = or i1 %cmp.i.i, %tobool.not.i4456
  br i1 %tobool.not.i44, label %for.body.__skb_dequeue.exit_crit_edge, label %if.then.i45

for.body.__skb_dequeue.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %__skb_dequeue.exit

if.then.i45:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.83, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %14, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.83, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %prev17.i.i, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %18, ptr %20, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i45, %for.body.__skb_dequeue.exit_crit_edge
  %23 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %up, align 4
  %and1.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool11.not = icmp eq i32 %and1.i, 0
  br i1 %tobool11.not, label %lor.rhs, label %__skb_dequeue.exit.if.then20_crit_edge

__skb_dequeue.exit.if.then20_crit_edge:           ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

lor.rhs:                                          ; preds = %__skb_dequeue.exit
  %25 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = and i32 %30, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %31)
  %cmp.i46 = icmp eq i32 %31, 234881024
  br i1 %cmp.i46, label %msg_is_reset.exit, label %lor.rhs.if.else_crit_edge, !prof !181

lor.rhs.if.else_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

msg_is_reset.exit:                                ; preds = %lor.rhs
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %shr.i.i4.mask.i = and i32 %33, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i.i4.mask.i)
  %cmp2.i = icmp eq i32 %shr.i.i4.mask.i, 536870912
  br i1 %cmp2.i, label %msg_is_reset.exit.if.then20_crit_edge, label %msg_is_reset.exit.if.else_crit_edge, !prof !171

msg_is_reset.exit.if.else_crit_edge:              ; preds = %msg_is_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

msg_is_reset.exit.if.then20_crit_edge:            ; preds = %msg_is_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

if.then20:                                        ; preds = %msg_is_reset.exit.if.then20_crit_edge, %__skb_dequeue.exit.if.then20_crit_edge
  %call21 = call i32 @tipc_crypto_xmit(ptr noundef %net, ptr noundef nonnull %skb, ptr noundef %8, ptr noundef %dst, ptr noundef %__dnode) #12
  %34 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skb, align 4
  %tobool22.not = icmp eq ptr %35, null
  br i1 %tobool22.not, label %if.then20.for.inc_crit_edge, label %if.then23

if.then20.for.inc_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %media, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call24 = call i32 %39(ptr noundef %net, ptr noundef nonnull %35, ptr noundef %8, ptr noundef %dst) #12
  br label %for.inc

if.else:                                          ; preds = %msg_is_reset.exit.if.else_crit_edge, %lor.rhs.if.else_crit_edge
  call void @kfree_skb_reason(ptr noundef %26, i32 noundef 0) #12
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then23, %if.then20.for.inc_crit_edge
  %40 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %tmp.059, ptr %skb, align 4
  %cmp.not = icmp eq ptr %tmp.059, %xmitq
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end7.for.end_crit_edge
  %call.i47 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i47, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i50

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i50:                                ; preds = %for.end
  %call1.i48 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %41 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i54 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i55, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__skb_queue_purge(ptr noundef %list) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.i.i2 = icmp eq ptr %1, %list
  %tobool.not.i13 = icmp eq ptr %1, null
  %tobool.not.i4 = or i1 %cmp.i.i2, %tobool.not.i13
  br i1 %tobool.not.i4, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %12, %while.body.while.body_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.83, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.83, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #12
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %12, %list
  %tobool.not.i1 = icmp eq ptr %12, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i1
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_bearer_bc_xmit(ptr noundef %net, i32 noundef %bearer_id, ptr noundef %xmitq) local_unnamed_addr #3 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i31 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #12
  %net_id1 = getelementptr inbounds %struct.tipc_net, ptr %call.i31, i32 0, i32 5
  %1 = ptrtoint ptr %net_id1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %net_id1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #12
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !182
  %4 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %8 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %8) #12
  %arrayidx.i = getelementptr %struct.tipc_net, ptr %call.i.i, i32 0, i32 15, i32 %bearer_id
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx.i, align 4
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i32 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i33, label %rcu_read_lock.exit.bearer_get.exit_crit_edge

rcu_read_lock.exit.bearer_get.exit_crit_edge:     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bearer_get.exit

land.lhs.true.i33:                                ; preds = %rcu_read_lock.exit
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i33.bearer_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i33.bearer_get.exit_crit_edge:      ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %bearer_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i33
  %.b10.i = load i1, ptr @bearer_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.bearer_get.exit_crit_edge, label %if.then.i34

land.lhs.true5.i.bearer_get.exit_crit_edge:       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bearer_get.exit

if.then.i34:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bearer_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 66, ptr noundef nonnull @.str.5) #12
  br label %bearer_get.exit

bearer_get.exit:                                  ; preds = %if.then.i34, %land.lhs.true5.i.bearer_get.exit_crit_edge, %land.lhs.true.i33.bearer_get.exit_crit_edge, %rcu_read_lock.exit.bearer_get.exit_crit_edge
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %bearer_get.exit.if.then_crit_edge, label %lor.rhs, !prof !177

bearer_get.exit.if.then_crit_edge:                ; preds = %bearer_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.rhs:                                          ; preds = %bearer_get.exit
  %up = getelementptr inbounds %struct.tipc_bearer, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %up, align 4
  %and1.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool4.not = icmp eq i32 %and1.i, 0
  br i1 %tobool4.not, label %lor.rhs.if.then_crit_edge, label %lor.rhs.if.end_crit_edge, !prof !177

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %bearer_get.exit.if.then_crit_edge
  tail call fastcc void @__skb_queue_purge(ptr noundef %xmitq)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.rhs.if.end_crit_edge
  %13 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xmitq, align 4
  %15 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %skb, align 4
  %cmp.not48 = icmp eq ptr %14, %xmitq
  br i1 %cmp.not48, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %bcast_addr = getelementptr inbounds %struct.tipc_bearer, ptr %10, i32 0, i32 5
  %media = getelementptr inbounds %struct.tipc_bearer, ptr %10, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %storemerge49 = phi ptr [ %14, %for.body.lr.ph ], [ %tmp.050, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %storemerge49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp.050 = load ptr, ptr %storemerge49, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %storemerge49, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %or.i.i = or i32 %20, 1048576
  store i32 %or.i.i, ptr %18, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %2, ptr %arrayidx.i.i, align 4
  %22 = ptrtoint ptr %xmitq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xmitq, align 4
  %cmp.i.i = icmp eq ptr %23, %xmitq
  %tobool.not.i3546 = icmp eq ptr %23, null
  %tobool.not.i35 = or i1 %cmp.i.i, %tobool.not.i3546
  br i1 %tobool.not.i35, label %for.body.__skb_dequeue.exit_crit_edge, label %if.then.i36

for.body.__skb_dequeue.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %__skb_dequeue.exit

if.then.i36:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.83, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %23, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.83, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %prev17.i.i, align 4
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %27, ptr %29, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i36, %for.body.__skb_dequeue.exit_crit_edge
  %call11 = call i32 @tipc_crypto_xmit(ptr noundef %net, ptr noundef nonnull %skb, ptr noundef %10, ptr noundef %bcast_addr, ptr noundef null) #12
  %32 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb, align 4
  %tobool12.not = icmp eq ptr %33, null
  br i1 %tobool12.not, label %__skb_dequeue.exit.for.inc_crit_edge, label %if.then13

__skb_dequeue.exit.for.inc_crit_edge:             ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then13:                                        ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %media, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call14 = call i32 %37(ptr noundef %net, ptr noundef nonnull %33, ptr noundef %10, ptr noundef %bcast_addr) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %__skb_dequeue.exit.for.inc_crit_edge
  %38 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %tmp.050, ptr %skb, align 4
  %cmp.not = icmp eq ptr %tmp.050, %xmitq
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %call.i37 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i37, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i40

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i40:                                ; preds = %for.end
  %call1.i38 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool.not.i39, label %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i42

land.lhs.true.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i42:                               ; preds = %land.lhs.true.i40
  %.b4.i41 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41, label %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, label %if.then.i43

land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i43:                                      ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i43, %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %39 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i44 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i44 to ptr
  %preempt_count.i.i.i.i45 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i45, align 4
  %sub.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i45, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_bearer_setup() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @notifier) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_bearer_cleanup() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @notifier) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_bearer_stop(ptr noundef %net) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @tipc_bearer_stop.__warned, align 1
  br i1 %.b16, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_bearer_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 741, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %arrayidx = getelementptr %struct.tipc_net, ptr %call, i32 0, i32 15, i32 0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %do.end.for.inc_crit_edge, label %if.then6

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @bearer_disable(ptr noundef %net, ptr noundef nonnull %2)
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %do.end.for.inc_crit_edge
  %call1.1 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call1.1, label %for.inc.do.end.1_crit_edge, label %land.lhs.true.1

for.inc.do.end.1_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.1

land.lhs.true.1:                                  ; preds = %for.inc
  %call2.1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool.not.1, label %land.lhs.true.1.do.end.1_crit_edge, label %land.lhs.true3.1

land.lhs.true.1.do.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.1

land.lhs.true3.1:                                 ; preds = %land.lhs.true.1
  %.b16.1 = load i1, ptr @tipc_bearer_stop.__warned, align 1
  br i1 %.b16.1, label %land.lhs.true3.1.do.end.1_crit_edge, label %if.then.1

land.lhs.true3.1.do.end.1_crit_edge:              ; preds = %land.lhs.true3.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.1

if.then.1:                                        ; preds = %land.lhs.true3.1
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_bearer_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 741, ptr noundef nonnull @.str.4) #12
  br label %do.end.1

do.end.1:                                         ; preds = %if.then.1, %land.lhs.true3.1.do.end.1_crit_edge, %land.lhs.true.1.do.end.1_crit_edge, %for.inc.do.end.1_crit_edge
  %arrayidx.1 = getelementptr %struct.tipc_net, ptr %call, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool5.not.1 = icmp eq ptr %5, null
  br i1 %tobool5.not.1, label %do.end.1.for.inc.1_crit_edge, label %if.then6.1

do.end.1.for.inc.1_crit_edge:                     ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then6.1:                                       ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @bearer_disable(ptr noundef %net, ptr noundef nonnull %5)
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then6.1, %do.end.1.for.inc.1_crit_edge
  %call1.2 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call1.2, label %for.inc.1.do.end.2_crit_edge, label %land.lhs.true.2

for.inc.1.do.end.2_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %call2.2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %tobool.not.2 = icmp eq i32 %call2.2, 0
  br i1 %tobool.not.2, label %land.lhs.true.2.do.end.2_crit_edge, label %land.lhs.true3.2

land.lhs.true.2.do.end.2_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.2

land.lhs.true3.2:                                 ; preds = %land.lhs.true.2
  %.b16.2 = load i1, ptr @tipc_bearer_stop.__warned, align 1
  br i1 %.b16.2, label %land.lhs.true3.2.do.end.2_crit_edge, label %if.then.2

land.lhs.true3.2.do.end.2_crit_edge:              ; preds = %land.lhs.true3.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.2

if.then.2:                                        ; preds = %land.lhs.true3.2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_bearer_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 741, ptr noundef nonnull @.str.4) #12
  br label %do.end.2

do.end.2:                                         ; preds = %if.then.2, %land.lhs.true3.2.do.end.2_crit_edge, %land.lhs.true.2.do.end.2_crit_edge, %for.inc.1.do.end.2_crit_edge
  %arrayidx.2 = getelementptr %struct.tipc_net, ptr %call, i32 0, i32 15, i32 2
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.2, align 4
  %tobool5.not.2 = icmp eq ptr %8, null
  br i1 %tobool5.not.2, label %do.end.2.for.inc.2_crit_edge, label %if.then6.2

do.end.2.for.inc.2_crit_edge:                     ; preds = %do.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then6.2:                                       ; preds = %do.end.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @bearer_disable(ptr noundef %net, ptr noundef nonnull %8)
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then6.2, %do.end.2.for.inc.2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bearer_disable(ptr noundef %net, ptr noundef %b) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #12
  %identity = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 13
  %1 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %identity, align 4
  %name = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 3
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name) #16
  %up = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %up, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @llvm.prefetch.p0(ptr %up, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %up, ptr %up, i32 1, ptr elementtype(i32) %up) #12, !srcloc !184
  tail call void @tipc_node_delete_links(ptr noundef %net, i32 noundef %2) #12
  %media = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 4
  %4 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %media, align 4
  %disable_media = getelementptr inbounds %struct.tipc_media, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %disable_media to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_media, align 4
  tail call void %7(ptr noundef %b) #12
  %8 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %b, align 4
  %disc = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 14
  %9 = ptrtoint ptr %disc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disc, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.do.body20_crit_edge, label %if.then

entry.do.body20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tipc_disc_delete(ptr noundef nonnull %10) #12
  br label %do.body20

do.body20:                                        ; preds = %if.then, %entry.do.body20_crit_edge
  %arrayidx = getelementptr %struct.tipc_net, ptr %call.i, i32 0, i32 15, i32 %2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr null, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %b, null
  br i1 %tobool.not.i, label %do.body20.tipc_bearer_put.exit_crit_edge, label %land.lhs.true.i

do.body20.tipc_bearer_put.exit_crit_edge:         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_bearer_put.exit

land.lhs.true.i:                                  ; preds = %do.body20
  %refcnt.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 17
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !172
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !173
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.tipc_bearer_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !171

if.end5.i.i.i.i.tipc_bearer_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_bearer_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %tipc_bearer_put.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !174
  %rcu.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 156 to ptr)) #12
  br label %tipc_bearer_put.exit

tipc_bearer_put.exit:                             ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.tipc_bearer_put.exit_crit_edge, %do.body20.tipc_bearer_put.exit_crit_edge
  tail call void @tipc_mon_delete(ptr noundef %net, i32 noundef %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_clone_to_loopback(ptr nocapture noundef readonly %net, ptr noundef readonly %pkts) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %loopback_dev = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 27
  %0 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %loopback_dev, align 4
  %2 = ptrtoint ptr %pkts to i32
  call void @__asan_load4_noabort(i32 %2)
  %_skb.042 = load ptr, ptr %pkts, align 4
  %cmp.not43 = icmp eq ptr %_skb.042, %pkts
  br i1 %cmp.not43, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %_skb.044 = phi ptr [ %_skb.042, %for.body.lr.ph ], [ %_skb.0, %for.inc.for.body_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %_skb.044, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %_skb.044, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i = tail call ptr @__pskb_copy_fclone(ptr noundef %_skb.044, i32 noundef %sub.ptr.sub.i.i, i32 noundef 2592, i1 noundef zeroext false) #12
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %8 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %11 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.neg = add nuw nsw i32 %conv, 127
  %sub = sub i32 %sub.ptr.sub.i.neg, %sub.ptr.lhs.cast.i
  %add = add i32 %sub, %sub.ptr.rhs.cast.i
  %and = and i32 %add, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2 = icmp sgt i32 %and, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 @pskb_expand_head(ptr noundef nonnull %call.i.i, i32 noundef %and, i32 noundef 0, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %if.then6

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #12
  br label %for.inc

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i39 = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i40 = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i41 = sub i32 %sub.ptr.lhs.cast.i39, %sub.ptr.rhs.cast.i40
  %conv.i = trunc i32 %sub.ptr.sub.i41 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %network_header.i, align 4
  %18 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr, align 64
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %22 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end7.dev_hard_header.exit_crit_edge, label %lor.lhs.false.i

if.end7.dev_hard_header.exit_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hard_header.exit

lor.lhs.false.i:                                  ; preds = %if.end7
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool2.not.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dev_hard_header.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dev_hard_header.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hard_header.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %25(ptr noundef nonnull %call.i.i, ptr noundef %1, i16 noundef zeroext -30518, ptr noundef %19, ptr noundef %19, i32 noundef %21) #12
  br label %dev_hard_header.exit

dev_hard_header.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.dev_hard_header.exit_crit_edge, %if.end7.dev_hard_header.exit_crit_edge
  %26 = getelementptr inbounds %struct.anon.83, ptr %call.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %26, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %28 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear11 = and i16 %bf.load, 6655
  %bf.set12 = or i16 %bf.clear11, 512
  store i16 %bf.set12, ptr %pkt_type, align 8
  %call13 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i, ptr noundef %1) #12
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %29 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %call13, ptr %protocol, align 8
  %call14 = tail call i32 @netif_rx_ni(ptr noundef nonnull %call.i.i) #12
  br label %for.inc

for.inc:                                          ; preds = %dev_hard_header.exit, %if.then6, %for.body.for.inc_crit_edge
  %30 = ptrtoint ptr %_skb.044 to i32
  call void @__asan_load4_noabort(i32 %30)
  %_skb.0 = load ptr, ptr %_skb.044, align 4
  %cmp.not = icmp eq ptr %_skb.0, %pkts
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_attach_loopback(ptr noundef %net) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %loopback_dev = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 27
  %0 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %loopback_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %2 = load i32, ptr @tipc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %2) #12
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1.i.i:                                     ; preds = %entry
  %loopback_pt = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 25
  %dev_tracker = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 25, i32 3
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !175
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %4 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add13.i.i = add i32 %15, 1
  store i32 %add13.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !176
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold_track.exit_crit_edge, !prof !177

do.body1.i.i.dev_hold_track.exit_crit_edge:       ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hold_track.exit

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %dev_hold_track.exit

dev_hold_track.exit:                              ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold_track.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #12, !srcloc !178
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker, i32 noundef 3264) #12
  %dev2 = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 25, i32 2
  %17 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %dev2, align 4
  %18 = ptrtoint ptr %loopback_pt to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -30518, ptr %loopback_pt, align 4
  %func = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 25, i32 4
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tipc_loopback_rcv_pkt, ptr %func, align 4
  tail call void @dev_add_pack(ptr noundef %loopback_pt) #12
  br label %cleanup

cleanup:                                          ; preds = %dev_hold_track.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_hold_track.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_loopback_rcv_pkt(ptr noundef %skb, ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %od) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @consume_skb(ptr noundef %skb) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_detach_loopback(ptr noundef %net) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #12
  %loopback_pt = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 25
  tail call void @dev_remove_pack(ptr noundef %loopback_pt) #12
  %loopback_dev = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 27
  %1 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %loopback_dev, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.dev_put_track.exit_crit_edge, label %do.body1.i.i

entry.dev_put_track.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %entry
  %dev_tracker = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 25, i32 3
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #12
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !175
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 118
  %4 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add13.i.i = add i32 %15, -1
  store i32 %add13.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !176
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !177

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #12, !srcloc !178
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %entry.dev_put_track.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_bearer_dump(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #3 align 64 {
entry:
  %msg = alloca %struct.tipc_nl_msg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #12
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %8 = load i32, ptr @tipc_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %7, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 2
  %10 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %skb, ptr %msg, align 4
  %12 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 12
  %14 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %portid, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %10, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %17 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nlmsg_seq, align 4
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %9, align 4
  tail call void @rtnl_lock() #12
  %call7 = call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call7, label %if.end.do.end_crit_edge, label %land.lhs.true

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call8 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true9

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @tipc_nl_bearer_dump.__warned, align 1
  br i1 %.b37, label %land.lhs.true9.do.end_crit_edge, label %if.then11

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_nl_bearer_dump.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 883, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true9.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %arrayidx13 = getelementptr %struct.tipc_net, ptr %call1, i32 0, i32 15, i32 0
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %23, null
  br i1 %tobool14.not, label %do.end.for.inc_crit_edge, label %if.end16

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end16:                                         ; preds = %do.end
  %call17 = call fastcc i32 @__tipc_nl_add_bearer(ptr noundef nonnull %msg, ptr noundef nonnull %23, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.for.inc_crit_edge, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end16.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %call7.1 = call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call7.1, label %for.inc.do.end.1_crit_edge, label %land.lhs.true.1

for.inc.do.end.1_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.1

land.lhs.true.1:                                  ; preds = %for.inc
  %call8.1 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool.not.1, label %land.lhs.true.1.do.end.1_crit_edge, label %land.lhs.true9.1

land.lhs.true.1.do.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.1

land.lhs.true9.1:                                 ; preds = %land.lhs.true.1
  %.b37.1 = load i1, ptr @tipc_nl_bearer_dump.__warned, align 1
  br i1 %.b37.1, label %land.lhs.true9.1.do.end.1_crit_edge, label %if.then11.1

land.lhs.true9.1.do.end.1_crit_edge:              ; preds = %land.lhs.true9.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.1

if.then11.1:                                      ; preds = %land.lhs.true9.1
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_nl_bearer_dump.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 883, ptr noundef nonnull @.str.4) #12
  br label %do.end.1

do.end.1:                                         ; preds = %if.then11.1, %land.lhs.true9.1.do.end.1_crit_edge, %land.lhs.true.1.do.end.1_crit_edge, %for.inc.do.end.1_crit_edge
  %arrayidx13.1 = getelementptr %struct.tipc_net, ptr %call1, i32 0, i32 15, i32 1
  %24 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx13.1, align 4
  %tobool14.not.1 = icmp eq ptr %25, null
  br i1 %tobool14.not.1, label %do.end.1.for.inc.1_crit_edge, label %if.end16.1

do.end.1.for.inc.1_crit_edge:                     ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end16.1:                                       ; preds = %do.end.1
  %call17.1 = call fastcc i32 @__tipc_nl_add_bearer(ptr noundef nonnull %msg, ptr noundef nonnull %25, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.1)
  %tobool18.not.1 = icmp eq i32 %call17.1, 0
  br i1 %tobool18.not.1, label %if.end16.1.for.inc.1_crit_edge, label %if.end16.1.for.end_crit_edge

if.end16.1.for.end_crit_edge:                     ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end16.1.for.inc.1_crit_edge:                   ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end16.1.for.inc.1_crit_edge, %do.end.1.for.inc.1_crit_edge
  %call7.2 = call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call7.2, label %for.inc.1.do.end.2_crit_edge, label %land.lhs.true.2

for.inc.1.do.end.2_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %call8.2 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %tobool.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool.not.2, label %land.lhs.true.2.do.end.2_crit_edge, label %land.lhs.true9.2

land.lhs.true.2.do.end.2_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.2

land.lhs.true9.2:                                 ; preds = %land.lhs.true.2
  %.b37.2 = load i1, ptr @tipc_nl_bearer_dump.__warned, align 1
  br i1 %.b37.2, label %land.lhs.true9.2.do.end.2_crit_edge, label %if.then11.2

land.lhs.true9.2.do.end.2_crit_edge:              ; preds = %land.lhs.true9.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.2

if.then11.2:                                      ; preds = %land.lhs.true9.2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_nl_bearer_dump.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 883, ptr noundef nonnull @.str.4) #12
  br label %do.end.2

do.end.2:                                         ; preds = %if.then11.2, %land.lhs.true9.2.do.end.2_crit_edge, %land.lhs.true.2.do.end.2_crit_edge, %for.inc.1.do.end.2_crit_edge
  %arrayidx13.2 = getelementptr %struct.tipc_net, ptr %call1, i32 0, i32 15, i32 2
  %26 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx13.2, align 4
  %tobool14.not.2 = icmp eq ptr %27, null
  br i1 %tobool14.not.2, label %do.end.2.for.inc.2_crit_edge, label %if.end16.2

do.end.2.for.inc.2_crit_edge:                     ; preds = %do.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end16.2:                                       ; preds = %do.end.2
  %call17.2 = call fastcc i32 @__tipc_nl_add_bearer(ptr noundef nonnull %msg, ptr noundef nonnull %27, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.2)
  %tobool18.not.2 = icmp eq i32 %call17.2, 0
  br i1 %tobool18.not.2, label %if.end16.2.for.inc.2_crit_edge, label %if.end16.2.for.end_crit_edge

if.end16.2.for.end_crit_edge:                     ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end16.2.for.inc.2_crit_edge:                   ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end16.2.for.inc.2_crit_edge, %do.end.2.for.inc.2_crit_edge
  br label %for.end

for.end:                                          ; preds = %for.inc.2, %if.end16.2.for.end_crit_edge, %if.end16.1.for.end_crit_edge, %if.end16.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end16.for.end_crit_edge ], [ 1, %if.end16.1.for.end_crit_edge ], [ 2, %if.end16.2.for.end_crit_edge ], [ 3, %for.inc.2 ]
  call void @rtnl_unlock() #12
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %i.0.lcssa, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tipc_nl_add_bearer(ptr noundef %msg, ptr noundef %bearer, i32 noundef %nlflags) unnamed_addr #3 align 64 {
entry:
  %tmp.i96 = alloca i32, align 4
  %tmp.i94 = alloca i32, align 4
  %tmp.i92 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %portid = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid, align 4
  %seq = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seq, align 4
  %call = tail call ptr @genlmsg_put(ptr noundef %1, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @tipc_genl_family, i32 noundef %nlflags, i8 noundef zeroext 4) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %7, i32 noundef 1, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool3.not118 = icmp eq ptr %9, null
  %tobool3.not = select i1 %cmp.i, i1 true, i1 %tobool3.not118
  br i1 %tobool3.not, label %if.end.if.then.i_crit_edge, label %if.end5

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end5:                                          ; preds = %if.end
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msg, align 4
  %name = getelementptr inbounds %struct.tipc_bearer, ptr %bearer, i32 0, i32 3
  %call.i = tail call i32 @strlen(ptr noundef %name) #17
  %add.i = add i32 %call.i, 1
  %call1.i86 = tail call i32 @nla_put(ptr noundef %11, i32 noundef 1, i32 noundef %add.i, ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86)
  %tobool8.not = icmp eq i32 %call1.i86, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.if.then.i.i110_crit_edge

if.end5.if.then.i.i110_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i110

if.end10:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg, align 4
  %tail.i.i87 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i87 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i87, align 8
  %call1.i88 = tail call i32 @nla_put(ptr noundef %13, i32 noundef 2, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %cmp.i89 = icmp slt i32 %call1.i88, 0
  %tobool13.not119 = icmp eq ptr %15, null
  %tobool13.not = select i1 %cmp.i89, i1 true, i1 %tobool13.not119
  br i1 %tobool13.not, label %if.end10.if.then.i.i110_crit_edge, label %if.end15

if.end10.if.then.i.i110_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i110

if.end15:                                         ; preds = %if.end10
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msg, align 4
  %priority = getelementptr inbounds %struct.tipc_bearer, ptr %bearer, i32 0, i32 8
  %18 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %priority, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tmp.i, align 4
  %call.i91 = call i32 @nla_put(ptr noundef %17, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool18.not = icmp eq i32 %call.i91, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.if.then.i.i_crit_edge

if.end15.if.then.i.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end20:                                         ; preds = %if.end15
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msg, align 4
  %tolerance = getelementptr inbounds %struct.tipc_bearer, ptr %bearer, i32 0, i32 11
  %23 = ptrtoint ptr %tolerance to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tolerance, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i92) #12
  %25 = ptrtoint ptr %tmp.i92 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmp.i92, align 4
  %call.i93 = call i32 @nla_put(ptr noundef %22, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i92) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i92) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool23.not = icmp eq i32 %call.i93, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.if.then.i.i_crit_edge

if.end20.if.then.i.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end25:                                         ; preds = %if.end20
  %26 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msg, align 4
  %max_win = getelementptr inbounds %struct.tipc_bearer, ptr %bearer, i32 0, i32 10
  %28 = ptrtoint ptr %max_win to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_win, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i94) #12
  %30 = ptrtoint ptr %tmp.i94 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tmp.i94, align 4
  %call.i95 = call i32 @nla_put(ptr noundef %27, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i94) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i94) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool28.not = icmp eq i32 %call.i95, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.if.then.i.i_crit_edge

if.end25.if.then.i.i_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end30:                                         ; preds = %if.end25
  %media = getelementptr inbounds %struct.tipc_bearer, ptr %bearer, i32 0, i32 4
  %31 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %media, align 4
  %type_id = getelementptr inbounds %struct.tipc_media, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %type_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp = icmp eq i32 %34, 3
  br i1 %cmp, label %if.then31, label %if.end30.if.end37_crit_edge

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then31:                                        ; preds = %if.end30
  %35 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %msg, align 4
  %mtu = getelementptr inbounds %struct.tipc_bearer, ptr %bearer, i32 0, i32 1
  %37 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mtu, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i96) #12
  %39 = ptrtoint ptr %tmp.i96 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tmp.i96, align 4
  %call.i97 = call i32 @nla_put(ptr noundef %36, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i96) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i96) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool34.not = icmp eq i32 %call.i97, 0
  br i1 %tobool34.not, label %if.then31.if.end37_crit_edge, label %if.then31.if.then.i.i_crit_edge

if.then31.if.then.i.i_crit_edge:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end37:                                         ; preds = %if.then31.if.end37_crit_edge, %if.end30.if.end37_crit_edge
  %40 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %msg, align 4
  %tail.i.i98 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i.i98 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i98, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %44 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i, ptr %15, align 2
  %45 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %media, align 4
  %type_id41 = getelementptr inbounds %struct.tipc_media, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %type_id41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type_id41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp42 = icmp eq i32 %48, 3
  br i1 %cmp42, label %if.then43, label %if.end37.if.end48_crit_edge

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then43:                                        ; preds = %if.end37
  %call44 = call i32 @tipc_udp_nl_add_bearer_data(ptr noundef %msg, ptr noundef %bearer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then43.if.end48_crit_edge, label %if.then43.if.then.i.i110_crit_edge

if.then43.if.then.i.i110_crit_edge:               ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i110

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.end48:                                         ; preds = %if.then43.if.end48_crit_edge, %if.end37.if.end48_crit_edge
  %49 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %msg, align 4
  %tail.i.i99 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 16
  %51 = ptrtoint ptr %tail.i.i99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i99, align 8
  %sub.ptr.lhs.cast.i100 = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i101 = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i102 = sub i32 %sub.ptr.lhs.cast.i100, %sub.ptr.rhs.cast.i101
  %conv.i103 = trunc i32 %sub.ptr.sub.i102 to i16
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i103, ptr %9, align 2
  %54 = load ptr, ptr %msg, align 4
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %57 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then31.if.then.i.i_crit_edge, %if.end25.if.then.i.i_crit_edge, %if.end20.if.then.i.i_crit_edge, %if.end15.if.then.i.i_crit_edge
  %58 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %msg, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 19
  %60 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %61, %15
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !177

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %62 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i104 = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i105 = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i.i106 = sub i32 %sub.ptr.lhs.cast.i.i104, %sub.ptr.rhs.cast.i.i105
  call void @skb_trim(ptr noundef %59, i32 noundef %sub.ptr.sub.i.i106) #12
  br label %if.then.i.i110

if.then.i.i110:                                   ; preds = %if.end.i.i, %if.then43.if.then.i.i110_crit_edge, %if.end10.if.then.i.i110_crit_edge, %if.end5.if.then.i.i110_crit_edge
  %64 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %msg, align 4
  %data.i.i108 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 19
  %66 = ptrtoint ptr %data.i.i108 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i.i108, align 4
  %cmp.i.i109 = icmp ugt ptr %67, %9
  br i1 %cmp.i.i109, label %do.end.i.i111, label %if.then.i.i110.nla_nest_cancel.exit116_crit_edge, !prof !177

if.then.i.i110.nla_nest_cancel.exit116_crit_edge: ; preds = %if.then.i.i110
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit116

do.end.i.i111:                                    ; preds = %if.then.i.i110
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %nla_nest_cancel.exit116

nla_nest_cancel.exit116:                          ; preds = %do.end.i.i111, %if.then.i.i110.nla_nest_cancel.exit116_crit_edge
  %68 = ptrtoint ptr %data.i.i108 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i.i108, align 4
  %sub.ptr.lhs.cast.i.i112 = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i113 = ptrtoint ptr %69 to i32
  %sub.ptr.sub.i.i114 = sub i32 %sub.ptr.lhs.cast.i.i112, %sub.ptr.rhs.cast.i.i113
  call void @skb_trim(ptr noundef %65, i32 noundef %sub.ptr.sub.i.i114) #12
  br label %if.then.i

if.then.i:                                        ; preds = %nla_nest_cancel.exit116, %if.end.if.then.i_crit_edge
  %70 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %msg, align 4
  %add.ptr1.i117 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i117, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 19
  %72 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %73, %add.ptr1.i117
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !177

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %74 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i117 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %75 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %71, i32 noundef %sub.ptr.sub.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end48, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_bearer_get(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #3 align 64 {
entry:
  %msg = alloca %struct.tipc_nl_msg, align 4
  %attrs = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #12
  %0 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %attrs) #12
  %2 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 1
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %3 = call ptr @memset(ptr %attrs, i32 255, i32 20)
  %4 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_net.i, align 4
  %attrs1 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %attrs1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attrs1, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %9, align 2
  %conv.i.i = zext i16 %13 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_bearer_policy, i32 noundef 0, ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not = icmp eq i32 %call2.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call.i.i = call ptr @__alloc_skb(i32 noundef 3856, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %tobool15.not = icmp eq ptr %call.i.i, null
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %add.ptr.i = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %msg, align 4
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %17 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %snd_portid, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %0, align 4
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %info, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %1, align 4
  call void @rtnl_lock() #12
  %call19 = call ptr @tipc_bearer_find(ptr noundef %5, ptr noundef %add.ptr.i)
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end17
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @tipc_nl_bearer_get.__msg) #12
  %tobool23.not = icmp eq ptr %24, null
  br i1 %tobool23.not, label %if.then21.err_out_crit_edge, label %if.then24

if.then21.err_out_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @tipc_nl_bearer_get.__msg, ptr %24, align 4
  br label %err_out

if.end26:                                         ; preds = %if.end17
  %call27 = call fastcc i32 @__tipc_nl_add_bearer(ptr noundef nonnull %msg, ptr noundef nonnull %call19, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.err_out_crit_edge

if.end26.err_out_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  call void @rtnl_unlock() #12
  %26 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_net.i, align 4
  %28 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %27, i32 0, i32 21
  %30 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = call i32 @netlink_unicast(ptr noundef %31, ptr noundef nonnull %call.i.i, i32 noundef %29, i32 noundef 64) #12
  %32 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #12
  br label %cleanup

err_out:                                          ; preds = %if.end26.err_out_crit_edge, %if.then24, %if.then21.err_out_crit_edge
  %err.0 = phi i32 [ %call27, %if.end26.err_out_crit_edge ], [ -22, %if.then24 ], [ -22, %if.then21.err_out_crit_edge ]
  call void @rtnl_unlock() #12
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end30, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_out ], [ %32, %if.end30 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attrs) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__tipc_nl_bearer_disable(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #3 align 64 {
entry:
  %attrs = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %attrs) #12
  %0 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %2 = call ptr @memset(ptr %attrs, i32 255, i32 20)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %attrs1 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %7 = ptrtoint ptr %attrs1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attrs1, align 4
  %arrayidx = getelementptr ptr, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %10, align 2
  %conv.i.i = zext i16 %14 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_bearer_policy, i32 noundef 0, ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not = icmp eq i32 %call2.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %16, i32 4
  %call14 = call ptr @tipc_bearer_find(ptr noundef %6, ptr noundef %add.ptr.i)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.body, label %if.end21

do.body:                                          ; preds = %if.end11
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @__tipc_nl_bearer_disable.__msg) #12
  %tobool18.not = icmp eq ptr %18, null
  br i1 %tobool18.not, label %do.body.cleanup_crit_edge, label %if.then19

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @__tipc_nl_bearer_disable.__msg, ptr %18, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @bearer_disable(ptr noundef %6, ptr noundef nonnull %call14)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19, %do.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.then19 ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attrs) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_bearer_disable(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #12
  %call = tail call i32 @__tipc_nl_bearer_disable(ptr noundef %skb, ptr noundef %info)
  tail call void @rtnl_unlock() #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__tipc_nl_bearer_enable(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #3 align 64 {
entry:
  %name_copy.i.i = alloca [32 x i8], align 1
  %b_names.i = alloca %struct.tipc_bearer_names, align 1
  %skb.i = alloca ptr, align 4
  %attrs = alloca [5 x ptr], align 4
  %props = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %attrs) #12
  %0 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 1
  %1 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 2
  %2 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 3
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = call ptr @memset(ptr %attrs, i32 255, i32 20)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  %attrs1 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %9 = ptrtoint ptr %attrs1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attrs1, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup39_crit_edge, label %if.end

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

if.end:                                           ; preds = %entry
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %12, align 2
  %conv.i.i = zext i16 %16 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_bearer_policy, i32 noundef 0, ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not = icmp eq i32 %call2.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup39_crit_edge

if.end.cleanup39_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

if.end7:                                          ; preds = %if.end
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %if.end7.cleanup39_crit_edge, label %if.end11

if.end7.cleanup39_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

if.end11:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %tobool15.not = icmp eq ptr %20, null
  br i1 %tobool15.not, label %if.end11.if.end19_crit_edge, label %if.then16

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i54 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i54, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end11.if.end19_crit_edge
  %domain.0 = phi i32 [ %22, %if.then16 ], [ 0, %if.end11.if.end19_crit_edge ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %tobool21.not = icmp eq ptr %24, null
  br i1 %tobool21.not, label %if.end19.if.end35_crit_edge, label %if.then22

if.end19.if.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then22:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #12
  %25 = call ptr @memset(ptr %props, i32 255, i32 28)
  %call25 = call i32 @tipc_nl_parse_link_prop(ptr noundef nonnull %24, ptr noundef nonnull %props) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %cleanup

if.end28:                                         ; preds = %if.then22
  %26 = getelementptr inbounds [7 x ptr], ptr %props, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool30.not = icmp eq ptr %28, null
  br i1 %tobool30.not, label %if.end28.cleanup.thread_crit_edge, label %if.then31

if.end28.cleanup.thread_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i55 = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i55, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then31, %if.end28.cleanup.thread_crit_edge
  %prio.1.ph = phi i32 [ 32, %if.end28.cleanup.thread_crit_edge ], [ %30, %if.then31 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #12
  br label %if.end35

cleanup:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #12
  br label %cleanup39

if.end35:                                         ; preds = %cleanup.thread, %if.end19.if.end35_crit_edge
  %prio.2 = phi i32 [ 32, %if.end19.if.end35_crit_edge ], [ %prio.1.ph, %cleanup.thread ]
  %31 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %extack, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %33 = load i32, ptr @tipc_net_id, align 4
  %call.i.i = call fastcc ptr @net_generic(ptr noundef %8, i32 noundef %33) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b_names.i) #12
  %34 = getelementptr inbounds %struct.tipc_bearer_names, ptr %b_names.i, i32 0, i32 1
  %35 = call ptr @memset(ptr %b_names.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb.i) #12
  %36 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb.i, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name_copy.i.i) #12
  %37 = call ptr @memset(ptr %name_copy.i.i, i32 255, i32 32)
  %call.i280.i = call i32 @strscpy(ptr noundef nonnull %name_copy.i.i, ptr noundef %add.ptr.i, i32 noundef 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280.i)
  %cmp.i.i = icmp slt i32 %call.i280.i, 0
  br i1 %cmp.i.i, label %if.end35.if.then.i_crit_edge, label %if.end.i.i

if.end35.if.then.i_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.end35
  %call2.i.i = call ptr @strchr(ptr noundef nonnull %name_copy.i.i, i32 noundef 58) #12
  %cmp3.i.i = icmp eq ptr %call2.i.i, null
  br i1 %cmp3.i.i, label %if.end.i.i.if.then.i_crit_edge, label %if.end5.i.i

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %call2.i.i, i32 1
  %38 = ptrtoint ptr %call2.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %call2.i.i, align 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %incdec.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %name_copy.i.i to i32
  %call6.i.i = call i32 @strlen(ptr noundef %incdec.ptr.i.i) #17
  %add.i.i = add i32 %call6.i.i, 1
  %sub.ptr.sub.i.i = sub i32 -17, %sub.ptr.rhs.cast.i.i
  %39 = add i32 %sub.ptr.sub.i.i, %sub.ptr.lhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %39)
  %40 = icmp ult i32 %39, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i.i)
  %cmp10.i.i = icmp ult i32 %add.i.i, 2
  %or.cond37.i.i = select i1 %40, i1 true, i1 %cmp10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i.i)
  %cmp12.i.i = icmp ugt i32 %add.i.i, 16
  %or.cond38.i.i = select i1 %or.cond37.i.i, i1 true, i1 %cmp12.i.i
  br i1 %or.cond38.i.i, label %if.end5.i.i.if.then.i_crit_edge, label %if.end4.i

if.end5.i.i.if.then.i_crit_edge:                  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %if.end5.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge, %if.end35.if.then.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name_copy.i.i) #12
  call void @do_trace_netlink_extack(ptr noundef nonnull @tipc_enable_bearer.__msg) #12
  %tobool2.not.i = icmp eq ptr %32, null
  br i1 %tobool2.not.i, label %if.then.i.do.end192.i_crit_edge, label %if.then.i.do.end192.sink.split.i_crit_edge

if.then.i.do.end192.sink.split.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.sink.split.i

if.then.i.do.end192.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.i

if.end4.i:                                        ; preds = %if.end5.i.i
  %call18.i.i = call ptr @strcpy(ptr noundef nonnull %b_names.i, ptr noundef nonnull %name_copy.i.i) #17
  %call21.i.i = call ptr @strcpy(ptr noundef %34, ptr noundef %incdec.ptr.i.i) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name_copy.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %prio.2)
  %cmp5.not.i = icmp eq i32 %prio.2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %prio.2)
  %41 = icmp ult i32 %prio.2, 33
  br i1 %41, label %if.end15.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @tipc_enable_bearer.__msg.31) #12
  %tobool9.not.i = icmp eq ptr %32, null
  br i1 %tobool9.not.i, label %if.then6.i.do.end192.i_crit_edge, label %if.then6.i.do.end192.sink.split.i_crit_edge

if.then6.i.do.end192.sink.split.i_crit_edge:      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.sink.split.i

if.then6.i.do.end192.i_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.i

if.end15.i:                                       ; preds = %if.end4.i
  %call.i281.i = call i32 @strcmp(ptr noundef getelementptr inbounds (%struct.tipc_media, ptr @eth_media_info, i32 0, i32 14), ptr noundef nonnull %b_names.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281.i)
  %tobool.not.i.i = icmp eq i32 %call.i281.i, 0
  br i1 %tobool.not.i.i, label %if.end15.i.tipc_media_find.exit.i_crit_edge, label %for.cond.i.i

if.end15.i.tipc_media_find.exit.i_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_media_find.exit.i

for.cond.i.i:                                     ; preds = %if.end15.i
  %call.1.i.i = call i32 @strcmp(ptr noundef getelementptr inbounds (%struct.tipc_media, ptr @ib_media_info, i32 0, i32 14), ptr noundef nonnull %b_names.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.i.i.tipc_media_find.exit.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.tipc_media_find.exit.i_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_media_find.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.2.i.i = call i32 @strcmp(ptr noundef getelementptr inbounds (%struct.tipc_media, ptr @udp_media_info, i32 0, i32 14), ptr noundef nonnull %b_names.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call.2.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.2.i.i, ptr getelementptr inbounds ([4 x ptr], ptr @media_info_array, i32 0, i32 2), ptr getelementptr inbounds ([4 x ptr], ptr @media_info_array, i32 0, i32 3)
  br label %tipc_media_find.exit.i

tipc_media_find.exit.i:                           ; preds = %for.cond.1.i.i, %for.cond.i.i.tipc_media_find.exit.i_crit_edge, %if.end15.i.tipc_media_find.exit.i_crit_edge
  %arrayidx.lcssa.i.i = phi ptr [ @media_info_array, %if.end15.i.tipc_media_find.exit.i_crit_edge ], [ getelementptr inbounds ([4 x ptr], ptr @media_info_array, i32 0, i32 1), %for.cond.i.i.tipc_media_find.exit.i_crit_edge ], [ %spec.select.i.i, %for.cond.1.i.i ]
  %42 = ptrtoint ptr %arrayidx.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.lcssa.i.i, align 4
  %tobool17.not.i = icmp eq ptr %43, null
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end27.i

if.then18.i:                                      ; preds = %tipc_media_find.exit.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @tipc_enable_bearer.__msg.33) #12
  %tobool21.not.i = icmp eq ptr %32, null
  br i1 %tobool21.not.i, label %if.then18.i.do.end192.i_crit_edge, label %if.then18.i.do.end192.sink.split.i_crit_edge

if.then18.i.do.end192.sink.split.i_crit_edge:     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.sink.split.i

if.then18.i.do.end192.i_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.i

if.end27.i:                                       ; preds = %tipc_media_find.exit.i
  br i1 %cmp5.not.i, label %if.then29.i, label %if.end27.i.while.cond.outer.i.preheader_crit_edge

if.end27.i.while.cond.outer.i.preheader_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.i.preheader

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  %priority.i = getelementptr inbounds %struct.tipc_media, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %priority.i, align 4
  br label %while.cond.outer.i.preheader

while.cond.outer.i.preheader:                     ; preds = %if.then29.i, %if.end27.i.while.cond.outer.i.preheader_crit_edge
  %prio.addr.1.ph.i.ph = phi i32 [ %prio.2, %if.end27.i.while.cond.outer.i.preheader_crit_edge ], [ %45, %if.then29.i ]
  br label %while.cond.outer.i.outer.outer

while.cond.outer.i.outer.outer:                   ; preds = %do.end83.i, %while.cond.outer.i.preheader
  %prio.addr.1.ph.i.ph73.ph = phi i32 [ %dec86.i, %do.end83.i ], [ %prio.addr.1.ph.i.ph, %while.cond.outer.i.preheader ]
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end59.i.while.cond.outer.i_crit_edge, %while.cond.outer.i.outer.outer
  %bearer_id.0.ph.i = phi i32 [ %bearer_id.0.i, %if.end59.i.while.cond.outer.i_crit_edge ], [ 3, %while.cond.outer.i.outer.outer ]
  %i.0.ph.i = phi i32 [ %dec.i, %if.end59.i.while.cond.outer.i_crit_edge ], [ 3, %while.cond.outer.i.outer.outer ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end42.i.while.cond.i_crit_edge, %while.cond.outer.i
  %bearer_id.0.i = phi i32 [ %dec.i, %do.end42.i.while.cond.i_crit_edge ], [ %bearer_id.0.ph.i, %while.cond.outer.i ]
  %i.0.i = phi i32 [ %dec.i, %do.end42.i.while.cond.i_crit_edge ], [ %i.0.ph.i, %while.cond.outer.i ]
  %dec.i = add i32 %i.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp31.not.i = icmp eq i32 %i.0.i, 0
  br i1 %cmp31.not.i, label %while.cond.i.while.end.i_crit_edge, label %do.body32.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

do.body32.i:                                      ; preds = %while.cond.i
  %call33.i = call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call33.i, label %do.body32.i.do.end42.i_crit_edge, label %land.lhs.true34.i

do.body32.i.do.end42.i_crit_edge:                 ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end42.i

land.lhs.true34.i:                                ; preds = %do.body32.i
  %call35.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true34.i.do.end42.i_crit_edge, label %land.lhs.true37.i

land.lhs.true34.i.do.end42.i_crit_edge:           ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end42.i

land.lhs.true37.i:                                ; preds = %land.lhs.true34.i
  %.b279.i = load i1, ptr @tipc_enable_bearer.__warned, align 1
  br i1 %.b279.i, label %land.lhs.true37.i.do.end42.i_crit_edge, label %if.then39.i

land.lhs.true37.i.do.end42.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end42.i

if.then39.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_enable_bearer.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 287, ptr noundef nonnull @.str.4) #12
  br label %do.end42.i

do.end42.i:                                       ; preds = %if.then39.i, %land.lhs.true37.i.do.end42.i_crit_edge, %land.lhs.true34.i.do.end42.i_crit_edge, %do.body32.i.do.end42.i_crit_edge
  %arrayidx.i = getelementptr %struct.tipc_net, ptr %call.i.i, i32 0, i32 15, i32 %dec.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %tobool43.not.i = icmp eq ptr %47, null
  br i1 %tobool43.not.i, label %do.end42.i.while.cond.i_crit_edge, label %if.end45.i

do.end42.i.while.cond.i_crit_edge:                ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end45.i:                                       ; preds = %do.end42.i
  %name46.i = getelementptr inbounds %struct.tipc_bearer, ptr %47, i32 0, i32 3
  %call48.i = call i32 @strcmp(ptr noundef %add.ptr.i, ptr noundef %name46.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end45.i.if.then50.i_crit_edge, label %if.end59.i

if.end45.i.if.then50.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.end45.i.1.if.then50.i_crit_edge, %if.end45.i.if.then50.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @tipc_enable_bearer.__msg.35) #12
  %tobool53.not.i = icmp eq ptr %32, null
  br i1 %tobool53.not.i, label %if.then50.i.do.end192.i_crit_edge, label %if.then50.i.do.end192.sink.split.i_crit_edge

if.then50.i.do.end192.sink.split.i_crit_edge:     ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.sink.split.i

if.then50.i.do.end192.i_crit_edge:                ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.i

if.end59.i:                                       ; preds = %if.end45.i
  %priority60.i = getelementptr inbounds %struct.tipc_bearer, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %priority60.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %priority60.i, align 4
  %cmp61.i = icmp eq i32 %49, %prio.addr.1.ph.i.ph73.ph
  br i1 %cmp61.i, label %if.end59.i.while.cond.outer.i.1_crit_edge, label %if.end59.i.while.cond.outer.i_crit_edge

if.end59.i.while.cond.outer.i_crit_edge:          ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.i

if.end59.i.while.cond.outer.i.1_crit_edge:        ; preds = %if.end59.i
  br label %while.cond.outer.i.1

while.cond.outer.i.1:                             ; preds = %if.end59.i.1.while.cond.outer.i.1_crit_edge, %if.end59.i.while.cond.outer.i.1_crit_edge
  %bearer_id.0.ph.i.1 = phi i32 [ %bearer_id.0.i.1, %if.end59.i.1.while.cond.outer.i.1_crit_edge ], [ %bearer_id.0.i, %if.end59.i.while.cond.outer.i.1_crit_edge ]
  %i.0.ph.i.1 = phi i32 [ %dec.i.1, %if.end59.i.1.while.cond.outer.i.1_crit_edge ], [ %dec.i, %if.end59.i.while.cond.outer.i.1_crit_edge ]
  br label %while.cond.i.1

while.cond.i.1:                                   ; preds = %do.end42.i.1.while.cond.i.1_crit_edge, %while.cond.outer.i.1
  %bearer_id.0.i.1 = phi i32 [ %dec.i.1, %do.end42.i.1.while.cond.i.1_crit_edge ], [ %bearer_id.0.ph.i.1, %while.cond.outer.i.1 ]
  %i.0.i.1 = phi i32 [ %dec.i.1, %do.end42.i.1.while.cond.i.1_crit_edge ], [ %i.0.ph.i.1, %while.cond.outer.i.1 ]
  %dec.i.1 = add i32 %i.0.i.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.1)
  %cmp31.not.i.1 = icmp eq i32 %i.0.i.1, 0
  br i1 %cmp31.not.i.1, label %while.cond.i.1.while.end.i_crit_edge, label %do.body32.i.1

while.cond.i.1.while.end.i_crit_edge:             ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

do.body32.i.1:                                    ; preds = %while.cond.i.1
  %call33.i.1 = call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call33.i.1, label %do.body32.i.1.do.end42.i.1_crit_edge, label %land.lhs.true34.i.1

do.body32.i.1.do.end42.i.1_crit_edge:             ; preds = %do.body32.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end42.i.1

land.lhs.true34.i.1:                              ; preds = %do.body32.i.1
  %call35.i.1 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.1)
  %tobool36.not.i.1 = icmp eq i32 %call35.i.1, 0
  br i1 %tobool36.not.i.1, label %land.lhs.true34.i.1.do.end42.i.1_crit_edge, label %land.lhs.true37.i.1

land.lhs.true34.i.1.do.end42.i.1_crit_edge:       ; preds = %land.lhs.true34.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end42.i.1

land.lhs.true37.i.1:                              ; preds = %land.lhs.true34.i.1
  %.b279.i.1 = load i1, ptr @tipc_enable_bearer.__warned, align 1
  br i1 %.b279.i.1, label %land.lhs.true37.i.1.do.end42.i.1_crit_edge, label %if.then39.i.1

land.lhs.true37.i.1.do.end42.i.1_crit_edge:       ; preds = %land.lhs.true37.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end42.i.1

if.then39.i.1:                                    ; preds = %land.lhs.true37.i.1
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_enable_bearer.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 287, ptr noundef nonnull @.str.4) #12
  br label %do.end42.i.1

do.end42.i.1:                                     ; preds = %if.then39.i.1, %land.lhs.true37.i.1.do.end42.i.1_crit_edge, %land.lhs.true34.i.1.do.end42.i.1_crit_edge, %do.body32.i.1.do.end42.i.1_crit_edge
  %arrayidx.i.1 = getelementptr %struct.tipc_net, ptr %call.i.i, i32 0, i32 15, i32 %dec.i.1
  %50 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool43.not.i.1 = icmp eq ptr %51, null
  br i1 %tobool43.not.i.1, label %do.end42.i.1.while.cond.i.1_crit_edge, label %if.end45.i.1

do.end42.i.1.while.cond.i.1_crit_edge:            ; preds = %do.end42.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.1

if.end45.i.1:                                     ; preds = %do.end42.i.1
  %name46.i.1 = getelementptr inbounds %struct.tipc_bearer, ptr %51, i32 0, i32 3
  %call48.i.1 = call i32 @strcmp(ptr noundef %add.ptr.i, ptr noundef %name46.i.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.1)
  %tobool49.not.i.1 = icmp eq i32 %call48.i.1, 0
  br i1 %tobool49.not.i.1, label %if.end45.i.1.if.then50.i_crit_edge, label %if.end59.i.1

if.end45.i.1.if.then50.i_crit_edge:               ; preds = %if.end45.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50.i

if.end59.i.1:                                     ; preds = %if.end45.i.1
  %priority60.i.1 = getelementptr inbounds %struct.tipc_bearer, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %priority60.i.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %priority60.i.1, align 4
  %cmp61.i.1 = icmp eq i32 %53, %prio.addr.1.ph.i.ph73.ph
  br i1 %cmp61.i.1, label %land.lhs.true62.i.1, label %if.end59.i.1.while.cond.outer.i.1_crit_edge

if.end59.i.1.while.cond.outer.i.1_crit_edge:      ; preds = %if.end59.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.i.1

land.lhs.true62.i.1:                              ; preds = %if.end59.i.1
  %call69.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %add.ptr.i, i32 noundef %prio.addr.1.ph.i.ph73.ph) #16
  %cmp70.i = icmp eq i32 %prio.addr.1.ph.i.ph73.ph, 0
  br i1 %cmp70.i, label %if.then71.i, label %do.end83.i

if.then71.i:                                      ; preds = %land.lhs.true62.i.1
  call void @do_trace_netlink_extack(ptr noundef nonnull @tipc_enable_bearer.__msg.39) #12
  %tobool74.not.i = icmp eq ptr %32, null
  br i1 %tobool74.not.i, label %if.then71.i.do.end192.i_crit_edge, label %if.then71.i.do.end192.sink.split.i_crit_edge

if.then71.i.do.end192.sink.split.i_crit_edge:     ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.sink.split.i

if.then71.i.do.end192.i_crit_edge:                ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.i

do.end83.i:                                       ; preds = %land.lhs.true62.i.1
  call void @__sanitizer_cov_trace_pc() #14
  %call85.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %add.ptr.i) #16
  %dec86.i = add i32 %prio.addr.1.ph.i.ph73.ph, -1
  br label %while.cond.outer.i.outer.outer

while.end.i:                                      ; preds = %while.cond.i.1.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %bearer_id.0.i.lcssa = phi i32 [ %bearer_id.0.i, %while.cond.i.while.end.i_crit_edge ], [ %bearer_id.0.i.1, %while.cond.i.1.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bearer_id.0.i.lcssa)
  %cmp88.i = icmp sgt i32 %bearer_id.0.i.lcssa, 2
  br i1 %cmp88.i, label %if.then89.i, label %if.end98.i

if.then89.i:                                      ; preds = %while.end.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @tipc_enable_bearer.__msg.44) #12
  %tobool92.not.i = icmp eq ptr %32, null
  br i1 %tobool92.not.i, label %if.then89.i.do.end192.i_crit_edge, label %if.then89.i.do.end192.sink.split.i_crit_edge

if.then89.i.do.end192.sink.split.i_crit_edge:     ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.sink.split.i

if.then89.i.do.end192.i_crit_edge:                ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.i

if.end98.i:                                       ; preds = %while.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 2848, i32 noundef 204) #18
  %tobool100.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool100.not.i, label %if.end98.i.tipc_enable_bearer.exit_crit_edge, label %if.end102.i

if.end98.i.tipc_enable_bearer.exit_crit_edge:     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_enable_bearer.exit

if.end102.i:                                      ; preds = %if.end98.i
  %name103.i = getelementptr inbounds %struct.tipc_bearer, ptr %call7.i.i.i, i32 0, i32 3
  %call105.i = call ptr @strcpy(ptr noundef %name103.i, ptr noundef %add.ptr.i) #17
  %media.i = getelementptr inbounds %struct.tipc_bearer, ptr %call7.i.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %media.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %43, ptr %media.i, align 4
  %enable_media.i = getelementptr inbounds %struct.tipc_media, ptr %43, i32 0, i32 1
  %56 = ptrtoint ptr %enable_media.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %enable_media.i, align 4
  %call106.i = call i32 %57(ptr noundef %8, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %attrs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %tobool107.not.i = icmp eq i32 %call106.i, 0
  br i1 %tobool107.not.i, label %if.end117.i, label %if.then108.i

if.then108.i:                                     ; preds = %if.end102.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  call void @do_trace_netlink_extack(ptr noundef nonnull @tipc_enable_bearer.__msg.46) #12
  %tobool111.not.i = icmp eq ptr %32, null
  br i1 %tobool111.not.i, label %if.then108.i.do.end192.i_crit_edge, label %if.then108.i.do.end192.sink.split.i_crit_edge

if.then108.i.do.end192.sink.split.i_crit_edge:    ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.sink.split.i

if.then108.i.do.end192.i_crit_edge:               ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.i

if.end117.i:                                      ; preds = %if.end102.i
  %identity.i = getelementptr inbounds %struct.tipc_bearer, ptr %call7.i.i.i, i32 0, i32 13
  %58 = ptrtoint ptr %identity.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %bearer_id.0.i.lcssa, ptr %identity.i, align 8
  %tolerance.i = getelementptr inbounds %struct.tipc_media, ptr %43, i32 0, i32 8
  %59 = ptrtoint ptr %tolerance.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tolerance.i, align 4
  %tolerance118.i = getelementptr inbounds %struct.tipc_bearer, ptr %call7.i.i.i, i32 0, i32 11
  %61 = ptrtoint ptr %tolerance118.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %tolerance118.i, align 8
  %min_win.i = getelementptr inbounds %struct.tipc_media, ptr %43, i32 0, i32 9
  %62 = ptrtoint ptr %min_win.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %min_win.i, align 4
  %min_win119.i = getelementptr inbounds %struct.tipc_bearer, ptr %call7.i.i.i, i32 0, i32 9
  %64 = ptrtoint ptr %min_win119.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %min_win119.i, align 8
  %max_win.i = getelementptr inbounds %struct.tipc_media, ptr %43, i32 0, i32 10
  %65 = ptrtoint ptr %max_win.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_win.i, align 4
  %max_win120.i = getelementptr inbounds %struct.tipc_bearer, ptr %call7.i.i.i, i32 0, i32 10
  %67 = ptrtoint ptr %max_win120.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %max_win120.i, align 4
  %domain.i = getelementptr inbounds %struct.tipc_bearer, ptr %call7.i.i.i, i32 0, i32 12
  %68 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %domain.0, ptr %domain.i, align 4
  %69 = trunc i32 %bearer_id.0.i.lcssa to i8
  %conv.i = add i8 %69, 65
  %net_plane.i = getelementptr inbounds %struct.tipc_bearer, ptr %call7.i.i.i, i32 0, i32 15
  %70 = ptrtoint ptr %net_plane.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv.i, ptr %net_plane.i, align 8
  %priority121.i = getelementptr inbounds %struct.tipc_bearer, ptr %call7.i.i.i, i32 0, i32 8
  %71 = ptrtoint ptr %priority121.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %prio.addr.1.ph.i.ph73.ph, ptr %priority121.i, align 4
  %refcnt.i = getelementptr inbounds %struct.tipc_bearer, ptr %call7.i.i.i, i32 0, i32 17
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  %72 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 1, ptr %refcnt.i, align 8
  %bcast_addr.i = getelementptr inbounds %struct.tipc_bearer, ptr %call7.i.i.i, i32 0, i32 5
  %call122.i = call i32 @tipc_disc_create(ptr noundef %8, ptr noundef nonnull %call7.i.i.i, ptr noundef %bcast_addr.i, ptr noundef nonnull %skb.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %tobool123.not.i = icmp eq i32 %call122.i, 0
  br i1 %tobool123.not.i, label %if.end133.i, label %if.then124.i

if.then124.i:                                     ; preds = %if.end117.i
  call fastcc void @bearer_disable(ptr noundef %8, ptr noundef nonnull %call7.i.i.i) #12
  call void @do_trace_netlink_extack(ptr noundef nonnull @tipc_enable_bearer.__msg.48) #12
  %tobool127.not.i = icmp eq ptr %32, null
  br i1 %tobool127.not.i, label %if.then124.i.do.end192.i_crit_edge, label %if.then124.i.do.end192.sink.split.i_crit_edge

if.then124.i.do.end192.sink.split.i_crit_edge:    ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.sink.split.i

if.then124.i.do.end192.i_crit_edge:               ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.i

if.end133.i:                                      ; preds = %if.end117.i
  %call134.i = call i32 @tipc_mon_create(ptr noundef %8, i32 noundef %bearer_id.0.i.lcssa) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.i)
  %tobool135.not.i = icmp eq i32 %call134.i, 0
  br i1 %tobool135.not.i, label %if.end137.i, label %if.then136.i

if.then136.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @bearer_disable(ptr noundef %8, ptr noundef nonnull %call7.i.i.i) #12
  %73 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %skb.i, align 4
  call void @kfree_skb_reason(ptr noundef %74, i32 noundef 0) #12
  br label %tipc_enable_bearer.exit

if.end137.i:                                      ; preds = %if.end133.i
  %up.i = getelementptr inbounds %struct.tipc_bearer, ptr %call7.i.i.i, i32 0, i32 16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %up.i, i32 noundef 4) #12
  %75 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %up.i, align 4
  %and.i.i.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end137.i.test_and_set_bit_lock.exit.i_crit_edge

if.end137.i.test_and_set_bit_lock.exit.i_crit_edge: ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %test_and_set_bit_lock.exit.i

if.end.i.i.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.prefetch.p0(ptr %up.i, i32 1, i32 3, i32 1) #12
  %77 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %up.i, ptr %up.i, i32 1, ptr elementtype(i32) %up.i) #12, !srcloc !185
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !186
  br label %test_and_set_bit_lock.exit.i

test_and_set_bit_lock.exit.i:                     ; preds = %if.end.i.i.i, %if.end137.i.test_and_set_bit_lock.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !187
  %arrayidx169.i = getelementptr %struct.tipc_net, ptr %call.i.i, i32 0, i32 15, i32 %bearer_id.0.i.lcssa
  %78 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %call7.i.i.i, ptr %arrayidx169.i, align 4
  %79 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %skb.i, align 4
  %tobool181.not.i = icmp eq ptr %80, null
  br i1 %tobool181.not.i, label %test_and_set_bit_lock.exit.i.do.end187.i_crit_edge, label %if.then182.i

test_and_set_bit_lock.exit.i.do.end187.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end187.i

if.then182.i:                                     ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @tipc_bearer_xmit_skb(ptr noundef %8, i32 noundef %bearer_id.0.i.lcssa, ptr noundef nonnull %80, ptr noundef %bcast_addr.i) #12
  br label %do.end187.i

do.end187.i:                                      ; preds = %if.then182.i, %test_and_set_bit_lock.exit.i.do.end187.i_crit_edge
  %call189.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %add.ptr.i, i32 noundef %prio.addr.1.ph.i.ph73.ph) #16
  br label %tipc_enable_bearer.exit

do.end192.sink.split.i:                           ; preds = %if.then124.i.do.end192.sink.split.i_crit_edge, %if.then108.i.do.end192.sink.split.i_crit_edge, %if.then89.i.do.end192.sink.split.i_crit_edge, %if.then71.i.do.end192.sink.split.i_crit_edge, %if.then50.i.do.end192.sink.split.i_crit_edge, %if.then18.i.do.end192.sink.split.i_crit_edge, %if.then6.i.do.end192.sink.split.i_crit_edge, %if.then.i.do.end192.sink.split.i_crit_edge
  %tipc_enable_bearer.__msg.48.sink.i = phi ptr [ @tipc_enable_bearer.__msg, %if.then.i.do.end192.sink.split.i_crit_edge ], [ @tipc_enable_bearer.__msg.31, %if.then6.i.do.end192.sink.split.i_crit_edge ], [ @tipc_enable_bearer.__msg.33, %if.then18.i.do.end192.sink.split.i_crit_edge ], [ @tipc_enable_bearer.__msg.35, %if.then50.i.do.end192.sink.split.i_crit_edge ], [ @tipc_enable_bearer.__msg.39, %if.then71.i.do.end192.sink.split.i_crit_edge ], [ @tipc_enable_bearer.__msg.44, %if.then89.i.do.end192.sink.split.i_crit_edge ], [ @tipc_enable_bearer.__msg.46, %if.then108.i.do.end192.sink.split.i_crit_edge ], [ @tipc_enable_bearer.__msg.48, %if.then124.i.do.end192.sink.split.i_crit_edge ]
  %res.0.ph.i = phi i32 [ -22, %if.then.i.do.end192.sink.split.i_crit_edge ], [ -22, %if.then6.i.do.end192.sink.split.i_crit_edge ], [ -22, %if.then18.i.do.end192.sink.split.i_crit_edge ], [ -22, %if.then50.i.do.end192.sink.split.i_crit_edge ], [ -22, %if.then71.i.do.end192.sink.split.i_crit_edge ], [ -22, %if.then89.i.do.end192.sink.split.i_crit_edge ], [ %call106.i, %if.then108.i.do.end192.sink.split.i_crit_edge ], [ %call122.i, %if.then124.i.do.end192.sink.split.i_crit_edge ]
  %errstr.0.ph.i = phi ptr [ @.str.29, %if.then.i.do.end192.sink.split.i_crit_edge ], [ @.str.30, %if.then6.i.do.end192.sink.split.i_crit_edge ], [ @.str.32, %if.then18.i.do.end192.sink.split.i_crit_edge ], [ @.str.34, %if.then50.i.do.end192.sink.split.i_crit_edge ], [ @.str.38, %if.then71.i.do.end192.sink.split.i_crit_edge ], [ @.str.43, %if.then89.i.do.end192.sink.split.i_crit_edge ], [ @.str.45, %if.then108.i.do.end192.sink.split.i_crit_edge ], [ @.str.47, %if.then124.i.do.end192.sink.split.i_crit_edge ]
  %81 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %tipc_enable_bearer.__msg.48.sink.i, ptr %32, align 4
  br label %do.end192.i

do.end192.i:                                      ; preds = %do.end192.sink.split.i, %if.then124.i.do.end192.i_crit_edge, %if.then108.i.do.end192.i_crit_edge, %if.then89.i.do.end192.i_crit_edge, %if.then71.i.do.end192.i_crit_edge, %if.then50.i.do.end192.i_crit_edge, %if.then18.i.do.end192.i_crit_edge, %if.then6.i.do.end192.i_crit_edge, %if.then.i.do.end192.i_crit_edge
  %res.0.i = phi i32 [ -22, %if.then.i.do.end192.i_crit_edge ], [ -22, %if.then6.i.do.end192.i_crit_edge ], [ -22, %if.then18.i.do.end192.i_crit_edge ], [ -22, %if.then50.i.do.end192.i_crit_edge ], [ -22, %if.then71.i.do.end192.i_crit_edge ], [ -22, %if.then89.i.do.end192.i_crit_edge ], [ %call106.i, %if.then108.i.do.end192.i_crit_edge ], [ %call122.i, %if.then124.i.do.end192.i_crit_edge ], [ %res.0.ph.i, %do.end192.sink.split.i ]
  %errstr.0.i = phi ptr [ @.str.29, %if.then.i.do.end192.i_crit_edge ], [ @.str.30, %if.then6.i.do.end192.i_crit_edge ], [ @.str.32, %if.then18.i.do.end192.i_crit_edge ], [ @.str.34, %if.then50.i.do.end192.i_crit_edge ], [ @.str.38, %if.then71.i.do.end192.i_crit_edge ], [ @.str.43, %if.then89.i.do.end192.i_crit_edge ], [ @.str.45, %if.then108.i.do.end192.i_crit_edge ], [ @.str.47, %if.then124.i.do.end192.i_crit_edge ], [ %errstr.0.ph.i, %do.end192.sink.split.i ]
  %call194.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %add.ptr.i, ptr noundef nonnull %errstr.0.i) #16
  br label %tipc_enable_bearer.exit

tipc_enable_bearer.exit:                          ; preds = %do.end192.i, %do.end187.i, %if.then136.i, %if.end98.i.tipc_enable_bearer.exit_crit_edge
  %retval.0.i = phi i32 [ %res.0.i, %do.end192.i ], [ -12, %if.then136.i ], [ 0, %do.end187.i ], [ -12, %if.end98.i.tipc_enable_bearer.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b_names.i) #12
  br label %cleanup39

cleanup39:                                        ; preds = %tipc_enable_bearer.exit, %cleanup, %if.end7.cleanup39_crit_edge, %if.end.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.1 = phi i32 [ %retval.0.i, %tipc_enable_bearer.exit ], [ %call25, %cleanup ], [ -22, %entry.cleanup39_crit_edge ], [ %call2.i, %if.end.cleanup39_crit_edge ], [ -22, %if.end7.cleanup39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attrs) #12
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_parse_link_prop(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_bearer_enable(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #12
  %call = tail call i32 @__tipc_nl_bearer_enable(ptr noundef %skb, ptr noundef %info)
  tail call void @rtnl_unlock() #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_bearer_add(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #3 align 64 {
entry:
  %attrs = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %attrs) #12
  %0 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 1
  %1 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = call ptr @memset(ptr %attrs, i32 255, i32 20)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %attrs1 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %attrs1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs1, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %11, align 2
  %conv.i.i = zext i16 %15 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_bearer_policy, i32 noundef 0, ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not = icmp eq i32 %call2.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %0, align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  call void @rtnl_lock() #12
  %call14 = call ptr @tipc_bearer_find(ptr noundef %7, ptr noundef %add.ptr.i)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end11
  call void @rtnl_unlock() #12
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @tipc_nl_bearer_add.__msg) #12
  %tobool18.not = icmp eq ptr %19, null
  br i1 %tobool18.not, label %if.then16.cleanup_crit_edge, label %if.then19

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @tipc_nl_bearer_add.__msg, ptr %19, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %tobool23.not = icmp eq ptr %22, null
  br i1 %tobool23.not, label %if.end21.if.end30_crit_edge, label %if.then24

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then24:                                        ; preds = %if.end21
  %call26 = call i32 @tipc_udp_nl_bearer_add(ptr noundef nonnull %call14, ptr noundef nonnull %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then24.if.end30_crit_edge, label %if.then28

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  call void @rtnl_unlock() #12
  br label %cleanup

if.end30:                                         ; preds = %if.then24.if.end30_crit_edge, %if.end21.if.end30_crit_edge
  call void @rtnl_unlock() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then28, %if.then19, %if.then16.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.then28 ], [ 0, %if.end30 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.then19 ], [ -22, %if.then16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attrs) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_udp_nl_bearer_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__tipc_nl_bearer_set(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #3 align 64 {
entry:
  %attrs = alloca [5 x ptr], align 4
  %props = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %attrs) #12
  %0 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 1
  %1 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 2
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = call ptr @memset(ptr %attrs, i32 255, i32 20)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %attrs1 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %attrs1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs1, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup81_crit_edge, label %if.end

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81

if.end:                                           ; preds = %entry
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %11, align 2
  %conv.i.i = zext i16 %15 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_bearer_policy, i32 noundef 0, ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not = icmp eq i32 %call2.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup81_crit_edge

if.end.cleanup81_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81

if.end7:                                          ; preds = %if.end
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %0, align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %if.end7.cleanup81_crit_edge, label %if.end11

if.end7.cleanup81_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81

if.end11:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  %call14 = call ptr @tipc_bearer_find(ptr noundef %7, ptr noundef %add.ptr.i)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.body, label %if.end21

do.body:                                          ; preds = %if.end11
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @__tipc_nl_bearer_set.__msg) #12
  %tobool18.not = icmp eq ptr %19, null
  br i1 %tobool18.not, label %do.body.cleanup81_crit_edge, label %if.then19

do.body.cleanup81_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @__tipc_nl_bearer_set.__msg, ptr %19, align 4
  br label %cleanup81

if.end21:                                         ; preds = %if.end11
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %tobool23.not = icmp eq ptr %22, null
  br i1 %tobool23.not, label %if.end21.cleanup81_crit_edge, label %if.then24

if.end21.cleanup81_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81

if.then24:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #12
  %23 = getelementptr inbounds [7 x ptr], ptr %props, i32 0, i32 1
  %24 = getelementptr inbounds [7 x ptr], ptr %props, i32 0, i32 3
  %25 = getelementptr inbounds [7 x ptr], ptr %props, i32 0, i32 4
  %26 = call ptr @memset(ptr %props, i32 255, i32 28)
  %call27 = call i32 @tipc_nl_parse_link_prop(ptr noundef nonnull %22, ptr noundef nonnull %props) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then24.cleanup.thread_crit_edge

if.then24.cleanup.thread_crit_edge:               ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end30:                                         ; preds = %if.then24
  %27 = getelementptr inbounds [7 x ptr], ptr %props, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool32.not = icmp eq ptr %29, null
  br i1 %tobool32.not, label %if.end30.if.end36_crit_edge, label %if.then33

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i114 = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i114 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i114, align 4
  %tolerance = getelementptr inbounds %struct.tipc_bearer, ptr %call14, i32 0, i32 11
  %32 = ptrtoint ptr %tolerance to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tolerance, align 4
  call void @tipc_node_apply_property(ptr noundef %7, ptr noundef nonnull %call14, i32 noundef 2) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30.if.end36_crit_edge
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %23, align 4
  %tobool38.not = icmp eq ptr %34, null
  br i1 %tobool38.not, label %if.end36.if.end42_crit_edge, label %if.then39

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i115 = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i115 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i115, align 4
  %priority = getelementptr inbounds %struct.tipc_bearer, ptr %call14, i32 0, i32 8
  %37 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %priority, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36.if.end42_crit_edge
  %38 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %24, align 4
  %tobool44.not = icmp eq ptr %39, null
  br i1 %tobool44.not, label %if.end42.if.end48_crit_edge, label %if.then45

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i116 = getelementptr i8, ptr %39, i32 4
  %40 = ptrtoint ptr %add.ptr.i.i116 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i116, align 4
  %max_win = getelementptr inbounds %struct.tipc_bearer, ptr %call14, i32 0, i32 10
  %42 = ptrtoint ptr %max_win to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %max_win, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end42.if.end48_crit_edge
  %43 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %25, align 4
  %tobool50.not = icmp eq ptr %44, null
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %if.then51

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then51:                                        ; preds = %if.end48
  %media = getelementptr inbounds %struct.tipc_bearer, ptr %call14, i32 0, i32 4
  %45 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %media, align 4
  %type_id = getelementptr inbounds %struct.tipc_media, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %type_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp.not = icmp eq i32 %48, 3
  br i1 %cmp.not, label %if.end62, label %do.body53

do.body53:                                        ; preds = %if.then51
  %49 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @__tipc_nl_bearer_set.__msg.11) #12
  %tobool56.not = icmp eq ptr %50, null
  br i1 %tobool56.not, label %do.body53.cleanup.thread_crit_edge, label %if.then57

do.body53.cleanup.thread_crit_edge:               ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.then57:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @__tipc_nl_bearer_set.__msg.11, ptr %50, align 4
  br label %cleanup.thread

if.end62:                                         ; preds = %if.then51
  %add.ptr.i.i117 = getelementptr i8, ptr %44, i32 4
  %52 = ptrtoint ptr %add.ptr.i.i117 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %53)
  %cmp.i = icmp ugt i32 %53, 127
  br i1 %cmp.i, label %if.end76, label %do.body67

do.body67:                                        ; preds = %if.end62
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #16
  %54 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @__tipc_nl_bearer_set.__msg.12) #12
  %tobool70.not = icmp eq ptr %55, null
  br i1 %tobool70.not, label %do.body67.cleanup.thread_crit_edge, label %if.then71

do.body67.cleanup.thread_crit_edge:               ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.then71:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @__tipc_nl_bearer_set.__msg.12, ptr %55, align 4
  br label %cleanup.thread

if.end76:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %25, align 4
  %add.ptr.i.i118 = getelementptr i8, ptr %58, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i118 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i.i118, align 4
  %mtu = getelementptr inbounds %struct.tipc_bearer, ptr %call14, i32 0, i32 1
  %61 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %mtu, align 4
  call void @tipc_node_apply_property(ptr noundef %7, ptr noundef nonnull %call14, i32 noundef 4) #12
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then71, %do.body67.cleanup.thread_crit_edge, %if.then57, %do.body53.cleanup.thread_crit_edge, %if.then24.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -22, %do.body67.cleanup.thread_crit_edge ], [ -22, %if.then71 ], [ -22, %do.body53.cleanup.thread_crit_edge ], [ -22, %if.then57 ], [ %call27, %if.then24.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #12
  br label %cleanup81

cleanup:                                          ; preds = %if.end76, %if.end48.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #12
  br label %cleanup81

cleanup81:                                        ; preds = %cleanup, %cleanup.thread, %if.end21.cleanup81_crit_edge, %if.then19, %do.body.cleanup81_crit_edge, %if.end7.cleanup81_crit_edge, %if.end.cleanup81_crit_edge, %entry.cleanup81_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup81_crit_edge ], [ %call2.i, %if.end.cleanup81_crit_edge ], [ -22, %if.end7.cleanup81_crit_edge ], [ -22, %if.then19 ], [ -22, %do.body.cleanup81_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ 0, %cleanup ], [ 0, %if.end21.cleanup81_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attrs) #12
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_node_apply_property(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_bearer_set(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #12
  %call = tail call i32 @__tipc_nl_bearer_set(ptr noundef %skb, ptr noundef %info)
  tail call void @rtnl_unlock() #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_media_dump(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #3 align 64 {
entry:
  %msg = alloca %struct.tipc_nl_msg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %skb, ptr %msg, align 4
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 12
  %8 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %portid, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %4, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %11 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nlmsg_seq, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %3, align 4
  tail call void @rtnl_lock() #12
  %16 = and i32 %2, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp6.not22 = icmp eq i32 %16, 3
  br i1 %cmp6.not22, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %2, %if.end.for.body_crit_edge ]
  %arrayidx5 = getelementptr [4 x ptr], ptr @media_info_array, i32 0, i32 %i.023
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx5, align 4
  %call = call fastcc i32 @__tipc_nl_add_media(ptr noundef nonnull %msg, ptr noundef %18, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.023, 1
  %19 = and i32 %inc, 1073741823
  %cmp6.not = icmp eq i32 %19, 3
  br i1 %cmp6.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %2, %if.end.for.end_crit_edge ], [ %i.023, %for.body.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  tail call void @rtnl_unlock() #12
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %i.0.lcssa, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tipc_nl_add_media(ptr nocapture noundef readonly %msg, ptr noundef %media, i32 noundef %nlflags) unnamed_addr #3 align 64 {
entry:
  %tmp.i84 = alloca i32, align 4
  %tmp.i82 = alloca i32, align 4
  %tmp.i80 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %portid = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid, align 4
  %seq = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seq, align 4
  %call = tail call ptr @genlmsg_put(ptr noundef %1, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @tipc_genl_family, i32 noundef %nlflags, i8 noundef zeroext 11) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %7, i32 noundef 5, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool3.not106 = icmp eq ptr %9, null
  %tobool3.not = select i1 %cmp.i, i1 true, i1 %tobool3.not106
  br i1 %tobool3.not, label %if.end.if.then.i_crit_edge, label %if.end5

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end5:                                          ; preds = %if.end
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msg, align 4
  %name = getelementptr inbounds %struct.tipc_media, ptr %media, i32 0, i32 14
  %call.i = tail call i32 @strlen(ptr noundef %name) #17
  %add.i = add i32 %call.i, 1
  %call1.i74 = tail call i32 @nla_put(ptr noundef %11, i32 noundef 1, i32 noundef %add.i, ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74)
  %tobool8.not = icmp eq i32 %call1.i74, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.if.then.i.i98_crit_edge

if.end5.if.then.i.i98_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i98

if.end10:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg, align 4
  %tail.i.i75 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i75 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i75, align 8
  %call1.i76 = tail call i32 @nla_put(ptr noundef %13, i32 noundef 2, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76)
  %cmp.i77 = icmp slt i32 %call1.i76, 0
  %tobool13.not107 = icmp eq ptr %15, null
  %tobool13.not = select i1 %cmp.i77, i1 true, i1 %tobool13.not107
  br i1 %tobool13.not, label %if.end10.if.then.i.i98_crit_edge, label %if.end15

if.end10.if.then.i.i98_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i98

if.end15:                                         ; preds = %if.end10
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msg, align 4
  %priority = getelementptr inbounds %struct.tipc_media, ptr %media, i32 0, i32 7
  %18 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %priority, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tmp.i, align 4
  %call.i79 = call i32 @nla_put(ptr noundef %17, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool18.not = icmp eq i32 %call.i79, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.if.then.i.i_crit_edge

if.end15.if.then.i.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end20:                                         ; preds = %if.end15
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msg, align 4
  %tolerance = getelementptr inbounds %struct.tipc_media, ptr %media, i32 0, i32 8
  %23 = ptrtoint ptr %tolerance to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tolerance, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i80) #12
  %25 = ptrtoint ptr %tmp.i80 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmp.i80, align 4
  %call.i81 = call i32 @nla_put(ptr noundef %22, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i80) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i80) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool23.not = icmp eq i32 %call.i81, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.if.then.i.i_crit_edge

if.end20.if.then.i.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end25:                                         ; preds = %if.end20
  %26 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msg, align 4
  %max_win = getelementptr inbounds %struct.tipc_media, ptr %media, i32 0, i32 10
  %28 = ptrtoint ptr %max_win to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_win, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i82) #12
  %30 = ptrtoint ptr %tmp.i82 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tmp.i82, align 4
  %call.i83 = call i32 @nla_put(ptr noundef %27, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i82) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i82) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool28.not = icmp eq i32 %call.i83, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.if.then.i.i_crit_edge

if.end25.if.then.i.i_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end30:                                         ; preds = %if.end25
  %type_id = getelementptr inbounds %struct.tipc_media, ptr %media, i32 0, i32 12
  %31 = ptrtoint ptr %type_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp = icmp eq i32 %32, 3
  br i1 %cmp, label %if.then31, label %if.end30.if.end37_crit_edge

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then31:                                        ; preds = %if.end30
  %33 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %msg, align 4
  %mtu = getelementptr inbounds %struct.tipc_media, ptr %media, i32 0, i32 11
  %35 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mtu, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i84) #12
  %37 = ptrtoint ptr %tmp.i84 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tmp.i84, align 4
  %call.i85 = call i32 @nla_put(ptr noundef %34, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i84) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i84) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool34.not = icmp eq i32 %call.i85, 0
  br i1 %tobool34.not, label %if.then31.if.end37_crit_edge, label %if.then31.if.then.i.i_crit_edge

if.then31.if.then.i.i_crit_edge:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end37:                                         ; preds = %if.then31.if.end37_crit_edge, %if.end30.if.end37_crit_edge
  %38 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msg, align 4
  %tail.i.i86 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i.i86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i86, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %42 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i, ptr %15, align 2
  %43 = load ptr, ptr %msg, align 4
  %tail.i.i87 = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %tail.i.i87 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i87, align 8
  %sub.ptr.lhs.cast.i88 = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i89 = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i90 = sub i32 %sub.ptr.lhs.cast.i88, %sub.ptr.rhs.cast.i89
  %conv.i91 = trunc i32 %sub.ptr.sub.i90 to i16
  %46 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i91, ptr %9, align 2
  %47 = load ptr, ptr %msg, align 4
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %50 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then31.if.then.i.i_crit_edge, %if.end25.if.then.i.i_crit_edge, %if.end20.if.then.i.i_crit_edge, %if.end15.if.then.i.i_crit_edge
  %51 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %msg, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %54, %15
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !177

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %55 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i92 = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i93 = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i94 = sub i32 %sub.ptr.lhs.cast.i.i92, %sub.ptr.rhs.cast.i.i93
  call void @skb_trim(ptr noundef %52, i32 noundef %sub.ptr.sub.i.i94) #12
  br label %if.then.i.i98

if.then.i.i98:                                    ; preds = %if.end.i.i, %if.end10.if.then.i.i98_crit_edge, %if.end5.if.then.i.i98_crit_edge
  %57 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %msg, align 4
  %data.i.i96 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 19
  %59 = ptrtoint ptr %data.i.i96 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i96, align 4
  %cmp.i.i97 = icmp ugt ptr %60, %9
  br i1 %cmp.i.i97, label %do.end.i.i99, label %if.then.i.i98.nla_nest_cancel.exit104_crit_edge, !prof !177

if.then.i.i98.nla_nest_cancel.exit104_crit_edge:  ; preds = %if.then.i.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit104

do.end.i.i99:                                     ; preds = %if.then.i.i98
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %nla_nest_cancel.exit104

nla_nest_cancel.exit104:                          ; preds = %do.end.i.i99, %if.then.i.i98.nla_nest_cancel.exit104_crit_edge
  %61 = ptrtoint ptr %data.i.i96 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i.i96, align 4
  %sub.ptr.lhs.cast.i.i100 = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i101 = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i.i102 = sub i32 %sub.ptr.lhs.cast.i.i100, %sub.ptr.rhs.cast.i.i101
  call void @skb_trim(ptr noundef %58, i32 noundef %sub.ptr.sub.i.i102) #12
  br label %if.then.i

if.then.i:                                        ; preds = %nla_nest_cancel.exit104, %if.end.if.then.i_crit_edge
  %63 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %msg, align 4
  %add.ptr1.i105 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i105, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 19
  %65 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %66, %add.ptr1.i105
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !177

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %67 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i105 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %68 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %64, i32 noundef %sub.ptr.sub.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_media_get(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #3 align 64 {
entry:
  %msg = alloca %struct.tipc_nl_msg, align 4
  %attrs = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #12
  %0 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tipc_nl_msg, ptr %msg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %attrs) #12
  %2 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 1
  %attrs1 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %3 = call ptr @memset(ptr %attrs, i32 255, i32 20)
  %4 = ptrtoint ptr %attrs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs1, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %7, align 2
  %conv.i.i = zext i16 %11 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_media_policy, i32 noundef 0, ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool4.not = icmp eq i32 %call2.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  %call.i.i = call ptr @__alloc_skb(i32 noundef 3856, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %tobool14.not = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %msg, align 4
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %15 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %snd_portid, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %0, align 4
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %info, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %1, align 4
  call void @rtnl_lock() #12
  %call.i = call i32 @strcmp(ptr noundef getelementptr inbounds (%struct.tipc_media, ptr @eth_media_info, i32 0, i32 14), ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end16.tipc_media_find.exit_crit_edge, label %for.cond.i

if.end16.tipc_media_find.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_media_find.exit

for.cond.i:                                       ; preds = %if.end16
  %call.1.i = call i32 @strcmp(ptr noundef getelementptr inbounds (%struct.tipc_media, ptr @ib_media_info, i32 0, i32 14), ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.i.tipc_media_find.exit_crit_edge, label %for.cond.1.i

for.cond.i.tipc_media_find.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_media_find.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.2.i = call i32 @strcmp(ptr noundef getelementptr inbounds (%struct.tipc_media, ptr @udp_media_info, i32 0, i32 14), ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  %spec.select.i = select i1 %tobool.not.2.i, ptr getelementptr inbounds ([4 x ptr], ptr @media_info_array, i32 0, i32 2), ptr getelementptr inbounds ([4 x ptr], ptr @media_info_array, i32 0, i32 3)
  br label %tipc_media_find.exit

tipc_media_find.exit:                             ; preds = %for.cond.1.i, %for.cond.i.tipc_media_find.exit_crit_edge, %if.end16.tipc_media_find.exit_crit_edge
  %arrayidx.lcssa.i = phi ptr [ @media_info_array, %if.end16.tipc_media_find.exit_crit_edge ], [ getelementptr inbounds ([4 x ptr], ptr @media_info_array, i32 0, i32 1), %for.cond.i.tipc_media_find.exit_crit_edge ], [ %spec.select.i, %for.cond.1.i ]
  %21 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.lcssa.i, align 4
  %tobool19.not = icmp eq ptr %22, null
  br i1 %tobool19.not, label %do.body, label %if.end25

do.body:                                          ; preds = %tipc_media_find.exit
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @tipc_nl_media_get.__msg) #12
  %tobool22.not = icmp eq ptr %24, null
  br i1 %tobool22.not, label %do.body.err_out_crit_edge, label %if.then23

do.body.err_out_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @tipc_nl_media_get.__msg, ptr %24, align 4
  br label %err_out

if.end25:                                         ; preds = %tipc_media_find.exit
  %call26 = call fastcc i32 @__tipc_nl_add_media(ptr noundef nonnull %msg, ptr noundef nonnull %22, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.err_out_crit_edge

if.end25.err_out_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  call void @rtnl_unlock() #12
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %26 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_net.i.i, align 4
  %28 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %27, i32 0, i32 21
  %30 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = call i32 @netlink_unicast(ptr noundef %31, ptr noundef nonnull %call.i.i, i32 noundef %29, i32 noundef 64) #12
  %32 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #12
  br label %cleanup

err_out:                                          ; preds = %if.end25.err_out_crit_edge, %if.then23, %do.body.err_out_crit_edge
  %err.0 = phi i32 [ %call26, %if.end25.err_out_crit_edge ], [ -22, %if.then23 ], [ -22, %do.body.err_out_crit_edge ]
  call void @rtnl_unlock() #12
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end29, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_out ], [ %32, %if.end29 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attrs) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__tipc_nl_media_set(ptr nocapture readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #3 align 64 {
entry:
  %attrs = alloca [5 x ptr], align 4
  %props = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %attrs) #12
  %0 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 2
  %attrs1 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = call ptr @memset(ptr %attrs, i32 255, i32 20)
  %2 = ptrtoint ptr %attrs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup77_crit_edge, label %if.end

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup77

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds [5 x ptr], ptr %attrs, i32 0, i32 1
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %5, align 2
  %conv.i.i = zext i16 %10 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_media_policy, i32 noundef 0, ptr noundef %8) #12
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.end.cleanup77_crit_edge, label %if.end7

if.end.cleanup77_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup77

if.end7:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %call.i = call i32 @strcmp(ptr noundef getelementptr inbounds (%struct.tipc_media, ptr @eth_media_info, i32 0, i32 14), ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7.tipc_media_find.exit_crit_edge, label %for.cond.i

if.end7.tipc_media_find.exit_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_media_find.exit

for.cond.i:                                       ; preds = %if.end7
  %call.1.i = call i32 @strcmp(ptr noundef getelementptr inbounds (%struct.tipc_media, ptr @ib_media_info, i32 0, i32 14), ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.i.tipc_media_find.exit_crit_edge, label %for.cond.1.i

for.cond.i.tipc_media_find.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_media_find.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.2.i = call i32 @strcmp(ptr noundef getelementptr inbounds (%struct.tipc_media, ptr @udp_media_info, i32 0, i32 14), ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  %spec.select.i = select i1 %tobool.not.2.i, ptr getelementptr inbounds ([4 x ptr], ptr @media_info_array, i32 0, i32 2), ptr getelementptr inbounds ([4 x ptr], ptr @media_info_array, i32 0, i32 3)
  br label %tipc_media_find.exit

tipc_media_find.exit:                             ; preds = %for.cond.1.i, %for.cond.i.tipc_media_find.exit_crit_edge, %if.end7.tipc_media_find.exit_crit_edge
  %arrayidx.lcssa.i = phi ptr [ @media_info_array, %if.end7.tipc_media_find.exit_crit_edge ], [ getelementptr inbounds ([4 x ptr], ptr @media_info_array, i32 0, i32 1), %for.cond.i.tipc_media_find.exit_crit_edge ], [ %spec.select.i, %for.cond.1.i ]
  %13 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.lcssa.i, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %do.body, label %if.end17

do.body:                                          ; preds = %tipc_media_find.exit
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @__tipc_nl_media_set.__msg) #12
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %do.body.cleanup77_crit_edge, label %if.then15

do.body.cleanup77_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup77

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @__tipc_nl_media_set.__msg, ptr %16, align 4
  br label %cleanup77

if.end17:                                         ; preds = %tipc_media_find.exit
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 4
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %if.end17.cleanup77_crit_edge, label %if.then20

if.end17.cleanup77_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup77

if.then20:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #12
  %20 = getelementptr inbounds [7 x ptr], ptr %props, i32 0, i32 1
  %21 = getelementptr inbounds [7 x ptr], ptr %props, i32 0, i32 3
  %22 = getelementptr inbounds [7 x ptr], ptr %props, i32 0, i32 4
  %23 = call ptr @memset(ptr %props, i32 255, i32 28)
  %call23 = call i32 @tipc_nl_parse_link_prop(ptr noundef nonnull %19, ptr noundef nonnull %props) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then20.cleanup.thread_crit_edge

if.then20.cleanup.thread_crit_edge:               ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end26:                                         ; preds = %if.then20
  %24 = getelementptr inbounds [7 x ptr], ptr %props, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool28.not = icmp eq ptr %26, null
  br i1 %tobool28.not, label %if.end26.if.end32_crit_edge, label %if.then29

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i103 = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i103 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i103, align 4
  %tolerance = getelementptr inbounds %struct.tipc_media, ptr %14, i32 0, i32 8
  %29 = ptrtoint ptr %tolerance to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tolerance, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26.if.end32_crit_edge
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %20, align 4
  %tobool34.not = icmp eq ptr %31, null
  br i1 %tobool34.not, label %if.end32.if.end38_crit_edge, label %if.then35

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i104 = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i104, align 4
  %priority = getelementptr inbounds %struct.tipc_media, ptr %14, i32 0, i32 7
  %34 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %priority, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32.if.end38_crit_edge
  %35 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %21, align 4
  %tobool40.not = icmp eq ptr %36, null
  br i1 %tobool40.not, label %if.end38.if.end44_crit_edge, label %if.then41

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i105 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i105 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i105, align 4
  %max_win = getelementptr inbounds %struct.tipc_media, ptr %14, i32 0, i32 10
  %39 = ptrtoint ptr %max_win to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %max_win, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end38.if.end44_crit_edge
  %40 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %22, align 4
  %tobool46.not = icmp eq ptr %41, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.then47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then47:                                        ; preds = %if.end44
  %type_id = getelementptr inbounds %struct.tipc_media, ptr %14, i32 0, i32 12
  %42 = ptrtoint ptr %type_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp.not = icmp eq i32 %43, 3
  br i1 %cmp.not, label %if.end58, label %do.body49

do.body49:                                        ; preds = %if.then47
  %44 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @__tipc_nl_media_set.__msg.13) #12
  %tobool52.not = icmp eq ptr %45, null
  br i1 %tobool52.not, label %do.body49.cleanup.thread_crit_edge, label %if.then53

do.body49.cleanup.thread_crit_edge:               ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.then53:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @__tipc_nl_media_set.__msg.13, ptr %45, align 4
  br label %cleanup.thread

if.end58:                                         ; preds = %if.then47
  %add.ptr.i.i106 = getelementptr i8, ptr %41, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i106 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %48)
  %cmp.i = icmp ugt i32 %48, 127
  br i1 %cmp.i, label %if.end72, label %do.body63

do.body63:                                        ; preds = %if.end58
  %call.i107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #16
  %49 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @__tipc_nl_media_set.__msg.14) #12
  %tobool66.not = icmp eq ptr %50, null
  br i1 %tobool66.not, label %do.body63.cleanup.thread_crit_edge, label %if.then67

do.body63.cleanup.thread_crit_edge:               ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.then67:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @__tipc_nl_media_set.__msg.14, ptr %50, align 4
  br label %cleanup.thread

if.end72:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %22, align 4
  %add.ptr.i.i108 = getelementptr i8, ptr %53, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i108 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i108, align 4
  %mtu = getelementptr inbounds %struct.tipc_media, ptr %14, i32 0, i32 11
  %56 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %mtu, align 4
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then67, %do.body63.cleanup.thread_crit_edge, %if.then53, %do.body49.cleanup.thread_crit_edge, %if.then20.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -22, %do.body63.cleanup.thread_crit_edge ], [ -22, %if.then67 ], [ -22, %do.body49.cleanup.thread_crit_edge ], [ -22, %if.then53 ], [ %call23, %if.then20.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #12
  br label %cleanup77

cleanup:                                          ; preds = %if.end72, %if.end44.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #12
  br label %cleanup77

cleanup77:                                        ; preds = %cleanup, %cleanup.thread, %if.end17.cleanup77_crit_edge, %if.then15, %do.body.cleanup77_crit_edge, %if.end.cleanup77_crit_edge, %entry.cleanup77_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup77_crit_edge ], [ -22, %if.end.cleanup77_crit_edge ], [ -22, %if.then15 ], [ -22, %do.body.cleanup77_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ 0, %cleanup ], [ 0, %if.end17.cleanup77_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attrs) #12
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_nl_media_set(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #12
  %call = tail call i32 @__tipc_nl_media_set(ptr undef, ptr noundef %info)
  tail call void @rtnl_unlock() #12
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_rcv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_l2_device_event(ptr nocapture noundef readnone %nb, i32 noundef %evt, ptr nocapture noundef readonly %ptr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %call2 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call2, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b58 = load i1, ptr @tipc_l2_device_event.__warned, align 1
  br i1 %.b58, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_l2_device_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 679, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %tipc_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 76
  %4 = ptrtoint ptr %tipc_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tipc_ptr, align 8
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %do.end
  tail call fastcc void @trace_tipc_l2_device_event(ptr noundef %1, ptr noundef nonnull %5, i32 noundef %evt)
  %6 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %evt, label %if.end8.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 10, label %if.end8.sw.bb15_crit_edge
    i32 1, label %sw.bb18
    i32 7, label %sw.bb21
    i32 8, label %sw.bb27
    i32 6, label %if.end8.sw.bb30_crit_edge
    i32 11, label %if.end8.sw.bb30_crit_edge72
  ]

if.end8.sw.bb30_crit_edge72:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb30

if.end8.sw.bb30_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb30

if.end8.sw.bb15_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true10, label %sw.bb.sw.bb15_crit_edge

sw.bb.sw.bb15_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15

land.lhs.true10:                                  ; preds = %sw.bb
  %operstate.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 50
  %10 = ptrtoint ptr %operstate.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %operstate.i, align 8
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %11, label %land.lhs.true10.sw.bb15_crit_edge [
    i8 6, label %land.lhs.true10.if.then12_crit_edge
    i8 0, label %land.lhs.true10.if.then12_crit_edge73
  ]

land.lhs.true10.if.then12_crit_edge73:            ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

land.lhs.true10.if.then12_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

land.lhs.true10.sw.bb15_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15

if.then12:                                        ; preds = %land.lhs.true10.if.then12_crit_edge, %land.lhs.true10.if.then12_crit_edge73
  %up = getelementptr inbounds %struct.tipc_bearer, ptr %5, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %up, i32 noundef 4) #12
  %13 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %up, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @llvm.prefetch.p0(ptr %up, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %up, ptr %up, i32 1, ptr elementtype(i32) %up) #12, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !186
  br label %cleanup

sw.bb15:                                          ; preds = %land.lhs.true10.sw.bb15_crit_edge, %sw.bb.sw.bb15_crit_edge, %if.end8.sw.bb15_crit_edge
  %up16 = getelementptr inbounds %struct.tipc_bearer, ptr %5, i32 0, i32 16
  %call.i.i59 = tail call zeroext i1 @__kasan_check_write(ptr noundef %up16, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @llvm.prefetch.p0(ptr %up16, i32 1, i32 3, i32 1) #12
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %up16, ptr %up16, i32 1, ptr elementtype(i32) %up16) #12, !srcloc !184
  %name.i = getelementptr inbounds %struct.tipc_bearer, ptr %5, i32 0, i32 3
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i) #16
  %identity.i = getelementptr inbounds %struct.tipc_bearer, ptr %5, i32 0, i32 13
  %17 = ptrtoint ptr %identity.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %identity.i, align 4
  tail call void @tipc_node_delete_links(ptr noundef %3, i32 noundef %18) #12
  tail call void @tipc_disc_reset(ptr noundef %3, ptr noundef nonnull %5) #12
  br label %cleanup

sw.bb18:                                          ; preds = %if.end8
  %up19 = getelementptr inbounds %struct.tipc_bearer, ptr %5, i32 0, i32 16
  %call.i.i60 = tail call zeroext i1 @__kasan_check_write(ptr noundef %up19, i32 noundef 4) #12
  %19 = ptrtoint ptr %up19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %up19, align 4
  %and.i.i61 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i61)
  %tobool.not.i.i62 = icmp eq i32 %and.i.i61, 0
  br i1 %tobool.not.i.i62, label %if.end.i.i63, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i63:                                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @llvm.prefetch.p0(ptr %up19, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %up19, ptr %up19, i32 1, ptr elementtype(i32) %up19) #12, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !186
  br label %cleanup

sw.bb21:                                          ; preds = %if.end8
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %22 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %23)
  %cmp.i65 = icmp ugt i32 %23, 99
  br i1 %cmp.i65, label %if.end24, label %if.then23

if.then23:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.19) #16
  tail call fastcc void @bearer_disable(ptr noundef %3, ptr noundef nonnull %5)
  br label %cleanup

if.end24:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mtu.i, align 4
  %mtu25 = getelementptr inbounds %struct.tipc_bearer, ptr %5, i32 0, i32 1
  %26 = ptrtoint ptr %mtu25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mtu25, align 4
  %name.i66 = getelementptr inbounds %struct.tipc_bearer, ptr %5, i32 0, i32 3
  %call.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i66) #16
  %identity.i68 = getelementptr inbounds %struct.tipc_bearer, ptr %5, i32 0, i32 13
  %27 = ptrtoint ptr %identity.i68 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %identity.i68, align 4
  tail call void @tipc_node_delete_links(ptr noundef %3, i32 noundef %28) #12
  tail call void @tipc_disc_reset(ptr noundef %3, ptr noundef nonnull %5) #12
  br label %cleanup

sw.bb27:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %media = getelementptr inbounds %struct.tipc_bearer, ptr %5, i32 0, i32 4
  %29 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %media, align 4
  %raw2addr = getelementptr inbounds %struct.tipc_media, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %raw2addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %raw2addr, align 4
  %addr = getelementptr inbounds %struct.tipc_bearer, ptr %5, i32 0, i32 2
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %33 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_addr, align 64
  %call28 = tail call i32 %32(ptr noundef nonnull %5, ptr noundef %addr, ptr noundef %34) #12
  %name.i69 = getelementptr inbounds %struct.tipc_bearer, ptr %5, i32 0, i32 3
  %call.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i69) #16
  %identity.i71 = getelementptr inbounds %struct.tipc_bearer, ptr %5, i32 0, i32 13
  %35 = ptrtoint ptr %identity.i71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %identity.i71, align 4
  tail call void @tipc_node_delete_links(ptr noundef %3, i32 noundef %36) #12
  tail call void @tipc_disc_reset(ptr noundef %3, ptr noundef nonnull %5) #12
  br label %cleanup

sw.bb30:                                          ; preds = %if.end8.sw.bb30_crit_edge, %if.end8.sw.bb30_crit_edge72
  tail call fastcc void @bearer_disable(ptr noundef %3, ptr noundef nonnull %5)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb30, %sw.bb27, %if.end24, %if.then23, %if.end.i.i63, %sw.bb18.cleanup_crit_edge, %sw.bb15, %if.end.i.i, %if.then12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 1, %if.end8.cleanup_crit_edge ], [ 1, %sw.bb30 ], [ 1, %sw.bb27 ], [ 1, %if.end24 ], [ 1, %if.then23 ], [ 1, %sw.bb15 ], [ 1, %if.then12.cleanup_crit_edge ], [ 1, %if.end.i.i ], [ 1, %sw.bb18.cleanup_crit_edge ], [ 1, %if.end.i.i63 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tipc_l2_device_event(ptr noundef %dev, ptr noundef %b, i32 noundef %evt) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_l2_device_event, i32 0, i32 1), ptr blockaddress(@trace_tipc_l2_device_event, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !188

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !171

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !189
  %call42 = tail call i32 @__traceiter_tipc_l2_device_event(ptr noundef null, ptr noundef %dev, ptr noundef %b, i32 noundef %evt) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !190
  %13 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !171

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_l2_device_event, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tipc_l2_device_event, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tipc_l2_device_event.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_tipc_l2_device_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 425, ptr noundef nonnull @.str.5) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !192
  %31 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tipc_l2_device_event(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_node_delete_links(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_disc_reset(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_disc_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_mon_delete(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_udp_nl_add_bearer_data(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_disc_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_mon_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !63, !64, !65, !67, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !123, !124, !126, !128, !130, !131, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157}
!llvm.named.register.sp = !{!158}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/tipc/bearer.c", i32 118, i32 29}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/tipc/bearer.c", i32 122, i32 29}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/tipc/bearer.c", i32 125, i32 10}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/tipc/bearer.c", i32 184, i32 7}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/tipc/bearer.c", i32 204, i32 6}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/tipc/bearer.c", i32 218, i32 6}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/tipc/bearer.c", i32 230, i32 6}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/tipc/bearer.c", i32 441, i32 3}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tipc_enable_l2_media._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @tipc_enable_l2_media._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/tipc/bearer.c", i32 452, i32 3}
!24 = !{ptr @tipc_enable_l2_media._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tipc_enable_l2_media._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/tipc/bearer.c", i32 481, i32 29}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../net/tipc/bearer.c", i32 501, i32 29}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/tipc/bearer.c", i32 538, i32 6}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/tipc/bearer.c", i32 741, i32 7}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/tipc/bearer.c", i32 883, i32 12}
!36 = !{ptr @tipc_nl_bearer_get.__msg, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../net/tipc/bearer.c", i32 932, i32 3}
!38 = !{ptr @__tipc_nl_bearer_disable.__msg, !39, !"__msg", i1 false, i1 false}
!39 = !{!"../net/tipc/bearer.c", i32 973, i32 3}
!40 = !{ptr @tipc_nl_bearer_add.__msg, !41, !"__msg", i1 false, i1 false}
!41 = !{!"../net/tipc/bearer.c", i32 1073, i32 3}
!42 = !{ptr @__tipc_nl_bearer_set.__msg, !43, !"__msg", i1 false, i1 false}
!43 = !{!"../net/tipc/bearer.c", i32 1115, i32 3}
!44 = !{ptr @__tipc_nl_bearer_set.__msg.11, !45, !"__msg", i1 false, i1 false}
!45 = !{!"../net/tipc/bearer.c", i32 1137, i32 5}
!46 = !{ptr @__tipc_nl_bearer_set.__msg.12, !47, !"__msg", i1 false, i1 false}
!47 = !{!"../net/tipc/bearer.c", i32 1144, i32 5}
!48 = !{ptr @tipc_nl_media_get.__msg, !49, !"__msg", i1 false, i1 false}
!49 = !{!"../net/tipc/bearer.c", i32 1275, i32 3}
!50 = !{ptr @__tipc_nl_media_set.__msg, !51, !"__msg", i1 false, i1 false}
!51 = !{!"../net/tipc/bearer.c", i32 1313, i32 3}
!52 = !{ptr @__tipc_nl_media_set.__msg.13, !53, !"__msg", i1 false, i1 false}
!53 = !{!"../net/tipc/bearer.c", i32 1332, i32 5}
!54 = !{ptr @__tipc_nl_media_set.__msg.14, !55, !"__msg", i1 false, i1 false}
!55 = !{!"../net/tipc/bearer.c", i32 1339, i32 5}
!56 = !{ptr @media_info_array, !57, !"media_info_array", i1 false, i1 false}
!57 = !{!"../net/tipc/bearer.c", i32 51, i32 34}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!60 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!63 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!67 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/tipc/bearer.h", i32 261, i32 19}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/tipc/bearer.c", i32 66, i32 9}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../net/tipc/bearer.c", i32 648, i32 6}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../net/tipc/bearer.c", i32 649, i32 3}
!76 = !{ptr @notifier, !77, !"notifier", i1 false, i1 false}
!77 = !{!"../net/tipc/bearer.c", i32 719, i32 30}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../net/tipc/bearer.c", i32 679, i32 6}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../net/tipc/trace.h", i32 395, i32 1}
!82 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!86 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/tipc/bearer.c", i32 382, i32 2}
!89 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @tipc_reset_bearer._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @tipc_reset_bearer._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/tipc/bearer.c", i32 411, i32 2}
!94 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @bearer_disable._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @bearer_disable._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/net/netlink.h", i32 991, i32 3}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/tipc/bearer.c", i32 258, i32 17}
!101 = !{ptr @.str.29, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/tipc/bearer.c", i32 262, i32 12}
!103 = !{ptr @tipc_enable_bearer.__msg, !104, !"__msg", i1 false, i1 false}
!104 = !{!"../net/tipc/bearer.c", i32 263, i32 3}
!105 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/tipc/bearer.c", i32 268, i32 12}
!107 = !{ptr @tipc_enable_bearer.__msg.31, !108, !"__msg", i1 false, i1 false}
!108 = !{!"../net/tipc/bearer.c", i32 269, i32 3}
!109 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/tipc/bearer.c", i32 275, i32 12}
!111 = !{ptr @tipc_enable_bearer.__msg.33, !112, !"__msg", i1 false, i1 false}
!112 = !{!"../net/tipc/bearer.c", i32 276, i32 3}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../net/tipc/bearer.c", i32 287, i32 7}
!115 = !{ptr @.str.34, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/tipc/bearer.c", i32 293, i32 13}
!117 = !{ptr @tipc_enable_bearer.__msg.35, !118, !"__msg", i1 false, i1 false}
!118 = !{!"../net/tipc/bearer.c", i32 294, i32 4}
!119 = !{ptr @.str.36, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/tipc/bearer.c", i32 300, i32 4}
!121 = !{ptr @.str.37, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @tipc_enable_bearer._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @tipc_enable_bearer._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.38, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/tipc/bearer.c", i32 304, i32 14}
!126 = !{ptr @tipc_enable_bearer.__msg.39, !127, !"__msg", i1 false, i1 false}
!127 = !{!"../net/tipc/bearer.c", i32 305, i32 5}
!128 = !{ptr @.str.41, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/tipc/bearer.c", i32 309, i32 4}
!130 = !{ptr @tipc_enable_bearer._entry.40, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @tipc_enable_bearer._entry_ptr.42, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.43, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/tipc/bearer.c", i32 319, i32 12}
!134 = !{ptr @tipc_enable_bearer.__msg.44, !135, !"__msg", i1 false, i1 false}
!135 = !{!"../net/tipc/bearer.c", i32 320, i32 3}
!136 = !{ptr @.str.45, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/tipc/bearer.c", i32 333, i32 12}
!138 = !{ptr @tipc_enable_bearer.__msg.46, !139, !"__msg", i1 false, i1 false}
!139 = !{!"../net/tipc/bearer.c", i32 334, i32 3}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../net/tipc/bearer.c", i32 350, i32 12}
!142 = !{ptr @tipc_enable_bearer.__msg.48, !143, !"__msg", i1 false, i1 false}
!143 = !{!"../net/tipc/bearer.c", i32 351, i32 3}
!144 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/tipc/bearer.c", i32 367, i32 2}
!146 = !{ptr @tipc_enable_bearer._entry.49, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @tipc_enable_bearer._entry_ptr.51, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.53, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/tipc/bearer.c", i32 371, i32 2}
!150 = !{ptr @tipc_enable_bearer._entry.52, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @tipc_enable_bearer._entry_ptr.54, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../net/tipc/udp_media.h", i32 55, i32 2}
!154 = !{ptr @.str.56, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.57, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @tipc_udp_mtu_bad._entry, !153, !"_entry", i1 false, i1 false}
!157 = !{ptr @tipc_udp_mtu_bad._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!158 = !{!"sp"}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{i64 2149377174}
!169 = !{i64 2149377440}
!170 = !{i64 1076172, i64 1076196, i64 1076217, i64 1076234, i64 1076251}
!171 = !{!"branch_weights", i32 2000, i32 1}
!172 = !{i64 2148680214}
!173 = !{i64 2148594654, i64 2148594686, i64 2148594715, i64 2148594749, i64 2148594780, i64 2148594803}
!174 = !{i64 2149685161}
!175 = !{i64 995339, i64 995400}
!176 = !{i64 998071}
!177 = !{!"branch_weights", i32 1, i32 2000}
!178 = !{i64 998356}
!179 = !{i64 2158162431}
!180 = !{i64 2158170051}
!181 = !{!"branch_weights", i32 2146410443, i32 1073205}
!182 = !{!"auto-init"}
!183 = !{i64 2148687509}
!184 = !{i64 2148597904, i64 2148597936, i64 2148597965, i64 2148597999, i64 2148598030, i64 2148598053}
!185 = !{i64 2148599517, i64 2148599549, i64 2148599578, i64 2148599612, i64 2148599643, i64 2148599666}
!186 = !{i64 2148688622}
!187 = !{i64 2158137047}
!188 = !{i64 2148274232, i64 2148274237, i64 2148274250, i64 2148274294, i64 2148274328, i64 2148274349}
!189 = !{i64 2158082295}
!190 = !{i64 2158082520}
!191 = !{i64 2149385733}
!192 = !{i64 2149386769}
