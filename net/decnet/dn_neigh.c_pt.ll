; ModuleID = '/llk/IR_all_yes/net/decnet/dn_neigh.c_pt.bc'
source_filename = "../net/decnet/dn_neigh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.neigh_ops = type { i32, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.80 }
%union.anon.80 = type { i32 }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.dn_dev = type { ptr, ptr, %struct.dn_dev_parms, i8, %struct.timer_list, i32, ptr, [6 x i8], ptr, ptr, i32 }
%struct.dn_dev_parms = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dn_neigh = type { %struct.neighbour, i16, i32, i32, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.dn_route = type { %struct.dst_entry, ptr, ptr, %struct.flowidn, i16, i16, i16, i16, i16, i16, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.flowidn = type { %struct.flowi_common, i16, i16, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.rtnode_hello_message = type <{ i8, [3 x i8], [6 x i8], i8, i16, i8, i8, i16, i8 }>
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.endnode_hello_message = type <{ i8, [3 x i8], [6 x i8], i8, i16, i8, [8 x i8], [6 x i8], i16, i8, i8, [2 x i8] }>
%struct.elist_cb_state = type { ptr, ptr, ptr, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dn_neigh_cache\00", [17 x i8] zeroinitializer }, align 32
@dn_neigh_table = dso_local global { %struct.neigh_table, [128 x i8] } { %struct.neigh_table { i32 12, i32 576, i32 2, i16 24579, ptr @dn_neigh_hash, ptr @dn_key_eq, ptr @dn_neigh_construct, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, %struct.neigh_parms { %struct.possible_net_t zeroinitializer, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr @dn_neigh_table, ptr null, i32 0, %struct.refcount_struct zeroinitializer, %struct.callback_head zeroinitializer, i32 3000, [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 100, i32 3000, i32 500, i32 6000, i32 196608, i32 0, i32 0, i32 0, i32 100], [1 x i32] zeroinitializer }, %struct.list_head zeroinitializer, i32 3000, i32 128, i32 512, i32 1024, i32 0, %struct.delayed_work zeroinitializer, %struct.delayed_work zeroinitializer, %struct.timer_list zeroinitializer, %struct.sk_buff_head zeroinitializer, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.rwlock_t zeroinitializer, i32 0, ptr null, ptr null, ptr null }, [128 x i8] zeroinitializer }, align 32
@dn_to_neigh_output.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/decnet/dn_neigh.c\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dn_neigh_router_hello.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@decnet_address = external dso_local local_unnamed_addr global i16, align 2
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"decnet_neigh\00", [19 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@dn_neigh_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @dn_neigh_seq_start, ptr @neigh_seq_stop, ptr @neigh_seq_next, ptr @dn_neigh_seq_show }, [16 x i8] zeroinitializer }, align 32
@dn_neigh_construct.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_neigh_ops = internal constant { %struct.neigh_ops, [44 x i8] } { %struct.neigh_ops { i32 12, ptr null, ptr @dn_neigh_error_report, ptr @dn_neigh_output, ptr @dn_neigh_output }, [44 x i8] zeroinitializer }, align 32
@dn_neigh_construct.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.1, ptr @.str.6, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"decnet\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dn_neigh_construct\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Trying to create neigh for hw %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dn_neigh_error_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.1, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017dn_neigh_error_report: called\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dn_neigh_error_report\00", [42 x i8] zeroinitializer }, align 32
@dn_neigh_error_report._entry_ptr = internal global ptr @dn_neigh_error_report._entry, section ".printk_index", align 4
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dn_phase3_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.1, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\012dn_phase3_output: no memory\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dn_phase3_output\00", [47 x i8] zeroinitializer }, align 32
@dn_phase3_output._entry_ptr = internal global ptr @dn_phase3_output._entry, section ".printk_index", align 4
@dn_phase3_output._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.1, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016dn_phase3_output: Increasing headroom\0A\00", [55 x i8] zeroinitializer }, align 32
@dn_phase3_output._entry_ptr.17 = internal global ptr @dn_phase3_output._entry.15, section ".printk_index", align 4
@nf_hooks_needed = external dso_local global [13 x [7 x %struct.static_key]], align 4
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@nf_hook.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_long_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.1, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\012dn_long_output: no memory\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dn_long_output\00", [17 x i8] zeroinitializer }, align 32
@dn_long_output._entry_ptr = internal global ptr @dn_long_output._entry, section ".printk_index", align 4
@dn_long_output._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.1, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016dn_long_output: Increasing headroom\0A\00", [57 x i8] zeroinitializer }, align 32
@dn_long_output._entry_ptr.28 = internal global ptr @dn_long_output._entry.26, section ".printk_index", align 4
@dn_short_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.1, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\012dn_short_output: no memory\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dn_short_output\00", [16 x i8] zeroinitializer }, align 32
@dn_short_output._entry_ptr = internal global ptr @dn_short_output._entry, section ".printk_index", align 4
@dn_short_output._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.1, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016dn_short_output: Increasing headroom\0A\00", [56 x i8] zeroinitializer }, align 32
@dn_short_output._entry_ptr.33 = internal global ptr @dn_short_output._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Addr    Flags State Use Blksize Dev\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%-7s %s%s%s   %02x    %02d  %07ld %-8s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 772]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 86, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"dn_neigh_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 78, i32 20 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 348, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 597, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"dn_neigh_seq_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 586, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant [13 x i8] c"dn_neigh_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 59, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 144, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 169, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 1011, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 695, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 723, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 313, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 319, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 229, i32 15 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 223, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 229, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 271, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 277, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 572, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 557, i32 18 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 559, i32 33 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 559, i32 39 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 560, i32 33 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 561, i32 33 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [25 x i8] c"../net/decnet/dn_neigh.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 565, i32 38 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @dn_long_output._entry, ptr @dn_long_output._entry.26, ptr @dn_long_output._entry_ptr, ptr @dn_long_output._entry_ptr.28, ptr @dn_neigh_cleanup, ptr @dn_neigh_error_report._entry, ptr @dn_neigh_error_report._entry_ptr, ptr @dn_phase3_output._entry, ptr @dn_phase3_output._entry.15, ptr @dn_phase3_output._entry_ptr, ptr @dn_phase3_output._entry_ptr.17, ptr @dn_short_output._entry, ptr @dn_short_output._entry.31, ptr @dn_short_output._entry_ptr, ptr @dn_short_output._entry_ptr.33, ptr @.str, ptr @dn_neigh_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dn_neigh_seq_ops, ptr @dn_neigh_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_neigh_table to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_neigh_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_neigh_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_neigh_error_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_phase3_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_phase3_output._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_long_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_long_output._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_short_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_short_output._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dn_neigh_hash(ptr nocapture noundef readonly %pkey, ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %hash_rnd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pkey, align 2
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %hash_rnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash_rnd, align 4
  %add1.i = add i32 %3, -559038729
  %add.i.i = add i32 %add1.i, %conv
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i, i32 %add1.i, i32 14) #13
  %sub.i.i = sub i32 0, %or.i.i.i
  %xor3.i.i = xor i32 %add.i.i, %sub.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i, i32 %sub.i.i, i32 11) #13
  %sub5.i.i = sub i32 %xor3.i.i, %or.i1.i.i
  %xor6.i.i = xor i32 %sub5.i.i, %add1.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i, i32 %sub5.i.i, i32 25) #13
  %sub8.i.i = sub i32 %xor6.i.i, %or.i2.i.i
  %xor9.i.i = xor i32 %sub8.i.i, %sub.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i, i32 %sub8.i.i, i32 16) #13
  %sub11.i.i = sub i32 %xor9.i.i, %or.i3.i.i
  %xor12.i.i = xor i32 %sub11.i.i, %sub5.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i, i32 %sub11.i.i, i32 4) #13
  %sub14.i.i = sub i32 %xor12.i.i, %or.i4.i.i
  %xor15.i.i = xor i32 %sub14.i.i, %sub8.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i, i32 %sub14.i.i, i32 14) #13
  %sub17.i.i = sub i32 %xor15.i.i, %or.i5.i.i
  %xor18.i.i = xor i32 %sub17.i.i, %sub11.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i, i32 %sub17.i.i, i32 24) #13
  %sub20.i.i = sub i32 %xor18.i.i, %or.i6.i.i
  ret i32 %sub20.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dn_key_eq(ptr nocapture noundef readonly %neigh, ptr nocapture noundef readonly %pkey) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %primary_key.i = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 27
  %0 = ptrtoint ptr %primary_key.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %primary_key.i, align 4
  %2 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pkey, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.i = icmp eq i16 %1, %3
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_neigh_construct(ptr nocapture noundef %neigh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 25
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !93) #13
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 79
  %6 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %dn_ptr, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b80 = load i1, ptr @dn_neigh_construct.__warned, align 1
  br i1 %.b80, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_neigh_construct.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @.str.2) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end9
  %call.i81 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i81, label %if.then11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i84

if.then11.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i84:                                ; preds = %if.then11
  %call1.i82 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i86

land.lhs.true.i84.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i86:                               ; preds = %land.lhs.true.i84
  %.b4.i85 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i85, label %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, label %if.then.i87

land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i87:                                      ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i87, %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, %if.then11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !104
  %8 = tail call i32 @llvm.read_register.i32(metadata !93) #13
  %and.i.i.i.i.i88 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i88 to ptr
  %preempt_count.i.i.i.i89 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i89, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i89, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %neigh_parms = getelementptr inbounds %struct.dn_dev, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %neigh_parms to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %neigh_parms, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  %call.i90 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i90, label %if.then14.rcu_read_unlock.exit100_crit_edge, label %land.lhs.true.i93

if.then14.rcu_read_unlock.exit100_crit_edge:      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit100

land.lhs.true.i93:                                ; preds = %if.then14
  %call1.i91 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91)
  %tobool.not.i92 = icmp eq i32 %call1.i91, 0
  br i1 %tobool.not.i92, label %land.lhs.true.i93.rcu_read_unlock.exit100_crit_edge, label %land.lhs.true2.i95

land.lhs.true.i93.rcu_read_unlock.exit100_crit_edge: ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit100

land.lhs.true2.i95:                               ; preds = %land.lhs.true.i93
  %.b4.i94 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i94, label %land.lhs.true2.i95.rcu_read_unlock.exit100_crit_edge, label %if.then.i96

land.lhs.true2.i95.rcu_read_unlock.exit100_crit_edge: ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit100

if.then.i96:                                      ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #13
  br label %rcu_read_unlock.exit100

rcu_read_unlock.exit100:                          ; preds = %if.then.i96, %land.lhs.true2.i95.rcu_read_unlock.exit100_crit_edge, %land.lhs.true.i93.rcu_read_unlock.exit100_crit_edge, %if.then14.rcu_read_unlock.exit100_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !104
  %14 = tail call i32 @llvm.read_register.i32(metadata !93) #13
  %and.i.i.i.i.i97 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i97 to ptr
  %preempt_count.i.i.i.i98 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i98, align 4
  %sub.i.i.i99 = add i32 %17, -1
  store volatile i32 %sub.i.i.i99, ptr %preempt_count.i.i.i.i98, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %parms16 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 2
  %18 = ptrtoint ptr %parms16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parms16, align 8
  %refcnt.i = getelementptr inbounds %struct.neigh_parms, ptr %19, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !106
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.end15.__neigh_parms_put.exit_crit_edge, !prof !107

if.end15.__neigh_parms_put.exit_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %__neigh_parms_put.exit

if.then3.i.i.i:                                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 4) #13
  br label %__neigh_parms_put.exit

__neigh_parms_put.exit:                           ; preds = %if.then3.i.i.i, %if.end15.__neigh_parms_put.exit_crit_edge
  %refcnt.i101 = getelementptr inbounds %struct.neigh_parms, ptr %13, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i101, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcnt.i101, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i101, ptr %refcnt.i101, i32 1, ptr elementtype(i32) %refcnt.i101) #13, !srcloc !108
  %asmresult.i.i.i.i.i.i102 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i102)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i102, 0
  br i1 %tobool1.not.i.i.i.i, label %__neigh_parms_put.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !107

__neigh_parms_put.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %__neigh_parms_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %__neigh_parms_put.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i102, 1
  %22 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.neigh_parms_clone.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !109

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.neigh_parms_clone.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %neigh_parms_clone.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %__neigh_parms_put.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %__neigh_parms_put.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i101, i32 noundef %.sink.i.i.i.i) #13
  br label %neigh_parms_clone.exit

neigh_parms_clone.exit:                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.neigh_parms_clone.exit_crit_edge
  %23 = ptrtoint ptr %parms16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %13, ptr %parms16, align 8
  %call.i103 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i103, label %neigh_parms_clone.exit.rcu_read_unlock.exit113_crit_edge, label %land.lhs.true.i106

neigh_parms_clone.exit.rcu_read_unlock.exit113_crit_edge: ; preds = %neigh_parms_clone.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit113

land.lhs.true.i106:                               ; preds = %neigh_parms_clone.exit
  %call1.i104 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i104)
  %tobool.not.i105 = icmp eq i32 %call1.i104, 0
  br i1 %tobool.not.i105, label %land.lhs.true.i106.rcu_read_unlock.exit113_crit_edge, label %land.lhs.true2.i108

land.lhs.true.i106.rcu_read_unlock.exit113_crit_edge: ; preds = %land.lhs.true.i106
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit113

land.lhs.true2.i108:                              ; preds = %land.lhs.true.i106
  %.b4.i107 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i107, label %land.lhs.true2.i108.rcu_read_unlock.exit113_crit_edge, label %if.then.i109

land.lhs.true2.i108.rcu_read_unlock.exit113_crit_edge: ; preds = %land.lhs.true2.i108
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit113

if.then.i109:                                     ; preds = %land.lhs.true2.i108
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #13
  br label %rcu_read_unlock.exit113

rcu_read_unlock.exit113:                          ; preds = %if.then.i109, %land.lhs.true2.i108.rcu_read_unlock.exit113_crit_edge, %land.lhs.true.i106.rcu_read_unlock.exit113_crit_edge, %neigh_parms_clone.exit.rcu_read_unlock.exit113_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !104
  %24 = tail call i32 @llvm.read_register.i32(metadata !93) #13
  %and.i.i.i.i.i110 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i110 to ptr
  %preempt_count.i.i.i.i111 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i111, align 4
  %sub.i.i.i112 = add i32 %27, -1
  store volatile i32 %sub.i.i.i112, ptr %preempt_count.i.i.i.i111, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %ops = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 21
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dn_neigh_ops, ptr %ops, align 8
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %29 = ptrtoint ptr %nud_state to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 64, ptr %nud_state, align 8
  %output = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 20
  %30 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dn_neigh_output, ptr %output, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 778, i16 %32)
  %cmp20 = icmp eq i16 %32, 778
  br i1 %cmp20, label %rcu_read_unlock.exit113.if.then23_crit_edge, label %lor.lhs.false

rcu_read_unlock.exit113.if.then23_crit_edge:      ; preds = %rcu_read_unlock.exit113
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

lor.lhs.false:                                    ; preds = %rcu_read_unlock.exit113
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 8
  %and = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.else, label %lor.lhs.false.if.then23_crit_edge

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %rcu_read_unlock.exit113.if.then23_crit_edge
  %ha = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 18
  %broadcast = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %addr_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 56
  %35 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %addr_len, align 1
  %conv25 = zext i8 %36 to i32
  %37 = call ptr @memcpy(ptr %ha, ptr %broadcast, i32 %conv25)
  br label %if.end55

if.else:                                          ; preds = %lor.lhs.false
  %38 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i16 %32, label %do.body39 [
    i16 1, label %if.else.if.then35_crit_edge
    i16 772, label %if.else.if.then35_crit_edge115
  ]

if.else.if.then35_crit_edge115:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35

if.else.if.then35_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35

if.then35:                                        ; preds = %if.else.if.then35_crit_edge, %if.else.if.then35_crit_edge115
  %ha36 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 18
  %addr = getelementptr inbounds %struct.dn_neigh, ptr %neigh, i32 0, i32 1
  %39 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %addr, align 8
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #13
  %42 = ptrtoint ptr %ha36 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -86, ptr %ha36, align 1
  %arrayidx1.i = getelementptr %struct.neighbour, ptr %neigh, i32 0, i32 18, i32 1
  %43 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr %struct.neighbour, ptr %neigh, i32 0, i32 18, i32 2
  %44 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 4, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr %struct.neighbour, ptr %neigh, i32 0, i32 18, i32 3
  %45 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx3.i, align 1
  %conv4.i = trunc i16 %41 to i8
  %arrayidx5.i = getelementptr %struct.neighbour, ptr %neigh, i32 0, i32 18, i32 4
  %46 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %47 = lshr i16 %41, 8
  %conv7.i = trunc i16 %47 to i8
  %arrayidx8.i = getelementptr %struct.neighbour, ptr %neigh, i32 0, i32 18, i32 5
  %48 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  br label %if.end55

do.body39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dn_neigh_construct.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dn_neigh_construct, %land.lhs.true45)) #13
          to label %cleanup [label %land.lhs.true45], !srcloc !110

land.lhs.true45:                                  ; preds = %do.body39
  %call46 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true45.cleanup_crit_edge, label %if.then48

land.lhs.true45.cleanup_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then48:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %type, align 16
  %conv50 = zext i16 %50 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dn_neigh_construct.descriptor, ptr noundef nonnull @.str.6, i32 noundef %conv50) #13
  br label %cleanup

if.end55:                                         ; preds = %if.then35, %if.then23
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %51 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mtu, align 4
  %sub = add i32 %52, -2
  %blksize = getelementptr inbounds %struct.dn_neigh, ptr %neigh, i32 0, i32 3
  %53 = ptrtoint ptr %blksize to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub, ptr %blksize, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then48, %land.lhs.true45.cleanup_crit_edge, %do.body39, %rcu_read_unlock.exit100, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -22, %rcu_read_unlock.exit ], [ 0, %if.end55 ], [ -22, %rcu_read_unlock.exit100 ], [ -22, %if.then48 ], [ -22, %land.lhs.true45.cleanup_crit_edge ], [ -22, %do.body39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_to_neigh_output(ptr nocapture noundef readnone %net, ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i39 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i39, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i41

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i41:                                ; preds = %entry
  %call.i40 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool1.not.i = icmp eq i32 %call.i40, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i41.skb_dst.exit_crit_edge

land.lhs.true.i41.skb_dst.exit_crit_edge:         ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i41
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i41.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %n = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %n, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !93) #13
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %skb_dst.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

skb_dst.exit.rcu_read_lock.exit_crit_edge:        ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %skb_dst.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %skb_dst.exit.rcu_read_lock.exit_crit_edge
  %dev = getelementptr inbounds %struct.neighbour, ptr %7, i32 0, i32 25
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 79
  %14 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %dn_ptr, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b38 = load i1, ptr @dn_to_neigh_output.__warned, align 1
  br i1 %.b38, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_to_neigh_output.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @.str.2) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %cmp = icmp eq ptr %15, null
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end9
  %call.i42 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i42, label %if.then11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i45

if.then11.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i45:                                ; preds = %if.then11
  %call1.i43 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i47

land.lhs.true.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i47:                               ; preds = %land.lhs.true.i45
  %.b4.i46 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46, label %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, label %if.then.i48

land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i48:                                      ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i48, %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, %if.then11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !104
  %16 = tail call i32 @llvm.read_register.i32(metadata !93) #13
  %and.i.i.i.i.i49 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i49 to ptr
  %preempt_count.i.i.i.i50 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i50, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i50, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %use_long13 = getelementptr inbounds %struct.dn_dev, ptr %15, i32 0, i32 3
  %20 = ptrtoint ptr %use_long13 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_long13, align 4
  %call.i52 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i52, label %if.end12.rcu_read_unlock.exit63_crit_edge, label %land.lhs.true.i55

if.end12.rcu_read_unlock.exit63_crit_edge:        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit63

land.lhs.true.i55:                                ; preds = %if.end12
  %call1.i53 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.rcu_read_unlock.exit63_crit_edge, label %land.lhs.true2.i57

land.lhs.true.i55.rcu_read_unlock.exit63_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit63

land.lhs.true2.i57:                               ; preds = %land.lhs.true.i55
  %.b4.i56 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56, label %land.lhs.true2.i57.rcu_read_unlock.exit63_crit_edge, label %if.then.i58

land.lhs.true2.i57.rcu_read_unlock.exit63_crit_edge: ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit63

if.then.i58:                                      ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #13
  br label %rcu_read_unlock.exit63

rcu_read_unlock.exit63:                           ; preds = %if.then.i58, %land.lhs.true2.i57.rcu_read_unlock.exit63_crit_edge, %land.lhs.true.i55.rcu_read_unlock.exit63_crit_edge, %if.end12.rcu_read_unlock.exit63_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !104
  %22 = tail call i32 @llvm.read_register.i32(metadata !93) #13
  %and.i.i.i.i.i59 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i59 to ptr
  %preempt_count.i.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i60, align 4
  %sub.i.i.i61 = add i32 %25, -1
  store volatile i32 %sub.i.i.i61, ptr %preempt_count.i.i.i.i60, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %flags = getelementptr inbounds %struct.dn_neigh, ptr %7, i32 0, i32 2
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %rcu_read_unlock.exit63
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %31 to i32
  %add2.i = add nuw nsw i32 %conv.i, 8
  %cb3.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %34 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %add2.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i, %add2.i
  br i1 %cmp.i, label %if.then.i64, label %if.then16.if.end28.i_crit_edge

if.then16.if.end28.i_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

if.then.i64:                                      ; preds = %if.then16
  %call5.i = tail call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef %add2.i) #13
  %cmp6.i = icmp eq ptr %call5.i, null
  br i1 %cmp6.i, label %do.body.i, label %if.end15.i

do.body.i:                                        ; preds = %if.then.i64
  %call9.i = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i65 = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i65, label %do.body.i.cleanup.i_crit_edge, label %do.end.i66

do.body.i.cleanup.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

do.end.i66:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #16
  br label %cleanup.i

if.end15.i:                                       ; preds = %if.then.i64
  tail call void @consume_skb(ptr noundef %skb) #13
  %call17.i = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.if.end28.i_crit_edge, label %do.end22.i

if.end15.i.if.end28.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

do.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #16
  br label %if.end28.i

cleanup.i:                                        ; preds = %do.end.i66, %do.body.i.cleanup.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

if.end28.i:                                       ; preds = %do.end22.i, %if.end15.i.if.end28.i_crit_edge, %if.then16.if.end28.i_crit_edge
  %skb.addr.1.i = phi ptr [ %skb, %if.then16.if.end28.i_crit_edge ], [ %call5.i, %if.end15.i.if.end28.i_crit_edge ], [ %call5.i, %do.end22.i ]
  %call29.i = tail call ptr @skb_push(ptr noundef %skb.addr.1.i, i32 noundef 8) #13
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i, i32 0, i32 6
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %38 = trunc i32 %37 to i16
  %conv30.i = add i16 %38, -2
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv30.i) #13
  %40 = ptrtoint ptr %call29.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %call29.i, align 2
  %add.ptr.i = getelementptr i8, ptr %call29.i, i32 2
  %rt_flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %41 = ptrtoint ptr %rt_flags.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rt_flags.i, align 4
  %43 = and i8 %42, 24
  %44 = or i8 %43, 2
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %add.ptr.i, align 1
  %46 = ptrtoint ptr %cb3.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cb3.i, align 4
  %48 = and i16 %47, -253
  %dstnode.i = getelementptr i8, ptr %call29.i, i32 3
  %49 = ptrtoint ptr %dstnode.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %48, ptr %dstnode.i, align 1
  %src.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %src.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %src.i, align 2
  %52 = and i16 %51, -253
  %srcnode.i = getelementptr i8, ptr %call29.i, i32 5
  %53 = ptrtoint ptr %srcnode.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %52, ptr %srcnode.i, align 1
  %hops.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %54 = ptrtoint ptr %hops.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %hops.i, align 4
  %56 = trunc i16 %55 to i8
  %conv41.i = and i8 %56, 63
  %forward.i = getelementptr i8, ptr %call29.i, i32 7
  %57 = ptrtoint ptr %forward.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv41.i, ptr %forward.i, align 1
  %data.i67.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i, i32 0, i32 19
  %58 = ptrtoint ptr %data.i67.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i67.i, align 4
  %head.i68.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i, i32 0, i32 18
  %60 = ptrtoint ptr %head.i68.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i68.i, align 8
  %sub.ptr.lhs.cast.i69.i = ptrtoint ptr %59 to i32
  %sub.ptr.rhs.cast.i70.i = ptrtoint ptr %61 to i32
  %sub.ptr.sub.i71.i = sub i32 %sub.ptr.lhs.cast.i69.i, %sub.ptr.rhs.cast.i70.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i71.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i, i32 0, i32 15, i32 0, i32 20
  %62 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %call.i.i = tail call fastcc i32 @nf_hook(ptr noundef %sk, ptr noundef %skb.addr.1.i, ptr noundef %64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end28.i.cleanup_crit_edge

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end28.i
  %65 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i, i32 0, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %and.i.i.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.dn_neigh_output_packet.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.dn_neigh_output_packet.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_neigh_output_packet.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.dn_neigh_output_packet.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.dn_neigh_output_packet.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_neigh_output_packet.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.dn_neigh_output_packet.exit.i.i_crit_edge, !prof !107

land.rhs.i.i.i.i.dn_neigh_output_packet.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_neigh_output_packet.exit.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %dn_neigh_output_packet.exit.i.i

dn_neigh_output_packet.exit.i.i:                  ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.dn_neigh_output_packet.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.dn_neigh_output_packet.exit.i.i_crit_edge, %if.then.i.i.dn_neigh_output_packet.exit.i.i_crit_edge
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %65, align 8
  %and25.i.i.i.i = and i32 %69, -2
  %70 = inttoptr i32 %and25.i.i.i.i to ptr
  %n.i.i.i = getelementptr inbounds %struct.dn_route, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %n.i.i.i, align 4
  %output.i.i.i = getelementptr inbounds %struct.neighbour, ptr %72, i32 0, i32 20
  %73 = ptrtoint ptr %output.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %output.i.i.i, align 4
  %call1.i.i.i = tail call i32 %74(ptr noundef %72, ptr noundef %skb.addr.1.i) #13
  br label %cleanup

if.end18:                                         ; preds = %rcu_read_unlock.exit63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool14.not = icmp eq i8 %21, 0
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  %hard_header_len.i122 = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 19
  %77 = ptrtoint ptr %hard_header_len.i122 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %hard_header_len.i122, align 2
  %conv.i123 = zext i16 %78 to i32
  br i1 %tobool14.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end18
  %add2.i70 = add nuw nsw i32 %conv.i123, 24
  %cb3.i71 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data.i.i72 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %79 = ptrtoint ptr %data.i.i72 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i.i72, align 4
  %head.i.i73 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %81 = ptrtoint ptr %head.i.i73 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %head.i.i73, align 8
  %sub.ptr.lhs.cast.i.i74 = ptrtoint ptr %80 to i32
  %sub.ptr.rhs.cast.i.i75 = ptrtoint ptr %82 to i32
  %sub.ptr.sub.i.i76 = sub i32 %sub.ptr.lhs.cast.i.i74, %sub.ptr.rhs.cast.i.i75
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i76, i32 %add2.i70)
  %cmp.i77 = icmp ult i32 %sub.ptr.sub.i.i76, %add2.i70
  br i1 %cmp.i77, label %if.then.i80, label %if.then20.if.end28.i104_crit_edge

if.then20.if.end28.i104_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i104

if.then.i80:                                      ; preds = %if.then20
  %call5.i78 = tail call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef %add2.i70) #13
  %cmp6.i79 = icmp eq ptr %call5.i78, null
  br i1 %cmp6.i79, label %do.body.i83, label %if.end15.i88

do.body.i83:                                      ; preds = %if.then.i80
  %call9.i81 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i81)
  %tobool.not.i82 = icmp eq i32 %call9.i81, 0
  br i1 %tobool.not.i82, label %do.body.i83.cleanup.i91_crit_edge, label %do.end.i85

do.body.i83.cleanup.i91_crit_edge:                ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i91

do.end.i85:                                       ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #16
  br label %cleanup.i91

if.end15.i88:                                     ; preds = %if.then.i80
  tail call void @consume_skb(ptr noundef %skb) #13
  %call17.i86 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i86)
  %tobool18.not.i87 = icmp eq i32 %call17.i86, 0
  br i1 %tobool18.not.i87, label %if.end15.i88.if.end28.i104_crit_edge, label %do.end22.i90

if.end15.i88.if.end28.i104_crit_edge:             ; preds = %if.end15.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i104

do.end22.i90:                                     ; preds = %if.end15.i88
  call void @__sanitizer_cov_trace_pc() #15
  %call24.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #16
  br label %if.end28.i104

cleanup.i91:                                      ; preds = %do.end.i85, %do.body.i83.cleanup.i91_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

if.end28.i104:                                    ; preds = %do.end22.i90, %if.end15.i88.if.end28.i104_crit_edge, %if.then20.if.end28.i104_crit_edge
  %skb.addr.1.i92 = phi ptr [ %skb, %if.then20.if.end28.i104_crit_edge ], [ %call5.i78, %if.end15.i88.if.end28.i104_crit_edge ], [ %call5.i78, %do.end22.i90 ]
  %call29.i93 = tail call ptr @skb_push(ptr noundef %skb.addr.1.i92, i32 noundef 24) #13
  %add.ptr.i94 = getelementptr i8, ptr %call29.i93, i32 3
  %len.i95 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i92, i32 0, i32 6
  %83 = ptrtoint ptr %len.i95 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len.i95, align 4
  %85 = trunc i32 %84 to i16
  %conv30.i96 = add i16 %85, -2
  %86 = tail call i16 @llvm.bswap.i16(i16 %conv30.i96) #13
  %87 = ptrtoint ptr %call29.i93 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %call29.i93, align 2
  %add.ptr31.i = getelementptr i8, ptr %call29.i93, i32 2
  %88 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -127, ptr %add.ptr31.i, align 1
  %rt_flags.i97 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %89 = ptrtoint ptr %rt_flags.i97 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %rt_flags.i97, align 4
  %91 = and i8 %90, 56
  %92 = or i8 %91, 6
  %93 = ptrtoint ptr %add.ptr.i94 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %add.ptr.i94, align 1
  %d_subarea.i = getelementptr i8, ptr %call29.i93, i32 5
  %94 = ptrtoint ptr %d_subarea.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %d_subarea.i, align 1
  %d_area.i = getelementptr i8, ptr %call29.i93, i32 4
  %95 = ptrtoint ptr %d_area.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %d_area.i, align 1
  %d_id.i = getelementptr i8, ptr %call29.i93, i32 6
  %96 = ptrtoint ptr %cb3.i71 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %cb3.i71, align 4
  %98 = tail call i16 @llvm.bswap.i16(i16 %97) #13
  %99 = ptrtoint ptr %d_id.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -86, ptr %d_id.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %call29.i93, i32 7
  %100 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %arrayidx1.i.i, align 1
  %arrayidx2.i.i = getelementptr i8, ptr %call29.i93, i32 8
  %101 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 4, ptr %arrayidx2.i.i, align 1
  %arrayidx3.i.i = getelementptr i8, ptr %call29.i93, i32 9
  %102 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = trunc i16 %98 to i8
  %arrayidx5.i.i = getelementptr i8, ptr %call29.i93, i32 10
  %103 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv4.i.i, ptr %arrayidx5.i.i, align 1
  %104 = lshr i16 %98, 8
  %conv7.i.i = trunc i16 %104 to i8
  %arrayidx8.i.i = getelementptr i8, ptr %call29.i93, i32 11
  %105 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv7.i.i, ptr %arrayidx8.i.i, align 1
  %s_subarea.i = getelementptr i8, ptr %call29.i93, i32 13
  %106 = ptrtoint ptr %s_subarea.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %s_subarea.i, align 1
  %s_area.i = getelementptr i8, ptr %call29.i93, i32 12
  %107 = ptrtoint ptr %s_area.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %s_area.i, align 1
  %s_id.i = getelementptr i8, ptr %call29.i93, i32 14
  %src.i98 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %108 = ptrtoint ptr %src.i98 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %src.i98, align 2
  %110 = tail call i16 @llvm.bswap.i16(i16 %109) #13
  %111 = ptrtoint ptr %s_id.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -86, ptr %s_id.i, align 1
  %arrayidx1.i72.i = getelementptr i8, ptr %call29.i93, i32 15
  %112 = ptrtoint ptr %arrayidx1.i72.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %arrayidx1.i72.i, align 1
  %arrayidx2.i73.i = getelementptr i8, ptr %call29.i93, i32 16
  %113 = ptrtoint ptr %arrayidx2.i73.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 4, ptr %arrayidx2.i73.i, align 1
  %arrayidx3.i74.i = getelementptr i8, ptr %call29.i93, i32 17
  %114 = ptrtoint ptr %arrayidx3.i74.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %arrayidx3.i74.i, align 1
  %conv4.i75.i = trunc i16 %110 to i8
  %arrayidx5.i76.i = getelementptr i8, ptr %call29.i93, i32 18
  %115 = ptrtoint ptr %arrayidx5.i76.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv4.i75.i, ptr %arrayidx5.i76.i, align 1
  %116 = lshr i16 %110, 8
  %conv7.i77.i = trunc i16 %116 to i8
  %arrayidx8.i78.i = getelementptr i8, ptr %call29.i93, i32 19
  %117 = ptrtoint ptr %arrayidx8.i78.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv7.i77.i, ptr %arrayidx8.i78.i, align 1
  %nl2.i = getelementptr i8, ptr %call29.i93, i32 20
  %118 = ptrtoint ptr %nl2.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %nl2.i, align 1
  %hops.i99 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %119 = ptrtoint ptr %hops.i99 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %hops.i99, align 4
  %121 = trunc i16 %120 to i8
  %conv38.i = and i8 %121, 63
  %visit_ct.i = getelementptr i8, ptr %call29.i93, i32 21
  %122 = ptrtoint ptr %visit_ct.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv38.i, ptr %visit_ct.i, align 1
  %s_class.i = getelementptr i8, ptr %call29.i93, i32 22
  %123 = ptrtoint ptr %s_class.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %s_class.i, align 1
  %pt.i = getelementptr i8, ptr %call29.i93, i32 23
  %124 = ptrtoint ptr %pt.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %pt.i, align 1
  %data.i79.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i92, i32 0, i32 19
  %125 = ptrtoint ptr %data.i79.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data.i79.i, align 4
  %head.i80.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i92, i32 0, i32 18
  %127 = ptrtoint ptr %head.i80.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %head.i80.i, align 8
  %sub.ptr.lhs.cast.i81.i = ptrtoint ptr %126 to i32
  %sub.ptr.rhs.cast.i82.i = ptrtoint ptr %128 to i32
  %sub.ptr.sub.i83.i = sub i32 %sub.ptr.lhs.cast.i81.i, %sub.ptr.rhs.cast.i82.i
  %conv.i.i100 = trunc i32 %sub.ptr.sub.i83.i to i16
  %network_header.i.i101 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i92, i32 0, i32 15, i32 0, i32 20
  %129 = ptrtoint ptr %network_header.i.i101 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv.i.i100, ptr %network_header.i.i101, align 4
  %130 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev, align 4
  %call.i.i102 = tail call fastcc i32 @nf_hook(ptr noundef %sk, ptr noundef %skb.addr.1.i92, ptr noundef %131) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i102)
  %cmp.i.i103 = icmp eq i32 %call.i.i102, 1
  br i1 %cmp.i.i103, label %if.then.i.i107, label %if.end28.i104.cleanup_crit_edge

if.end28.i104.cleanup_crit_edge:                  ; preds = %if.end28.i104
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.i107:                                   ; preds = %if.end28.i104
  %132 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i92, i32 0, i32 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 8
  %and.i.i.i.i105 = and i32 %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i105)
  %tobool.not.i.i.i.i106 = icmp eq i32 %and.i.i.i.i105, 0
  br i1 %tobool.not.i.i.i.i106, label %if.then.i.i107.dn_neigh_output_packet.exit.i.i119_crit_edge, label %land.lhs.true.i.i.i.i110

if.then.i.i107.dn_neigh_output_packet.exit.i.i119_crit_edge: ; preds = %if.then.i.i107
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_neigh_output_packet.exit.i.i119

land.lhs.true.i.i.i.i110:                         ; preds = %if.then.i.i107
  %call.i.i.i.i108 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i108)
  %tobool1.not.i.i.i.i109 = icmp eq i32 %call.i.i.i.i108, 0
  br i1 %tobool1.not.i.i.i.i109, label %land.rhs.i.i.i.i113, label %land.lhs.true.i.i.i.i110.dn_neigh_output_packet.exit.i.i119_crit_edge

land.lhs.true.i.i.i.i110.dn_neigh_output_packet.exit.i.i119_crit_edge: ; preds = %land.lhs.true.i.i.i.i110
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_neigh_output_packet.exit.i.i119

land.rhs.i.i.i.i113:                              ; preds = %land.lhs.true.i.i.i.i110
  %call2.i.i.i.i111 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i111)
  %tobool3.not.i.i.i.i112 = icmp eq i32 %call2.i.i.i.i111, 0
  br i1 %tobool3.not.i.i.i.i112, label %do.end.i.i.i.i114, label %land.rhs.i.i.i.i113.dn_neigh_output_packet.exit.i.i119_crit_edge, !prof !107

land.rhs.i.i.i.i113.dn_neigh_output_packet.exit.i.i119_crit_edge: ; preds = %land.rhs.i.i.i.i113
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_neigh_output_packet.exit.i.i119

do.end.i.i.i.i114:                                ; preds = %land.rhs.i.i.i.i113
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %dn_neigh_output_packet.exit.i.i119

dn_neigh_output_packet.exit.i.i119:               ; preds = %do.end.i.i.i.i114, %land.rhs.i.i.i.i113.dn_neigh_output_packet.exit.i.i119_crit_edge, %land.lhs.true.i.i.i.i110.dn_neigh_output_packet.exit.i.i119_crit_edge, %if.then.i.i107.dn_neigh_output_packet.exit.i.i119_crit_edge
  %135 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %132, align 8
  %and25.i.i.i.i115 = and i32 %136, -2
  %137 = inttoptr i32 %and25.i.i.i.i115 to ptr
  %n.i.i.i116 = getelementptr inbounds %struct.dn_route, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %n.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %n.i.i.i116, align 4
  %output.i.i.i117 = getelementptr inbounds %struct.neighbour, ptr %139, i32 0, i32 20
  %140 = ptrtoint ptr %output.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %output.i.i.i117, align 4
  %call1.i.i.i118 = tail call i32 %141(ptr noundef %139, ptr noundef %skb.addr.1.i92) #13
  br label %cleanup

if.else:                                          ; preds = %if.end18
  %add2.i124 = add nuw nsw i32 %conv.i123, 8
  %cb3.i125 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data.i.i126 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %142 = ptrtoint ptr %data.i.i126 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data.i.i126, align 4
  %head.i.i127 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %144 = ptrtoint ptr %head.i.i127 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %head.i.i127, align 8
  %sub.ptr.lhs.cast.i.i128 = ptrtoint ptr %143 to i32
  %sub.ptr.rhs.cast.i.i129 = ptrtoint ptr %145 to i32
  %sub.ptr.sub.i.i130 = sub i32 %sub.ptr.lhs.cast.i.i128, %sub.ptr.rhs.cast.i.i129
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i130, i32 %add2.i124)
  %cmp.i131 = icmp ult i32 %sub.ptr.sub.i.i130, %add2.i124
  br i1 %cmp.i131, label %if.then.i134, label %if.else.if.end28.i161_crit_edge

if.else.if.end28.i161_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i161

if.then.i134:                                     ; preds = %if.else
  %call5.i132 = tail call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef %add2.i124) #13
  %cmp6.i133 = icmp eq ptr %call5.i132, null
  br i1 %cmp6.i133, label %do.body.i137, label %if.end15.i142

do.body.i137:                                     ; preds = %if.then.i134
  %call9.i135 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i135)
  %tobool.not.i136 = icmp eq i32 %call9.i135, 0
  br i1 %tobool.not.i136, label %do.body.i137.cleanup.i145_crit_edge, label %do.end.i139

do.body.i137.cleanup.i145_crit_edge:              ; preds = %do.body.i137
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i145

do.end.i139:                                      ; preds = %do.body.i137
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #16
  br label %cleanup.i145

if.end15.i142:                                    ; preds = %if.then.i134
  tail call void @consume_skb(ptr noundef %skb) #13
  %call17.i140 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i140)
  %tobool18.not.i141 = icmp eq i32 %call17.i140, 0
  br i1 %tobool18.not.i141, label %if.end15.i142.if.end28.i161_crit_edge, label %do.end22.i144

if.end15.i142.if.end28.i161_crit_edge:            ; preds = %if.end15.i142
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i161

do.end22.i144:                                    ; preds = %if.end15.i142
  call void @__sanitizer_cov_trace_pc() #15
  %call24.i143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #16
  br label %if.end28.i161

cleanup.i145:                                     ; preds = %do.end.i139, %do.body.i137.cleanup.i145_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

if.end28.i161:                                    ; preds = %do.end22.i144, %if.end15.i142.if.end28.i161_crit_edge, %if.else.if.end28.i161_crit_edge
  %skb.addr.1.i146 = phi ptr [ %skb, %if.else.if.end28.i161_crit_edge ], [ %call5.i132, %if.end15.i142.if.end28.i161_crit_edge ], [ %call5.i132, %do.end22.i144 ]
  %call29.i147 = tail call ptr @skb_push(ptr noundef %skb.addr.1.i146, i32 noundef 8) #13
  %len.i148 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i146, i32 0, i32 6
  %146 = ptrtoint ptr %len.i148 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %len.i148, align 4
  %148 = trunc i32 %147 to i16
  %conv30.i149 = add i16 %148, -2
  %149 = tail call i16 @llvm.bswap.i16(i16 %conv30.i149) #13
  %150 = ptrtoint ptr %call29.i147 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %149, ptr %call29.i147, align 2
  %add.ptr.i150 = getelementptr i8, ptr %call29.i147, i32 2
  %rt_flags.i151 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %151 = ptrtoint ptr %rt_flags.i151 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %rt_flags.i151, align 4
  %153 = and i8 %152, 24
  %154 = or i8 %153, 2
  %155 = ptrtoint ptr %add.ptr.i150 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %add.ptr.i150, align 1
  %156 = ptrtoint ptr %cb3.i125 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %cb3.i125, align 4
  %dstnode.i152 = getelementptr i8, ptr %call29.i147, i32 3
  %158 = ptrtoint ptr %dstnode.i152 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 2)
  store i16 %157, ptr %dstnode.i152, align 1
  %src.i153 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %159 = ptrtoint ptr %src.i153 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %src.i153, align 2
  %srcnode.i154 = getelementptr i8, ptr %call29.i147, i32 5
  %161 = ptrtoint ptr %srcnode.i154 to i32
  call void @__asan_storeN_noabort(i32 %161, i32 2)
  store i16 %160, ptr %srcnode.i154, align 1
  %hops.i155 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %162 = ptrtoint ptr %hops.i155 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %hops.i155, align 4
  %164 = trunc i16 %163 to i8
  %conv35.i = and i8 %164, 63
  %forward.i156 = getelementptr i8, ptr %call29.i147, i32 7
  %165 = ptrtoint ptr %forward.i156 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv35.i, ptr %forward.i156, align 1
  %data.i61.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i146, i32 0, i32 19
  %166 = ptrtoint ptr %data.i61.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %data.i61.i, align 4
  %head.i62.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i146, i32 0, i32 18
  %168 = ptrtoint ptr %head.i62.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %head.i62.i, align 8
  %sub.ptr.lhs.cast.i63.i = ptrtoint ptr %167 to i32
  %sub.ptr.rhs.cast.i64.i = ptrtoint ptr %169 to i32
  %sub.ptr.sub.i65.i = sub i32 %sub.ptr.lhs.cast.i63.i, %sub.ptr.rhs.cast.i64.i
  %conv.i.i157 = trunc i32 %sub.ptr.sub.i65.i to i16
  %network_header.i.i158 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i146, i32 0, i32 15, i32 0, i32 20
  %170 = ptrtoint ptr %network_header.i.i158 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv.i.i157, ptr %network_header.i.i158, align 4
  %171 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev, align 4
  %call.i.i159 = tail call fastcc i32 @nf_hook(ptr noundef %sk, ptr noundef %skb.addr.1.i146, ptr noundef %172) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i159)
  %cmp.i.i160 = icmp eq i32 %call.i.i159, 1
  br i1 %cmp.i.i160, label %if.then.i.i164, label %if.end28.i161.cleanup_crit_edge

if.end28.i161.cleanup_crit_edge:                  ; preds = %if.end28.i161
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.i164:                                   ; preds = %if.end28.i161
  %173 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i146, i32 0, i32 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %173, align 8
  %and.i.i.i.i162 = and i32 %175, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i162)
  %tobool.not.i.i.i.i163 = icmp eq i32 %and.i.i.i.i162, 0
  br i1 %tobool.not.i.i.i.i163, label %if.then.i.i164.dn_neigh_output_packet.exit.i.i176_crit_edge, label %land.lhs.true.i.i.i.i167

if.then.i.i164.dn_neigh_output_packet.exit.i.i176_crit_edge: ; preds = %if.then.i.i164
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_neigh_output_packet.exit.i.i176

land.lhs.true.i.i.i.i167:                         ; preds = %if.then.i.i164
  %call.i.i.i.i165 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i165)
  %tobool1.not.i.i.i.i166 = icmp eq i32 %call.i.i.i.i165, 0
  br i1 %tobool1.not.i.i.i.i166, label %land.rhs.i.i.i.i170, label %land.lhs.true.i.i.i.i167.dn_neigh_output_packet.exit.i.i176_crit_edge

land.lhs.true.i.i.i.i167.dn_neigh_output_packet.exit.i.i176_crit_edge: ; preds = %land.lhs.true.i.i.i.i167
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_neigh_output_packet.exit.i.i176

land.rhs.i.i.i.i170:                              ; preds = %land.lhs.true.i.i.i.i167
  %call2.i.i.i.i168 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i168)
  %tobool3.not.i.i.i.i169 = icmp eq i32 %call2.i.i.i.i168, 0
  br i1 %tobool3.not.i.i.i.i169, label %do.end.i.i.i.i171, label %land.rhs.i.i.i.i170.dn_neigh_output_packet.exit.i.i176_crit_edge, !prof !107

land.rhs.i.i.i.i170.dn_neigh_output_packet.exit.i.i176_crit_edge: ; preds = %land.rhs.i.i.i.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_neigh_output_packet.exit.i.i176

do.end.i.i.i.i171:                                ; preds = %land.rhs.i.i.i.i170
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %dn_neigh_output_packet.exit.i.i176

dn_neigh_output_packet.exit.i.i176:               ; preds = %do.end.i.i.i.i171, %land.rhs.i.i.i.i170.dn_neigh_output_packet.exit.i.i176_crit_edge, %land.lhs.true.i.i.i.i167.dn_neigh_output_packet.exit.i.i176_crit_edge, %if.then.i.i164.dn_neigh_output_packet.exit.i.i176_crit_edge
  %176 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %173, align 8
  %and25.i.i.i.i172 = and i32 %177, -2
  %178 = inttoptr i32 %and25.i.i.i.i172 to ptr
  %n.i.i.i173 = getelementptr inbounds %struct.dn_route, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %n.i.i.i173 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %n.i.i.i173, align 4
  %output.i.i.i174 = getelementptr inbounds %struct.neighbour, ptr %180, i32 0, i32 20
  %181 = ptrtoint ptr %output.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %output.i.i.i174, align 4
  %call1.i.i.i175 = tail call i32 %182(ptr noundef %180, ptr noundef %skb.addr.1.i146) #13
  br label %cleanup

cleanup:                                          ; preds = %dn_neigh_output_packet.exit.i.i176, %if.end28.i161.cleanup_crit_edge, %cleanup.i145, %dn_neigh_output_packet.exit.i.i119, %if.end28.i104.cleanup_crit_edge, %cleanup.i91, %dn_neigh_output_packet.exit.i.i, %if.end28.i.cleanup_crit_edge, %cleanup.i, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -22, %rcu_read_unlock.exit ], [ -105, %cleanup.i ], [ %call1.i.i.i, %dn_neigh_output_packet.exit.i.i ], [ %call.i.i, %if.end28.i.cleanup_crit_edge ], [ -105, %cleanup.i91 ], [ %call1.i.i.i118, %dn_neigh_output_packet.exit.i.i119 ], [ %call.i.i102, %if.end28.i104.cleanup_crit_edge ], [ -105, %cleanup.i145 ], [ %call1.i.i.i175, %dn_neigh_output_packet.exit.i.i176 ], [ %call.i.i159, %if.end28.i161.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_neigh_pointopoint_hello(ptr noundef %skb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_neigh_router_hello(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) local_unnamed_addr #2 align 64 {
entry:
  %src = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %src) #13
  %add.ptr.i = getelementptr %struct.rtnode_hello_message, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %add.ptr.i, align 1
  %4 = ptrtoint ptr %src to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %src, align 2
  %5 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call.i109 = call ptr @neigh_lookup(ptr noundef nonnull @dn_neigh_table, ptr noundef nonnull %src, ptr noundef %7) #13
  %tobool.not.i = icmp eq ptr %call.i109, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call.i.i = call ptr @__neigh_create(ptr noundef nonnull @dn_neigh_table, ptr noundef nonnull %src, ptr noundef %7, i1 noundef zeroext true) #13
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %tobool.not = icmp eq ptr %call.i.i, null
  %or.cond = or i1 %cmp.i.i, %tobool.not
  br i1 %or.cond, label %if.end.i.if.end79_crit_edge, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i.if.end79_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i149 = phi ptr [ %call.i109, %entry.if.then_crit_edge ], [ %call.i.i, %if.end.i.if.then_crit_edge ]
  %lock = getelementptr inbounds %struct.neighbour, ptr %retval.0.i149, i32 0, i32 5
  call void @_raw_write_lock(ptr noundef %lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %used = getelementptr inbounds %struct.neighbour, ptr %retval.0.i149, i32 0, i32 10
  %9 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %used, align 8
  %dev = getelementptr inbounds %struct.neighbour, ptr %retval.0.i149, i32 0, i32 25
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 79
  %12 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %dn_ptr, align 4
  %call4 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.then.do.end12_crit_edge

if.then.do.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

land.lhs.true:                                    ; preds = %if.then
  %call6 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true8

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b108 = load i1, ptr @dn_neigh_router_hello.__warned, align 1
  br i1 %.b108, label %land.lhs.true8.do.end12_crit_edge, label %if.then10

land.lhs.true8.do.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_neigh_router_hello.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 401, ptr noundef nonnull @.str.2) #13
  br label %do.end12

do.end12:                                         ; preds = %if.then10, %land.lhs.true8.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %if.then.do.end12_crit_edge
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %retval.0.i149, i32 0, i32 12
  %14 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nud_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool14.not = icmp sgt i8 %15, -1
  br i1 %tobool14.not, label %if.then15, label %do.end12.if.end35_crit_edge

do.end12.if.end35_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then15:                                        ; preds = %do.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %updated = getelementptr inbounds %struct.neighbour, ptr %retval.0.i149, i32 0, i32 4
  %17 = ptrtoint ptr %updated to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %updated, align 8
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 32
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp = icmp eq i16 %21, 1
  br i1 %cmp, label %if.then19, label %if.then15.if.end22_crit_edge

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %ha = getelementptr inbounds %struct.neighbour, ptr %retval.0.i149, i32 0, i32 18
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %24 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %25 to i32
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %conv.i.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %26 = call ptr @memcpy(ptr %ha, ptr %h_source, i32 6)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then15.if.end22_crit_edge
  %blksize = getelementptr inbounds %struct.rtnode_hello_message, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %blksize to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %blksize, align 1
  %29 = call i16 @llvm.bswap.i16(i16 %28)
  %conv23 = zext i16 %29 to i32
  %blksize24 = getelementptr inbounds %struct.dn_neigh, ptr %retval.0.i149, i32 0, i32 3
  %30 = ptrtoint ptr %blksize24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv23, ptr %blksize24, align 8
  %priority = getelementptr inbounds %struct.rtnode_hello_message, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %priority, align 1
  %priority25 = getelementptr inbounds %struct.dn_neigh, ptr %retval.0.i149, i32 0, i32 4
  %33 = ptrtoint ptr %priority25 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %priority25, align 4
  %flags = getelementptr inbounds %struct.dn_neigh, ptr %retval.0.i149, i32 0, i32 2
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and26 = and i32 %35, -5
  store i32 %and26, ptr %flags, align 4
  %iinfo = getelementptr inbounds %struct.rtnode_hello_message, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %iinfo to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %iinfo, align 1
  %38 = and i8 %37, 3
  %and28 = zext i8 %38 to i32
  %39 = zext i32 %and28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %and28, label %if.end22.if.end35_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb32
  ]

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %and30 = and i32 %35, -8
  %or = or i32 %and30, 1
  br label %if.end35.sink.split

sw.bb32:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %or34 = or i32 %and26, 2
  br label %if.end35.sink.split

if.end35.sink.split:                              ; preds = %sw.bb32, %sw.bb
  %or.sink = phi i32 [ %or, %sw.bb ], [ %or34, %sw.bb32 ]
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.sink, ptr %flags, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.end22.if.end35_crit_edge, %do.end12.if.end35_crit_edge
  %41 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %src, align 2
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @decnet_address to i32))
  %43 = load i16, ptr @decnet_address, align 2
  %44 = xor i16 %43, %42
  %45 = and i16 %44, 252
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp39 = icmp eq i16 %45, 0
  br i1 %cmp39, label %if.then41, label %if.end35.if.end77_crit_edge

if.end35.if.end77_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then41:                                        ; preds = %if.end35
  %router = getelementptr inbounds %struct.dn_dev, ptr %13, i32 0, i32 8
  %46 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %router, align 4
  %tobool42.not = icmp eq ptr %47, null
  br i1 %tobool42.not, label %if.then.i, label %if.else

if.then.i:                                        ; preds = %if.then41
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %retval.0.i149, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %48 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !108
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !107

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %49 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %.not.i.i.i.i = icmp sgt i32 %49, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.neigh_clone.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !109

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.neigh_clone.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %neigh_clone.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %neigh_clone.exit

neigh_clone.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.neigh_clone.exit_crit_edge
  %50 = ptrtoint ptr %router to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %retval.0.i149, ptr %router, align 4
  br label %if.end77

if.else:                                          ; preds = %if.then41
  %priority46 = getelementptr inbounds %struct.rtnode_hello_message, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %priority46 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %priority46, align 1
  %priority49 = getelementptr inbounds %struct.dn_neigh, ptr %47, i32 0, i32 4
  %53 = ptrtoint ptr %priority49 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %priority49, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %54)
  %cmp51 = icmp ugt i8 %52, %54
  br i1 %cmp51, label %if.then.i117, label %if.else.if.end77_crit_edge

if.else.if.end77_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then.i117:                                     ; preds = %if.else
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef %router, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !111
  %refcnt.i113 = getelementptr inbounds %struct.neighbour, ptr %retval.0.i149, i32 0, i32 6
  %call.i.i.i.i.i.i114 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i113, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refcnt.i113, i32 1, i32 3, i32 1) #13
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i113, ptr %refcnt.i113, i32 1, ptr elementtype(i32) %refcnt.i113) #13, !srcloc !108
  %asmresult.i.i.i.i.i.i115 = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i115)
  %tobool1.not.i.i.i.i116 = icmp eq i32 %asmresult.i.i.i.i.i.i115, 0
  br i1 %tobool1.not.i.i.i.i116, label %if.then.i117.if.end15.sink.split.i.i.i.i122_crit_edge, label %if.else.i.i.i.i120, !prof !107

if.then.i117.if.end15.sink.split.i.i.i.i122_crit_edge: ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i122

if.else.i.i.i.i120:                               ; preds = %if.then.i117
  %add.i.i.i.i118 = add i32 %asmresult.i.i.i.i.i.i115, 1
  %56 = or i32 %add.i.i.i.i118, %asmresult.i.i.i.i.i.i115
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %.not.i.i.i.i119 = icmp sgt i32 %56, -1
  br i1 %.not.i.i.i.i119, label %if.else.i.i.i.i120.neigh_clone.exit124_crit_edge, label %if.else.i.i.i.i120.if.end15.sink.split.i.i.i.i122_crit_edge, !prof !109

if.else.i.i.i.i120.if.end15.sink.split.i.i.i.i122_crit_edge: ; preds = %if.else.i.i.i.i120
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i122

if.else.i.i.i.i120.neigh_clone.exit124_crit_edge: ; preds = %if.else.i.i.i.i120
  call void @__sanitizer_cov_trace_pc() #15
  br label %neigh_clone.exit124

if.end15.sink.split.i.i.i.i122:                   ; preds = %if.else.i.i.i.i120.if.end15.sink.split.i.i.i.i122_crit_edge, %if.then.i117.if.end15.sink.split.i.i.i.i122_crit_edge
  %.sink.i.i.i.i121 = phi i32 [ 2, %if.then.i117.if.end15.sink.split.i.i.i.i122_crit_edge ], [ 1, %if.else.i.i.i.i120.if.end15.sink.split.i.i.i.i122_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i113, i32 noundef %.sink.i.i.i.i121) #13
  br label %neigh_clone.exit124

neigh_clone.exit124:                              ; preds = %if.end15.sink.split.i.i.i.i122, %if.else.i.i.i.i120.neigh_clone.exit124_crit_edge
  %57 = ptrtoint ptr %retval.0.i149 to i32
  call void @llvm.prefetch.p0(ptr %router, i32 1, i32 3, i32 1) #13
  %58 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %57, ptr %router) #13, !srcloc !112
  %asmresult.i = extractvalue { i32, i32 } %58, 0
  %59 = inttoptr i32 %asmresult.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !113
  %refcnt.i125 = getelementptr inbounds %struct.neighbour, ptr %59, i32 0, i32 6
  %call.i.i.i.i.i.i126 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i125, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  call void @llvm.prefetch.p0(ptr %refcnt.i125, i32 1, i32 3, i32 1) #13
  %60 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i125, ptr %refcnt.i125, i32 1, ptr elementtype(i32) %refcnt.i125) #13, !srcloc !106
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i128, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %neigh_clone.exit124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i127 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i127, label %if.end5.i.i.i.i.if.end77_crit_edge, label %if.then10.i.i.i.i, !prof !109

if.end5.i.i.i.i.if.end77_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i125, i32 noundef 3) #13
  br label %if.end77

if.then.i128:                                     ; preds = %neigh_clone.exit124
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !114
  call void @neigh_destroy(ptr noundef %59) #13
  br label %if.end77

if.end77:                                         ; preds = %if.then.i128, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end77_crit_edge, %if.else.if.end77_crit_edge, %neigh_clone.exit, %if.end35.if.end77_crit_edge
  call void @_raw_write_unlock(ptr noundef %lock) #13
  %refcnt.i130 = getelementptr inbounds %struct.neighbour, ptr %retval.0.i149, i32 0, i32 6
  %call.i.i.i.i.i.i131 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i130, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  call void @llvm.prefetch.p0(ptr %refcnt.i130, i32 1, i32 3, i32 1) #13
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i130, ptr %refcnt.i130, i32 1, ptr elementtype(i32) %refcnt.i130) #13, !srcloc !106
  %asmresult.i.i.i.i.i.i.i132 = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i132)
  %cmp.i.i.i.i133 = icmp eq i32 %asmresult.i.i.i.i.i.i.i132, 1
  br i1 %cmp.i.i.i.i133, label %if.then.i137, label %if.end5.i.i.i.i135

if.end5.i.i.i.i135:                               ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i132)
  %.not.i.i.i.i134 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i132, 0
  br i1 %.not.i.i.i.i134, label %if.end5.i.i.i.i135.if.end79_crit_edge, label %if.then10.i.i.i.i136, !prof !109

if.end5.i.i.i.i135.if.end79_crit_edge:            ; preds = %if.end5.i.i.i.i135
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then10.i.i.i.i136:                             ; preds = %if.end5.i.i.i.i135
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i130, i32 noundef 3) #13
  br label %if.end79

if.then.i137:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !114
  call void @neigh_destroy(ptr noundef nonnull %retval.0.i149) #13
  br label %if.end79

if.end79:                                         ; preds = %if.then.i137, %if.then10.i.i.i.i136, %if.end5.i.i.i.i135.if.end79_crit_edge, %if.end.i.if.end79_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %src) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_neigh_endnode_hello(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) local_unnamed_addr #2 align 64 {
entry:
  %src = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %src) #13
  %add.ptr.i = getelementptr %struct.endnode_hello_message, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %add.ptr.i, align 1
  %4 = ptrtoint ptr %src to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %src, align 2
  %5 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call.i = call ptr @neigh_lookup(ptr noundef nonnull @dn_neigh_table, ptr noundef nonnull %src, ptr noundef %7) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call.i.i = call ptr @__neigh_create(ptr noundef nonnull @dn_neigh_table, ptr noundef nonnull %src, ptr noundef %7, i1 noundef zeroext true) #13
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %tobool.not = icmp eq ptr %call.i.i, null
  %or.cond = or i1 %cmp.i.i, %tobool.not
  br i1 %or.cond, label %if.end.i.if.end14_crit_edge, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i37 = phi ptr [ %call.i, %entry.if.then_crit_edge ], [ %call.i.i, %if.end.i.if.then_crit_edge ]
  %lock = getelementptr inbounds %struct.neighbour, ptr %retval.0.i37, i32 0, i32 5
  call void @_raw_write_lock(ptr noundef %lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %used = getelementptr inbounds %struct.neighbour, ptr %retval.0.i37, i32 0, i32 10
  %9 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %used, align 8
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %retval.0.i37, i32 0, i32 12
  %10 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nud_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool2.not = icmp sgt i8 %11, -1
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then3:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %updated = getelementptr inbounds %struct.neighbour, ptr %retval.0.i37, i32 0, i32 4
  %13 = ptrtoint ptr %updated to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %updated, align 8
  %dev = getelementptr inbounds %struct.neighbour, ptr %retval.0.i37, i32 0, i32 25
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 32
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %17)
  %cmp = icmp eq i16 %17, 1
  br i1 %cmp, label %if.then6, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %ha = getelementptr inbounds %struct.neighbour, ptr %retval.0.i37, i32 0, i32 18
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %20 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %21 to i32
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %conv.i.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %22 = call ptr @memcpy(ptr %ha, ptr %h_source, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then3.if.end_crit_edge
  %flags = getelementptr inbounds %struct.dn_neigh, ptr %retval.0.i37, i32 0, i32 2
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and9 = and i32 %24, -4
  store i32 %and9, ptr %flags, align 4
  %blksize = getelementptr inbounds %struct.endnode_hello_message, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %blksize to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %blksize, align 1
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %conv10 = zext i16 %27 to i32
  %blksize11 = getelementptr inbounds %struct.dn_neigh, ptr %retval.0.i37, i32 0, i32 3
  %28 = ptrtoint ptr %blksize11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv10, ptr %blksize11, align 8
  %priority = getelementptr inbounds %struct.dn_neigh, ptr %retval.0.i37, i32 0, i32 4
  %29 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %priority, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then.if.end12_crit_edge
  call void @_raw_write_unlock(ptr noundef %lock) #13
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %retval.0.i37, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !106
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end14_crit_edge, label %if.then10.i.i.i.i, !prof !109

if.end5.i.i.i.i.if.end14_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %if.end14

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !114
  call void @neigh_destroy(ptr noundef nonnull %retval.0.i37) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end14_crit_edge, %if.end.i.if.end14_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %src) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_neigh_elist(ptr noundef %dev, ptr noundef %ptr, i32 noundef %n) local_unnamed_addr #2 align 64 {
entry:
  %state = alloca %struct.elist_cb_state, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %state) #13
  %0 = getelementptr inbounds %struct.elist_cb_state, ptr %state, i32 0, i32 1
  %1 = getelementptr inbounds %struct.elist_cb_state, ptr %state, i32 0, i32 2
  %2 = getelementptr inbounds %struct.elist_cb_state, ptr %state, i32 0, i32 3
  %3 = getelementptr inbounds %struct.elist_cb_state, ptr %state, i32 0, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %state, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %n, ptr %3, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ptr, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ptr, ptr %1, align 4
  call void @neigh_for_each(ptr noundef nonnull @dn_neigh_table, ptr noundef nonnull @neigh_elist_cb, ptr noundef nonnull %state) #13
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %state) #13
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neigh_elist_cb(ptr nocapture noundef readonly %neigh, ptr nocapture noundef %_info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 25
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_info, align 4
  %cmp.not = icmp eq ptr %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.dn_neigh, ptr %neigh, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %t = getelementptr inbounds %struct.elist_cb_state, ptr %_info, i32 0, i32 3
  %6 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t, align 4
  %n = getelementptr inbounds %struct.elist_cb_state, ptr %_info, i32 0, i32 4
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp4 = icmp eq i32 %7, %9
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %priority = getelementptr inbounds %struct.dn_neigh, ptr %neigh, i32 0, i32 4
  %10 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp21.i = icmp sgt i32 %7, 0
  br i1 %cmp21.i, label %for.body.preheader.i, label %if.then5.dn_find_slot.exit_crit_edge

if.then5.dn_find_slot.exit_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_find_slot.exit

for.body.preheader.i:                             ; preds = %if.then5
  %ptr = getelementptr inbounds %struct.elist_cb_state, ptr %_info, i32 0, i32 1
  %12 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %min.024.i = phi ptr [ %min.1.i, %if.end.i.for.body.i_crit_edge ], [ null, %for.body.preheader.i ]
  %i.023.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %base.addr.022.i = phi ptr [ %add.ptr4.i, %if.end.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %tobool.not.i = icmp eq ptr %min.024.i, null
  br i1 %tobool.not.i, label %for.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %14 = ptrtoint ptr %base.addr.022.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %base.addr.022.i, align 1
  %16 = ptrtoint ptr %min.024.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %min.024.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp2.i = icmp ult i8 %15, %17
  br i1 %cmp2.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %min.1.i = phi ptr [ %base.addr.022.i, %if.then.i ], [ %min.024.i, %lor.lhs.false.i.if.end.i_crit_edge ]
  %add.ptr4.i = getelementptr i8, ptr %base.addr.022.i, i32 7
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  %tobool5.not.i = icmp eq ptr %min.1.i, null
  br i1 %tobool5.not.i, label %for.end.i.dn_find_slot.exit_crit_edge, label %if.end7.i

for.end.i.dn_find_slot.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_find_slot.exit

if.end7.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %min.1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %min.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %11)
  %cmp9.i = icmp ult i8 %19, %11
  %add.ptr11.i = getelementptr i8, ptr %min.1.i, i32 -6
  %spec.select.i = select i1 %cmp9.i, ptr %add.ptr11.i, ptr null
  br label %dn_find_slot.exit

dn_find_slot.exit:                                ; preds = %if.end7.i, %for.end.i.dn_find_slot.exit_crit_edge, %if.then5.dn_find_slot.exit_crit_edge
  %retval.0.i = phi ptr [ %spec.select.i, %if.end7.i ], [ null, %for.end.i.dn_find_slot.exit_crit_edge ], [ null, %if.then5.dn_find_slot.exit_crit_edge ]
  %rs = getelementptr inbounds %struct.elist_cb_state, ptr %_info, i32 0, i32 2
  %20 = ptrtoint ptr %rs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.i, ptr %rs, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add i32 %7, 1
  %21 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc, ptr %t, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %dn_find_slot.exit
  %rs9 = getelementptr inbounds %struct.elist_cb_state, ptr %_info, i32 0, i32 2
  %22 = ptrtoint ptr %rs9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rs9, align 4
  %cmp10 = icmp eq ptr %23, null
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %addr = getelementptr inbounds %struct.dn_neigh, ptr %neigh, i32 0, i32 1
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr, align 8
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #13
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -86, ptr %23, align 1
  %arrayidx1.i = getelementptr i8, ptr %23, i32 1
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %23, i32 2
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 4, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %23, i32 3
  %30 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx3.i, align 1
  %conv4.i = trunc i16 %26 to i8
  %arrayidx5.i = getelementptr i8, ptr %23, i32 4
  %31 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %32 = lshr i16 %26, 8
  %conv7.i = trunc i16 %32 to i8
  %arrayidx8.i = getelementptr i8, ptr %23, i32 5
  %33 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  %34 = ptrtoint ptr %rs9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rs9, align 4
  %add.ptr16 = getelementptr i8, ptr %35, i32 6
  store ptr %add.ptr16, ptr %rs9, align 4
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %36 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nud_state, align 8
  %38 = and i8 %37, -62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool19.not = icmp eq i8 %38, 0
  %conv20 = select i1 %tobool19.not, i8 0, i8 -128
  %39 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv20, ptr %add.ptr16, align 1
  %priority22 = getelementptr inbounds %struct.dn_neigh, ptr %neigh, i32 0, i32 4
  %40 = ptrtoint ptr %priority22 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %priority22, align 4
  %42 = ptrtoint ptr %rs9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rs9, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %or48 = or i8 %45, %41
  store i8 %or48, ptr %43, align 1
  %46 = load ptr, ptr %rs9, align 4
  %incdec.ptr = getelementptr i8, ptr %46, i32 1
  store ptr %incdec.ptr, ptr %rs9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_neigh_init() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @neigh_table_init(i32 noundef 2, ptr noundef nonnull @dn_neigh_table) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %0, ptr noundef nonnull @dn_neigh_seq_ops, i32 noundef 28, ptr noundef null) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_table_init(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_neigh_cleanup() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef %0) #13
  %call = tail call i32 @neigh_table_clear(i32 noundef 2, ptr noundef nonnull @dn_neigh_table) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_table_clear(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_neigh_error_report(ptr nocapture noundef readnone %neigh, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #16
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_neigh_output(ptr noundef %neigh, ptr noundef %skb) #2 align 64 {
entry:
  %mac_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %dev1 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 25
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #13
  %8 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 1
  %9 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 2
  %10 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 3
  %11 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 4
  %12 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 5
  %rt_local_src = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 7
  %13 = ptrtoint ptr %rt_local_src to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rt_local_src, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #13
  %16 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -86, ptr %mac_addr, align 1
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %8, align 1
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %9, align 1
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %10, align 1
  %conv4.i = trunc i16 %15 to i8
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv4.i, ptr %11, align 1
  %21 = lshr i16 %15, 8
  %conv7.i = trunc i16 %21 to i8
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv7.i, ptr %12, align 1
  %ha_lock = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 17
  %dep_map.c48.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 17, i32 0, i32 0, i32 1
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %ha = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 18
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 49
  br label %do.body

do.body:                                          ; preds = %dev_hard_header.exit.do.body_crit_edge, %skb_dst.exit
  %23 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !115
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @trace_hardirqs_off() #13
  %24 = call ptr @llvm.returnaddress(i32 0) #13
  %25 = ptrtoint ptr %24 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %25) #13
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %25) #13
  call void @trace_hardirqs_on() #13
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %26 = call ptr @llvm.returnaddress(i32 0) #13
  %27 = ptrtoint ptr %26 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %27) #13
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %27) #13
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %28 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !116
  %and.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !107

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #13, !srcloc !117
  %29 = ptrtoint ptr %ha_lock to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %ha_lock, align 4
  %and18.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i20_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i20_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i20

seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_seqbegin.exit

do.end.i20:                                       ; preds = %do.end.i20.do.end.i20_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i20_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !119
  %31 = ptrtoint ptr %ha_lock to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %ha_lock, align 4
  %and.i18 = and i32 %32, 1
  %tobool.not.i19 = icmp eq i32 %and.i18, 0
  br i1 %tobool.not.i19, label %do.end.i20.read_seqbegin.exit_crit_edge, label %do.end.i20.do.end.i20_crit_edge

do.end.i20.do.end.i20_crit_edge:                  ; preds = %do.end.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i20

do.end.i20.read_seqbegin.exit_crit_edge:          ; preds = %do.end.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_seqbegin.exit

read_seqbegin.exit:                               ; preds = %do.end.i20.read_seqbegin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge
  %.lcssa.i = phi i32 [ %30, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge ], [ %32, %do.end.i20.read_seqbegin.exit_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !120
  %33 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %protocol, align 8
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %37 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i21 = icmp eq ptr %38, null
  br i1 %tobool.not.i21, label %read_seqbegin.exit.dev_hard_header.exit_crit_edge, label %lor.lhs.false.i

read_seqbegin.exit.dev_hard_header.exit_crit_edge: ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_hard_header.exit

lor.lhs.false.i:                                  ; preds = %read_seqbegin.exit
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %tobool2.not.i = icmp eq ptr %40, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dev_hard_header.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dev_hard_header.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_hard_header.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i22 = call i32 %40(ptr noundef %skb, ptr noundef %7, i16 noundef zeroext %34, ptr noundef %ha, ptr noundef nonnull %mac_addr, i32 noundef %36) #13
  br label %dev_hard_header.exit

dev_hard_header.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.dev_hard_header.exit_crit_edge, %read_seqbegin.exit.dev_hard_header.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i22, %if.end.i ], [ 0, %lor.lhs.false.i.dev_hard_header.exit_crit_edge ], [ 0, %read_seqbegin.exit.dev_hard_header.exit_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !121
  %41 = ptrtoint ptr %ha_lock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %ha_lock, align 4
  %cmp.i.i.i.not = icmp eq i32 %42, %.lcssa.i
  br i1 %cmp.i.i.i.not, label %do.end, label %dev_hard_header.exit.do.body_crit_edge

dev_hard_header.exit.do.body_crit_edge:           ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end:                                           ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp = icmp sgt i32 %retval.0.i, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = call i32 @dev_queue_xmit(ptr noundef %skb) #13
  br label %if.end

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call8, %if.then ], [ -22, %if.else ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #13
  ret i32 %err.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_neigh_output_packet(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %n = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %n, align 4
  %output = getelementptr inbounds %struct.neighbour, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %output, align 4
  %call1 = tail call i32 %9(ptr noundef %7, ptr noundef %skb) #13
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(ptr noundef %sk, ptr noundef %skb, ptr noundef %outdev) unnamed_addr #11 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([13 x [7 x %struct.static_key]], ptr @nf_hooks_needed, i32 0, i32 12, i32 4), ptr blockaddress(@nf_hook, %if.end)) #13
          to label %cleanup [label %if.end], !srcloc !110

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 39, i32 7, i32 4) to i32))
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 39, i32 7, i32 4), align 4
  %call130 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %land.lhs.true132, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true132:                                 ; preds = %rcu_read_lock.exit
  %call133 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %land.lhs.true132.sw.epilog_crit_edge, label %land.lhs.true135

land.lhs.true132.sw.epilog_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true135:                                 ; preds = %land.lhs.true132
  %.b1 = load i1, ptr @nf_hook.__warned.22, align 1
  br i1 %.b1, label %land.lhs.true135.sw.epilog_crit_edge, label %if.then137

land.lhs.true135.sw.epilog_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then137:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nf_hook.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 248, ptr noundef nonnull @.str.2) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then137, %land.lhs.true135.sw.epilog_crit_edge, %land.lhs.true132.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %4, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #13
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %state, align 4
  store i8 4, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 12, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %7 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %8 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %9 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sk, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %10 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @init_net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %11 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dn_neigh_output_packet, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #13
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !104
  %12 = call i32 @llvm.read_register.i32(metadata !93) #13
  %and.i.i.i.i.i9 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dn_neigh_seq_start(ptr noundef %seq, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @neigh_seq_start(ptr noundef %seq, ptr noundef %pos, ptr noundef nonnull @dn_neigh_table, i32 noundef 1) #13
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_seq_stop(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_seq_next(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_neigh_seq_show(ptr noundef %seq, ptr noundef %v) #2 align 64 {
entry:
  %buf.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.34) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf.i) #13
  %lock.i = getelementptr inbounds %struct.neighbour, ptr %v, i32 0, i32 5
  %0 = call ptr @memset(ptr %buf.i, i32 255, i32 9)
  tail call void @_raw_read_lock(ptr noundef %lock.i) #13
  %addr.i = getelementptr inbounds %struct.dn_neigh, ptr %v, i32 0, i32 1
  %1 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %addr.i, align 8
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #13
  %call.i = call ptr @dn_addr2asc(i16 noundef zeroext %3, ptr noundef nonnull %buf.i) #13
  %flags.i = getelementptr inbounds %struct.dn_neigh, ptr %v, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %nud_state.i = getelementptr inbounds %struct.neighbour, ptr %v, i32 0, i32 12
  %6 = ptrtoint ptr %nud_state.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nud_state.i, align 8
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %v, i32 0, i32 6
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #13
  %8 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcnt.i, align 4
  %blksize.i = getelementptr inbounds %struct.dn_neigh, ptr %v, i32 0, i32 3
  %10 = ptrtoint ptr %blksize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blksize.i, align 8
  %dev.i = getelementptr inbounds %struct.neighbour, ptr %v, i32 0, i32 25
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %tobool13.not.i = icmp eq ptr %13, null
  %spec.select.i = select i1 %tobool13.not.i, ptr @.str.40, ptr %13
  %conv.i = zext i8 %7 to i32
  %and6.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond8.i = select i1 %tobool7.not.i, ptr @.str.37, ptr @.str.39
  %and2.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %cond4.i = select i1 %tobool3.not.i, ptr @.str.37, ptr @.str.38
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.37, ptr @.str.36
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.35, ptr noundef %call.i, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond4.i, ptr noundef nonnull %cond8.i, i32 noundef %conv.i, i32 noundef %9, i32 noundef %11, ptr noundef nonnull %spec.select.i) #13
  call void @_raw_read_unlock(ptr noundef %lock.i) #13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf.i) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_seq_start(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dn_addr2asc(i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/decnet/dn_neigh.c", i32 86, i32 11}
!2 = !{ptr @dn_neigh_table, !3, !"dn_neigh_table", i1 false, i1 false}
!3 = !{!"../net/decnet/dn_neigh.c", i32 78, i32 20}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/decnet/dn_neigh.c", i32 348, i32 10}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/decnet/dn_neigh.c", i32 401, i32 11}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/decnet/dn_neigh.c", i32 597, i32 2}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/decnet/dn_neigh.c", i32 119, i32 10}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/decnet/dn_neigh.c", i32 144, i32 3}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dn_neigh_construct.descriptor, !15, !"descriptor", i1 false, i1 false}
!19 = !{ptr @dn_neigh_ops, !20, !"dn_neigh_ops", i1 false, i1 false}
!20 = !{!"../net/decnet/dn_neigh.c", i32 59, i32 31}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/decnet/dn_neigh.c", i32 169, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dn_neigh_error_report._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @dn_neigh_error_report._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/decnet/dn_neigh.c", i32 313, i32 4}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dn_phase3_output._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @dn_phase3_output._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/decnet/dn_neigh.c", i32 319, i32 3}
!42 = !{ptr @dn_phase3_output._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @dn_phase3_output._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/decnet/dn_neigh.c", i32 223, i32 4}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @dn_long_output._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @dn_long_output._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/decnet/dn_neigh.c", i32 229, i32 3}
!66 = !{ptr @dn_long_output._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @dn_long_output._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/decnet/dn_neigh.c", i32 271, i32 4}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @dn_short_output._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @dn_short_output._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/decnet/dn_neigh.c", i32 277, i32 3}
!75 = !{ptr @dn_short_output._entry.31, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @dn_short_output._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @dn_neigh_seq_ops, !78, !"dn_neigh_seq_ops", i1 false, i1 false}
!78 = !{!"../net/decnet/dn_neigh.c", i32 586, i32 36}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/decnet/dn_neigh.c", i32 572, i32 17}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/decnet/dn_neigh.c", i32 557, i32 18}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/decnet/dn_neigh.c", i32 559, i32 33}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/decnet/dn_neigh.c", i32 559, i32 39}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/decnet/dn_neigh.c", i32 560, i32 33}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/decnet/dn_neigh.c", i32 561, i32 33}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/decnet/dn_neigh.c", i32 565, i32 38}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 2149402047}
!104 = !{i64 2149402313}
!105 = !{i64 2148446772}
!106 = !{i64 2148361236, i64 2148361268, i64 2148361297, i64 2148361331, i64 2148361362, i64 2148361385}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{i64 2148358771, i64 2148358803, i64 2148358832, i64 2148358866, i64 2148358897, i64 2148358920}
!109 = !{!"branch_weights", i32 2000, i32 1}
!110 = !{i64 2148176864, i64 2148176869, i64 2148176882, i64 2148176926, i64 2148176960, i64 2148176981}
!111 = !{i64 2156985111}
!112 = !{i64 864009, i64 864026, i64 864050, i64 864076, i64 864094}
!113 = !{i64 2156985471}
!114 = !{i64 2150441560}
!115 = !{i64 751499, i64 751560}
!116 = !{i64 754231}
!117 = !{i64 754516}
!118 = !{i64 2150221326}
!119 = !{i64 2150221168}
!120 = !{i64 2150221496}
!121 = !{i64 2150210628}
