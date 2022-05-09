; ModuleID = '/llk/IR_all_yes/net/core/net-procfs.c_pt.bc'
source_filename = "../net/core/net-procfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.118, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.anon.118 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.57 }
%struct.llist_node = type { ptr }
%union.anon.57 = type { i32 }
%struct.sk_buff_head = type { %union.anon.112, i32, %struct.spinlock }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.111, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.111 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.14, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.14 = type { %struct.list_head, %struct.list_head }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@dev_proc_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @dev_proc_net_init, ptr null, ptr @dev_proc_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@dev_mc_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @dev_mc_net_init, ptr null, ptr @dev_mc_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@dev_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @dev_seq_start, ptr @dev_seq_stop, ptr @dev_seq_next, ptr @dev_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"softnet_stat\00", [19 x i8] zeroinitializer }, align 32
@softnet_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @softnet_seq_start, ptr @softnet_seq_stop, ptr @softnet_seq_next, ptr @softnet_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ptype\00", [26 x i8] zeroinitializer }, align 32
@ptype_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ptype_seq_start, ptr @ptype_seq_stop, ptr @ptype_seq_next, ptr @ptype_seq_show }, [16 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@dev_from_same_bucket.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/core/net-procfs.c\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [201 x i8], [55 x i8] } { [201 x i8] c"Inter-|   Receive                                                |  Transmit\0A face |bytes    packets errs drop fifo frame compressed multicast|bytes    packets errs drop fifo colls carrier compressed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"%6s: %7llu %7llu %4llu %4llu %4llu %5llu %10llu %9llu %8llu %7llu %4llu %4llu %4llu %5llu %7llu %10llu\0A\00", [56 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@softnet_seq_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%08x %08x %08x %08x %08x %08x %08x %08x %08x %08x %08x %08x %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@ptype_get_idx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ptype_get_idx.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ptype_get_idx.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ptype_all = external dso_local global %struct.list_head, section ".data..read_mostly", align 4
@ptype_get_idx.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ptype_base = external dso_local global [16 x %struct.list_head], section ".data..read_mostly", align 4
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Type Device      Function\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ALL \00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%04x\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" %-8s %ps\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dev_mcast\00", [22 x i8] zeroinitializer }, align 32
@dev_mc_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @dev_seq_start, ptr @dev_seq_stop, ptr @dev_seq_next, ptr @dev_mc_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%-4d %-15s %-5d %-5d %*phN\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"dev_proc_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 350, i32 48 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"dev_mc_net_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 394, i32 48 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 317, i32 7 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"dev_seq_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 179, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 320, i32 7 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"softnet_seq_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 186, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 323, i32 7 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"ptype_seq_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 306, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 695, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 21, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 723, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 106, i32 17 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 80, i32 18 }
@___asan_gen_.69 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 108, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 159, i32 7 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 170, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 291, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 295, i32 18 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 297, i32 20 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 299, i32 19 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 300, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 383, i32 7 }
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"dev_mc_seq_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 374, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [25 x i8] c"../net/core/net-procfs.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 365, i32 19 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @dev_proc_ops, ptr @dev_mc_net_ops, ptr @.str, ptr @dev_seq_ops, ptr @.str.1, ptr @softnet_seq_ops, ptr @.str.2, ptr @ptype_seq_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @dev_mc_seq_ops, ptr @.str.22], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_proc_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_mc_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softnet_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptype_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 201, i32 256, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_mc_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dev_proc_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @dev_proc_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @dev_mc_net_ops) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_proc_net_init(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @dev_seq_ops, i32 noundef 8, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net, align 4
  %call2 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @softnet_seq_ops, i32 noundef 0, ptr noundef null) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.out_dev_crit_edge, label %if.end5

if.end.out_dev_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_dev

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_net, align 4
  %call7 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %5, ptr noundef nonnull @ptype_seq_ops, i32 noundef 8, ptr noundef null) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end5.out_softnet_crit_edge, label %if.end10

if.end5.out_softnet_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_softnet

if.end10:                                         ; preds = %if.end5
  %call11 = tail call i32 @wext_proc_init(ptr noundef %net) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.out_crit_edge, label %out_ptype

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %out_dev, %if.end10.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -12, %out_dev ], [ -12, %entry.out_crit_edge ], [ 0, %if.end10.out_crit_edge ]
  ret i32 %rc.0

out_ptype:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef %7) #7
  br label %out_softnet

out_softnet:                                      ; preds = %out_ptype, %if.end5.out_softnet_crit_edge
  %8 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %9) #7
  br label %out_dev

out_dev:                                          ; preds = %out_softnet, %if.end.out_dev_crit_edge
  %10 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %11) #7
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_proc_net_exit(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wext_proc_exit(ptr noundef %net) #7
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef %1) #7
  %2 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %3) #7
  %4 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wext_proc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dev_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !73
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %rcu_read_lock.exit.return_crit_edge, label %if.end

rcu_read_lock.exit.return_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %5)
  %cmp = icmp sgt i64 %5, 2147483647
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2:                                          ; preds = %if.end
  %private.i.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end2
  %6 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  %12 = trunc i64 %11 to i32
  %conv.i.i = and i32 %12, 8388607
  %dev_index_head.i.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 24
  %13 = ptrtoint ptr %dev_index_head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_index_head.i.i, align 16
  %15 = lshr i64 %11, 23
  %idxprom.i.i = trunc i64 %15 to i32
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %14, i32 %idxprom.i.i
  %call1.i.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %do.body.i.do.end.i.i_crit_edge

do.body.i.do.end.i.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %do.body.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b42.i.i = load i1, ptr @dev_from_same_bucket.__warned, align 1
  br i1 %.b42.i.i, label %land.lhs.true4.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @dev_from_same_bucket.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 21, ptr noundef nonnull @.str.6) #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %do.body.i.do.end.i.i_crit_edge
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %17, null
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -664
  %tobool13.not4650.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool13.not46.i.i = or i1 %tobool11.not.i.i, %tobool13.not4650.i.i
  br i1 %tobool13.not46.i.i, label %do.end.i.i.if.end.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.if.end.i_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %dev.048.i.i = phi ptr [ %add.ptr28.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %count.047.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %do.end.i.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %count.047.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %conv.i.i)
  %cmp.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.return_crit_edge, label %for.inc.i.i

for.body.i.i.return_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

for.inc.i.i:                                      ; preds = %for.body.i.i
  %index_hlist.i.i = getelementptr inbounds %struct.net_device, ptr %dev.048.i.i, i32 0, i32 101
  %18 = ptrtoint ptr %index_hlist.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %index_hlist.i.i, align 8
  %tobool24.not.i.i = icmp eq ptr %19, null
  %add.ptr28.i.i = getelementptr i8, ptr %19, i32 -664
  %tobool13.not51.i.i = icmp eq ptr %add.ptr28.i.i, null
  %tobool13.not.i.i = or i1 %tobool24.not.i.i, %tobool13.not51.i.i
  br i1 %tobool13.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %do.end.i.i.if.end.i_crit_edge
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pos, align 8
  %22 = lshr i64 %21, 23
  %23 = trunc i64 %22 to i32
  %conv.i = add i32 %23, 1
  %shl.i = shl i32 %conv.i, 23
  %or.i = or i32 %shl.i, 1
  %conv1.i = zext i32 %or.i to i64
  store i64 %conv1.i, ptr %pos, align 8
  %cmp.i = icmp ult i32 %conv.i, 256
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

return:                                           ; preds = %if.end.i.return_crit_edge, %for.body.i.i.return_crit_edge, %if.end.return_crit_edge, %rcu_read_lock.exit.return_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 1 to ptr), %rcu_read_lock.exit.return_crit_edge ], [ null, %if.end.return_crit_edge ], [ %dev.048.i.i, %for.body.i.i.return_crit_edge ], [ null, %if.end.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !74
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dev_seq_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %private.i.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %2 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %8 = trunc i64 %7 to i32
  %conv.i.i = and i32 %8, 8388607
  %dev_index_head.i.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 24
  %9 = ptrtoint ptr %dev_index_head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_index_head.i.i, align 16
  %11 = lshr i64 %7, 23
  %idxprom.i.i = trunc i64 %11 to i32
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %10, i32 %idxprom.i.i
  %call1.i.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %do.body.i.do.end.i.i_crit_edge

do.body.i.do.end.i.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %do.body.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b42.i.i = load i1, ptr @dev_from_same_bucket.__warned, align 1
  br i1 %.b42.i.i, label %land.lhs.true4.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @dev_from_same_bucket.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 21, ptr noundef nonnull @.str.6) #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %do.body.i.do.end.i.i_crit_edge
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %13, null
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 -664
  %tobool13.not4650.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool13.not46.i.i = or i1 %tobool11.not.i.i, %tobool13.not4650.i.i
  br i1 %tobool13.not46.i.i, label %do.end.i.i.if.end.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.if.end.i_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %dev.048.i.i = phi ptr [ %add.ptr28.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %count.047.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %do.end.i.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %count.047.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %conv.i.i)
  %cmp.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.dev_from_bucket.exit_crit_edge, label %for.inc.i.i

for.body.i.i.dev_from_bucket.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_from_bucket.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %index_hlist.i.i = getelementptr inbounds %struct.net_device, ptr %dev.048.i.i, i32 0, i32 101
  %14 = ptrtoint ptr %index_hlist.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %index_hlist.i.i, align 8
  %tobool24.not.i.i = icmp eq ptr %15, null
  %add.ptr28.i.i = getelementptr i8, ptr %15, i32 -664
  %tobool13.not51.i.i = icmp eq ptr %add.ptr28.i.i, null
  %tobool13.not.i.i = or i1 %tobool24.not.i.i, %tobool13.not51.i.i
  br i1 %tobool13.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %do.end.i.i.if.end.i_crit_edge
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pos, align 8
  %18 = lshr i64 %17, 23
  %19 = trunc i64 %18 to i32
  %conv.i = add i32 %19, 1
  %shl.i = shl i32 %conv.i, 23
  %or.i = or i32 %shl.i, 1
  %conv1.i = zext i32 %or.i to i64
  store i64 %conv1.i, ptr %pos, align 8
  %cmp.i = icmp ult i32 %conv.i, 256
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.dev_from_bucket.exit_crit_edge

if.end.i.dev_from_bucket.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_from_bucket.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

dev_from_bucket.exit:                             ; preds = %if.end.i.dev_from_bucket.exit_crit_edge, %for.body.i.i.dev_from_bucket.exit_crit_edge
  %retval.0.i = phi ptr [ %dev.048.i.i, %for.body.i.i.dev_from_bucket.exit_crit_edge ], [ null, %if.end.i.dev_from_bucket.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_seq_show(ptr noundef %seq, ptr noundef %v) #3 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.8) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #7
  %0 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call.i = call ptr @dev_get_stats(ptr noundef %v, ptr noundef nonnull %temp.i) #7
  %rx_bytes.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %rx_bytes.i, align 8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %call.i, align 8
  %rx_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rx_errors.i, align 8
  %rx_dropped.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %rx_dropped.i, align 8
  %rx_missed_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 15
  %9 = ptrtoint ptr %rx_missed_errors.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rx_missed_errors.i, align 8
  %add.i = add i64 %10, %8
  %rx_fifo_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 14
  %11 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rx_fifo_errors.i, align 8
  %rx_length_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rx_length_errors.i, align 8
  %rx_over_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 11
  %15 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rx_over_errors.i, align 8
  %add1.i = add i64 %16, %14
  %rx_crc_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 12
  %17 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rx_crc_errors.i, align 8
  %add2.i = add i64 %add1.i, %18
  %rx_frame_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 13
  %19 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rx_frame_errors.i, align 8
  %add3.i = add i64 %add2.i, %20
  %rx_compressed.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 21
  %21 = ptrtoint ptr %rx_compressed.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rx_compressed.i, align 8
  %multicast.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %multicast.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %multicast.i, align 8
  %tx_bytes.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tx_bytes.i, align 8
  %tx_packets.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %tx_packets.i, align 8
  %tx_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tx_errors.i, align 8
  %tx_dropped.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 7
  %31 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tx_dropped.i, align 8
  %tx_fifo_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 18
  %33 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %tx_fifo_errors.i, align 8
  %collisions.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 9
  %35 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %collisions.i, align 8
  %tx_carrier_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 17
  %37 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tx_carrier_errors.i, align 8
  %tx_aborted_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 16
  %39 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %tx_aborted_errors.i, align 8
  %add4.i = add i64 %40, %38
  %tx_window_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 20
  %41 = ptrtoint ptr %tx_window_errors.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %tx_window_errors.i, align 8
  %add5.i = add i64 %add4.i, %42
  %tx_heartbeat_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 19
  %43 = ptrtoint ptr %tx_heartbeat_errors.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tx_heartbeat_errors.i, align 8
  %add6.i = add i64 %add5.i, %44
  %tx_compressed.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call.i, i32 0, i32 22
  %45 = ptrtoint ptr %tx_compressed.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %tx_compressed.i, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef %v, i64 noundef %2, i64 noundef %4, i64 noundef %6, i64 noundef %add.i, i64 noundef %12, i64 noundef %add3.i, i64 noundef %22, i64 noundef %24, i64 noundef %26, i64 noundef %28, i64 noundef %30, i64 noundef %32, i64 noundef %34, i64 noundef %36, i64 noundef %add6.i, i64 noundef %46) #7
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @softnet_seq_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %conv7.i = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv7.i)
  %cmp8.i = icmp slt i64 %1, %conv7.i
  br i1 %cmp8.i, label %while.body.preheader.i, label %entry.softnet_get_online.exit_crit_edge

entry.softnet_get_online.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %softnet_get_online.exit

while.body.preheader.i:                           ; preds = %entry
  %extract.t9.i = trunc i64 %1 to i32
  br label %while.body.i

while.body.i:                                     ; preds = %if.else.i.while.body.i_crit_edge, %while.body.preheader.i
  %3 = phi i32 [ %14, %if.else.i.while.body.i_crit_edge ], [ %2, %while.body.preheader.i ]
  %.off0.i = phi i32 [ %extract.t.i, %if.else.i.while.body.i_crit_edge ], [ %extract.t9.i, %while.body.preheader.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %.off0.i)
  %cmp.not.i.i.i.i.i = icmp ugt i32 %3, %.off0.i
  br i1 %cmp.not.i.i.i.i.i, label %while.body.i.cpu_online.exit.i_crit_edge, label %land.rhs.i.i.i.i.i

while.body.i.cpu_online.exit.i_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit.i

land.rhs.i.i.i.i.i:                               ; preds = %while.body.i
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, label %if.then.i.i.i.i.i, !prof !75

land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge:   ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit.i

cpu_online.exit.i:                                ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, %while.body.i.cpu_online.exit.i_crit_edge
  %div1.i.i.i.i = lshr i32 %.off0.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %.off0.i, 31
  %6 = shl nuw i32 1, %and.i.i.i.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos, align 8
  br i1 %tobool.i.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %cpu_online.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i = trunc i64 %9 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, ptrtoint (ptr @softnet_data to i32)
  %12 = inttoptr i32 %add.i to ptr
  br label %softnet_get_online.exit

if.else.i:                                        ; preds = %cpu_online.exit.i
  %inc.i = add i64 %9, 1
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %inc.i, ptr %pos, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %conv.i = zext i32 %14 to i64
  %cmp.i = icmp slt i64 %inc.i, %conv.i
  %extract.t.i = trunc i64 %inc.i to i32
  br i1 %cmp.i, label %if.else.i.while.body.i_crit_edge, label %if.else.i.softnet_get_online.exit_crit_edge

if.else.i.softnet_get_online.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %softnet_get_online.exit

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

softnet_get_online.exit:                          ; preds = %if.else.i.softnet_get_online.exit_crit_edge, %do.body.i, %entry.softnet_get_online.exit_crit_edge
  %sd.0.i = phi ptr [ %12, %do.body.i ], [ null, %entry.softnet_get_online.exit_crit_edge ], [ null, %if.else.i.softnet_get_online.exit_crit_edge ]
  ret ptr %sd.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @softnet_seq_stop(ptr nocapture noundef %seq, ptr nocapture noundef %v) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @softnet_seq_next(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %conv7.i = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %conv7.i)
  %cmp8.i = icmp slt i64 %inc, %conv7.i
  br i1 %cmp8.i, label %while.body.preheader.i, label %entry.softnet_get_online.exit_crit_edge

entry.softnet_get_online.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %softnet_get_online.exit

while.body.preheader.i:                           ; preds = %entry
  %extract.t9.i = trunc i64 %inc to i32
  br label %while.body.i

while.body.i:                                     ; preds = %if.else.i.while.body.i_crit_edge, %while.body.preheader.i
  %3 = phi i32 [ %14, %if.else.i.while.body.i_crit_edge ], [ %2, %while.body.preheader.i ]
  %.off0.i = phi i32 [ %extract.t.i, %if.else.i.while.body.i_crit_edge ], [ %extract.t9.i, %while.body.preheader.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %.off0.i)
  %cmp.not.i.i.i.i.i = icmp ugt i32 %3, %.off0.i
  br i1 %cmp.not.i.i.i.i.i, label %while.body.i.cpu_online.exit.i_crit_edge, label %land.rhs.i.i.i.i.i

while.body.i.cpu_online.exit.i_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit.i

land.rhs.i.i.i.i.i:                               ; preds = %while.body.i
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, label %if.then.i.i.i.i.i, !prof !75

land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge:   ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit.i

cpu_online.exit.i:                                ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, %while.body.i.cpu_online.exit.i_crit_edge
  %div1.i.i.i.i = lshr i32 %.off0.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %.off0.i, 31
  %6 = shl nuw i32 1, %and.i.i.i.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos, align 8
  br i1 %tobool.i.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %cpu_online.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i = trunc i64 %9 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, ptrtoint (ptr @softnet_data to i32)
  %12 = inttoptr i32 %add.i to ptr
  br label %softnet_get_online.exit

if.else.i:                                        ; preds = %cpu_online.exit.i
  %inc.i = add i64 %9, 1
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %inc.i, ptr %pos, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %conv.i = zext i32 %14 to i64
  %cmp.i = icmp slt i64 %inc.i, %conv.i
  %extract.t.i = trunc i64 %inc.i to i32
  br i1 %cmp.i, label %if.else.i.while.body.i_crit_edge, label %if.else.i.softnet_get_online.exit_crit_edge

if.else.i.softnet_get_online.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %softnet_get_online.exit

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

softnet_get_online.exit:                          ; preds = %if.else.i.softnet_get_online.exit_crit_edge, %do.body.i, %entry.softnet_get_online.exit_crit_edge
  %sd.0.i = phi ptr [ %12, %do.body.i ], [ null, %entry.softnet_get_online.exit_crit_edge ], [ null, %if.else.i.softnet_get_online.exit_crit_edge ]
  ret ptr %sd.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softnet_seq_show(ptr noundef %seq, ptr noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !73
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %flow_limit = getelementptr inbounds %struct.softnet_data, ptr %v, i32 0, i32 6
  %4 = ptrtoint ptr %flow_limit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %flow_limit, align 16
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b21 = load i1, ptr @softnet_seq_show.__warned, align 1
  br i1 %.b21, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @softnet_seq_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 159, ptr noundef nonnull @.str.11) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end11_crit_edge, label %if.then10

do.end7.if.end11_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %conv = trunc i64 %7 to i32
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.end7.if.end11_crit_edge
  %flow_limit_count.0 = phi i32 [ %conv, %if.then10 ], [ 0, %do.end7.if.end11_crit_edge ]
  %call.i22 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i22, label %if.end11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

if.end11.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %if.end11
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %if.end11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !74
  %8 = tail call i32 @llvm.read_register.i32(metadata !63) #7
  %and.i.i.i.i.i29 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i29 to ptr
  %preempt_count.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i30, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i30, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %processed = getelementptr inbounds %struct.softnet_data, ptr %v, i32 0, i32 2
  %12 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %processed, align 64
  %dropped = getelementptr inbounds %struct.softnet_data, ptr %v, i32 0, i32 19
  %14 = ptrtoint ptr %dropped to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dropped, align 4
  %time_squeeze = getelementptr inbounds %struct.softnet_data, ptr %v, i32 0, i32 3
  %16 = ptrtoint ptr %time_squeeze to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %time_squeeze, align 4
  %received_rps = getelementptr inbounds %struct.softnet_data, ptr %v, i32 0, i32 4
  %18 = ptrtoint ptr %received_rps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %received_rps, align 8
  %qlen.i.i = getelementptr inbounds %struct.softnet_data, ptr %v, i32 0, i32 20, i32 1
  %20 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %qlen.i.i, align 4
  %qlen.i3.i = getelementptr inbounds %struct.softnet_data, ptr %v, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %qlen.i3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %qlen.i3.i, align 4
  %add.i = add i32 %23, %21
  %index = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 5
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %index, align 8
  %conv13 = trunc i64 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %19, i32 noundef %flow_limit_count.0, i32 noundef %add.i, i32 noundef %conv13) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ptype_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !73
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %rcu_read_lock.exit.cond.end_crit_edge, label %cond.true

rcu_read_lock.exit.cond.end_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i64 %5, -1
  %call = tail call fastcc ptr @ptype_get_idx(ptr noundef %seq, i64 noundef %sub)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %rcu_read_lock.exit.cond.end_crit_edge
  %cond = phi ptr [ %call, %cond.true ], [ inttoptr (i32 1 to ptr), %rcu_read_lock.exit.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ptype_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !74
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ptype_seq_next(ptr nocapture noundef readonly %seq, ptr noundef readonly %v, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc ptr @ptype_get_idx(ptr noundef %seq, i64 noundef 0)
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.packet_type, ptr %v, i32 0, i32 9
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %dev1 = getelementptr inbounds %struct.packet_type, ptr %v, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end29, label %if.then2

if.then2:                                         ; preds = %if.end
  %ptype_all = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 11
  %cmp4.not = icmp eq ptr %3, %ptype_all
  br i1 %cmp4.not, label %if.end6, label %if.then2.found_crit_edge

if.then2.found_crit_edge:                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

if.end6:                                          ; preds = %if.then2
  %dev_list = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 7
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev_base_head = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end6
  %.pn.in = phi ptr [ %dev_list, %if.end6 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load volatile ptr, ptr %.pn.in, align 8
  %cmp12.not = icmp eq ptr %.pn, %dev_base_head
  br i1 %cmp12.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %ptype_all13 = getelementptr i8, ptr %.pn, i32 32
  %11 = ptrtoint ptr %ptype_all13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %ptype_all13, align 4
  %cmp.i.not = icmp eq ptr %12, %ptype_all13
  br i1 %cmp.i.not, label %for.body.for.cond_crit_edge, label %for.body.found_crit_edge

for.body.found_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ptype_all to i32))
  %13 = load ptr, ptr @ptype_all, align 4
  br label %ptype_all33

if.end29:                                         ; preds = %if.end
  %14 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %15)
  %cmp30 = icmp eq i16 %15, 3
  br i1 %cmp30, label %if.end29.ptype_all33_crit_edge, label %if.else

if.end29.ptype_all33_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptype_all33

ptype_all33:                                      ; preds = %if.end29.ptype_all33_crit_edge, %for.end
  %nxt.0 = phi ptr [ %13, %for.end ], [ %3, %if.end29.ptype_all33_crit_edge ]
  %cmp34.not = icmp eq ptr %nxt.0, @ptype_all
  br i1 %cmp34.not, label %if.end37, label %ptype_all33.found_crit_edge

ptype_all33.found_crit_edge:                      ; preds = %ptype_all33
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

if.end37:                                         ; preds = %ptype_all33
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ptype_base to i32))
  %16 = load ptr, ptr @ptype_base, align 4
  br label %if.end40

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %17 = and i16 %15, 15
  %and = zext i16 %17 to i32
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.end37
  %hash.0 = phi i32 [ 0, %if.end37 ], [ %and, %if.else ]
  %nxt.1 = phi ptr [ %16, %if.end37 ], [ %3, %if.else ]
  %arrayidx75 = getelementptr [16 x %struct.list_head], ptr @ptype_base, i32 0, i32 %hash.0
  %cmp4176 = icmp eq ptr %nxt.1, %arrayidx75
  br i1 %cmp4176, label %if.end40.while.body_crit_edge, label %if.end40.found_crit_edge

if.end40.found_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  br label %while.body

while.body:                                       ; preds = %if.end47.while.body_crit_edge, %if.end40.while.body_crit_edge
  %hash.177 = phi i32 [ %inc43, %if.end47.while.body_crit_edge ], [ %hash.0, %if.end40.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %hash.177)
  %exitcond = icmp eq i32 %hash.177, 15
  br i1 %exitcond, label %while.body.cleanup_crit_edge, label %if.end47

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %while.body
  %inc43 = add nuw nsw i32 %hash.177, 1
  %arrayidx48 = getelementptr [16 x %struct.list_head], ptr @ptype_base, i32 0, i32 %inc43
  %18 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx48, align 4
  %cmp41 = icmp eq ptr %19, %arrayidx48
  br i1 %cmp41, label %if.end47.while.body_crit_edge, label %if.end47.found_crit_edge

if.end47.found_crit_edge:                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

if.end47.while.body_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

found:                                            ; preds = %if.end47.found_crit_edge, %if.end40.found_crit_edge, %ptype_all33.found_crit_edge, %for.body.found_crit_edge, %if.then2.found_crit_edge
  %nxt.3 = phi ptr [ %3, %if.then2.found_crit_edge ], [ %nxt.0, %ptype_all33.found_crit_edge ], [ %nxt.1, %if.end40.found_crit_edge ], [ %19, %if.end47.found_crit_edge ], [ %12, %for.body.found_crit_edge ]
  %add.ptr52 = getelementptr i8, ptr %nxt.3, i32 -32
  br label %cleanup

cleanup:                                          ; preds = %found, %while.body.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %add.ptr52, %found ], [ null, %while.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptype_seq_show(ptr noundef %seq, ptr noundef readonly %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.16) #7
  br label %if.end22

if.else:                                          ; preds = %entry
  %af_packet_net = getelementptr inbounds %struct.packet_type, ptr %v, i32 0, i32 7
  %0 = ptrtoint ptr %af_packet_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %af_packet_net, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else.land.lhs.true_crit_edge, label %lor.lhs.false

if.else.land.lhs.true_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.else
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp.i.not = icmp eq ptr %1, %5
  br i1 %cmp.i.not, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.else.land.lhs.true_crit_edge
  %dev = getelementptr inbounds %struct.packet_type, ptr %v, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.lhs.true.if.then11_crit_edge, label %lor.lhs.false5

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

lor.lhs.false5:                                   ; preds = %land.lhs.true
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 127
  %8 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_net.i, align 4
  %private.i39 = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %10 = ptrtoint ptr %private.i39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i39, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %cmp.i40.not = icmp eq ptr %9, %13
  br i1 %cmp.i40.not, label %lor.lhs.false5.if.then11_crit_edge, label %lor.lhs.false5.if.end22_crit_edge

lor.lhs.false5.if.end22_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

lor.lhs.false5.if.then11_crit_edge:               ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false5.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge
  %14 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %15)
  %cmp12 = icmp eq i16 %15, 3
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.17) #7
  br label %if.end

if.else15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.18, i32 noundef %conv) #7
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then14
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %tobool19.not = icmp eq ptr %17, null
  %spec.select = select i1 %tobool19.not, ptr @.str.20, ptr %17
  %func = getelementptr inbounds %struct.packet_type, ptr %v, i32 0, i32 4
  %18 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %func, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.19, ptr noundef nonnull %spec.select, ptr noundef %19) #7
  br label %if.end22

if.end22:                                         ; preds = %if.end, %lor.lhs.false5.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ptype_get_idx(ptr nocapture noundef readonly %seq, i64 noundef %pos) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b177 = load i1, ptr @ptype_get_idx.__warned, align 1
  br i1 %.b177, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ptype_get_idx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 201, ptr noundef nonnull @.str.6) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev_base_head = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %dev_base_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn190 = load volatile ptr, ptr %dev_base_head, align 4
  %cmp.not192 = icmp eq ptr %.pn190, %dev_base_head
  br i1 %cmp.not192, label %do.end.do.body58_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.do.body58_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58

for.cond.loopexit:                                ; preds = %if.end37.for.cond.loopexit_crit_edge, %do.end23.for.cond.loopexit_crit_edge
  %i.1.lcssa = phi i64 [ %i.0193, %do.end23.for.cond.loopexit_crit_edge ], [ %inc, %if.end37.for.cond.loopexit_crit_edge ]
  %5 = ptrtoint ptr %.pn194 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load volatile ptr, ptr %.pn194, align 4
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev_base_head11 = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 16
  %cmp.not = icmp eq ptr %.pn, %dev_base_head11
  br i1 %cmp.not, label %for.cond.loopexit.do.body58_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.loopexit.do.body58_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn194 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn190, %do.end.for.body_crit_edge ]
  %i.0193 = phi i64 [ %i.1.lcssa, %for.cond.loopexit.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %ptype_all = getelementptr i8, ptr %.pn194, i32 32
  %call13 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %for.body.do.end23_crit_edge

for.body.do.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

land.lhs.true15:                                  ; preds = %for.body
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true15.do.end23_crit_edge, label %land.lhs.true18

land.lhs.true15.do.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %.b168176 = load i1, ptr @ptype_get_idx.__warned.13, align 1
  br i1 %.b168176, label %land.lhs.true18.do.end23_crit_edge, label %if.then20

land.lhs.true18.do.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ptype_get_idx.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 203, ptr noundef nonnull @.str.6) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %land.lhs.true18.do.end23_crit_edge, %land.lhs.true15.do.end23_crit_edge, %for.body.do.end23_crit_edge
  %10 = ptrtoint ptr %ptype_all to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn175186 = load volatile ptr, ptr %ptype_all, align 4
  %cmp33.not187 = icmp eq ptr %.pn175186, %ptype_all
  br i1 %cmp33.not187, label %do.end23.for.cond.loopexit_crit_edge, label %do.end23.for.body34_crit_edge

do.end23.for.body34_crit_edge:                    ; preds = %do.end23
  br label %for.body34

do.end23.for.cond.loopexit_crit_edge:             ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.body34:                                       ; preds = %if.end37.for.body34_crit_edge, %do.end23.for.body34_crit_edge
  %.pn175189 = phi ptr [ %.pn175, %if.end37.for.body34_crit_edge ], [ %.pn175186, %do.end23.for.body34_crit_edge ]
  %i.1188 = phi i64 [ %inc, %if.end37.for.body34_crit_edge ], [ %i.0193, %do.end23.for.body34_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %i.1188, i64 %pos)
  %cmp35 = icmp eq i64 %i.1188, %pos
  br i1 %cmp35, label %cleanup.loopexit181, label %if.end37

if.end37:                                         ; preds = %for.body34
  %inc = add i64 %i.1188, 1
  %11 = ptrtoint ptr %.pn175189 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn175 = load volatile ptr, ptr %.pn175189, align 4
  %cmp33.not = icmp eq ptr %.pn175, %ptype_all
  br i1 %cmp33.not, label %if.end37.for.cond.loopexit_crit_edge, label %if.end37.for.body34_crit_edge

if.end37.for.body34_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body34

if.end37.for.cond.loopexit_crit_edge:             ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

do.body58:                                        ; preds = %for.cond.loopexit.do.body58_crit_edge, %do.end.do.body58_crit_edge
  %i.0.lcssa = phi i64 [ 0, %do.end.do.body58_crit_edge ], [ %i.1.lcssa, %for.cond.loopexit.do.body58_crit_edge ]
  %call59 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true61, label %do.body58.do.end69_crit_edge

do.body58.do.end69_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

land.lhs.true61:                                  ; preds = %do.body58
  %call62 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true61.do.end69_crit_edge, label %land.lhs.true64

land.lhs.true61.do.end69_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

land.lhs.true64:                                  ; preds = %land.lhs.true61
  %.b169174 = load i1, ptr @ptype_get_idx.__warned.14, align 1
  br i1 %.b169174, label %land.lhs.true64.do.end69_crit_edge, label %if.then66

land.lhs.true64.do.end69_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

if.then66:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ptype_get_idx.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 210, ptr noundef nonnull @.str.6) #7
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %land.lhs.true64.do.end69_crit_edge, %land.lhs.true61.do.end69_crit_edge, %do.body58.do.end69_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ptype_all to i32))
  %.pn171196 = load volatile ptr, ptr @ptype_all, align 4
  %cmp79.not197 = icmp eq ptr %.pn171196, @ptype_all
  br i1 %cmp79.not197, label %do.end69.do.body99.preheader_crit_edge, label %do.end69.for.body80_crit_edge

do.end69.for.body80_crit_edge:                    ; preds = %do.end69
  br label %for.body80

do.end69.do.body99.preheader_crit_edge:           ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99.preheader

for.body80:                                       ; preds = %if.end83.for.body80_crit_edge, %do.end69.for.body80_crit_edge
  %.pn171199 = phi ptr [ %.pn171, %if.end83.for.body80_crit_edge ], [ %.pn171196, %do.end69.for.body80_crit_edge ]
  %i.2198 = phi i64 [ %inc84, %if.end83.for.body80_crit_edge ], [ %i.0.lcssa, %do.end69.for.body80_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %i.2198, i64 %pos)
  %cmp81 = icmp eq i64 %i.2198, %pos
  br i1 %cmp81, label %cleanup.loopexit180, label %if.end83

if.end83:                                         ; preds = %for.body80
  %inc84 = add i64 %i.2198, 1
  %12 = ptrtoint ptr %.pn171199 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn171 = load volatile ptr, ptr %.pn171199, align 4
  %cmp79.not = icmp eq ptr %.pn171, @ptype_all
  br i1 %cmp79.not, label %if.end83.do.body99.preheader_crit_edge, label %if.end83.for.body80_crit_edge

if.end83.for.body80_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body80

if.end83.do.body99.preheader_crit_edge:           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99.preheader

do.body99.preheader:                              ; preds = %if.end83.do.body99.preheader_crit_edge, %do.end69.do.body99.preheader_crit_edge
  %i.3207.ph = phi i64 [ %i.0.lcssa, %do.end69.do.body99.preheader_crit_edge ], [ %inc84, %if.end83.do.body99.preheader_crit_edge ]
  br label %do.body99

do.body99:                                        ; preds = %for.inc139.do.body99_crit_edge, %do.body99.preheader
  %i.3207 = phi i64 [ %i.4.lcssa, %for.inc139.do.body99_crit_edge ], [ %i.3207.ph, %do.body99.preheader ]
  %t.0206 = phi i32 [ %inc140, %for.inc139.do.body99_crit_edge ], [ 0, %do.body99.preheader ]
  %call100 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %land.lhs.true102, label %do.body99.do.end110_crit_edge

do.body99.do.end110_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

land.lhs.true102:                                 ; preds = %do.body99
  %call103 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %land.lhs.true102.do.end110_crit_edge, label %land.lhs.true105

land.lhs.true102.do.end110_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

land.lhs.true105:                                 ; preds = %land.lhs.true102
  %.b170173 = load i1, ptr @ptype_get_idx.__warned.15, align 1
  br i1 %.b170173, label %land.lhs.true105.do.end110_crit_edge, label %if.then107

land.lhs.true105.do.end110_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

if.then107:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ptype_get_idx.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 217, ptr noundef nonnull @.str.6) #7
  br label %do.end110

do.end110:                                        ; preds = %if.then107, %land.lhs.true105.do.end110_crit_edge, %land.lhs.true102.do.end110_crit_edge, %do.body99.do.end110_crit_edge
  %arrayidx = getelementptr [16 x %struct.list_head], ptr @ptype_base, i32 0, i32 %t.0206
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn172201 = load volatile ptr, ptr %arrayidx, align 4
  %cmp122.not202 = icmp eq ptr %.pn172201, %arrayidx
  br i1 %cmp122.not202, label %do.end110.for.inc139_crit_edge, label %do.end110.for.body123_crit_edge

do.end110.for.body123_crit_edge:                  ; preds = %do.end110
  br label %for.body123

do.end110.for.inc139_crit_edge:                   ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc139

for.body123:                                      ; preds = %if.end126.for.body123_crit_edge, %do.end110.for.body123_crit_edge
  %.pn172204 = phi ptr [ %.pn172, %if.end126.for.body123_crit_edge ], [ %.pn172201, %do.end110.for.body123_crit_edge ]
  %i.4203 = phi i64 [ %inc127, %if.end126.for.body123_crit_edge ], [ %i.3207, %do.end110.for.body123_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %i.4203, i64 %pos)
  %cmp124 = icmp eq i64 %i.4203, %pos
  br i1 %cmp124, label %cleanup.loopexit, label %if.end126

if.end126:                                        ; preds = %for.body123
  %inc127 = add i64 %i.4203, 1
  %14 = ptrtoint ptr %.pn172204 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn172 = load volatile ptr, ptr %.pn172204, align 4
  %cmp122.not = icmp eq ptr %.pn172, %arrayidx
  br i1 %cmp122.not, label %if.end126.for.inc139_crit_edge, label %if.end126.for.body123_crit_edge

if.end126.for.body123_crit_edge:                  ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body123

if.end126.for.inc139_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc139

for.inc139:                                       ; preds = %if.end126.for.inc139_crit_edge, %do.end110.for.inc139_crit_edge
  %i.4.lcssa = phi i64 [ %i.3207, %do.end110.for.inc139_crit_edge ], [ %inc127, %if.end126.for.inc139_crit_edge ]
  %inc140 = add nuw nsw i32 %t.0206, 1
  %exitcond.not = icmp eq i32 %inc140, 16
  br i1 %exitcond.not, label %for.inc139.cleanup_crit_edge, label %for.inc139.do.body99_crit_edge

for.inc139.do.body99_crit_edge:                   ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99

for.inc139.cleanup_crit_edge:                     ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.loopexit:                                 ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #9
  %pt.2.le = getelementptr i8, ptr %.pn172204, i32 -32
  br label %cleanup

cleanup.loopexit180:                              ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #9
  %pt.1.le = getelementptr i8, ptr %.pn171199, i32 -32
  br label %cleanup

cleanup.loopexit181:                              ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  %pt.0.le = getelementptr i8, ptr %.pn175189, i32 -32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit181, %cleanup.loopexit180, %cleanup.loopexit, %for.inc139.cleanup_crit_edge
  %retval.0 = phi ptr [ %pt.2.le, %cleanup.loopexit ], [ %pt.1.le, %cleanup.loopexit180 ], [ %pt.0.le, %cleanup.loopexit181 ], [ null, %for.inc139.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wext_proc_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_mc_net_init(ptr nocapture noundef readonly %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.21, i16 noundef zeroext 0, ptr noundef %1, ptr noundef nonnull @dev_mc_seq_ops, i32 noundef 8, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_mc_net_exit(ptr nocapture noundef readonly %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.21, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_mc_seq_show(ptr noundef %seq, ptr noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %v, i32 0, i32 73
  %0 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #7
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %v, i32 0, i32 63
  %conv.i = zext i8 %1 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #7
  %mc = getelementptr inbounds %struct.net_device, ptr %v, i32 0, i32 66
  %2 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %2)
  %ha.025 = load ptr, ptr %mc, align 4
  %cmp4.not26 = icmp eq ptr %ha.025, %mc
  br i1 %cmp4.not26, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %ifindex = getelementptr inbounds %struct.net_device, ptr %v, i32 0, i32 17
  %addr_len = getelementptr inbounds %struct.net_device, ptr %v, i32 0, i32 56
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ha.027 = phi ptr [ %ha.025, %for.body.lr.ph ], [ %ha.0, %for.body.for.body_crit_edge ]
  %3 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ifindex, align 4
  %refcount = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.027, i32 0, i32 6
  %5 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refcount, align 4
  %global_use = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.027, i32 0, i32 4
  %7 = ptrtoint ptr %global_use to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %global_use, align 1, !range !76
  %9 = zext i8 %8 to i32
  %10 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr_len, align 1
  %conv5 = zext i8 %11 to i32
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.027, i32 0, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.22, i32 noundef %4, ptr noundef %v, i32 noundef %6, i32 noundef %9, i32 noundef %conv5, ptr noundef %addr) #7
  %12 = ptrtoint ptr %ha.027 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.0 = load ptr, ptr %ha.027, align 4
  %cmp4.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp4.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !25, !27, !29, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @dev_proc_ops, !1, !"dev_proc_ops", i1 false, i1 false}
!1 = !{!"../net/core/net-procfs.c", i32 350, i32 48}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/core/net-procfs.c", i32 317, i32 7}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/core/net-procfs.c", i32 320, i32 7}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/core/net-procfs.c", i32 323, i32 7}
!8 = !{ptr @dev_seq_ops, !9, !"dev_seq_ops", i1 false, i1 false}
!9 = !{!"../net/core/net-procfs.c", i32 179, i32 36}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/core/net-procfs.c", i32 21, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/core/net-procfs.c", i32 106, i32 17}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/core/net-procfs.c", i32 80, i32 18}
!25 = !{ptr @softnet_seq_ops, !26, !"softnet_seq_ops", i1 false, i1 false}
!26 = !{!"../net/core/net-procfs.c", i32 186, i32 36}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/core/net-procfs.c", i32 159, i32 7}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/core/net-procfs.c", i32 170, i32 6}
!35 = !{ptr @ptype_seq_ops, !36, !"ptype_seq_ops", i1 false, i1 false}
!36 = !{!"../net/core/net-procfs.c", i32 306, i32 36}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/core/net-procfs.c", i32 201, i32 2}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../net/core/net-procfs.c", i32 203, i32 3}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/core/net-procfs.c", i32 210, i32 2}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/core/net-procfs.c", i32 217, i32 3}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/core/net-procfs.c", i32 291, i32 17}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/core/net-procfs.c", i32 295, i32 18}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/core/net-procfs.c", i32 297, i32 20}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/core/net-procfs.c", i32 299, i32 19}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/core/net-procfs.c", i32 300, i32 33}
!55 = !{ptr @dev_mc_net_ops, !56, !"dev_mc_net_ops", i1 false, i1 false}
!56 = !{!"../net/core/net-procfs.c", i32 394, i32 48}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/core/net-procfs.c", i32 383, i32 7}
!59 = !{ptr @dev_mc_seq_ops, !60, !"dev_mc_seq_ops", i1 false, i1 false}
!60 = !{!"../net/core/net-procfs.c", i32 374, i32 36}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/core/net-procfs.c", i32 365, i32 19}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2149595690}
!74 = !{i64 2149595956}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i8 0, i8 2}
