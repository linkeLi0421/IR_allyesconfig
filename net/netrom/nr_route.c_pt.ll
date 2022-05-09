; ModuleID = '/llk/IR_all_yes/net/netrom/nr_route.c_pt.bc'
source_filename = "../net/netrom/nr_route.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.nr_neigh = type { %struct.hlist_node, %struct.ax25_address, ptr, ptr, ptr, i8, i8, i16, i32, i8, %struct.refcount_struct }
%struct.ax25_address = type { [7 x i8] }
%struct.nr_node = type { %struct.hlist_node, %struct.ax25_address, [7 x i8], i8, i8, [3 x %struct.nr_route], %struct.refcount_struct, %struct.spinlock }
%struct.nr_route = type { i8, i8, ptr }
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
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
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
%struct.nr_route_struct = type { i32, %struct.ax25_address, [16 x i8], i32, [7 x i8], %struct.ax25_address, i32, i32, [8 x %struct.ax25_address] }
%struct.ax25_digi = type { [8 x %struct.ax25_address], [8 x i8], i8, i8 }
%struct.ax25_cb = type { %struct.hlist_node, %struct.ax25_address, %struct.ax25_address, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i16, i16, i16, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.timer_list, %struct.timer_list, ptr, %struct.refcount_struct }
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
%struct.ax25_dev = type { ptr, ptr, ptr, ptr, ptr, [14 x i32], %struct.ax25_dama_info, %struct.refcount_struct }
%struct.ax25_dama_info = type { i8, %struct.timer_list, i16 }

@nr_neigh_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@nr_neigh_list = internal global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@nr_node_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@nr_node_list = internal global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@nr_dev_first.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/netrom/nr_route.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@nr_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sysctl_netrom_link_fails_count = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@sysctl_netrom_obsolescence_count_initialiser = external dso_local local_unnamed_addr global i32, align 4
@sysctl_netrom_routing_control = external dso_local local_unnamed_addr global i32, align 4
@nr_node_seqops = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @nr_node_start, ptr @nr_node_stop, ptr @nr_node_next, ptr @nr_node_show }, [16 x i8] zeroinitializer }, align 32
@nr_neigh_seqops = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @nr_neigh_start, ptr @nr_neigh_stop, ptr @nr_neigh_next, ptr @nr_neigh_show }, [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nr_neigh_list_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nr_node_list_lock\00", [46 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@sysctl_netrom_default_path_quality = external dso_local local_unnamed_addr global i32, align 4
@nr_neigh_no = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@nr_add_node.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&nr_node->node_lock\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"callsign  mnemonic w n qual obs neigh qual obs neigh qual obs neigh\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%-9s %-7s  %d %d\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  %3d   %d %05d\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"addr  callsign  dev  qual lock count failed digipeaters\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%05d %-9s %-4s  %3d    %d   %3d    %3d\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 35083, i64 35084, i64 35298]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"nr_neigh_list_lock\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"nr_neigh_list\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 41, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"nr_node_list_lock\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"nr_node_list\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 39, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 580, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 767, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"nr_node_seqops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 894, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"nr_neigh_seqops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 950, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 42, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 40, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 695, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 723, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 156, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"nr_neigh_no\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 37, i32 21 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 197, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 869, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 875, i32 19 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 877, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 882, i32 20 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 889, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 925, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 930, i32 19 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 933, i32 42 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [25 x i8] c"../net/netrom/nr_route.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 941, i32 21 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @nr_neigh_list_lock, ptr @nr_neigh_list, ptr @nr_node_list_lock, ptr @nr_node_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nr_node_seqops, ptr @nr_neigh_seqops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @nr_neigh_no, ptr @nr_add_node.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_neigh_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_neigh_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_node_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_node_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_node_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_neigh_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_neigh_no to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_add_node.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_rt_device_down(ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  %0 = load ptr, ptr @nr_neigh_list, align 4
  %tobool2.not124 = icmp eq ptr %0, null
  br i1 %tobool2.not124, label %entry.for.end71_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end71

land.rhs:                                         ; preds = %for.inc60.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %s.0125 = phi ptr [ %2, %for.inc60.land.rhs_crit_edge ], [ %0, %entry.land.rhs_crit_edge ]
  %1 = ptrtoint ptr %s.0125 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s.0125, align 4
  %dev5 = getelementptr inbounds %struct.nr_neigh, ptr %s.0125, i32 0, i32 4
  %3 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev5, align 4
  %cmp = icmp eq ptr %4, %dev
  br i1 %cmp, label %if.then, label %land.rhs.for.inc60_crit_edge

land.rhs.for.inc60_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc60

if.then:                                          ; preds = %land.rhs
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  %5 = load ptr, ptr @nr_node_list, align 4
  %tobool17.not122 = icmp eq ptr %5, null
  br i1 %tobool17.not122, label %if.then.for.end58_crit_edge, label %if.then.land.rhs18_crit_edge

if.then.land.rhs18_crit_edge:                     ; preds = %if.then
  br label %land.rhs18

if.then.for.end58_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end58

land.rhs18:                                       ; preds = %nr_node_unlock.exit.land.rhs18_crit_edge, %if.then.land.rhs18_crit_edge
  %t.0123 = phi ptr [ %7, %nr_node_unlock.exit.land.rhs18_crit_edge ], [ %5, %if.then.land.rhs18_crit_edge ]
  %6 = ptrtoint ptr %t.0123 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t.0123, align 4
  %refcount.i = getelementptr inbounds %struct.nr_node, ptr %t.0123, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs18.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

land.rhs18.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %land.rhs18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %land.rhs18
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.nr_node_lock.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !71

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nr_node_lock.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_lock.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %land.rhs18.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %land.rhs18.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #9
  br label %nr_node_lock.exit

nr_node_lock.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nr_node_lock.exit_crit_edge
  %node_lock.i = getelementptr inbounds %struct.nr_node, ptr %t.0123, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %node_lock.i) #9
  %count = getelementptr inbounds %struct.nr_node, ptr %t.0123, i32 0, i32 4
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp25119.not = icmp eq i8 %11, 0
  br i1 %cmp25119.not, label %nr_node_lock.exit.if.then45_crit_edge, label %for.body27.lr.ph

nr_node_lock.exit.if.then45_crit_edge:            ; preds = %nr_node_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45

for.body27.lr.ph:                                 ; preds = %nr_node_lock.exit
  %routes = getelementptr inbounds %struct.nr_node, ptr %t.0123, i32 0, i32 5
  %arrayidx35 = getelementptr %struct.nr_node, ptr %t.0123, i32 0, i32 5, i32 1
  %arrayidx40 = getelementptr %struct.nr_node, ptr %t.0123, i32 0, i32 5, i32 2
  br label %for.body27

for.body27:                                       ; preds = %for.inc.for.body27_crit_edge, %for.body27.lr.ph
  %12 = phi i8 [ %11, %for.body27.lr.ph ], [ %24, %for.inc.for.body27_crit_edge ]
  %i.0120 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc, %for.inc.for.body27_crit_edge ]
  %neighbour = getelementptr %struct.nr_node, ptr %t.0123, i32 0, i32 5, i32 %i.0120, i32 2
  %13 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %neighbour, align 4
  %cmp28 = icmp eq ptr %14, %s.0125
  br i1 %cmp28, label %if.then30, label %for.body27.for.inc_crit_edge

for.body27.for.inc_crit_edge:                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then30:                                        ; preds = %for.body27
  %dec = add i8 %12, -1
  %15 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %dec, ptr %count, align 1
  %16 = zext i32 %i.0120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0120, label %if.then30.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.then30.sw.bb36_crit_edge
  ]

if.then30.sw.bb36_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.then30.for.inc_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb:                                            ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %arrayidx35, align 4
  %19 = ptrtoint ptr %routes to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %routes, align 4
  br label %sw.bb36

sw.bb36:                                          ; preds = %sw.bb, %if.then30.sw.bb36_crit_edge
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %arrayidx40, align 4
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb36, %if.then30.for.inc_crit_edge, %for.body27.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0120, 1
  %23 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %count, align 1
  %conv = zext i8 %24 to i32
  %cmp25 = icmp ult i32 %inc, %conv
  br i1 %cmp25, label %for.inc.for.body27_crit_edge, label %for.end

for.inc.for.body27_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body27

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp43 = icmp eq i8 %24, 0
  br i1 %cmp43, label %for.end.if.then45_crit_edge, label %for.end.if.end46_crit_edge

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

for.end.if.then45_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45

if.then45:                                        ; preds = %for.end.if.then45_crit_edge, %nr_node_lock.exit.if.then45_crit_edge
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %t.0123, i32 0, i32 1
  %25 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.not.i.i, label %if.then45.hlist_del_init.exit.i_crit_edge, label %if.then.i.i

if.then45.hlist_del_init.exit.i_crit_edge:        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_init.exit.i

if.then.i.i:                                      ; preds = %if.then45
  %27 = ptrtoint ptr %t.0123 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %t.0123, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %26, align 4
  %tobool.not.i3.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %26, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %31 = ptrtoint ptr %t.0123 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %t.0123, align 4
  %32 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hlist_del_init.exit.i

hlist_del_init.exit.i:                            ; preds = %__hlist_del.exit.i.i, %if.then45.hlist_del_init.exit.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i2.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %hlist_del_init.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end46_crit_edge, label %if.then10.i.i.i.i.i, !prof !71

if.end5.i.i.i.i.i.if.end46_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %if.end46

if.then.i2.i:                                     ; preds = %hlist_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef nonnull %t.0123) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then.i2.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end46_crit_edge, %for.end.if.end46_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %node_lock.i) #9
  %call.i.i.i.i.i.i.i103 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i104 = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i104)
  %cmp.i.i.i.i.i105 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i104, 1
  br i1 %cmp.i.i.i.i.i105, label %if.then.i.i109, label %if.end5.i.i.i.i.i107

if.end5.i.i.i.i.i107:                             ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i104)
  %.not.i.i.i.i.i106 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i104, 0
  br i1 %.not.i.i.i.i.i106, label %if.end5.i.i.i.i.i107.nr_node_unlock.exit_crit_edge, label %if.then10.i.i.i.i.i108, !prof !71

if.end5.i.i.i.i.i107.nr_node_unlock.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_unlock.exit

if.then10.i.i.i.i.i108:                           ; preds = %if.end5.i.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %nr_node_unlock.exit

if.then.i.i109:                                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef nonnull %t.0123) #9
  br label %nr_node_unlock.exit

nr_node_unlock.exit:                              ; preds = %if.then.i.i109, %if.then10.i.i.i.i.i108, %if.end5.i.i.i.i.i107.nr_node_unlock.exit_crit_edge
  %tobool17.not = icmp eq ptr %7, null
  br i1 %tobool17.not, label %nr_node_unlock.exit.for.end58_crit_edge, label %nr_node_unlock.exit.land.rhs18_crit_edge

nr_node_unlock.exit.land.rhs18_crit_edge:         ; preds = %nr_node_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs18

nr_node_unlock.exit.for.end58_crit_edge:          ; preds = %nr_node_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end58

for.end58:                                        ; preds = %nr_node_unlock.exit.for.end58_crit_edge, %if.then.for.end58_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  %pprev.i.i.i110 = getelementptr inbounds %struct.hlist_node, ptr %s.0125, i32 0, i32 1
  %35 = ptrtoint ptr %pprev.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pprev.i.i.i110, align 4
  %tobool.not.i.not.i.i111 = icmp eq ptr %36, null
  br i1 %tobool.not.i.not.i.i111, label %for.end58.__nr_remove_neigh.exit_crit_edge, label %if.then.i.i113

for.end58.__nr_remove_neigh.exit_crit_edge:       ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %__nr_remove_neigh.exit

if.then.i.i113:                                   ; preds = %for.end58
  %37 = ptrtoint ptr %s.0125 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s.0125, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %38, ptr %36, align 4
  %tobool.not.i3.i.i112 = icmp eq ptr %38, null
  br i1 %tobool.not.i3.i.i112, label %if.then.i.i113.__hlist_del.exit.i.i116_crit_edge, label %do.body13.i.i.i115

if.then.i.i113.__hlist_del.exit.i.i116_crit_edge: ; preds = %if.then.i.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i116

do.body13.i.i.i115:                               ; preds = %if.then.i.i113
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i114 = getelementptr inbounds %struct.hlist_node, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %pprev14.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %36, ptr %pprev14.i.i.i114, align 4
  br label %__hlist_del.exit.i.i116

__hlist_del.exit.i.i116:                          ; preds = %do.body13.i.i.i115, %if.then.i.i113.__hlist_del.exit.i.i116_crit_edge
  %41 = ptrtoint ptr %s.0125 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %s.0125, align 4
  %42 = ptrtoint ptr %pprev.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %pprev.i.i.i110, align 4
  br label %__nr_remove_neigh.exit

__nr_remove_neigh.exit:                           ; preds = %__hlist_del.exit.i.i116, %for.end58.__nr_remove_neigh.exit_crit_edge
  tail call fastcc void @nr_neigh_put(ptr noundef nonnull %s.0125) #9
  br label %for.inc60

for.inc60:                                        ; preds = %__nr_remove_neigh.exit, %land.rhs.for.inc60_crit_edge
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %for.inc60.for.end71_crit_edge, label %for.inc60.land.rhs_crit_edge

for.inc60.land.rhs_crit_edge:                     ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.inc60.for.end71_crit_edge:                    ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end71

for.end71:                                        ; preds = %for.inc60.for.end71_crit_edge, %entry.for.end71_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nr_node_unlock(ptr noundef %nr_node) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %node_lock = getelementptr inbounds %struct.nr_node, ptr %nr_node, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %node_lock) #9
  %refcount.i = getelementptr inbounds %struct.nr_node, ptr %nr_node, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.nr_node_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !71

if.end5.i.i.i.i.nr_node_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %nr_node_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef %nr_node) #9
  br label %nr_node_put.exit

nr_node_put.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.nr_node_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nr_dev_first() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @nr_dev_first.__warned, align 1
  br i1 %.b40, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nr_dev_first.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 580, ptr noundef nonnull @.str.1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn51 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not53 = icmp eq ptr %.pn51, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not53, label %do.end.dev_hold.exit_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.dev_hold.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_hold.exit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn55 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn51, %do.end.for.body_crit_edge ]
  %first.054 = phi ptr [ %first.1, %for.inc.for.body_crit_edge ], [ null, %do.end.for.body_crit_edge ]
  %dev.056 = getelementptr i8, ptr %.pn55, i32 -40
  %flags = getelementptr i8, ptr %.pn55, i32 64
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %land.lhs.true10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true10:                                  ; preds = %for.body
  %type = getelementptr i8, ptr %.pn55, i32 168
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp11 = icmp eq i16 %7, 0
  br i1 %cmp11, label %if.then13, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true10
  %cmp14 = icmp eq ptr %first.054, null
  br i1 %cmp14, label %if.then13.if.then21_crit_edge, label %lor.lhs.false

if.then13.if.then21_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.then13
  %call18 = tail call i32 @strncmp(ptr noundef %dev.056, ptr noundef nonnull %first.054, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %lor.lhs.false.if.then21_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.then13.if.then21_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %first.1 = phi ptr [ %dev.056, %if.then21 ], [ %first.054, %lor.lhs.false.for.inc_crit_edge ], [ %first.054, %land.lhs.true10.for.inc_crit_edge ], [ %first.054, %for.body.for.inc_crit_edge ]
  %8 = ptrtoint ptr %.pn55 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load volatile ptr, ptr %.pn55, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool.not.i41 = icmp eq ptr %first.1, null
  br i1 %tobool.not.i41, label %for.end.dev_hold.exit_crit_edge, label %do.body1.i

for.end.dev_hold.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %for.end
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !76
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %first.1, i32 0, i32 118
  %10 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcpu_refcnt.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %18, %12
  %19 = inttoptr i32 %add.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add13.i = add i32 %21, 1
  store i32 %add13.i, ptr %19, align 4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !77
  %and.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !70

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #9, !srcloc !78
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %for.end.dev_hold.exit_crit_edge, %do.end.dev_hold.exit_crit_edge
  %first.0.lcssa59 = phi ptr [ null, %for.end.dev_hold.exit_crit_edge ], [ %first.1, %do.end30.i ], [ null, %do.end.dev_hold.exit_crit_edge ]
  %call.i42 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i42, label %dev_hold.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i45

dev_hold.exit.rcu_read_unlock.exit_crit_edge:     ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i45:                                ; preds = %dev_hold.exit
  %call1.i43 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i47

land.lhs.true.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i47:                               ; preds = %land.lhs.true.i45
  %.b4.i46 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46, label %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, label %if.then.i48

land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i48:                                      ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i48, %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, %dev_hold.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %23 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i.i49 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i49 to ptr
  %preempt_count.i.i.i.i50 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i50, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i50, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %first.0.lcssa59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nr_dev_get(ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @nr_dev_get.__warned, align 1
  br i1 %.b33, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nr_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 599, ptr noundef nonnull @.str.1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn46 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not47 = icmp eq ptr %.pn46, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not47, label %do.end.out_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn48 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn46, %do.end.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %.pn48, i32 64
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %land.lhs.true10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true10:                                  ; preds = %for.body
  %type = getelementptr i8, ptr %.pn48, i32 168
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp11 = icmp eq i16 %7, 0
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %dev_addr = getelementptr i8, ptr %.pn48, i32 536
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %call14 = tail call i32 @ax25cmp(ptr noundef %addr, ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %land.lhs.true13.for.inc_crit_edge

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true13
  %dev.0.le = getelementptr i8, ptr %.pn48, i32 -40
  %tobool.not.i34 = icmp eq ptr %dev.0.le, null
  br i1 %tobool.not.i34, label %if.then17.out_crit_edge, label %do.body1.i

if.then17.out_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body1.i:                                       ; preds = %if.then17
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !76
  %pcpu_refcnt.i = getelementptr i8, ptr %.pn48, i32 940
  %11 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i = add i32 %22, 1
  store i32 %add13.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !77
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !70

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #9, !srcloc !78
  br label %out

for.inc:                                          ; preds = %land.lhs.true13.for.inc_crit_edge, %land.lhs.true10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %.pn48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load volatile ptr, ptr %.pn48, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %do.end30.i, %if.then17.out_crit_edge, %do.end.out_crit_edge
  %dev.1 = phi ptr [ null, %if.then17.out_crit_edge ], [ %dev.0.le, %do.end30.i ], [ null, %do.end.out_crit_edge ], [ null, %for.inc.out_crit_edge ]
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i35, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %out
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %25 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i.i42 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %dev.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25cmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nr_rt_ioctl(i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %nr_route = alloca %struct.nr_route_struct, align 4
  %digi = alloca %struct.ax25_digi, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %nr_route) #9
  %0 = call ptr @memset(ptr %nr_route, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %digi) #9
  %1 = call ptr @memset(ptr %digi, i32 255, i32 66)
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35083, label %if.then.i
    i32 35084, label %if.then.i65
    i32 35298, label %sw.bb49
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 112, i32 -1226833920) #12, !srcloc !80
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !71

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %nr_route, i32 noundef 112) #9
  %4 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !81
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %nr_route, ptr noundef %arg, i32 noundef 112) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #9, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !71

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 112, %if.then.i.if.then11.i.i_crit_edge ], [ 112, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 112, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %nr_route, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %ndigis = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 7
  %8 = ptrtoint ptr %ndigis to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ndigis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp = icmp ugt i32 %9, 8
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %device = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 2
  %call.i = call ptr @dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef %device) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end2.cleanup_crit_edge, label %if.end.i

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end2
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 14
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.do.body1.i.i_crit_edge, label %land.lhs.true.i

if.end.i.do.body1.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %type.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 32
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %13)
  %cmp1.i = icmp eq i16 %13, 3
  br i1 %cmp1.i, label %if.end6, label %land.lhs.true.i.do.body1.i.i_crit_edge

land.lhs.true.i.do.body1.i.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %land.lhs.true.i.do.body1.i.i_crit_edge, %if.end.i.do.body1.i.i_crit_edge
  %14 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !76
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %15 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %23, %17
  %24 = inttoptr i32 %add.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add13.i.i = add i32 %26, -1
  store i32 %add13.i.i, ptr %24, align 4
  %27 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !77
  %and.i.i.i.i83 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i83)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i83, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !70

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #9, !srcloc !78
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.i
  %28 = ptrtoint ptr %nr_route to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_route, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %29, label %if.end6.do.body1.i_crit_edge [
    i32 1, label %sw.bb7
    i32 0, label %sw.bb19
  ]

if.end6.do.body1.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

sw.bb7:                                           ; preds = %if.end6
  %mnemonic = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 4
  %call9 = call i32 @strnlen(ptr noundef %mnemonic, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 7
  br i1 %cmp10, label %sw.bb7.do.body1.i_crit_edge, label %if.end12

sw.bb7.do.body1.i_crit_edge:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

if.end12:                                         ; preds = %sw.bb7
  %callsign = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 1
  %neighbour = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 5
  %31 = ptrtoint ptr %ndigis to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ndigis, align 4
  %digipeaters = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i84 = icmp eq i32 %32, 0
  br i1 %cmp.i84, label %if.end12.nr_call_to_digi.exit_crit_edge, label %for.cond.preheader.i

if.end12.nr_call_to_digi.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_call_to_digi.exit

for.cond.preheader.i:                             ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp114.i = icmp sgt i32 %32, 0
  br i1 %cmp114.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x %struct.ax25_address], ptr %digi, i32 0, i32 %i.015.i
  %arrayidx2.i = getelementptr %struct.ax25_address, ptr %digipeaters, i32 %i.015.i
  %33 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx2.i, i32 7)
  %arrayidx3.i = getelementptr %struct.ax25_digi, ptr %digi, i32 0, i32 1, i32 %i.015.i
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx3.i, align 1
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %32
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %conv.i = trunc i32 %32 to i8
  %ndigi.i = getelementptr inbounds %struct.ax25_digi, ptr %digi, i32 0, i32 2
  %35 = ptrtoint ptr %ndigi.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv.i, ptr %ndigi.i, align 1
  %lastrepeat.i = getelementptr inbounds %struct.ax25_digi, ptr %digi, i32 0, i32 3
  %36 = ptrtoint ptr %lastrepeat.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %lastrepeat.i, align 1
  br label %nr_call_to_digi.exit

nr_call_to_digi.exit:                             ; preds = %for.end.i, %if.end12.nr_call_to_digi.exit_crit_edge
  %retval.0.i85 = phi ptr [ %digi, %for.end.i ], [ null, %if.end12.nr_call_to_digi.exit_crit_edge ]
  %quality = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 3
  %37 = ptrtoint ptr %quality to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %quality, align 4
  %obs_count = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 6
  %39 = ptrtoint ptr %obs_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %obs_count, align 4
  %call18 = call fastcc i32 @nr_add_node(ptr noundef %callsign, ptr noundef %mnemonic, ptr noundef %neighbour, ptr noundef %retval.0.i85, ptr noundef nonnull %call.i, i32 noundef %38, i32 noundef %40)
  br label %do.body1.i

sw.bb19:                                          ; preds = %if.end6
  %callsign20 = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 1
  %41 = ptrtoint ptr %ndigis to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ndigis, align 4
  %digipeaters22 = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i86 = icmp eq i32 %42, 0
  br i1 %cmp.i86, label %sw.bb19.nr_call_to_digi.exit101_crit_edge, label %for.cond.preheader.i88

sw.bb19.nr_call_to_digi.exit101_crit_edge:        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_call_to_digi.exit101

for.cond.preheader.i88:                           ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp114.i87 = icmp sgt i32 %42, 0
  br i1 %cmp114.i87, label %for.cond.preheader.i88.for.body.i95_crit_edge, label %for.cond.preheader.i88.for.end.i99_crit_edge

for.cond.preheader.i88.for.end.i99_crit_edge:     ; preds = %for.cond.preheader.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i99

for.cond.preheader.i88.for.body.i95_crit_edge:    ; preds = %for.cond.preheader.i88
  br label %for.body.i95

for.body.i95:                                     ; preds = %for.body.i95.for.body.i95_crit_edge, %for.cond.preheader.i88.for.body.i95_crit_edge
  %i.015.i89 = phi i32 [ %inc.i93, %for.body.i95.for.body.i95_crit_edge ], [ 0, %for.cond.preheader.i88.for.body.i95_crit_edge ]
  %arrayidx.i90 = getelementptr [8 x %struct.ax25_address], ptr %digi, i32 0, i32 %i.015.i89
  %arrayidx2.i91 = getelementptr %struct.ax25_address, ptr %digipeaters22, i32 %i.015.i89
  %43 = call ptr @memcpy(ptr %arrayidx.i90, ptr %arrayidx2.i91, i32 7)
  %arrayidx3.i92 = getelementptr %struct.ax25_digi, ptr %digi, i32 0, i32 1, i32 %i.015.i89
  %44 = ptrtoint ptr %arrayidx3.i92 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx3.i92, align 1
  %inc.i93 = add nuw nsw i32 %i.015.i89, 1
  %exitcond.not.i94 = icmp eq i32 %inc.i93, %42
  br i1 %exitcond.not.i94, label %for.body.i95.for.end.i99_crit_edge, label %for.body.i95.for.body.i95_crit_edge

for.body.i95.for.body.i95_crit_edge:              ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i95

for.body.i95.for.end.i99_crit_edge:               ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i99

for.end.i99:                                      ; preds = %for.body.i95.for.end.i99_crit_edge, %for.cond.preheader.i88.for.end.i99_crit_edge
  %conv.i96 = trunc i32 %42 to i8
  %ndigi.i97 = getelementptr inbounds %struct.ax25_digi, ptr %digi, i32 0, i32 2
  %45 = ptrtoint ptr %ndigi.i97 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i96, ptr %ndigi.i97, align 1
  %lastrepeat.i98 = getelementptr inbounds %struct.ax25_digi, ptr %digi, i32 0, i32 3
  %46 = ptrtoint ptr %lastrepeat.i98 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %lastrepeat.i98, align 1
  br label %nr_call_to_digi.exit101

nr_call_to_digi.exit101:                          ; preds = %for.end.i99, %sw.bb19.nr_call_to_digi.exit101_crit_edge
  %retval.0.i100 = phi ptr [ %digi, %for.end.i99 ], [ null, %sw.bb19.nr_call_to_digi.exit101_crit_edge ]
  %quality25 = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 3
  %47 = ptrtoint ptr %quality25 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %quality25, align 4
  %call26 = call fastcc i32 @nr_add_neigh(ptr noundef %callsign20, ptr noundef %retval.0.i100, ptr noundef nonnull %call.i, i32 noundef %48)
  br label %do.body1.i

do.body1.i:                                       ; preds = %nr_call_to_digi.exit101, %nr_call_to_digi.exit, %sw.bb7.do.body1.i_crit_edge, %if.end6.do.body1.i_crit_edge
  %ret.0 = phi i32 [ %call26, %nr_call_to_digi.exit101 ], [ %call18, %nr_call_to_digi.exit ], [ -22, %sw.bb7.do.body1.i_crit_edge ], [ -22, %if.end6.do.body1.i_crit_edge ]
  %49 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !76
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %50 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcpu_refcnt.i, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu.i, align 4
  %arrayidx.i103 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i103, align 4
  %add.i = add i32 %58, %52
  %59 = inttoptr i32 %add.i to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add13.i = add i32 %61, -1
  store i32 %add13.i, ptr %59, align 4
  %62 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !77
  %and.i.i.i104 = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i104)
  %tobool24.not.i = icmp eq i32 %and.i.i.i104, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !70

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %49) #9, !srcloc !78
  br label %cleanup

if.then.i65:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 156) #9
  %call.i.i64 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i64, label %if.then.i65.if.then11.i.i80_crit_edge, label %land.lhs.true.i.i68

if.then.i65.if.then11.i.i80_crit_edge:            ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i80

land.lhs.true.i.i68:                              ; preds = %if.then.i65
  %63 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 112, i32 -1226833920) #12, !srcloc !80
  %asmresult.i.i66 = extractvalue { i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i66)
  %cmp.i.i67 = icmp eq i32 %asmresult.i.i66, 0
  br i1 %cmp.i.i67, label %if.end.i.i76, label %land.lhs.true.i.i68.if.then11.i.i80_crit_edge, !prof !71

land.lhs.true.i.i68.if.then11.i.i80_crit_edge:    ; preds = %land.lhs.true.i.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i80

if.end.i.i76:                                     ; preds = %land.lhs.true.i.i68
  %call.i.i.i69 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %nr_route, i32 noundef 112) #9
  %64 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i.i.i70 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i70 to ptr
  %cpu_domain.i.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 4
  %66 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i71) #5, !srcloc !81
  %and.i.i.i.i72 = and i32 %66, -13
  %or.i.i.i.i73 = or i32 %and.i.i.i.i72, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i73) #9, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  %call1.i.i.i74 = call i32 @arm_copy_from_user(ptr noundef nonnull %nr_route, ptr noundef %arg, i32 noundef 112) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #9, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i74)
  %tobool4.not.i.i75 = icmp eq i32 %call1.i.i.i74, 0
  br i1 %tobool4.not.i.i75, label %if.end31, label %if.end.i.i76.if.then11.i.i80_crit_edge, !prof !71

if.end.i.i76.if.then11.i.i80_crit_edge:           ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i80

if.then11.i.i80:                                  ; preds = %if.end.i.i76.if.then11.i.i80_crit_edge, %land.lhs.true.i.i68.if.then11.i.i80_crit_edge, %if.then.i65.if.then11.i.i80_crit_edge
  %res.03.i.i77 = phi i32 [ %call1.i.i.i74, %if.end.i.i76.if.then11.i.i80_crit_edge ], [ 112, %if.then.i65.if.then11.i.i80_crit_edge ], [ 112, %land.lhs.true.i.i68.if.then11.i.i80_crit_edge ]
  %sub.i.i78 = sub i32 112, %res.03.i.i77
  %add.ptr.i.i79 = getelementptr i8, ptr %nr_route, i32 %sub.i.i78
  %67 = call ptr @memset(ptr %add.ptr.i.i79, i32 0, i32 %res.03.i.i77)
  br label %cleanup

if.end31:                                         ; preds = %if.end.i.i76
  %device32 = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 2
  %call.i105 = call ptr @dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef %device32) #9
  %cmp.i106 = icmp eq ptr %call.i105, null
  br i1 %cmp.i106, label %if.end31.cleanup_crit_edge, label %if.end.i110

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i110:                                      ; preds = %if.end31
  %flags.i107 = getelementptr inbounds %struct.net_device, ptr %call.i105, i32 0, i32 14
  %68 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i107, align 8
  %and.i108 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %tobool.not.i109 = icmp eq i32 %and.i108, 0
  br i1 %tobool.not.i109, label %if.end.i110.do.body1.i.i122_crit_edge, label %land.lhs.true.i113

if.end.i110.do.body1.i.i122_crit_edge:            ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i122

land.lhs.true.i113:                               ; preds = %if.end.i110
  %type.i111 = getelementptr inbounds %struct.net_device, ptr %call.i105, i32 0, i32 32
  %70 = ptrtoint ptr %type.i111 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %type.i111, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %71)
  %cmp1.i112 = icmp eq i16 %71, 3
  br i1 %cmp1.i112, label %if.end37, label %land.lhs.true.i113.do.body1.i.i122_crit_edge

land.lhs.true.i113.do.body1.i.i122_crit_edge:     ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i122

do.body1.i.i122:                                  ; preds = %land.lhs.true.i113.do.body1.i.i122_crit_edge, %if.end.i110.do.body1.i.i122_crit_edge
  %72 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !76
  %pcpu_refcnt.i.i114 = getelementptr inbounds %struct.net_device, ptr %call.i105, i32 0, i32 118
  %73 = ptrtoint ptr %pcpu_refcnt.i.i114 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pcpu_refcnt.i.i114, align 4
  %75 = ptrtoint ptr %74 to i32
  %76 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i115 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i115 to ptr
  %cpu.i.i116 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %cpu.i.i116 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cpu.i.i116, align 4
  %arrayidx.i.i117 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx.i.i117 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i117, align 4
  %add.i.i118 = add i32 %81, %75
  %82 = inttoptr i32 %add.i.i118 to ptr
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %add13.i.i119 = add i32 %84, -1
  store i32 %add13.i.i119, ptr %82, align 4
  %85 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !77
  %and.i.i.i.i120 = and i32 %85, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i120)
  %tobool24.not.i.i121 = icmp eq i32 %and.i.i.i.i120, 0
  br i1 %tobool24.not.i.i121, label %if.then28.i.i123, label %do.body1.i.i122.dev_put.exit.i124_crit_edge, !prof !70

do.body1.i.i122.dev_put.exit.i124_crit_edge:      ; preds = %do.body1.i.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit.i124

if.then28.i.i123:                                 ; preds = %do.body1.i.i122
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit.i124

dev_put.exit.i124:                                ; preds = %if.then28.i.i123, %do.body1.i.i122.dev_put.exit.i124_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %72) #9, !srcloc !78
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true.i113
  %86 = ptrtoint ptr %nr_route to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nr_route, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %87, label %if.end37.do.body1.i136_crit_edge [
    i32 1, label %sw.bb39
    i32 0, label %sw.bb43
  ]

if.end37.do.body1.i136_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i136

sw.bb39:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %callsign40 = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 1
  %neighbour41 = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 5
  %call42 = call fastcc i32 @nr_del_node(ptr noundef %callsign40, ptr noundef %neighbour41, ptr noundef nonnull %call.i105)
  br label %do.body1.i136

sw.bb43:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %callsign44 = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 1
  %quality45 = getelementptr inbounds %struct.nr_route_struct, ptr %nr_route, i32 0, i32 3
  %89 = ptrtoint ptr %quality45 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %quality45, align 4
  %call46 = call fastcc i32 @nr_del_neigh(ptr noundef %callsign44, ptr noundef nonnull %call.i105, i32 noundef %90)
  br label %do.body1.i136

do.body1.i136:                                    ; preds = %sw.bb43, %sw.bb39, %if.end37.do.body1.i136_crit_edge
  %ret.1 = phi i32 [ %call46, %sw.bb43 ], [ %call42, %sw.bb39 ], [ -22, %if.end37.do.body1.i136_crit_edge ]
  %91 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !76
  %pcpu_refcnt.i128 = getelementptr inbounds %struct.net_device, ptr %call.i105, i32 0, i32 118
  %92 = ptrtoint ptr %pcpu_refcnt.i128 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pcpu_refcnt.i128, align 4
  %94 = ptrtoint ptr %93 to i32
  %95 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i129 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i129 to ptr
  %cpu.i130 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %cpu.i130 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cpu.i130, align 4
  %arrayidx.i131 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %98
  %99 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i131, align 4
  %add.i132 = add i32 %100, %94
  %101 = inttoptr i32 %add.i132 to ptr
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %add13.i133 = add i32 %103, -1
  store i32 %add13.i133, ptr %101, align 4
  %104 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !77
  %and.i.i.i134 = and i32 %104, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i134)
  %tobool24.not.i135 = icmp eq i32 %and.i.i.i134, 0
  br i1 %tobool24.not.i135, label %if.then28.i137, label %do.body1.i136.dev_put.exit139_crit_edge, !prof !70

do.body1.i136.dev_put.exit139_crit_edge:          ; preds = %do.body1.i136
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit139

if.then28.i137:                                   ; preds = %do.body1.i136
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit139

dev_put.exit139:                                  ; preds = %if.then28.i137, %do.body1.i136.dev_put.exit139_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %91) #9, !srcloc !78
  br label %cleanup

sw.bb49:                                          ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  %105 = load ptr, ptr @nr_node_list, align 4
  %tobool2.not15.i = icmp eq ptr %105, null
  br i1 %tobool2.not15.i, label %sw.bb49.nr_dec_obs.exit_crit_edge, label %sw.bb49.land.rhs.i_crit_edge

sw.bb49.land.rhs.i_crit_edge:                     ; preds = %sw.bb49
  br label %land.rhs.i

sw.bb49.nr_dec_obs.exit_crit_edge:                ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_dec_obs.exit

land.rhs.i:                                       ; preds = %nr_node_unlock.exit.i.land.rhs.i_crit_edge, %sw.bb49.land.rhs.i_crit_edge
  %s.016.i = phi ptr [ %107, %nr_node_unlock.exit.i.land.rhs.i_crit_edge ], [ %105, %sw.bb49.land.rhs.i_crit_edge ]
  %106 = ptrtoint ptr %s.016.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s.016.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.nr_node, ptr %s.016.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %108 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %108, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %land.rhs.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !70

land.rhs.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %land.rhs.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %109 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %109)
  %.not.i.i.i.i.i = icmp sgt i32 %109, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.nr_node_lock.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !71

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.nr_node_lock.exit.i_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_lock.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %land.rhs.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %land.rhs.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %nr_node_lock.exit.i

nr_node_lock.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.nr_node_lock.exit.i_crit_edge
  %node_lock.i.i = getelementptr inbounds %struct.nr_node, ptr %s.016.i, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %node_lock.i.i) #9
  %count.i = getelementptr inbounds %struct.nr_node, ptr %s.016.i, i32 0, i32 4
  %110 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %cmp12.not.i = icmp eq i8 %111, 0
  br i1 %cmp12.not.i, label %nr_node_lock.exit.i.if.then38.i_crit_edge, label %for.body7.lr.ph.i

nr_node_lock.exit.i.if.then38.i_crit_edge:        ; preds = %nr_node_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

for.body7.lr.ph.i:                                ; preds = %nr_node_lock.exit.i
  %routes.i = getelementptr inbounds %struct.nr_node, ptr %s.016.i, i32 0, i32 5
  %arrayidx23.i = getelementptr %struct.nr_node, ptr %s.016.i, i32 0, i32 5, i32 1
  %arrayidx28.i = getelementptr %struct.nr_node, ptr %s.016.i, i32 0, i32 5, i32 2
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc.i.for.body7.i_crit_edge, %for.body7.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body7.lr.ph.i ], [ %inc.i143, %for.inc.i.for.body7.i_crit_edge ]
  %obs_count.i = getelementptr %struct.nr_node, ptr %s.016.i, i32 0, i32 5, i32 %i.013.i, i32 1
  %112 = ptrtoint ptr %obs_count.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %obs_count.i, align 1
  %114 = zext i8 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %113, label %sw.default.i [
    i8 0, label %for.body7.i.for.inc.ithread-pre-split_crit_edge
    i8 1, label %sw.bb.i
  ]

for.body7.i.for.inc.ithread-pre-split_crit_edge:  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.ithread-pre-split

sw.bb.i:                                          ; preds = %for.body7.i
  %neighbour.i = getelementptr %struct.nr_node, ptr %s.016.i, i32 0, i32 5, i32 %i.013.i, i32 2
  %115 = ptrtoint ptr %neighbour.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %neighbour.i, align 4
  %count11.i = getelementptr inbounds %struct.nr_neigh, ptr %116, i32 0, i32 7
  %117 = ptrtoint ptr %count11.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %count11.i, align 2
  %dec.i = add i16 %118, -1
  store i16 %dec.i, ptr %count11.i, align 2
  tail call fastcc void @nr_neigh_put(ptr noundef %116) #9
  %119 = ptrtoint ptr %count11.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %count11.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %cmp14.i = icmp eq i16 %120, 0
  br i1 %cmp14.i, label %land.lhs.true.i140, label %sw.bb.i.if.end.i142_crit_edge

sw.bb.i.if.end.i142_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i142

land.lhs.true.i140:                               ; preds = %sw.bb.i
  %locked.i = getelementptr inbounds %struct.nr_neigh, ptr %116, i32 0, i32 6
  %121 = ptrtoint ptr %locked.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %locked.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool16.not.i = icmp eq i8 %122, 0
  br i1 %tobool16.not.i, label %if.then.i141, label %land.lhs.true.i140.if.end.i142_crit_edge

land.lhs.true.i140.if.end.i142_crit_edge:         ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i142

if.then.i141:                                     ; preds = %land.lhs.true.i140
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %116, i32 0, i32 1
  %123 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %124, null
  br i1 %tobool.not.i.not.i.i.i.i, label %if.then.i141.nr_remove_neigh.exit.i_crit_edge, label %if.then.i.i.i.i

if.then.i141.nr_remove_neigh.exit.i_crit_edge:    ; preds = %if.then.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_remove_neigh.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then.i141
  %125 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %116, align 4
  %127 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %126, ptr %124, align 4
  %tobool.not.i3.i.i.i.i = icmp eq ptr %126, null
  br i1 %tobool.not.i3.i.i.i.i, label %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %126, i32 0, i32 1
  %128 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %124, ptr %pprev14.i.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i.i

__hlist_del.exit.i.i.i.i:                         ; preds = %do.body13.i.i.i.i.i, %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge
  %129 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %116, align 4
  %130 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  br label %nr_remove_neigh.exit.i

nr_remove_neigh.exit.i:                           ; preds = %__hlist_del.exit.i.i.i.i, %if.then.i141.nr_remove_neigh.exit.i_crit_edge
  tail call fastcc void @nr_neigh_put(ptr noundef %116) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  br label %if.end.i142

if.end.i142:                                      ; preds = %nr_remove_neigh.exit.i, %land.lhs.true.i140.if.end.i142_crit_edge, %sw.bb.i.if.end.i142_crit_edge
  %131 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %count.i, align 1
  %dec18.i = add i8 %132, -1
  store i8 %dec18.i, ptr %count.i, align 1
  %133 = zext i32 %i.013.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %i.013.i, label %if.end.i142.for.inc.i_crit_edge [
    i32 0, label %sw.bb19.i
    i32 1, label %if.end.i142.sw.bb24.i_crit_edge
  ]

if.end.i142.sw.bb24.i_crit_edge:                  ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24.i

if.end.i142.for.inc.i_crit_edge:                  ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb19.i:                                        ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 8)
  %135 = load i64, ptr %arrayidx23.i, align 4
  %136 = ptrtoint ptr %routes.i to i32
  call void @__asan_storeN_noabort(i32 %136, i32 8)
  store i64 %135, ptr %routes.i, align 4
  br label %sw.bb24.i

sw.bb24.i:                                        ; preds = %sw.bb19.i, %if.end.i142.sw.bb24.i_crit_edge
  %137 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_loadN_noabort(i32 %137, i32 8)
  %138 = load i64, ptr %arrayidx28.i, align 4
  %139 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_storeN_noabort(i32 %139, i32 8)
  store i64 %138, ptr %arrayidx23.i, align 4
  br label %for.inc.ithread-pre-split

sw.default.i:                                     ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec32.i = add i8 %113, -1
  %140 = ptrtoint ptr %obs_count.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %dec32.i, ptr %obs_count.i, align 1
  br label %for.inc.ithread-pre-split

for.inc.ithread-pre-split:                        ; preds = %sw.default.i, %sw.bb24.i, %for.body7.i.for.inc.ithread-pre-split_crit_edge
  %141 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %.pr = load i8, ptr %count.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.ithread-pre-split, %if.end.i142.for.inc.i_crit_edge
  %142 = phi i8 [ %.pr, %for.inc.ithread-pre-split ], [ %dec18.i, %if.end.i142.for.inc.i_crit_edge ]
  %inc.i143 = add nuw nsw i32 %i.013.i, 1
  %conv.i144 = zext i8 %142 to i32
  %cmp.i145 = icmp ult i32 %inc.i143, %conv.i144
  br i1 %cmp.i145, label %for.inc.i.for.body7.i_crit_edge, label %for.end.i146

for.inc.i.for.body7.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7.i

for.end.i146:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %cmp36.i = icmp eq i8 %142, 0
  br i1 %cmp36.i, label %for.end.i146.if.then38.i_crit_edge, label %for.end.i146.if.end39.i_crit_edge

for.end.i146.if.end39.i_crit_edge:                ; preds = %for.end.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

for.end.i146.if.then38.i_crit_edge:               ; preds = %for.end.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then38.i:                                      ; preds = %for.end.i146.if.then38.i_crit_edge, %nr_node_lock.exit.i.if.then38.i_crit_edge
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %s.016.i, i32 0, i32 1
  %143 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %144, null
  br i1 %tobool.not.i.not.i.i.i, label %if.then38.i.hlist_del_init.exit.i.i_crit_edge, label %if.then.i.i.i

if.then38.i.hlist_del_init.exit.i.i_crit_edge:    ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_init.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then38.i
  %145 = ptrtoint ptr %s.016.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %s.016.i, align 4
  %147 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %146, ptr %144, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %146, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %146, i32 0, i32 1
  %148 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %144, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %149 = ptrtoint ptr %s.016.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %s.016.i, align 4
  %150 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hlist_del_init.exit.i.i

hlist_del_init.exit.i.i:                          ; preds = %__hlist_del.exit.i.i.i, %if.then38.i.hlist_del_init.exit.i.i_crit_edge
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %151 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %151, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i2.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %hlist_del_init.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end39.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !71

if.end5.i.i.i.i.i.i.if.end39.i_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #9
  br label %if.end39.i

if.then.i2.i.i:                                   ; preds = %hlist_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef nonnull %s.016.i) #9
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then.i2.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end39.i_crit_edge, %for.end.i146.if.end39.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %node_lock.i.i) #9
  %call.i.i.i.i.i.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %152 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i5.i = extractvalue { i32, i32, i32 } %152, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i5.i)
  %cmp.i.i.i.i.i6.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i5.i, 1
  br i1 %cmp.i.i.i.i.i6.i, label %if.then.i.i10.i, label %if.end5.i.i.i.i.i8.i

if.end5.i.i.i.i.i8.i:                             ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i5.i)
  %.not.i.i.i.i.i7.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i5.i, 0
  br i1 %.not.i.i.i.i.i7.i, label %if.end5.i.i.i.i.i8.i.nr_node_unlock.exit.i_crit_edge, label %if.then10.i.i.i.i.i9.i, !prof !71

if.end5.i.i.i.i.i8.i.nr_node_unlock.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_unlock.exit.i

if.then10.i.i.i.i.i9.i:                           ; preds = %if.end5.i.i.i.i.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #9
  br label %nr_node_unlock.exit.i

if.then.i.i10.i:                                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef nonnull %s.016.i) #9
  br label %nr_node_unlock.exit.i

nr_node_unlock.exit.i:                            ; preds = %if.then.i.i10.i, %if.then10.i.i.i.i.i9.i, %if.end5.i.i.i.i.i8.i.nr_node_unlock.exit.i_crit_edge
  %tobool2.not.i = icmp eq ptr %107, null
  br i1 %tobool2.not.i, label %nr_node_unlock.exit.i.nr_dec_obs.exit_crit_edge, label %nr_node_unlock.exit.i.land.rhs.i_crit_edge

nr_node_unlock.exit.i.land.rhs.i_crit_edge:       ; preds = %nr_node_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

nr_node_unlock.exit.i.nr_dec_obs.exit_crit_edge:  ; preds = %nr_node_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_dec_obs.exit

nr_dec_obs.exit:                                  ; preds = %nr_node_unlock.exit.i.nr_dec_obs.exit_crit_edge, %sw.bb49.nr_dec_obs.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %nr_dec_obs.exit, %dev_put.exit139, %dev_put.exit.i124, %if.end31.cleanup_crit_edge, %if.then11.i.i80, %dev_put.exit, %dev_put.exit.i, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nr_dec_obs.exit ], [ %ret.1, %dev_put.exit139 ], [ %ret.0, %dev_put.exit ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -22, %dev_put.exit.i ], [ -22, %if.end2.cleanup_crit_edge ], [ -14, %if.then11.i.i80 ], [ -22, %dev_put.exit.i124 ], [ -22, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %digi) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %nr_route) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nr_add_node(ptr noundef %nr, ptr nocapture noundef readonly %mnemonic, ptr noundef %ax25, ptr noundef %ax25_digi, ptr noundef %dev, i32 noundef %quality, i32 noundef %obs_count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nr_dev_get(ptr noundef %nr)
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end, label %do.body1.i

do.body1.i:                                       ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !76
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, %3
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13.i = add i32 %12, -1
  store i32 %add13.i, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !77
  %and.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !70

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !78
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @nr_node_get(ptr noundef %nr)
  %call2 = tail call fastcc ptr @nr_neigh_get_dev(ptr noundef %ax25, ptr noundef %dev)
  %cmp3.not = icmp eq ptr %call2, null
  br i1 %cmp3.not, label %if.then58, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %failed = getelementptr inbounds %struct.nr_neigh, ptr %call2, i32 0, i32 9
  %14 = ptrtoint ptr %failed to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %failed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp4.not = icmp ne i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quality)
  %cmp7 = icmp eq i32 %quality, 0
  %or.cond = and i1 %cmp7, %cmp4.not
  br i1 %or.cond, label %if.then9, label %if.end45.thread526

if.then9:                                         ; preds = %land.lhs.true
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  %nr_nodet.0555 = load ptr, ptr @nr_node_list, align 4
  %tobool11.not556 = icmp eq ptr %nr_nodet.0555, null
  br i1 %tobool11.not556, label %if.then9.if.end45_crit_edge, label %if.then9.for.body_crit_edge

if.then9.for.body_crit_edge:                      ; preds = %if.then9
  br label %for.body

if.then9.if.end45_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

for.body:                                         ; preds = %nr_node_unlock.exit.for.body_crit_edge, %if.then9.for.body_crit_edge
  %nr_nodet.0557 = phi ptr [ %nr_nodet.0, %nr_node_unlock.exit.for.body_crit_edge ], [ %nr_nodet.0555, %if.then9.for.body_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.nr_node, ptr %nr_nodet.0557, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %for.body.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

for.body.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.body
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.nr_node_lock.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !71

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nr_node_lock.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_lock.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %for.body.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %for.body.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #9
  br label %nr_node_lock.exit

nr_node_lock.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nr_node_lock.exit_crit_edge
  %node_lock.i = getelementptr inbounds %struct.nr_node, ptr %nr_nodet.0557, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %node_lock.i) #9
  %count = getelementptr inbounds %struct.nr_node, ptr %nr_nodet.0557, i32 0, i32 4
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp14552.not = icmp eq i8 %19, 0
  br i1 %cmp14552.not, label %nr_node_lock.exit.for.end_crit_edge, label %for.body16.lr.ph

nr_node_lock.exit.for.end_crit_edge:              ; preds = %nr_node_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body16.lr.ph:                                 ; preds = %nr_node_lock.exit
  %which = getelementptr inbounds %struct.nr_node, ptr %nr_nodet.0557, i32 0, i32 3
  br label %for.body16

for.body16:                                       ; preds = %for.inc.for.body16_crit_edge, %for.body16.lr.ph
  %i.0553 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc, %for.inc.for.body16_crit_edge ]
  %neighbour = getelementptr %struct.nr_node, ptr %nr_nodet.0557, i32 0, i32 5, i32 %i.0553, i32 2
  %20 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %neighbour, align 4
  %cmp17 = icmp eq ptr %21, %call2
  br i1 %cmp17, label %if.then19, label %for.body16.for.inc_crit_edge

for.body16.for.inc_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then19:                                        ; preds = %for.body16
  %22 = ptrtoint ptr %which to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %which, align 2
  %conv20 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0553, i32 %conv20)
  %cmp21 = icmp ult i32 %i.0553, %conv20
  br i1 %cmp21, label %if.then23, label %if.then19.for.inc_crit_edge

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %conv24 = trunc i32 %i.0553 to i8
  %24 = ptrtoint ptr %which to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv24, ptr %which, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %if.then19.for.inc_crit_edge, %for.body16.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0553, 1
  %25 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %count, align 1
  %conv13 = zext i8 %26 to i32
  %cmp14 = icmp ult i32 %inc, %conv13
  br i1 %cmp14, label %for.inc.for.body16_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %nr_node_lock.exit.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %node_lock.i) #9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nr_node_unlock.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !71

if.end5.i.i.i.i.i.nr_node_unlock.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_unlock.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %nr_node_unlock.exit

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef nonnull %nr_nodet.0557) #9
  br label %nr_node_unlock.exit

nr_node_unlock.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nr_node_unlock.exit_crit_edge
  %28 = ptrtoint ptr %nr_nodet.0557 to i32
  call void @__asan_load4_noabort(i32 %28)
  %nr_nodet.0 = load ptr, ptr %nr_nodet.0557, align 4
  %tobool11.not = icmp eq ptr %nr_nodet.0, null
  br i1 %tobool11.not, label %nr_node_unlock.exit.if.end45_crit_edge, label %nr_node_unlock.exit.for.body_crit_edge

nr_node_unlock.exit.for.body_crit_edge:           ; preds = %nr_node_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

nr_node_unlock.exit.if.end45_crit_edge:           ; preds = %nr_node_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end45:                                         ; preds = %nr_node_unlock.exit.if.end45_crit_edge, %if.then9.if.end45_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  %29 = ptrtoint ptr %failed to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %failed, align 4
  %cmp52.not = icmp eq ptr %call1, null
  br i1 %cmp52.not, label %if.end45.if.then109_crit_edge, label %if.end45.if.then54_crit_edge

if.end45.if.then54_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.end45.if.then109_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then109

if.end45.thread526:                               ; preds = %land.lhs.true
  %30 = ptrtoint ptr %failed to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %failed, align 4
  %cmp46.not528 = xor i1 %cmp7, true
  %cmp52.not530 = icmp eq ptr %call1, null
  %or.cond421531 = select i1 %cmp46.not528, i1 true, i1 %cmp52.not530
  br i1 %or.cond421531, label %if.end55.thread532, label %if.end45.thread526.if.then54_crit_edge

if.end45.thread526.if.then54_crit_edge:           ; preds = %if.end45.thread526
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.end55.thread532:                               ; preds = %if.end45.thread526
  br i1 %cmp7, label %if.end55.thread532.if.end106_crit_edge, label %if.end55.thread532.land.lhs.true96_crit_edge

if.end55.thread532.land.lhs.true96_crit_edge:     ; preds = %if.end55.thread532
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true96

if.end55.thread532.if.end106_crit_edge:           ; preds = %if.end55.thread532
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.then54:                                        ; preds = %if.end45.thread526.if.then54_crit_edge, %if.end45.if.then54_crit_edge
  tail call fastcc void @nr_neigh_put(ptr noundef nonnull %call2)
  %refcount.i424 = getelementptr inbounds %struct.nr_node, ptr %call1, i32 0, i32 6
  %call.i.i.i.i.i.i425 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i424, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i424, i32 1, i32 3, i32 1) #9
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i424, ptr %refcount.i424, i32 1, ptr elementtype(i32) %refcount.i424) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i426 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i426, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !71

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i424, i32 noundef 3) #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef nonnull %call1) #9
  br label %cleanup

if.then58:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quality)
  %cmp46512 = icmp eq i32 %quality, 0
  %cmp52.not515 = icmp eq ptr %call1, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 2592, i32 noundef 44) #14
  %cmp60 = icmp eq ptr %call7.i, null
  br i1 %cmp60, label %if.then62, label %if.end66

if.then62:                                        ; preds = %if.then58
  br i1 %cmp52.not515, label %if.then62.cleanup_crit_edge, label %if.then64

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then64:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nr_node_put(ptr noundef nonnull %call1)
  br label %cleanup

if.end66:                                         ; preds = %if.then58
  %callsign = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 1
  %33 = call ptr @memcpy(ptr %callsign, ptr %ax25, i32 7)
  %digipeat = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 2
  %34 = ptrtoint ptr %digipeat to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %digipeat, align 8
  %ax2567 = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 3
  %35 = ptrtoint ptr %ax2567 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %ax2567, align 4
  %dev68 = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 4
  %36 = ptrtoint ptr %dev68 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev, ptr %dev68, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_netrom_default_path_quality to i32))
  %37 = load i32, ptr @sysctl_netrom_default_path_quality, align 4
  %conv69 = trunc i32 %37 to i8
  %quality70 = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 5
  %38 = ptrtoint ptr %quality70 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv69, ptr %quality70, align 4
  %locked = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 6
  %39 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %locked, align 1
  %count71 = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 7
  %40 = ptrtoint ptr %count71 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %count71, align 2
  %41 = load i32, ptr @nr_neigh_no, align 4
  %inc72 = add i32 %41, 1
  store i32 %inc72, ptr @nr_neigh_no, align 4
  %number = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 8
  %42 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %number, align 8
  %failed73 = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 9
  %43 = ptrtoint ptr %failed73 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %failed73, align 4
  %refcount = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %44 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 1, ptr %refcount, align 8
  %cmp74.not = icmp eq ptr %ax25_digi, null
  br i1 %cmp74.not, label %if.end66.if.end91_crit_edge, label %land.lhs.true76

if.end66.if.end91_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

land.lhs.true76:                                  ; preds = %if.end66
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %ax25_digi, i32 0, i32 2
  %45 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ndigi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp78.not = icmp eq i8 %46, 0
  br i1 %cmp78.not, label %land.lhs.true76.if.end91_crit_edge, label %if.then80

land.lhs.true76.if.end91_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then80:                                        ; preds = %land.lhs.true76
  %call81 = tail call ptr @kmemdup(ptr noundef nonnull %ax25_digi, i32 noundef 66, i32 noundef 3264) #9
  %47 = ptrtoint ptr %digipeat to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call81, ptr %digipeat, align 8
  %cmp84 = icmp eq ptr %call81, null
  br i1 %cmp84, label %if.then86, label %if.then80.if.end91_crit_edge

if.then80.if.end91_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then86:                                        ; preds = %if.then80
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br i1 %cmp52.not515, label %if.then86.cleanup_crit_edge, label %if.then88

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then88:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nr_node_put(ptr noundef nonnull %call1)
  br label %cleanup

if.end91:                                         ; preds = %if.then80.if.end91_crit_edge, %land.lhs.true76.if.end91_crit_edge, %if.end66.if.end91_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  %48 = load ptr, ptr @nr_neigh_list, align 4
  %49 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %48, ptr %call7.i, align 8
  %tobool.not.i427 = icmp eq ptr %48, null
  br i1 %tobool.not.i427, label %if.end91.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end91.hlist_add_head.exit_crit_edge:           ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call7.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end91.hlist_add_head.exit_crit_edge
  store volatile ptr %call7.i, ptr @nr_neigh_list, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i, i32 0, i32 1
  %51 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr @nr_neigh_list, ptr %pprev34.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %hlist_add_head.exit.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !70

hlist_add_head.exit.if.end15.sink.split.i.i.i_crit_edge: ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %hlist_add_head.exit
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %53 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %.not.i.i.i = icmp sgt i32 %53, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !71

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %hlist_add_head.exit.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %hlist_add_head.exit.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #9
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  br i1 %cmp46512, label %refcount_inc.exit.if.end106_crit_edge, label %refcount_inc.exit.land.lhs.true96_crit_edge

refcount_inc.exit.land.lhs.true96_crit_edge:      ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true96

refcount_inc.exit.if.end106_crit_edge:            ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

land.lhs.true96:                                  ; preds = %refcount_inc.exit.land.lhs.true96_crit_edge, %if.end55.thread532.land.lhs.true96_crit_edge
  %nr_neigh.0539 = phi ptr [ %call7.i, %refcount_inc.exit.land.lhs.true96_crit_edge ], [ %call2, %if.end55.thread532.land.lhs.true96_crit_edge ]
  %cmp52.not519537 = phi i1 [ %cmp52.not515, %refcount_inc.exit.land.lhs.true96_crit_edge ], [ %cmp52.not530, %if.end55.thread532.land.lhs.true96_crit_edge ]
  %call97 = tail call i32 @ax25cmp(ptr noundef %nr, ptr noundef %ax25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp eq i32 %call97, 0
  br i1 %cmp98, label %land.lhs.true100, label %land.lhs.true96.if.end106_crit_edge

land.lhs.true96.if.end106_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

land.lhs.true100:                                 ; preds = %land.lhs.true96
  %locked101 = getelementptr inbounds %struct.nr_neigh, ptr %nr_neigh.0539, i32 0, i32 6
  %54 = ptrtoint ptr %locked101 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %locked101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool102.not = icmp eq i8 %55, 0
  br i1 %tobool102.not, label %if.then103, label %land.lhs.true100.if.end106_crit_edge

land.lhs.true100.if.end106_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.then103:                                       ; preds = %land.lhs.true100
  %conv104 = trunc i32 %quality to i8
  %quality105 = getelementptr inbounds %struct.nr_neigh, ptr %nr_neigh.0539, i32 0, i32 5
  %56 = ptrtoint ptr %quality105 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv104, ptr %quality105, align 4
  br i1 %cmp52.not519537, label %if.then103.if.then109_crit_edge, label %if.then103.if.end140_crit_edge

if.then103.if.end140_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.then103.if.then109_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then109

if.end106:                                        ; preds = %land.lhs.true100.if.end106_crit_edge, %land.lhs.true96.if.end106_crit_edge, %refcount_inc.exit.if.end106_crit_edge, %if.end55.thread532.if.end106_crit_edge
  %nr_neigh.0540 = phi ptr [ %call7.i, %refcount_inc.exit.if.end106_crit_edge ], [ %nr_neigh.0539, %land.lhs.true100.if.end106_crit_edge ], [ %nr_neigh.0539, %land.lhs.true96.if.end106_crit_edge ], [ %call2, %if.end55.thread532.if.end106_crit_edge ]
  %cmp52.not519538 = phi i1 [ %cmp52.not515, %refcount_inc.exit.if.end106_crit_edge ], [ %cmp52.not519537, %land.lhs.true100.if.end106_crit_edge ], [ %cmp52.not519537, %land.lhs.true96.if.end106_crit_edge ], [ %cmp52.not530, %if.end55.thread532.if.end106_crit_edge ]
  %cmp46517524536 = phi i1 [ true, %refcount_inc.exit.if.end106_crit_edge ], [ false, %land.lhs.true100.if.end106_crit_edge ], [ false, %land.lhs.true96.if.end106_crit_edge ], [ true, %if.end55.thread532.if.end106_crit_edge ]
  br i1 %cmp52.not519538, label %if.end106.if.then109_crit_edge, label %if.end106.if.end140_crit_edge

if.end106.if.end140_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.end106.if.then109_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then109

if.then109:                                       ; preds = %if.end106.if.then109_crit_edge, %if.then103.if.then109_crit_edge, %if.end45.if.then109_crit_edge
  %nr_neigh.0540543 = phi ptr [ %nr_neigh.0539, %if.then103.if.then109_crit_edge ], [ %nr_neigh.0540, %if.end106.if.then109_crit_edge ], [ %call2, %if.end45.if.then109_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i422 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 2592, i32 noundef 96) #14
  %cmp111 = icmp eq ptr %call7.i422, null
  br i1 %cmp111, label %if.then115, label %if.end117

if.then115:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nr_neigh_put(ptr noundef nonnull %nr_neigh.0540543)
  br label %cleanup

if.end117:                                        ; preds = %if.then109
  %callsign118 = getelementptr inbounds %struct.nr_node, ptr %call7.i422, i32 0, i32 1
  %58 = call ptr @memcpy(ptr %callsign118, ptr %nr, i32 7)
  %mnemonic119 = getelementptr inbounds %struct.nr_node, ptr %call7.i422, i32 0, i32 2
  %call120 = tail call ptr @strcpy(ptr noundef %mnemonic119, ptr noundef %mnemonic) #13
  %which121 = getelementptr inbounds %struct.nr_node, ptr %call7.i422, i32 0, i32 3
  %59 = ptrtoint ptr %which121 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %which121, align 2
  %count122 = getelementptr inbounds %struct.nr_node, ptr %call7.i422, i32 0, i32 4
  %60 = ptrtoint ptr %count122 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %count122, align 1
  %refcount123 = getelementptr inbounds %struct.nr_node, ptr %call7.i422, i32 0, i32 6
  %call.i.i.i428 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount123, i32 noundef 4) #9
  %61 = ptrtoint ptr %refcount123 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 1, ptr %refcount123, align 8
  %node_lock = getelementptr inbounds %struct.nr_node, ptr %call7.i422, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %node_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @nr_add_node.__key, i16 noundef signext 3) #9
  %conv125 = trunc i32 %quality to i8
  %routes126 = getelementptr inbounds %struct.nr_node, ptr %call7.i422, i32 0, i32 5
  %62 = ptrtoint ptr %routes126 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv125, ptr %routes126, align 8
  %conv129 = trunc i32 %obs_count to i8
  %obs_count132 = getelementptr inbounds %struct.nr_node, ptr %call7.i422, i32 0, i32 5, i32 0, i32 1
  %63 = ptrtoint ptr %obs_count132 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv129, ptr %obs_count132, align 1
  %neighbour135 = getelementptr inbounds %struct.nr_node, ptr %call7.i422, i32 0, i32 5, i32 0, i32 2
  %64 = ptrtoint ptr %neighbour135 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %nr_neigh.0540543, ptr %neighbour135, align 4
  %refcount136 = getelementptr inbounds %struct.nr_neigh, ptr %nr_neigh.0540543, i32 0, i32 10
  %call.i.i.i.i.i429 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount136, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount136, i32 1, i32 3, i32 1) #9
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount136, ptr %refcount136, i32 1, ptr elementtype(i32) %refcount136) #9, !srcloc !69
  %asmresult.i.i.i.i.i430 = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i430)
  %tobool1.not.i.i.i431 = icmp eq i32 %asmresult.i.i.i.i.i430, 0
  br i1 %tobool1.not.i.i.i431, label %if.end117.if.end15.sink.split.i.i.i436_crit_edge, label %if.else.i.i.i434, !prof !70

if.end117.if.end15.sink.split.i.i.i436_crit_edge: ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i436

if.else.i.i.i434:                                 ; preds = %if.end117
  %add.i.i.i432 = add i32 %asmresult.i.i.i.i.i430, 1
  %66 = or i32 %add.i.i.i432, %asmresult.i.i.i.i.i430
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %.not.i.i.i433 = icmp sgt i32 %66, -1
  br i1 %.not.i.i.i433, label %if.else.i.i.i434.refcount_inc.exit437_crit_edge, label %if.else.i.i.i434.if.end15.sink.split.i.i.i436_crit_edge, !prof !71

if.else.i.i.i434.if.end15.sink.split.i.i.i436_crit_edge: ; preds = %if.else.i.i.i434
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i436

if.else.i.i.i434.refcount_inc.exit437_crit_edge:  ; preds = %if.else.i.i.i434
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit437

if.end15.sink.split.i.i.i436:                     ; preds = %if.else.i.i.i434.if.end15.sink.split.i.i.i436_crit_edge, %if.end117.if.end15.sink.split.i.i.i436_crit_edge
  %.sink.i.i.i435 = phi i32 [ 2, %if.end117.if.end15.sink.split.i.i.i436_crit_edge ], [ 1, %if.else.i.i.i434.if.end15.sink.split.i.i.i436_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount136, i32 noundef %.sink.i.i.i435) #9
  br label %refcount_inc.exit437

refcount_inc.exit437:                             ; preds = %if.end15.sink.split.i.i.i436, %if.else.i.i.i434.refcount_inc.exit437_crit_edge
  %count137 = getelementptr inbounds %struct.nr_neigh, ptr %nr_neigh.0540543, i32 0, i32 7
  %67 = ptrtoint ptr %count137 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %count137, align 2
  %inc138 = add i16 %68, 1
  store i16 %inc138, ptr %count137, align 2
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  %69 = load ptr, ptr @nr_node_list, align 4
  %70 = ptrtoint ptr %call7.i422 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %69, ptr %call7.i422, align 8
  %tobool.not.i438 = icmp eq ptr %69, null
  br i1 %tobool.not.i438, label %refcount_inc.exit437.hlist_add_head.exit442_crit_edge, label %do.body12.i440

refcount_inc.exit437.hlist_add_head.exit442_crit_edge: ; preds = %refcount_inc.exit437
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit442

do.body12.i440:                                   ; preds = %refcount_inc.exit437
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i439 = getelementptr inbounds %struct.hlist_node, ptr %69, i32 0, i32 1
  %71 = ptrtoint ptr %pprev.i439 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %call7.i422, ptr %pprev.i439, align 4
  br label %hlist_add_head.exit442

hlist_add_head.exit442:                           ; preds = %do.body12.i440, %refcount_inc.exit437.hlist_add_head.exit442_crit_edge
  store volatile ptr %call7.i422, ptr @nr_node_list, align 4
  %pprev34.i441 = getelementptr inbounds %struct.hlist_node, ptr %call7.i422, i32 0, i32 1
  %72 = ptrtoint ptr %pprev34.i441 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr @nr_node_list, ptr %pprev34.i441, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  tail call fastcc void @nr_neigh_put(ptr noundef nonnull %nr_neigh.0540543)
  br label %cleanup

if.end140:                                        ; preds = %if.end106.if.end140_crit_edge, %if.then103.if.end140_crit_edge
  %cmp46517524536545 = phi i1 [ false, %if.then103.if.end140_crit_edge ], [ %cmp46517524536, %if.end106.if.end140_crit_edge ]
  %nr_neigh.0540544 = phi ptr [ %nr_neigh.0539, %if.then103.if.end140_crit_edge ], [ %nr_neigh.0540, %if.end106.if.end140_crit_edge ]
  %refcount.i443 = getelementptr inbounds %struct.nr_node, ptr %call1, i32 0, i32 6
  %call.i.i.i.i.i.i444 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i443, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i443, i32 1, i32 3, i32 1) #9
  %73 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i443, ptr %refcount.i443, i32 1, ptr elementtype(i32) %refcount.i443) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i445 = extractvalue { i32, i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i445)
  %tobool1.not.i.i.i.i446 = icmp eq i32 %asmresult.i.i.i.i.i.i445, 0
  br i1 %tobool1.not.i.i.i.i446, label %if.end140.if.end15.sink.split.i.i.i.i451_crit_edge, label %if.else.i.i.i.i449, !prof !70

if.end140.if.end15.sink.split.i.i.i.i451_crit_edge: ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i451

if.else.i.i.i.i449:                               ; preds = %if.end140
  %add.i.i.i.i447 = add i32 %asmresult.i.i.i.i.i.i445, 1
  %74 = or i32 %add.i.i.i.i447, %asmresult.i.i.i.i.i.i445
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %.not.i.i.i.i448 = icmp sgt i32 %74, -1
  br i1 %.not.i.i.i.i448, label %if.else.i.i.i.i449.nr_node_lock.exit453_crit_edge, label %if.else.i.i.i.i449.if.end15.sink.split.i.i.i.i451_crit_edge, !prof !71

if.else.i.i.i.i449.if.end15.sink.split.i.i.i.i451_crit_edge: ; preds = %if.else.i.i.i.i449
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i451

if.else.i.i.i.i449.nr_node_lock.exit453_crit_edge: ; preds = %if.else.i.i.i.i449
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_lock.exit453

if.end15.sink.split.i.i.i.i451:                   ; preds = %if.else.i.i.i.i449.if.end15.sink.split.i.i.i.i451_crit_edge, %if.end140.if.end15.sink.split.i.i.i.i451_crit_edge
  %.sink.i.i.i.i450 = phi i32 [ 2, %if.end140.if.end15.sink.split.i.i.i.i451_crit_edge ], [ 1, %if.else.i.i.i.i449.if.end15.sink.split.i.i.i.i451_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i443, i32 noundef %.sink.i.i.i.i450) #9
  br label %nr_node_lock.exit453

nr_node_lock.exit453:                             ; preds = %if.end15.sink.split.i.i.i.i451, %if.else.i.i.i.i449.nr_node_lock.exit453_crit_edge
  %node_lock.i452 = getelementptr inbounds %struct.nr_node, ptr %call1, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %node_lock.i452) #9
  br i1 %cmp46517524536545, label %nr_node_lock.exit453.if.end147_crit_edge, label %if.then143

nr_node_lock.exit453.if.end147_crit_edge:         ; preds = %nr_node_lock.exit453
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.then143:                                       ; preds = %nr_node_lock.exit453
  call void @__sanitizer_cov_trace_pc() #11
  %mnemonic144 = getelementptr inbounds %struct.nr_node, ptr %call1, i32 0, i32 2
  %call146 = tail call ptr @strcpy(ptr noundef %mnemonic144, ptr noundef %mnemonic) #13
  br label %if.end147

if.end147:                                        ; preds = %if.then143, %nr_node_lock.exit453.if.end147_crit_edge
  %count149 = getelementptr inbounds %struct.nr_node, ptr %call1, i32 0, i32 4
  %75 = ptrtoint ptr %count149 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %count149, align 1
  %conv150 = zext i8 %76 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp151559.not = icmp eq i8 %76, 0
  br i1 %cmp151559.not, label %if.end147.if.then178_crit_edge, label %if.end147.for.body153_crit_edge

if.end147.for.body153_crit_edge:                  ; preds = %if.end147
  br label %for.body153

if.end147.if.then178_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then178

for.body153:                                      ; preds = %for.inc169.for.body153_crit_edge, %if.end147.for.body153_crit_edge
  %i.1560 = phi i32 [ %inc170, %for.inc169.for.body153_crit_edge ], [ 0, %if.end147.for.body153_crit_edge ]
  %neighbour156 = getelementptr %struct.nr_node, ptr %call1, i32 0, i32 5, i32 %i.1560, i32 2
  %77 = ptrtoint ptr %neighbour156 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %neighbour156, align 4
  %cmp157 = icmp eq ptr %78, %nr_neigh.0540544
  br i1 %cmp157, label %if.then159, label %for.inc169

if.then159:                                       ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx155 = getelementptr %struct.nr_node, ptr %call1, i32 0, i32 5, i32 %i.1560
  %conv160 = trunc i32 %quality to i8
  %79 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv160, ptr %arrayidx155, align 4
  %conv164 = trunc i32 %obs_count to i8
  %obs_count167 = getelementptr %struct.nr_node, ptr %call1, i32 0, i32 5, i32 %i.1560, i32 1
  %80 = ptrtoint ptr %obs_count167 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv164, ptr %obs_count167, align 1
  br label %if.end253

for.inc169:                                       ; preds = %for.body153
  %inc170 = add nuw nsw i32 %i.1560, 1
  %exitcond.not = icmp eq i32 %inc170, %conv150
  br i1 %exitcond.not, label %if.then173.critedge, label %for.inc169.for.body153_crit_edge

for.inc169.for.body153_crit_edge:                 ; preds = %for.inc169
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body153

if.then173.critedge:                              ; preds = %for.inc169
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %76)
  %cmp176 = icmp ult i8 %76, 3
  br i1 %cmp176, label %if.then173.critedge.if.then178_crit_edge, label %if.else

if.then173.critedge.if.then178_crit_edge:         ; preds = %if.then173.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then178

if.then178:                                       ; preds = %if.then173.critedge.if.then178_crit_edge, %if.end147.if.then178_crit_edge
  %routes179 = getelementptr inbounds %struct.nr_node, ptr %call1, i32 0, i32 5
  %arrayidx180 = getelementptr %struct.nr_node, ptr %call1, i32 0, i32 5, i32 2
  %arrayidx182 = getelementptr %struct.nr_node, ptr %call1, i32 0, i32 5, i32 1
  %81 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 8)
  %82 = load i64, ptr %arrayidx182, align 4
  %83 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 8)
  store i64 %82, ptr %arrayidx180, align 4
  %84 = ptrtoint ptr %routes179 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 8)
  %85 = load i64, ptr %routes179, align 4
  store i64 %85, ptr %arrayidx182, align 4
  %conv187 = trunc i32 %quality to i8
  store i8 %conv187, ptr %routes179, align 4
  %conv191 = trunc i32 %obs_count to i8
  %obs_count194 = getelementptr inbounds %struct.nr_node, ptr %call1, i32 0, i32 5, i32 0, i32 1
  %86 = ptrtoint ptr %obs_count194 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv191, ptr %obs_count194, align 1
  %neighbour197 = getelementptr inbounds %struct.nr_node, ptr %call1, i32 0, i32 5, i32 0, i32 2
  %87 = ptrtoint ptr %neighbour197 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %nr_neigh.0540544, ptr %neighbour197, align 4
  %which198 = getelementptr inbounds %struct.nr_node, ptr %call1, i32 0, i32 3
  %88 = ptrtoint ptr %which198 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %which198, align 2
  %inc199 = add i8 %89, 1
  store i8 %inc199, ptr %which198, align 2
  %inc201 = add nuw nsw i8 %76, 1
  %90 = ptrtoint ptr %count149 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %inc201, ptr %count149, align 1
  %refcount202 = getelementptr inbounds %struct.nr_neigh, ptr %nr_neigh.0540544, i32 0, i32 10
  %call.i.i.i.i.i454 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount202, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount202, i32 1, i32 3, i32 1) #9
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount202, ptr %refcount202, i32 1, ptr elementtype(i32) %refcount202) #9, !srcloc !69
  %asmresult.i.i.i.i.i455 = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i455)
  %tobool1.not.i.i.i456 = icmp eq i32 %asmresult.i.i.i.i.i455, 0
  br i1 %tobool1.not.i.i.i456, label %if.then178.if.end15.sink.split.i.i.i461_crit_edge, label %if.else.i.i.i459, !prof !70

if.then178.if.end15.sink.split.i.i.i461_crit_edge: ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i461

if.else.i.i.i459:                                 ; preds = %if.then178
  %add.i.i.i457 = add i32 %asmresult.i.i.i.i.i455, 1
  %92 = or i32 %add.i.i.i457, %asmresult.i.i.i.i.i455
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %.not.i.i.i458 = icmp sgt i32 %92, -1
  br i1 %.not.i.i.i458, label %if.else.i.i.i459.refcount_inc.exit462_crit_edge, label %if.else.i.i.i459.if.end15.sink.split.i.i.i461_crit_edge, !prof !71

if.else.i.i.i459.if.end15.sink.split.i.i.i461_crit_edge: ; preds = %if.else.i.i.i459
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i461

if.else.i.i.i459.refcount_inc.exit462_crit_edge:  ; preds = %if.else.i.i.i459
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit462

if.end15.sink.split.i.i.i461:                     ; preds = %if.else.i.i.i459.if.end15.sink.split.i.i.i461_crit_edge, %if.then178.if.end15.sink.split.i.i.i461_crit_edge
  %.sink.i.i.i460 = phi i32 [ 2, %if.then178.if.end15.sink.split.i.i.i461_crit_edge ], [ 1, %if.else.i.i.i459.if.end15.sink.split.i.i.i461_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount202, i32 noundef %.sink.i.i.i460) #9
  br label %refcount_inc.exit462

refcount_inc.exit462:                             ; preds = %if.end15.sink.split.i.i.i461, %if.else.i.i.i459.refcount_inc.exit462_crit_edge
  %count203 = getelementptr inbounds %struct.nr_neigh, ptr %nr_neigh.0540544, i32 0, i32 7
  %93 = ptrtoint ptr %count203 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %count203, align 2
  %inc204 = add i16 %94, 1
  store i16 %inc204, ptr %count203, align 2
  br label %if.end253

if.else:                                          ; preds = %if.then173.critedge
  %arrayidx206 = getelementptr %struct.nr_node, ptr %call1, i32 0, i32 5, i32 2
  %95 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx206, align 4
  %conv208 = zext i8 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv208, i32 %quality)
  %cmp209 = icmp slt i32 %conv208, %quality
  br i1 %cmp209, label %if.then211, label %if.else.if.end253_crit_edge

if.else.if.end253_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end253

if.then211:                                       ; preds = %if.else
  %neighbour214 = getelementptr %struct.nr_node, ptr %call1, i32 0, i32 5, i32 2, i32 2
  %97 = ptrtoint ptr %neighbour214 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %neighbour214, align 4
  %count215 = getelementptr inbounds %struct.nr_neigh, ptr %98, i32 0, i32 7
  %99 = ptrtoint ptr %count215 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %count215, align 2
  %dec = add i16 %100, -1
  store i16 %dec, ptr %count215, align 2
  %101 = load ptr, ptr %neighbour214, align 4
  tail call fastcc void @nr_neigh_put(ptr noundef %101)
  %102 = ptrtoint ptr %neighbour214 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %neighbour214, align 4
  %count222 = getelementptr inbounds %struct.nr_neigh, ptr %103, i32 0, i32 7
  %104 = ptrtoint ptr %count222 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %count222, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %cmp224 = icmp eq i16 %105, 0
  br i1 %cmp224, label %land.lhs.true226, label %if.then211.if.end236_crit_edge

if.then211.if.end236_crit_edge:                   ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

land.lhs.true226:                                 ; preds = %if.then211
  %locked230 = getelementptr inbounds %struct.nr_neigh, ptr %103, i32 0, i32 6
  %106 = ptrtoint ptr %locked230 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %locked230, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool231.not = icmp eq i8 %107, 0
  br i1 %tobool231.not, label %if.then232, label %land.lhs.true226.if.end236_crit_edge

land.lhs.true226.if.end236_crit_edge:             ; preds = %land.lhs.true226
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.then232:                                       ; preds = %land.lhs.true226
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nr_remove_neigh(ptr noundef %103)
  br label %if.end236

if.end236:                                        ; preds = %if.then232, %land.lhs.true226.if.end236_crit_edge, %if.then211.if.end236_crit_edge
  %conv237 = trunc i32 %quality to i8
  %108 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv237, ptr %arrayidx206, align 4
  %conv241 = trunc i32 %obs_count to i8
  %obs_count244 = getelementptr %struct.nr_node, ptr %call1, i32 0, i32 5, i32 2, i32 1
  %109 = ptrtoint ptr %obs_count244 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv241, ptr %obs_count244, align 1
  %110 = ptrtoint ptr %neighbour214 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %nr_neigh.0540544, ptr %neighbour214, align 4
  %refcount248 = getelementptr inbounds %struct.nr_neigh, ptr %nr_neigh.0540544, i32 0, i32 10
  tail call fastcc void @refcount_inc(ptr noundef %refcount248)
  %count249 = getelementptr inbounds %struct.nr_neigh, ptr %nr_neigh.0540544, i32 0, i32 7
  %111 = ptrtoint ptr %count249 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %count249, align 2
  %inc250 = add i16 %112, 1
  store i16 %inc250, ptr %count249, align 2
  br label %if.end253

if.end253:                                        ; preds = %if.end236, %if.else.if.end253_crit_edge, %refcount_inc.exit462, %if.then159
  %113 = ptrtoint ptr %count149 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %count149, align 1
  %115 = zext i8 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %114, label %if.end253.sw.epilog_crit_edge [
    i8 3, label %sw.bb
    i8 2, label %if.end253.sw.bb256_crit_edge
  ]

if.end253.sw.bb256_crit_edge:                     ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb256

if.end253.sw.epilog_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end253
  %arrayidx.i463 = getelementptr %struct.nr_node, ptr %call1, i32 0, i32 5, i32 1
  %116 = ptrtoint ptr %arrayidx.i463 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i463, align 4
  %arrayidx2.i = getelementptr %struct.nr_node, ptr %call1, i32 0, i32 5, i32 0
  %118 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %117, i8 %119)
  %cmp.i = icmp ugt i8 %117, %119
  br i1 %cmp.i, label %if.then.i464, label %sw.bb.re_sort_routes.exit_crit_edge

sw.bb.re_sort_routes.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %re_sort_routes.exit

if.then.i464:                                     ; preds = %sw.bb
  %which.i = getelementptr inbounds %struct.nr_node, ptr %call1, i32 0, i32 3
  %120 = ptrtoint ptr %which.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %which.i, align 2
  %122 = zext i8 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %121, label %if.then.i464.do.body.i_crit_edge [
    i8 0, label %if.then.i464.do.body.sink.split.i_crit_edge
    i8 1, label %do.body.sink.split.i.fold.split
  ]

if.then.i464.do.body.sink.split.i_crit_edge:      ; preds = %if.then.i464
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split.i

if.then.i464.do.body.i_crit_edge:                 ; preds = %if.then.i464
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.sink.split.i.fold.split:                  ; preds = %if.then.i464
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split.i

do.body.sink.split.i:                             ; preds = %do.body.sink.split.i.fold.split, %if.then.i464.do.body.sink.split.i_crit_edge
  %y.sink.i = phi i8 [ 1, %if.then.i464.do.body.sink.split.i_crit_edge ], [ 0, %do.body.sink.split.i.fold.split ]
  %123 = ptrtoint ptr %which.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %y.sink.i, ptr %which.i, align 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.sink.split.i, %if.then.i464.do.body.i_crit_edge
  %124 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 8)
  %125 = load i64, ptr %arrayidx2.i, align 4
  %126 = ptrtoint ptr %arrayidx.i463 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 8)
  %127 = load i64, ptr %arrayidx.i463, align 4
  store i64 %127, ptr %arrayidx2.i, align 4
  store i64 %125, ptr %arrayidx.i463, align 4
  br label %re_sort_routes.exit

re_sort_routes.exit:                              ; preds = %do.body.i, %sw.bb.re_sort_routes.exit_crit_edge
  %arrayidx.i465 = getelementptr %struct.nr_node, ptr %call1, i32 0, i32 5, i32 2
  %128 = ptrtoint ptr %arrayidx.i465 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.i465, align 4
  %130 = ptrtoint ptr %arrayidx.i463 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.i463, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %129, i8 %131)
  %cmp.i467 = icmp ugt i8 %129, %131
  br i1 %cmp.i467, label %if.then.i471, label %re_sort_routes.exit.sw.bb256_crit_edge

re_sort_routes.exit.sw.bb256_crit_edge:           ; preds = %re_sort_routes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb256

if.then.i471:                                     ; preds = %re_sort_routes.exit
  %which.i468 = getelementptr inbounds %struct.nr_node, ptr %call1, i32 0, i32 3
  %132 = ptrtoint ptr %which.i468 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %which.i468, align 2
  %134 = zext i8 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %133, label %if.then.i471.do.body.i477_crit_edge [
    i8 1, label %if.then.i471.do.body.sink.split.i476_crit_edge
    i8 2, label %do.body.sink.split.i476.fold.split
  ]

if.then.i471.do.body.sink.split.i476_crit_edge:   ; preds = %if.then.i471
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split.i476

if.then.i471.do.body.i477_crit_edge:              ; preds = %if.then.i471
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i477

do.body.sink.split.i476.fold.split:               ; preds = %if.then.i471
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split.i476

do.body.sink.split.i476:                          ; preds = %do.body.sink.split.i476.fold.split, %if.then.i471.do.body.sink.split.i476_crit_edge
  %y.sink.i474 = phi i8 [ 2, %if.then.i471.do.body.sink.split.i476_crit_edge ], [ 1, %do.body.sink.split.i476.fold.split ]
  %135 = ptrtoint ptr %which.i468 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %y.sink.i474, ptr %which.i468, align 2
  br label %do.body.i477

do.body.i477:                                     ; preds = %do.body.sink.split.i476, %if.then.i471.do.body.i477_crit_edge
  %136 = ptrtoint ptr %arrayidx.i463 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 8)
  %137 = load i64, ptr %arrayidx.i463, align 4
  %138 = ptrtoint ptr %arrayidx.i465 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 8)
  %139 = load i64, ptr %arrayidx.i465, align 4
  store i64 %139, ptr %arrayidx.i463, align 4
  store i64 %137, ptr %arrayidx.i465, align 4
  br label %sw.bb256

sw.bb256:                                         ; preds = %do.body.i477, %re_sort_routes.exit.sw.bb256_crit_edge, %if.end253.sw.bb256_crit_edge
  %arrayidx.i479 = getelementptr %struct.nr_node, ptr %call1, i32 0, i32 5, i32 1
  %140 = ptrtoint ptr %arrayidx.i479 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.i479, align 4
  %arrayidx2.i480 = getelementptr %struct.nr_node, ptr %call1, i32 0, i32 5, i32 0
  %142 = ptrtoint ptr %arrayidx2.i480 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx2.i480, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %141, i8 %143)
  %cmp.i481 = icmp ugt i8 %141, %143
  br i1 %cmp.i481, label %if.then.i485, label %sw.bb256.sw.epilogthread-pre-split_crit_edge

sw.bb256.sw.epilogthread-pre-split_crit_edge:     ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then.i485:                                     ; preds = %sw.bb256
  %which.i482 = getelementptr inbounds %struct.nr_node, ptr %call1, i32 0, i32 3
  %144 = ptrtoint ptr %which.i482 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %which.i482, align 2
  %146 = zext i8 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %145, label %if.then.i485.do.body.i491_crit_edge [
    i8 0, label %if.then.i485.do.body.sink.split.i490_crit_edge
    i8 1, label %do.body.sink.split.i490.fold.split
  ]

if.then.i485.do.body.sink.split.i490_crit_edge:   ; preds = %if.then.i485
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split.i490

if.then.i485.do.body.i491_crit_edge:              ; preds = %if.then.i485
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i491

do.body.sink.split.i490.fold.split:               ; preds = %if.then.i485
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split.i490

do.body.sink.split.i490:                          ; preds = %do.body.sink.split.i490.fold.split, %if.then.i485.do.body.sink.split.i490_crit_edge
  %y.sink.i488 = phi i8 [ 1, %if.then.i485.do.body.sink.split.i490_crit_edge ], [ 0, %do.body.sink.split.i490.fold.split ]
  %147 = ptrtoint ptr %which.i482 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %y.sink.i488, ptr %which.i482, align 2
  br label %do.body.i491

do.body.i491:                                     ; preds = %do.body.sink.split.i490, %if.then.i485.do.body.i491_crit_edge
  %148 = ptrtoint ptr %arrayidx2.i480 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 8)
  %149 = load i64, ptr %arrayidx2.i480, align 4
  %150 = ptrtoint ptr %arrayidx.i479 to i32
  call void @__asan_loadN_noabort(i32 %150, i32 8)
  %151 = load i64, ptr %arrayidx.i479, align 4
  store i64 %151, ptr %arrayidx2.i480, align 4
  store i64 %149, ptr %arrayidx.i479, align 4
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %do.body.i491, %sw.bb256.sw.epilogthread-pre-split_crit_edge
  %152 = ptrtoint ptr %count149 to i32
  call void @__asan_load1_noabort(i32 %152)
  %.pr = load i8, ptr %count149, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.end253.sw.epilog_crit_edge
  %153 = phi i8 [ %.pr, %sw.epilogthread-pre-split ], [ %114, %if.end253.sw.epilog_crit_edge ]
  %conv259 = zext i8 %153 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %cmp260561.not = icmp eq i8 %153, 0
  br i1 %cmp260561.not, label %sw.epilog.for.end280_crit_edge, label %sw.epilog.for.body262_crit_edge

sw.epilog.for.body262_crit_edge:                  ; preds = %sw.epilog
  br label %for.body262

sw.epilog.for.end280_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end280

for.body262:                                      ; preds = %for.inc278.for.body262_crit_edge, %sw.epilog.for.body262_crit_edge
  %i.2562 = phi i32 [ %inc279, %for.inc278.for.body262_crit_edge ], [ 0, %sw.epilog.for.body262_crit_edge ]
  %neighbour265 = getelementptr %struct.nr_node, ptr %call1, i32 0, i32 5, i32 %i.2562, i32 2
  %154 = ptrtoint ptr %neighbour265 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %neighbour265, align 4
  %cmp266 = icmp eq ptr %155, %nr_neigh.0540544
  br i1 %cmp266, label %if.then268, label %for.inc278

if.then268:                                       ; preds = %for.body262
  %which269 = getelementptr inbounds %struct.nr_node, ptr %call1, i32 0, i32 3
  %156 = ptrtoint ptr %which269 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %which269, align 2
  %conv270 = zext i8 %157 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2562, i32 %conv270)
  %cmp271 = icmp ult i32 %i.2562, %conv270
  br i1 %cmp271, label %if.then273, label %if.then268.for.end280_crit_edge

if.then268.for.end280_crit_edge:                  ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end280

if.then273:                                       ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #11
  %conv274 = trunc i32 %i.2562 to i8
  %158 = ptrtoint ptr %which269 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv274, ptr %which269, align 2
  br label %for.end280

for.inc278:                                       ; preds = %for.body262
  %inc279 = add nuw nsw i32 %i.2562, 1
  %exitcond565.not = icmp eq i32 %inc279, %conv259
  br i1 %exitcond565.not, label %for.inc278.for.end280_crit_edge, label %for.inc278.for.body262_crit_edge

for.inc278.for.body262_crit_edge:                 ; preds = %for.inc278
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body262

for.inc278.for.end280_crit_edge:                  ; preds = %for.inc278
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end280

for.end280:                                       ; preds = %for.inc278.for.end280_crit_edge, %if.then273, %if.then268.for.end280_crit_edge, %sw.epilog.for.end280_crit_edge
  tail call fastcc void @nr_neigh_put(ptr noundef %nr_neigh.0540544)
  tail call void @_raw_spin_unlock_bh(ptr noundef %node_lock.i452) #9
  %call.i.i.i.i.i.i.i495 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i443, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i443, i32 1, i32 3, i32 1) #9
  %159 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i443, ptr %refcount.i443, i32 1, ptr elementtype(i32) %refcount.i443) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i496 = extractvalue { i32, i32, i32 } %159, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i496)
  %cmp.i.i.i.i.i497 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i496, 1
  br i1 %cmp.i.i.i.i.i497, label %if.then.i.i501, label %if.end5.i.i.i.i.i499

if.end5.i.i.i.i.i499:                             ; preds = %for.end280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i496)
  %.not.i.i.i.i.i498 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i496, 0
  br i1 %.not.i.i.i.i.i498, label %if.end5.i.i.i.i.i499.nr_node_unlock.exit502_crit_edge, label %if.then10.i.i.i.i.i500, !prof !71

if.end5.i.i.i.i.i499.nr_node_unlock.exit502_crit_edge: ; preds = %if.end5.i.i.i.i.i499
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_unlock.exit502

if.then10.i.i.i.i.i500:                           ; preds = %if.end5.i.i.i.i.i499
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i443, i32 noundef 3) #9
  br label %nr_node_unlock.exit502

if.then.i.i501:                                   ; preds = %for.end280
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef %call1) #9
  br label %nr_node_unlock.exit502

nr_node_unlock.exit502:                           ; preds = %if.then.i.i501, %if.then10.i.i.i.i.i500, %if.end5.i.i.i.i.i499.nr_node_unlock.exit502_crit_edge
  %call.i.i.i.i.i.i504 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i443, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i443, i32 1, i32 3, i32 1) #9
  %160 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i443, ptr %refcount.i443, i32 1, ptr elementtype(i32) %refcount.i443) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i505 = extractvalue { i32, i32, i32 } %160, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i505)
  %cmp.i.i.i.i506 = icmp eq i32 %asmresult.i.i.i.i.i.i.i505, 1
  br i1 %cmp.i.i.i.i506, label %if.then.i510, label %if.end5.i.i.i.i508

if.end5.i.i.i.i508:                               ; preds = %nr_node_unlock.exit502
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i505)
  %.not.i.i.i.i507 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i505, 0
  br i1 %.not.i.i.i.i507, label %if.end5.i.i.i.i508.cleanup_crit_edge, label %if.then10.i.i.i.i509, !prof !71

if.end5.i.i.i.i508.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i508
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i509:                             ; preds = %if.end5.i.i.i.i508
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i443, i32 noundef 3) #9
  br label %cleanup

if.then.i510:                                     ; preds = %nr_node_unlock.exit502
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i510, %if.then10.i.i.i.i509, %if.end5.i.i.i.i508.cleanup_crit_edge, %hlist_add_head.exit442, %if.then115, %if.then88, %if.then86.cleanup_crit_edge, %if.then64, %if.then62.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %dev_put.exit
  %retval.0 = phi i32 [ -22, %dev_put.exit ], [ 0, %hlist_add_head.exit442 ], [ -12, %if.then64 ], [ -12, %if.then62.cleanup_crit_edge ], [ -12, %if.then88 ], [ -12, %if.then86.cleanup_crit_edge ], [ -12, %if.then115 ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ], [ 0, %if.end5.i.i.i.i508.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i509 ], [ 0, %if.then.i510 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nr_add_neigh(ptr noundef %callsign, ptr noundef %ax25_digi, ptr noundef %dev, i32 noundef %quality) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nr_neigh_get_dev(ptr noundef %callsign, ptr noundef %dev)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %quality to i8
  %quality1 = getelementptr inbounds %struct.nr_neigh, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %quality1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %quality1, align 4
  %locked = getelementptr inbounds %struct.nr_neigh, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %locked, align 1
  tail call fastcc void @nr_neigh_put(ptr noundef nonnull %call)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 44) #14
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %callsign6 = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %callsign6, ptr %callsign, i32 7)
  %digipeat = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %digipeat to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %digipeat, align 8
  %ax25 = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %ax25 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ax25, align 4
  %dev7 = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 4
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev7, align 8
  %conv8 = trunc i32 %quality to i8
  %quality9 = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 5
  %7 = ptrtoint ptr %quality9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv8, ptr %quality9, align 4
  %locked10 = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 6
  %8 = ptrtoint ptr %locked10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %locked10, align 1
  %count = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 7
  %9 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %count, align 2
  %10 = load i32, ptr @nr_neigh_no, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr @nr_neigh_no, align 4
  %number = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 8
  %11 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %number, align 8
  %failed = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 9
  %12 = ptrtoint ptr %failed to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %failed, align 4
  %refcount = getelementptr inbounds %struct.nr_neigh, ptr %call7.i, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %13 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %refcount, align 8
  %cmp11.not = icmp eq ptr %ax25_digi, null
  br i1 %cmp11.not, label %if.end5.if.end24_crit_edge, label %land.lhs.true

if.end5.if.end24_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end5
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %ax25_digi, i32 0, i32 2
  %14 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ndigi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp14.not = icmp eq i8 %15, 0
  br i1 %cmp14.not, label %land.lhs.true.if.end24_crit_edge, label %if.then16

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then16:                                        ; preds = %land.lhs.true
  %call17 = tail call ptr @kmemdup(ptr noundef nonnull %ax25_digi, i32 noundef 66, i32 noundef 3264) #9
  %16 = ptrtoint ptr %digipeat to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17, ptr %digipeat, align 8
  %cmp20 = icmp eq ptr %call17, null
  br i1 %cmp20, label %if.then22, label %if.then16.if.end24_crit_edge

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

if.end24:                                         ; preds = %if.then16.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %if.end5.if.end24_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  %17 = load ptr, ptr @nr_neigh_list, align 4
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %17, ptr %call7.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end24.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end24.hlist_add_head.exit_crit_edge:           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end24.hlist_add_head.exit_crit_edge
  store volatile ptr %call7.i, ptr @nr_neigh_list, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i, i32 0, i32 1
  %20 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr @nr_neigh_list, ptr %pprev34.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head.exit, %if.then22, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -12, %if.then22 ], [ 0, %hlist_add_head.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !76
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !77
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !70

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !78
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nr_del_node(ptr noundef %callsign, ptr noundef %neighbour, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nr_node_get(ptr noundef %callsign)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @nr_neigh_get_dev(ptr noundef %neighbour, ptr noundef %dev)
  %cmp2 = icmp eq ptr %call1, null
  %refcount.i = getelementptr inbounds %struct.nr_node, ptr %call, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !71

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef nonnull %call) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end4.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

if.end4.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end4
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i66 = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i66, label %if.else.i.i.i.i.nr_node_lock.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !71

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nr_node_lock.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_lock.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end4.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end4.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #9
  br label %nr_node_lock.exit

nr_node_lock.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nr_node_lock.exit_crit_edge
  %node_lock.i = getelementptr inbounds %struct.nr_node, ptr %call, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %node_lock.i) #9
  %count = getelementptr inbounds %struct.nr_node, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %count, align 1
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp5105.not = icmp eq i8 %4, 0
  br i1 %cmp5105.not, label %nr_node_lock.exit.for.end_crit_edge, label %nr_node_lock.exit.for.body_crit_edge

nr_node_lock.exit.for.body_crit_edge:             ; preds = %nr_node_lock.exit
  br label %for.body

nr_node_lock.exit.for.end_crit_edge:              ; preds = %nr_node_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %nr_node_lock.exit.for.body_crit_edge
  %i.0106 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %nr_node_lock.exit.for.body_crit_edge ]
  %neighbour7 = getelementptr %struct.nr_node, ptr %call, i32 0, i32 5, i32 %i.0106, i32 2
  %5 = ptrtoint ptr %neighbour7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %neighbour7, align 4
  %cmp8 = icmp eq ptr %6, %call1
  br i1 %cmp8, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  %routes.le = getelementptr inbounds %struct.nr_node, ptr %call, i32 0, i32 5
  %count11 = getelementptr inbounds %struct.nr_neigh, ptr %call1, i32 0, i32 7
  %7 = ptrtoint ptr %count11 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count11, align 2
  %dec = add i16 %8, -1
  store i16 %dec, ptr %count11, align 2
  tail call fastcc void @nr_neigh_put(ptr noundef nonnull %call1)
  %9 = ptrtoint ptr %count11 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %count11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp14 = icmp eq i16 %10, 0
  br i1 %cmp14, label %land.lhs.true, label %if.then10.if.end17_crit_edge

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then10
  %locked = getelementptr inbounds %struct.nr_neigh, ptr %call1, i32 0, i32 6
  %11 = ptrtoint ptr %locked to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %locked, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.then16, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call1, i32 0, i32 1
  %13 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.not.i.i.i, label %if.then16.nr_remove_neigh.exit_crit_edge, label %if.then.i.i.i

if.then16.nr_remove_neigh.exit_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_remove_neigh.exit

if.then.i.i.i:                                    ; preds = %if.then16
  %15 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call1, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %14, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %14, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %19 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %call1, align 4
  %20 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %nr_remove_neigh.exit

nr_remove_neigh.exit:                             ; preds = %__hlist_del.exit.i.i.i, %if.then16.nr_remove_neigh.exit_crit_edge
  tail call fastcc void @nr_neigh_put(ptr noundef nonnull %call1) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  br label %if.end17

if.end17:                                         ; preds = %nr_remove_neigh.exit, %land.lhs.true.if.end17_crit_edge, %if.then10.if.end17_crit_edge
  tail call fastcc void @nr_neigh_put(ptr noundef nonnull %call1)
  %21 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %count, align 1
  %dec19 = add i8 %22, -1
  store i8 %dec19, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec19)
  %cmp22 = icmp eq i8 %dec19, 0
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end17
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  %pprev.i.i.i.i67 = getelementptr inbounds %struct.hlist_node, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %pprev.i.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pprev.i.i.i.i67, align 4
  %tobool.not.i.not.i.i.i68 = icmp eq ptr %24, null
  br i1 %tobool.not.i.not.i.i.i68, label %if.then24.hlist_del_init.exit.i.i_crit_edge, label %if.then.i.i.i70

if.then24.hlist_del_init.exit.i.i_crit_edge:      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_init.exit.i.i

if.then.i.i.i70:                                  ; preds = %if.then24
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %26, ptr %24, align 4
  %tobool.not.i3.i.i.i69 = icmp eq ptr %26, null
  br i1 %tobool.not.i3.i.i.i69, label %if.then.i.i.i70.__hlist_del.exit.i.i.i73_crit_edge, label %do.body13.i.i.i.i72

if.then.i.i.i70.__hlist_del.exit.i.i.i73_crit_edge: ; preds = %if.then.i.i.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i73

do.body13.i.i.i.i72:                              ; preds = %if.then.i.i.i70
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i71 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %pprev14.i.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %24, ptr %pprev14.i.i.i.i71, align 4
  br label %__hlist_del.exit.i.i.i73

__hlist_del.exit.i.i.i73:                         ; preds = %do.body13.i.i.i.i72, %if.then.i.i.i70.__hlist_del.exit.i.i.i73_crit_edge
  %29 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %call, align 4
  %30 = ptrtoint ptr %pprev.i.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %pprev.i.i.i.i67, align 4
  br label %hlist_del_init.exit.i.i

hlist_del_init.exit.i.i:                          ; preds = %__hlist_del.exit.i.i.i73, %if.then24.hlist_del_init.exit.i.i_crit_edge
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i2.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %hlist_del_init.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.nr_remove_node.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !71

if.end5.i.i.i.i.i.i.nr_remove_node.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_remove_node.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %nr_remove_node.exit

if.then.i2.i.i:                                   ; preds = %hlist_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef nonnull %call) #9
  br label %nr_remove_node.exit

nr_remove_node.exit:                              ; preds = %if.then.i2.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.nr_remove_node.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  br label %if.end34

if.else:                                          ; preds = %if.end17
  %32 = zext i32 %i.0106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %i.0106, label %if.else.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.else.sw.bb29_crit_edge
  ]

if.else.sw.bb29_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb29

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx28 = getelementptr %struct.nr_node, ptr %call, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %arrayidx28, align 4
  %35 = ptrtoint ptr %routes.le to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %routes.le, align 4
  br label %sw.bb29

sw.bb29:                                          ; preds = %sw.bb, %if.else.sw.bb29_crit_edge
  %arrayidx31 = getelementptr %struct.nr_node, ptr %call, i32 0, i32 5, i32 1
  %arrayidx33 = getelementptr %struct.nr_node, ptr %call, i32 0, i32 5, i32 2
  %36 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %arrayidx33, align 4
  %38 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %37, ptr %arrayidx31, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb29, %if.else.sw.epilog_crit_edge
  %call.i.i.i.i.i.i75 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i76 = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i76)
  %cmp.i.i.i.i77 = icmp eq i32 %asmresult.i.i.i.i.i.i.i76, 1
  br i1 %cmp.i.i.i.i77, label %if.then.i81, label %if.end5.i.i.i.i79

if.end5.i.i.i.i79:                                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i76)
  %.not.i.i.i.i78 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i76, 0
  br i1 %.not.i.i.i.i78, label %if.end5.i.i.i.i79.if.end34_crit_edge, label %if.then10.i.i.i.i80, !prof !71

if.end5.i.i.i.i79.if.end34_crit_edge:             ; preds = %if.end5.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then10.i.i.i.i80:                              ; preds = %if.end5.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %if.end34

if.then.i81:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef nonnull %call) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then.i81, %if.then10.i.i.i.i80, %if.end5.i.i.i.i79.if.end34_crit_edge, %nr_remove_node.exit
  tail call void @_raw_spin_unlock_bh(ptr noundef %node_lock.i) #9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !71

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef nonnull %call) #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %nr_node_lock.exit.for.end_crit_edge
  tail call fastcc void @nr_neigh_put(ptr noundef nonnull %call1)
  tail call void @_raw_spin_unlock_bh(ptr noundef %node_lock.i) #9
  %call.i.i.i.i.i.i.i86 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i87 = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i87)
  %cmp.i.i.i.i.i88 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i87, 1
  br i1 %cmp.i.i.i.i.i88, label %if.then.i.i92, label %if.end5.i.i.i.i.i90

if.end5.i.i.i.i.i90:                              ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i87)
  %.not.i.i.i.i.i89 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i87, 0
  br i1 %.not.i.i.i.i.i89, label %if.end5.i.i.i.i.i90.nr_node_unlock.exit93_crit_edge, label %if.then10.i.i.i.i.i91, !prof !71

if.end5.i.i.i.i.i90.nr_node_unlock.exit93_crit_edge: ; preds = %if.end5.i.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_unlock.exit93

if.then10.i.i.i.i.i91:                            ; preds = %if.end5.i.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %nr_node_unlock.exit93

if.then.i.i92:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef nonnull %call) #9
  br label %nr_node_unlock.exit93

nr_node_unlock.exit93:                            ; preds = %if.then.i.i92, %if.then10.i.i.i.i.i91, %if.end5.i.i.i.i.i90.nr_node_unlock.exit93_crit_edge
  %call.i.i.i.i.i.i95 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i96 = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i96)
  %cmp.i.i.i.i97 = icmp eq i32 %asmresult.i.i.i.i.i.i.i96, 1
  br i1 %cmp.i.i.i.i97, label %if.then.i101, label %if.end5.i.i.i.i99

if.end5.i.i.i.i99:                                ; preds = %nr_node_unlock.exit93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i96)
  %.not.i.i.i.i98 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i96, 0
  br i1 %.not.i.i.i.i98, label %if.end5.i.i.i.i99.cleanup_crit_edge, label %if.then10.i.i.i.i100, !prof !71

if.end5.i.i.i.i99.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i100:                             ; preds = %if.end5.i.i.i.i99
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %cleanup

if.then.i101:                                     ; preds = %nr_node_unlock.exit93
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i101, %if.then10.i.i.i.i100, %if.end5.i.i.i.i99.cleanup_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -22, %if.then10.i.i.i.i ], [ -22, %if.then.i ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ], [ -22, %if.end5.i.i.i.i99.cleanup_crit_edge ], [ -22, %if.then10.i.i.i.i100 ], [ -22, %if.then.i101 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nr_del_neigh(ptr noundef %callsign, ptr noundef %dev, i32 noundef %quality) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nr_neigh_get_dev(ptr noundef %callsign, ptr noundef %dev)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %quality to i8
  %quality1 = getelementptr inbounds %struct.nr_neigh, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %quality1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %quality1, align 4
  %locked = getelementptr inbounds %struct.nr_neigh, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %locked, align 1
  %count = getelementptr inbounds %struct.nr_neigh, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp3 = icmp eq i16 %3, 0
  br i1 %cmp3, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.not.i.i.i, label %if.then5.nr_remove_neigh.exit_crit_edge, label %if.then.i.i.i

if.then5.nr_remove_neigh.exit_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_remove_neigh.exit

if.then.i.i.i:                                    ; preds = %if.then5
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %5, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %call, align 4
  %11 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %nr_remove_neigh.exit

nr_remove_neigh.exit:                             ; preds = %__hlist_del.exit.i.i.i, %if.then5.nr_remove_neigh.exit_crit_edge
  tail call fastcc void @nr_neigh_put(ptr noundef nonnull %call) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  br label %if.end6

if.end6:                                          ; preds = %nr_remove_neigh.exit, %if.end.if.end6_crit_edge
  tail call fastcc void @nr_neigh_put(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_link_failed(ptr noundef %ax25, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %s.0.in = phi ptr [ @nr_neigh_list, %entry ], [ %s.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %s.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %s.0 = load ptr, ptr %s.0.in, align 4
  %tobool2.not = icmp eq ptr %s.0, null
  br i1 %tobool2.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %ax253 = getelementptr inbounds %struct.nr_neigh, ptr %s.0, i32 0, i32 3
  %1 = ptrtoint ptr %ax253 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ax253, align 4
  %cmp = icmp eq ptr %2, %ax25
  br i1 %cmp, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then:                                          ; preds = %for.body
  %ax253.le = getelementptr inbounds %struct.nr_neigh, ptr %s.0, i32 0, i32 3
  %refcount = getelementptr inbounds %struct.nr_neigh, ptr %s.0, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !70

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end16_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !71

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end16_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #9
  br label %if.end16

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end16_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  %5 = ptrtoint ptr %ax253.le to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ax253.le, align 4
  %refcount.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 36
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ax25_cb_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !71

if.end5.i.i.i.i.ax25_cb_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ax25_cb_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %ax25_cb_put.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  %digipeat.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 3
  %7 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %digipeat.i, align 4
  tail call void @kfree(ptr noundef %8) #9
  tail call void @kfree(ptr noundef %ax25) #9
  br label %ax25_cb_put.exit

ax25_cb_put.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ax25_cb_put.exit_crit_edge
  %failed = getelementptr inbounds %struct.nr_neigh, ptr %s.0, i32 0, i32 9
  %9 = ptrtoint ptr %failed to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %failed, align 4
  %inc = add i8 %10, 1
  store i8 %inc, ptr %failed, align 4
  %conv = zext i8 %inc to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_netrom_link_fails_count to i32))
  %11 = load i32, ptr @sysctl_netrom_link_fails_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp18 = icmp sgt i32 %11, %conv
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %ax25_cb_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nr_neigh_put(ptr noundef nonnull %s.0)
  br label %cleanup

if.end21:                                         ; preds = %ax25_cb_put.exit
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  %nr_node.097 = load ptr, ptr @nr_node_list, align 4
  %tobool33.not98 = icmp eq ptr %nr_node.097, null
  br i1 %tobool33.not98, label %if.end21.for.end58_crit_edge, label %if.end21.for.body34_crit_edge

if.end21.for.body34_crit_edge:                    ; preds = %if.end21
  br label %for.body34

if.end21.for.end58_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end58

for.body34:                                       ; preds = %nr_node_unlock.exit.for.body34_crit_edge, %if.end21.for.body34_crit_edge
  %nr_node.099 = phi ptr [ %nr_node.0, %nr_node_unlock.exit.for.body34_crit_edge ], [ %nr_node.097, %if.end21.for.body34_crit_edge ]
  %refcount.i89 = getelementptr inbounds %struct.nr_node, ptr %nr_node.099, i32 0, i32 6
  %call.i.i.i.i.i.i90 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i89, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i89, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i89, ptr %refcount.i89, i32 1, ptr elementtype(i32) %refcount.i89) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %for.body34.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

for.body34.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.body34
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i91 = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i91, label %if.else.i.i.i.i.nr_node_lock.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !71

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nr_node_lock.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_lock.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %for.body34.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %for.body34.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i89, i32 noundef %.sink.i.i.i.i) #9
  br label %nr_node_lock.exit

nr_node_lock.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nr_node_lock.exit_crit_edge
  %node_lock.i = getelementptr inbounds %struct.nr_node, ptr %nr_node.099, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %node_lock.i) #9
  %which = getelementptr inbounds %struct.nr_node, ptr %nr_node.099, i32 0, i32 3
  %14 = ptrtoint ptr %which to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %which, align 2
  %count = getelementptr inbounds %struct.nr_node, ptr %nr_node.099, i32 0, i32 4
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp37 = icmp ult i8 %15, %17
  br i1 %cmp37, label %land.lhs.true, label %nr_node_lock.exit.if.end45_crit_edge

nr_node_lock.exit.if.end45_crit_edge:             ; preds = %nr_node_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true:                                    ; preds = %nr_node_lock.exit
  %conv35 = zext i8 %15 to i32
  %neighbour = getelementptr %struct.nr_node, ptr %nr_node.099, i32 0, i32 5, i32 %conv35, i32 2
  %18 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %neighbour, align 4
  %cmp40 = icmp eq ptr %19, %s.0
  br i1 %cmp40, label %if.then42, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %inc44 = add nuw i8 %15, 1
  %20 = ptrtoint ptr %which to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %inc44, ptr %which, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %land.lhs.true.if.end45_crit_edge, %nr_node_lock.exit.if.end45_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %node_lock.i) #9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i89, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i89, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i89, ptr %refcount.i89, i32 1, ptr elementtype(i32) %refcount.i89) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nr_node_unlock.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !71

if.end5.i.i.i.i.i.nr_node_unlock.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_unlock.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i89, i32 noundef 3) #9
  br label %nr_node_unlock.exit

if.then.i.i:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef nonnull %nr_node.099) #9
  br label %nr_node_unlock.exit

nr_node_unlock.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nr_node_unlock.exit_crit_edge
  %22 = ptrtoint ptr %nr_node.099 to i32
  call void @__asan_load4_noabort(i32 %22)
  %nr_node.0 = load ptr, ptr %nr_node.099, align 4
  %tobool33.not = icmp eq ptr %nr_node.0, null
  br i1 %tobool33.not, label %nr_node_unlock.exit.for.end58_crit_edge, label %nr_node_unlock.exit.for.body34_crit_edge

nr_node_unlock.exit.for.body34_crit_edge:         ; preds = %nr_node_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34

nr_node_unlock.exit.for.end58_crit_edge:          ; preds = %nr_node_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end58

for.end58:                                        ; preds = %nr_node_unlock.exit.for.end58_crit_edge, %if.end21.for.end58_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  tail call fastcc void @nr_neigh_put(ptr noundef nonnull %s.0)
  br label %cleanup

cleanup:                                          ; preds = %for.end58, %if.then20, %for.end
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %r) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #9, !srcloc !69
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !70

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !71

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i.i) #9
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ax25_cb_put(ptr noundef %ax25) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %refcount = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 36
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !71

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  %digipeat = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 3
  %1 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %digipeat, align 4
  tail call void @kfree(ptr noundef %2) #9
  tail call void @kfree(ptr noundef %ax25) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nr_neigh_put(ptr noundef %nr_neigh) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %refcount = getelementptr inbounds %struct.nr_neigh, ptr %nr_neigh, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end3_crit_edge, label %if.then10.i.i.i, !prof !71

if.end5.i.i.i.if.end3_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %if.end3

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  %ax25 = getelementptr inbounds %struct.nr_neigh, ptr %nr_neigh, i32 0, i32 3
  %1 = ptrtoint ptr %ax25 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ax25, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then1:                                         ; preds = %if.then
  %refcount.i = getelementptr inbounds %struct.ax25_cb, ptr %2, i32 0, i32 36
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !71

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %if.end

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  %digipeat.i = getelementptr inbounds %struct.ax25_cb, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %digipeat.i, align 4
  tail call void @kfree(ptr noundef %5) #9
  tail call void @kfree(ptr noundef nonnull %2) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %digipeat = getelementptr inbounds %struct.nr_neigh, ptr %nr_neigh, i32 0, i32 2
  %6 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %digipeat, align 4
  tail call void @kfree(ptr noundef %7) #9
  tail call void @kfree(ptr noundef %nr_neigh) #9
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nr_route_frame(ptr noundef %skb, ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 7
  %cmp.not = icmp eq ptr %ax25, null
  br i1 %cmp.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %dest_addr = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 2
  %digipeat = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 3
  %2 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %digipeat, align 4
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %4 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ax25_dev, align 4
  %dev3 = getelementptr inbounds %struct.ax25_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_netrom_obsolescence_count_initialiser to i32))
  %8 = load i32, ptr @sysctl_netrom_obsolescence_count_initialiser, align 4
  %call = tail call fastcc i32 @nr_add_node(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef %dest_addr, ptr noundef %3, ptr noundef %7, i32 noundef 0, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5.thread, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = tail call ptr @nr_dev_get(ptr noundef %add.ptr2)
  %cmp7.not = icmp eq ptr %call6, null
  br i1 %cmp7.not, label %if.end5.if.end18_crit_edge, label %if.then10

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end5.thread:                                   ; preds = %if.then
  %call6112 = tail call ptr @nr_dev_get(ptr noundef %add.ptr2)
  %cmp7.not113 = icmp eq ptr %call6112, null
  br i1 %cmp7.not113, label %if.end14, label %if.else

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 @nr_loopback_queue(ptr noundef %skb) #9
  br label %do.body1.i

if.else:                                          ; preds = %if.end5.thread
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @nr_rx_frame(ptr noundef %skb, ptr noundef nonnull %call6112) #9
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.else, %if.then10
  %call6115 = phi ptr [ %call6, %if.then10 ], [ %call6112, %if.else ]
  %ret.0 = phi i32 [ %call11, %if.then10 ], [ %call12, %if.else ]
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !76
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call6115, i32 0, i32 118
  %10 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcpu_refcnt.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %18, %12
  %19 = inttoptr i32 %add.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add13.i = add i32 %21, -1
  store i32 %add13.i, ptr %19, align 4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !77
  %and.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !70

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #9, !srcloc !78
  br label %cleanup

if.end14:                                         ; preds = %if.end5.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_netrom_routing_control to i32))
  %23 = load i32, ptr @sysctl_netrom_routing_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool15.not = icmp ne i32 %23, 0
  %brmerge = or i1 %cmp.not, %tobool15.not
  br i1 %brmerge, label %if.end14.if.end18_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end18:                                         ; preds = %if.end14.if.end18_crit_edge, %if.end5.if.end18_crit_edge
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %25, i32 14
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp20 = icmp eq i8 %27, 1
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %call24 = tail call fastcc ptr @nr_node_get(ptr noundef %add.ptr2)
  %cmp25 = icmp eq ptr %call24, null
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %refcount.i = getelementptr inbounds %struct.nr_node, ptr %call24, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end28.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

if.end28.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end28
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.nr_node_lock.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !71

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nr_node_lock.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_lock.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end28.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end28.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #9
  br label %nr_node_lock.exit

nr_node_lock.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nr_node_lock.exit_crit_edge
  %node_lock.i = getelementptr inbounds %struct.nr_node, ptr %call24, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %node_lock.i) #9
  %which = getelementptr inbounds %struct.nr_node, ptr %call24, i32 0, i32 3
  %30 = ptrtoint ptr %which to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %which, align 2
  %count = getelementptr inbounds %struct.nr_node, ptr %call24, i32 0, i32 4
  %32 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp31.not = icmp ult i8 %31, %33
  br i1 %cmp31.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %nr_node_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nr_node_unlock(ptr noundef nonnull %call24)
  tail call fastcc void @nr_node_put(ptr noundef nonnull %call24)
  br label %cleanup

if.end34:                                         ; preds = %nr_node_lock.exit
  %conv29 = zext i8 %31 to i32
  %neighbour = getelementptr %struct.nr_node, ptr %call24, i32 0, i32 5, i32 %conv29, i32 2
  %34 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %neighbour, align 4
  %call37 = tail call ptr @nr_dev_first()
  %cmp38 = icmp eq ptr %call37, null
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nr_node_unlock(ptr noundef nonnull %call24)
  tail call fastcc void @nr_node_put(ptr noundef nonnull %call24)
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 19
  %36 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hard_header_len, align 2
  %conv42 = zext i16 %37 to i32
  %call43 = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef %conv42, i32 noundef 0, i32 noundef 2592) #9
  %cmp44 = icmp eq ptr %call43, null
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nr_node_unlock(ptr noundef nonnull %call24)
  tail call fastcc void @nr_node_put(ptr noundef nonnull %call24)
  tail call fastcc void @dev_put(ptr noundef nonnull %call37)
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  %data48 = getelementptr inbounds %struct.sk_buff, ptr %call43, i32 0, i32 19
  %38 = ptrtoint ptr %data48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data48, align 4
  %arrayidx49 = getelementptr i8, ptr %39, i32 14
  %40 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx49, align 1
  %dec = add i8 %41, -1
  store i8 %dec, ptr %arrayidx49, align 1
  %call50 = tail call ptr @skb_push(ptr noundef nonnull %call43, i32 noundef 1) #9
  %42 = ptrtoint ptr %call50 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -49, ptr %call50, align 1
  %ax2551 = getelementptr inbounds %struct.nr_neigh, ptr %35, i32 0, i32 3
  %43 = ptrtoint ptr %ax2551 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ax2551, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 86
  %45 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_addr, align 64
  %callsign = getelementptr inbounds %struct.nr_neigh, ptr %35, i32 0, i32 1
  %digipeat52 = getelementptr inbounds %struct.nr_neigh, ptr %35, i32 0, i32 2
  %47 = ptrtoint ptr %digipeat52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %digipeat52, align 4
  %dev53 = getelementptr inbounds %struct.nr_neigh, ptr %35, i32 0, i32 4
  %49 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev53, align 4
  %call54 = tail call ptr @ax25_send_frame(ptr noundef nonnull %call43, i32 noundef 256, ptr noundef %46, ptr noundef %callsign, ptr noundef %48, ptr noundef %50) #9
  %51 = ptrtoint ptr %ax2551 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call54, ptr %ax2551, align 4
  %tobool56.not = icmp eq ptr %44, null
  br i1 %tobool56.not, label %if.end47.if.end58_crit_edge, label %if.then57

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then57:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ax25_cb_put(ptr noundef nonnull %44)
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end47.if.end58_crit_edge
  tail call fastcc void @dev_put(ptr noundef nonnull %call37)
  %52 = ptrtoint ptr %ax2551 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ax2551, align 4
  %cmp60 = icmp ne ptr %53, null
  %conv61 = zext i1 %cmp60 to i32
  tail call fastcc void @nr_node_unlock(ptr noundef nonnull %call24)
  tail call fastcc void @nr_node_put(ptr noundef nonnull %call24)
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then46, %if.then40, %if.then33, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %dev_put.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %dev_put.exit ], [ 0, %if.then33 ], [ 0, %if.then40 ], [ 0, %if.then46 ], [ %conv61, %if.end58 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_loopback_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_rx_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nr_node_get(ptr noundef %callsign) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %nr_node.0.in = phi ptr [ @nr_node_list, %entry ], [ %nr_node.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %nr_node.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %nr_node.0 = load ptr, ptr %nr_node.0.in, align 4
  %tobool2.not = icmp eq ptr %nr_node.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %callsign3 = getelementptr inbounds %struct.nr_node, ptr %nr_node.0, i32 0, i32 1
  %call = tail call i32 @ax25cmp(ptr noundef %callsign, ptr noundef %callsign3) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then:                                          ; preds = %for.body
  %refcount = getelementptr inbounds %struct.nr_node, ptr %nr_node.0, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !70

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.for.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !71

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.for.end_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #9
  br label %for.end

for.end:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.for.end_crit_edge, %for.cond.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  ret ptr %nr_node.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nr_node_put(ptr noundef %nr_node) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %refcount = getelementptr inbounds %struct.nr_node, ptr %nr_node, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !71

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef %nr_node) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_send_frame(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nr_node_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_hlist_start_head(ptr noundef nonnull @nr_node_list, i64 noundef %1) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nr_node_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nr_node_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_hlist_next(ptr noundef %v, ptr noundef nonnull @nr_node_list, ptr noundef %pos) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_node_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #9
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %0 = call ptr @memset(ptr %buf, i32 255, i32 11)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.12) #9
  br label %if.end

if.else:                                          ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.nr_node, ptr %v, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

if.else.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.nr_node_lock.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !71

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nr_node_lock.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_lock.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #9
  br label %nr_node_lock.exit

nr_node_lock.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nr_node_lock.exit_crit_edge
  %node_lock.i = getelementptr inbounds %struct.nr_node, ptr %v, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %node_lock.i) #9
  %callsign = getelementptr inbounds %struct.nr_node, ptr %v, i32 0, i32 1
  %call = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %callsign) #9
  %mnemonic = getelementptr inbounds %struct.nr_node, ptr %v, i32 0, i32 2
  %3 = ptrtoint ptr %mnemonic to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mnemonic, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp1 = icmp eq i8 %4, 0
  %spec.select = select i1 %cmp1, ptr @.str.14, ptr %mnemonic
  %which = getelementptr inbounds %struct.nr_node, ptr %v, i32 0, i32 3
  %5 = ptrtoint ptr %which to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %which, align 2
  %conv5 = zext i8 %6 to i32
  %add = add nuw nsw i32 %conv5, 1
  %count = getelementptr inbounds %struct.nr_node, ptr %v, i32 0, i32 4
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %count, align 1
  %conv6 = zext i8 %8 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, ptr noundef %call, ptr noundef %spec.select, i32 noundef %add, i32 noundef %conv6) #9
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp938.not = icmp eq i8 %10, 0
  br i1 %cmp938.not, label %nr_node_lock.exit.for.end_crit_edge, label %nr_node_lock.exit.for.body_crit_edge

nr_node_lock.exit.for.body_crit_edge:             ; preds = %nr_node_lock.exit
  br label %for.body

nr_node_lock.exit.for.end_crit_edge:              ; preds = %nr_node_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %nr_node_lock.exit.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %nr_node_lock.exit.for.body_crit_edge ]
  %arrayidx11 = getelementptr %struct.nr_node, ptr %v, i32 0, i32 5, i32 %i.039
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx11, align 4
  %conv12 = zext i8 %12 to i32
  %obs_count = getelementptr %struct.nr_node, ptr %v, i32 0, i32 5, i32 %i.039, i32 1
  %13 = ptrtoint ptr %obs_count to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %obs_count, align 1
  %conv15 = zext i8 %14 to i32
  %neighbour = getelementptr %struct.nr_node, ptr %v, i32 0, i32 5, i32 %i.039, i32 2
  %15 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %neighbour, align 4
  %number = getelementptr inbounds %struct.nr_neigh, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %number, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.15, i32 noundef %conv12, i32 noundef %conv15, i32 noundef %18) #9
  %inc = add nuw nsw i32 %i.039, 1
  %19 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %count, align 1
  %conv8 = zext i8 %20 to i32
  %cmp9 = icmp ult i32 %inc, %conv8
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %nr_node_lock.exit.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %node_lock.i) #9
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nr_node_unlock.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !71

if.end5.i.i.i.i.i.nr_node_unlock.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_unlock.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %nr_node_unlock.exit

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  call void @kfree(ptr noundef %v) #9
  br label %nr_node_unlock.exit

nr_node_unlock.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nr_node_unlock.exit_crit_edge
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.16) #9
  br label %if.end

if.end:                                           ; preds = %nr_node_unlock.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nr_neigh_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_hlist_start_head(ptr noundef nonnull @nr_neigh_list, i64 noundef %1) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nr_neigh_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nr_neigh_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_hlist_next(ptr noundef %v, ptr noundef nonnull @nr_neigh_list, ptr noundef %pos) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_neigh_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #9
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %0 = call ptr @memset(ptr %buf, i32 255, i32 11)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.17) #9
  br label %if.end16

if.else:                                          ; preds = %entry
  %number = getelementptr inbounds %struct.nr_neigh, ptr %v, i32 0, i32 8
  %1 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %number, align 4
  %callsign = getelementptr inbounds %struct.nr_neigh, ptr %v, i32 0, i32 1
  %call = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %callsign) #9
  %dev = getelementptr inbounds %struct.nr_neigh, ptr %v, i32 0, i32 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %4, null
  %spec.select = select i1 %tobool.not, ptr @.str.19, ptr %4
  %quality = getelementptr inbounds %struct.nr_neigh, ptr %v, i32 0, i32 5
  %5 = ptrtoint ptr %quality to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %quality, align 4
  %conv = zext i8 %6 to i32
  %locked = getelementptr inbounds %struct.nr_neigh, ptr %v, i32 0, i32 6
  %7 = ptrtoint ptr %locked to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %locked, align 1
  %conv3 = zext i8 %8 to i32
  %count = getelementptr inbounds %struct.nr_neigh, ptr %v, i32 0, i32 7
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %count, align 2
  %conv4 = zext i16 %10 to i32
  %failed = getelementptr inbounds %struct.nr_neigh, ptr %v, i32 0, i32 9
  %11 = ptrtoint ptr %failed to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %failed, align 4
  %conv5 = zext i8 %12 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.18, i32 noundef %2, ptr noundef %call, ptr noundef nonnull %spec.select, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5) #9
  %digipeat = getelementptr inbounds %struct.nr_neigh, ptr %v, i32 0, i32 2
  %13 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %digipeat, align 4
  %cmp6.not = icmp eq ptr %14, null
  br i1 %cmp6.not, label %if.else.if.end_crit_edge, label %for.cond.preheader

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.preheader:                               ; preds = %if.else
  %15 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %digipeat, align 4
  %ndigi33 = getelementptr inbounds %struct.ax25_digi, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ndigi33 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ndigi33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp1135.not = icmp eq i8 %18, 0
  br i1 %cmp1135.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %19 = phi ptr [ %21, %for.body.for.body_crit_edge ], [ %16, %for.cond.preheader.for.body_crit_edge ]
  %i.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.ax25_address], ptr %19, i32 0, i32 %i.036
  %call15 = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %arrayidx) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.20, ptr noundef %call15) #9
  %inc = add nuw nsw i32 %i.036, 1
  %20 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %digipeat, align 4
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ndigi, align 1
  %conv10 = zext i8 %23 to i32
  %cmp11 = icmp ult i32 %inc, %conv10
  br i1 %cmp11, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %if.else.if.end_crit_edge
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.16) #9
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_rt_free() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  %0 = load ptr, ptr @nr_node_list, align 4
  %tobool2.not84 = icmp eq ptr %0, null
  br i1 %tobool2.not84, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs:                                         ; preds = %nr_node_unlock.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %t.085 = phi ptr [ %2, %nr_node_unlock.exit.land.rhs_crit_edge ], [ %0, %entry.land.rhs_crit_edge ]
  %1 = ptrtoint ptr %t.085 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %t.085, align 4
  %refcount.i = getelementptr inbounds %struct.nr_node, ptr %t.085, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

land.rhs.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %land.rhs
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.nr_node_lock.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !71

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nr_node_lock.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_lock.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %land.rhs.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %land.rhs.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #9
  br label %nr_node_lock.exit

nr_node_lock.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nr_node_lock.exit_crit_edge
  %node_lock.i = getelementptr inbounds %struct.nr_node, ptr %t.085, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %node_lock.i) #9
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %t.085, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.not.i.i, label %nr_node_lock.exit.hlist_del_init.exit.i_crit_edge, label %if.then.i.i

nr_node_lock.exit.hlist_del_init.exit.i_crit_edge: ; preds = %nr_node_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_init.exit.i

if.then.i.i:                                      ; preds = %nr_node_lock.exit
  %7 = ptrtoint ptr %t.085 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t.085, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %6, align 4
  %tobool.not.i3.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %11 = ptrtoint ptr %t.085 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %t.085, align 4
  %12 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hlist_del_init.exit.i

hlist_del_init.exit.i:                            ; preds = %__hlist_del.exit.i.i, %nr_node_lock.exit.hlist_del_init.exit.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i2.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %hlist_del_init.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.__nr_remove_node.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !71

if.end5.i.i.i.i.i.__nr_remove_node.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__nr_remove_node.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %__nr_remove_node.exit

if.then.i2.i:                                     ; preds = %hlist_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef nonnull %t.085) #9
  br label %__nr_remove_node.exit

__nr_remove_node.exit:                            ; preds = %if.then.i2.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.__nr_remove_node.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %node_lock.i) #9
  %call.i.i.i.i.i.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i70 = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i70)
  %cmp.i.i.i.i.i71 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i70, 1
  br i1 %cmp.i.i.i.i.i71, label %if.then.i.i75, label %if.end5.i.i.i.i.i73

if.end5.i.i.i.i.i73:                              ; preds = %__nr_remove_node.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i70)
  %.not.i.i.i.i.i72 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i70, 0
  br i1 %.not.i.i.i.i.i72, label %if.end5.i.i.i.i.i73.nr_node_unlock.exit_crit_edge, label %if.then10.i.i.i.i.i74, !prof !71

if.end5.i.i.i.i.i73.nr_node_unlock.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %nr_node_unlock.exit

if.then10.i.i.i.i.i74:                            ; preds = %if.end5.i.i.i.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %nr_node_unlock.exit

if.then.i.i75:                                    ; preds = %__nr_remove_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @kfree(ptr noundef nonnull %t.085) #9
  br label %nr_node_unlock.exit

nr_node_unlock.exit:                              ; preds = %if.then.i.i75, %if.then10.i.i.i.i.i74, %if.end5.i.i.i.i.i73.nr_node_unlock.exit_crit_edge
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %nr_node_unlock.exit.for.end_crit_edge, label %nr_node_unlock.exit.land.rhs_crit_edge

nr_node_unlock.exit.land.rhs_crit_edge:           ; preds = %nr_node_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

nr_node_unlock.exit.for.end_crit_edge:            ; preds = %nr_node_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %nr_node_unlock.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %15 = load ptr, ptr @nr_neigh_list, align 4
  %tobool26.not87 = icmp eq ptr %15, null
  br i1 %tobool26.not87, label %for.end.for.end46_crit_edge, label %for.end.land.rhs27_crit_edge

for.end.land.rhs27_crit_edge:                     ; preds = %for.end
  br label %land.rhs27

for.end.for.end46_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end46

land.rhs27:                                       ; preds = %__nr_remove_neigh.exit.land.rhs27_crit_edge, %for.end.land.rhs27_crit_edge
  %s.088 = phi ptr [ %17, %__nr_remove_neigh.exit.land.rhs27_crit_edge ], [ %15, %for.end.land.rhs27_crit_edge ]
  %16 = ptrtoint ptr %s.088 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s.088, align 4
  %count = getelementptr inbounds %struct.nr_neigh, ptr %s.088, i32 0, i32 7
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool33.not86 = icmp eq i16 %19, 0
  br i1 %tobool33.not86, label %land.rhs27.while.end_crit_edge, label %land.rhs27.while.body_crit_edge

land.rhs27.while.body_crit_edge:                  ; preds = %land.rhs27
  br label %while.body

land.rhs27.while.end_crit_edge:                   ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %land.rhs27.while.body_crit_edge
  %20 = phi i16 [ %23, %while.body.while.body_crit_edge ], [ %19, %land.rhs27.while.body_crit_edge ]
  %dec = add i16 %20, -1
  %21 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %dec, ptr %count, align 2
  tail call fastcc void @nr_neigh_put(ptr noundef nonnull %s.088)
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %count, align 2
  %tobool33.not = icmp eq i16 %23, 0
  br i1 %tobool33.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs27.while.end_crit_edge
  %pprev.i.i.i76 = getelementptr inbounds %struct.hlist_node, ptr %s.088, i32 0, i32 1
  %24 = ptrtoint ptr %pprev.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pprev.i.i.i76, align 4
  %tobool.not.i.not.i.i77 = icmp eq ptr %25, null
  br i1 %tobool.not.i.not.i.i77, label %while.end.__nr_remove_neigh.exit_crit_edge, label %if.then.i.i79

while.end.__nr_remove_neigh.exit_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__nr_remove_neigh.exit

if.then.i.i79:                                    ; preds = %while.end
  %26 = ptrtoint ptr %s.088 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s.088, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %27, ptr %25, align 4
  %tobool.not.i3.i.i78 = icmp eq ptr %27, null
  br i1 %tobool.not.i3.i.i78, label %if.then.i.i79.__hlist_del.exit.i.i82_crit_edge, label %do.body13.i.i.i81

if.then.i.i79.__hlist_del.exit.i.i82_crit_edge:   ; preds = %if.then.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i82

do.body13.i.i.i81:                                ; preds = %if.then.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i80 = getelementptr inbounds %struct.hlist_node, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %pprev14.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %25, ptr %pprev14.i.i.i80, align 4
  br label %__hlist_del.exit.i.i82

__hlist_del.exit.i.i82:                           ; preds = %do.body13.i.i.i81, %if.then.i.i79.__hlist_del.exit.i.i82_crit_edge
  %30 = ptrtoint ptr %s.088 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %s.088, align 4
  %31 = ptrtoint ptr %pprev.i.i.i76 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %pprev.i.i.i76, align 4
  br label %__nr_remove_neigh.exit

__nr_remove_neigh.exit:                           ; preds = %__hlist_del.exit.i.i82, %while.end.__nr_remove_neigh.exit_crit_edge
  tail call fastcc void @nr_neigh_put(ptr noundef nonnull %s.088) #9
  %tobool26.not = icmp eq ptr %17, null
  br i1 %tobool26.not, label %__nr_remove_neigh.exit.for.end46_crit_edge, label %__nr_remove_neigh.exit.land.rhs27_crit_edge

__nr_remove_neigh.exit.land.rhs27_crit_edge:      ; preds = %__nr_remove_neigh.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs27

__nr_remove_neigh.exit.for.end46_crit_edge:       ; preds = %__nr_remove_neigh.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end46

for.end46:                                        ; preds = %__nr_remove_neigh.exit.for.end46_crit_edge, %for.end.for.end46_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_node_list_lock) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nr_neigh_get_dev(ptr noundef %callsign, ptr noundef readnone %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  %nr_neigh.027 = load ptr, ptr @nr_neigh_list, align 4
  %tobool2.not28 = icmp eq ptr %nr_neigh.027, null
  br i1 %tobool2.not28, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %nr_neigh.029 = phi ptr [ %nr_neigh.0, %for.inc.for.body_crit_edge ], [ %nr_neigh.027, %entry.for.body_crit_edge ]
  %callsign3 = getelementptr inbounds %struct.nr_neigh, ptr %nr_neigh.029, i32 0, i32 1
  %call = tail call i32 @ax25cmp(ptr noundef %callsign, ptr noundef %callsign3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %dev4 = getelementptr inbounds %struct.nr_neigh, ptr %nr_neigh.029, i32 0, i32 4
  %0 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev4, align 4
  %cmp5 = icmp eq ptr %1, %dev
  br i1 %cmp5, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %refcount = getelementptr inbounds %struct.nr_neigh, ptr %nr_neigh.029, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !70

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.for.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !71

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.for.end_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #9
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %4 = ptrtoint ptr %nr_neigh.029 to i32
  call void @__asan_load4_noabort(i32 %4)
  %nr_neigh.0 = load ptr, ptr %nr_neigh.029, align 4
  %tobool2.not = icmp eq ptr %nr_neigh.0, null
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.for.end_crit_edge, %entry.for.end_crit_edge
  %nr_neigh.026 = phi ptr [ %nr_neigh.029, %if.end15.sink.split.i.i.i ], [ %nr_neigh.029, %if.else.i.i.i.for.end_crit_edge ], [ null, %entry.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  ret ptr %nr_neigh.026
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nr_remove_neigh(ptr noundef %nr_neigh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %nr_neigh, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i.i, label %entry.__nr_remove_neigh.exit_crit_edge, label %if.then.i.i

entry.__nr_remove_neigh.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__nr_remove_neigh.exit

if.then.i.i:                                      ; preds = %entry
  %2 = ptrtoint ptr %nr_neigh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nr_neigh, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i3.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %6 = ptrtoint ptr %nr_neigh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %nr_neigh, align 4
  %7 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %__nr_remove_neigh.exit

__nr_remove_neigh.exit:                           ; preds = %__hlist_del.exit.i.i, %entry.__nr_remove_neigh.exit_crit_edge
  tail call fastcc void @nr_neigh_put(ptr noundef %nr_neigh) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_neigh_list_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_start_head(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax2asc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !28, !29, !31, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/netrom/nr_route.c", i32 580, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/netrom/nr_route.c", i32 599, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netrom/nr_route.c", i32 767, i32 29}
!8 = !{ptr @nr_node_seqops, !9, !"nr_node_seqops", i1 false, i1 false}
!9 = !{!"../net/netrom/nr_route.c", i32 894, i32 29}
!10 = !{ptr @nr_neigh_seqops, !11, !"nr_neigh_seqops", i1 false, i1 false}
!11 = !{!"../net/netrom/nr_route.c", i32 950, i32 29}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/netrom/nr_route.c", i32 42, i32 8}
!14 = !{ptr @nr_neigh_list_lock, !13, !"nr_neigh_list_lock", i1 false, i1 false}
!15 = !{ptr @nr_neigh_list, !16, !"nr_neigh_list", i1 false, i1 false}
!16 = !{!"../net/netrom/nr_route.c", i32 41, i32 8}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netrom/nr_route.c", i32 40, i32 8}
!19 = !{ptr @nr_node_list_lock, !18, !"nr_node_list_lock", i1 false, i1 false}
!20 = !{ptr @nr_node_list, !21, !"nr_node_list", i1 false, i1 false}
!21 = !{!"../net/netrom/nr_route.c", i32 39, i32 8}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!31 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!36 = !{ptr @nr_add_node.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../net/netrom/nr_route.c", i32 197, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @nr_neigh_no, !40, !"nr_neigh_no", i1 false, i1 false}
!40 = !{!"../net/netrom/nr_route.c", i32 37, i32 21}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/netrom/nr_route.c", i32 869, i32 5}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/netrom/nr_route.c", i32 875, i32 19}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/netrom/nr_route.c", i32 877, i32 37}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/netrom/nr_route.c", i32 882, i32 20}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/netrom/nr_route.c", i32 889, i32 17}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/netrom/nr_route.c", i32 925, i32 17}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/netrom/nr_route.c", i32 930, i32 19}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/netrom/nr_route.c", i32 933, i32 42}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/netrom/nr_route.c", i32 941, i32 21}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2148268839, i64 2148268871, i64 2148268900, i64 2148268934, i64 2148268965, i64 2148268988}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2148356840}
!73 = !{i64 2148271304, i64 2148271336, i64 2148271365, i64 2148271399, i64 2148271430, i64 2148271453}
!74 = !{i64 2149293120}
!75 = !{i64 2149343610}
!76 = !{i64 659790, i64 659851}
!77 = !{i64 662522}
!78 = !{i64 662807}
!79 = !{i64 2149343876}
!80 = !{i64 2152300861, i64 2152300886}
!81 = !{i64 4796416}
!82 = !{i64 4796613}
!83 = !{i64 2152281846}
