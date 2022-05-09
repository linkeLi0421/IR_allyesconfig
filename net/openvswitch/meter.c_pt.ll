; ModuleID = '/llk/IR_all_yes/net/openvswitch/meter.c_pt.bc'
source_filename = "../net/openvswitch/meter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.63 }
%union.anon.63 = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.datapath = type { %struct.callback_head, %struct.list_head, %struct.flow_table, ptr, ptr, %struct.possible_net_t, i32, i32, %struct.dp_meter_table, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.flow_table = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.possible_net_t = type { ptr }
%struct.dp_meter_table = type { ptr, i32, i32 }
%struct.dp_meter = type { %struct.spinlock, %struct.callback_head, i32, i8, i16, i32, i64, %struct.ovs_flow_stats, [0 x %struct.dp_meter_band] }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.ovs_flow_stats = type { i64, i64 }
%struct.dp_meter_band = type { i32, i32, i32, i64, %struct.ovs_flow_stats }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dp_meter_instance = type { %struct.callback_head, i32, [0 x ptr] }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.sock_common = type { %union.anon.143, %union.anon.145, %union.anon.146, i16, i8, i8, i32, %union.anon.148, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.151, [0 x i32], %union.anon.152, i16, i16, %union.anon.153, %struct.refcount_struct, [0 x i32], %union.anon.154 }
%union.anon.143 = type { i64 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.148 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.2 }
%union.anon.2 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.151 = type { i32 }
%union.anon.152 = type { %struct.hlist_node }
%union.anon.153 = type { i32 }
%union.anon.154 = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.140, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.140 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.130, i32, %struct.spinlock }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { ptr, ptr }
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
%struct.vport = type { ptr, ptr, ptr, ptr, i16, %struct.hlist_node, %struct.hlist_node, ptr, %struct.list_head, %struct.callback_head }

@meter_policy = internal constant { [10 x %struct.nla_policy], [48 x i8] } { [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy zeroinitializer], [48 x i8] zeroinitializer }, align 32
@dp_meter_genl_ops = internal constant { [4 x %struct.genl_small_ops], [48 x i8] } { [4 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @ovs_meter_cmd_features, ptr null, i8 1, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @ovs_meter_cmd_set, ptr null, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @ovs_meter_cmd_get, ptr null, i8 4, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @ovs_meter_cmd_del, ptr null, i8 3, i8 0, i8 1, i8 3 }], [48 x i8] zeroinitializer }, align 32
@ovs_meter_multicast_group = internal constant { %struct.genl_multicast_group, [47 x i8] } { %struct.genl_multicast_group { [16 x i8] c"ovs_meter\00\00\00\00\00\00\00", i8 0 }, [47 x i8] zeroinitializer }, align 32
@dp_meter_genl_family = dso_local global %struct.genl_family { i32 0, i32 4, [16 x i8] c"ovs_meter\00\00\00\00\00\00\00", i32 1, i32 9, i32 0, i8 -64, i8 0, i8 4, i8 1, ptr @meter_policy, ptr null, ptr null, ptr null, ptr @dp_meter_genl_ops, ptr @ovs_meter_multicast_group, ptr null }, section ".data..ro_after_init", align 4
@lookup_meter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/openvswitch/meter.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@lookup_meter.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@get_dp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/openvswitch/datapath.h\00", [37 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dp_meter_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&meter->lock\00", [19 x i8] zeroinitializer }, align 32
@band_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.63 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@detach_meter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@detach_meter.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dp_meter_instance_realloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dp_meter_instance_realloc.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@attach_meter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@attach_meter.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.11 = private unnamed_addr constant [13 x i8] c"meter_policy\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 22, i32 32 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"dp_meter_genl_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 682, i32 36 }
@___asan_gen_.17 = private unnamed_addr constant [26 x i8] c"ovs_meter_multicast_group\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 709, i32 42 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 57, i32 33 }
@___asan_gen_.27 = private unnamed_addr constant [30 x i8] c"../net/openvswitch/datapath.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 245, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 695, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 723, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 354, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"band_policy\00", align 1
@___asan_gen_.45 = private constant [27 x i8] c"../net/openvswitch/meter.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 33, i32 32 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @meter_policy, ptr @dp_meter_genl_ops, ptr @ovs_meter_multicast_group, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @dp_meter_create.__key, ptr @.str.7, ptr @band_policy], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meter_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_meter_genl_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_meter_multicast_group to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_meter_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @band_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ovs_meter_execute(ptr noundef %dp, ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %key, i32 noundef %meter_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #7
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %call.i) #10, !srcloc !51
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %call.i, i64 %0, i32 0) #10, !srcloc !52
  %meter_tbl = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 8
  %call2 = tail call fastcc ptr @lookup_meter(ptr noundef %meter_tbl, i32 noundef %meter_id)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %asmresult10.i.i.i = extractvalue { i64, i32 } %1, 0
  %div158.i.i115 = lshr i64 %asmresult10.i.i.i, 18
  tail call void @_raw_spin_lock(ptr noundef nonnull %call2) #7
  %used = getelementptr inbounds %struct.dp_meter, ptr %call2, i32 0, i32 6
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %used, align 8
  %sub = sub i64 %div158.i.i115, %3
  %4 = tail call i64 @llvm.smax.i64(i64 %sub, i64 0)
  %max_delta_t = getelementptr inbounds %struct.dp_meter, ptr %call2, i32 0, i32 5
  %5 = ptrtoint ptr %max_delta_t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_delta_t, align 4
  %conv = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %conv)
  %cmp5 = icmp ugt i64 %4, %conv
  %conv8 = trunc i64 %4 to i32
  %cond = select i1 %cmp5, i32 %6, i32 %conv8
  %7 = ptrtoint ptr %used to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %div158.i.i115, ptr %used, align 8
  %stats = getelementptr inbounds %struct.dp_meter, ptr %call2, i32 0, i32 7
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %stats, align 8
  %add = add i64 %9, 1
  store i64 %add, ptr %stats, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %conv10 = zext i32 %11 to i64
  %n_bytes = getelementptr inbounds %struct.dp_meter, ptr %call2, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %n_bytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %n_bytes, align 8
  %add12 = add i64 %13, %conv10
  store i64 %add12, ptr %n_bytes, align 8
  %kbps = getelementptr inbounds %struct.dp_meter, ptr %call2, i32 0, i32 3
  %14 = ptrtoint ptr %kbps to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %kbps, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool14.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool14.not, label %if.end.cond.end18_crit_edge, label %cond.true15

if.end.cond.end18_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end18

cond.true15:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %mul = shl i32 %16, 3
  br label %cond.end18

cond.end18:                                       ; preds = %cond.true15, %if.end.cond.end18_crit_edge
  %cond19 = phi i32 [ %mul, %cond.true15 ], [ 1000, %if.end.cond.end18_crit_edge ]
  %n_bands = getelementptr inbounds %struct.dp_meter, ptr %call2, i32 0, i32 4
  %17 = ptrtoint ptr %n_bands to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %n_bands, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp21117.not = icmp eq i16 %18, 0
  br i1 %cmp21117.not, label %cond.end18.if.end67_crit_edge, label %for.body.lr.ph

cond.end18.if.end67_crit_edge:                    ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

for.body.lr.ph:                                   ; preds = %cond.end18
  %conv35 = zext i32 %cond19 to i64
  br label %for.body

for.body:                                         ; preds = %if.end48.for.body_crit_edge, %for.body.lr.ph
  %band_exceeded_rate.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %band_exceeded_rate.1, %if.end48.for.body_crit_edge ]
  %band_exceeded_max.0120 = phi i32 [ -1, %for.body.lr.ph ], [ %band_exceeded_max.1, %if.end48.for.body_crit_edge ]
  %i.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end48.for.body_crit_edge ]
  %burst_size = getelementptr %struct.dp_meter, ptr %call2, i32 0, i32 8, i32 %i.0118, i32 2
  %19 = ptrtoint ptr %burst_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %burst_size, align 8
  %conv23 = zext i32 %20 to i64
  %mul24 = mul nuw nsw i64 %conv23, 1000
  %rate = getelementptr %struct.dp_meter, ptr %call2, i32 0, i32 8, i32 %i.0118, i32 1
  %21 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rate, align 4
  %mul25 = mul i32 %22, %cond
  %conv26 = zext i32 %mul25 to i64
  %bucket = getelementptr %struct.dp_meter, ptr %call2, i32 0, i32 8, i32 %i.0118, i32 3
  %23 = ptrtoint ptr %bucket to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bucket, align 8
  %add27 = add i64 %24, %conv26
  %25 = tail call i64 @llvm.umin.i64(i64 %add27, i64 %mul24)
  %26 = ptrtoint ptr %bucket to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %bucket, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %conv35)
  %cmp36.not = icmp ult i64 %25, %conv35
  br i1 %cmp36.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub41 = sub nsw i64 %25, %conv35
  %27 = ptrtoint ptr %bucket to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %sub41, ptr %bucket, align 8
  br label %if.end48

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %band_exceeded_rate.0121)
  %cmp43 = icmp ugt i32 %22, %band_exceeded_rate.0121
  %spec.select113 = select i1 %cmp43, i32 %i.0118, i32 %band_exceeded_max.0120
  %28 = tail call i32 @llvm.umax.i32(i32 %22, i32 %band_exceeded_rate.0121)
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then38
  %band_exceeded_max.1 = phi i32 [ %band_exceeded_max.0120, %if.then38 ], [ %spec.select113, %if.else ]
  %band_exceeded_rate.1 = phi i32 [ %band_exceeded_rate.0121, %if.then38 ], [ %28, %if.else ]
  %inc = add nuw nsw i32 %i.0118, 1
  %29 = ptrtoint ptr %n_bands to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %n_bands, align 2
  %conv20 = zext i16 %30 to i32
  %cmp21 = icmp ult i32 %inc, %conv20
  br i1 %cmp21, label %if.end48.for.body_crit_edge, label %for.end

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %band_exceeded_max.1)
  %cmp49 = icmp sgt i32 %band_exceeded_max.1, -1
  br i1 %cmp49, label %if.then51, label %for.end.if.end67_crit_edge

for.end.if.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then51:                                        ; preds = %for.end
  %arrayidx53 = getelementptr %struct.dp_meter, ptr %call2, i32 0, i32 8, i32 %band_exceeded_max.1
  %stats54 = getelementptr %struct.dp_meter, ptr %call2, i32 0, i32 8, i32 %band_exceeded_max.1, i32 4
  %31 = ptrtoint ptr %stats54 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %stats54, align 8
  %add56 = add i64 %32, 1
  store i64 %add56, ptr %stats54, align 8
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  %conv58 = zext i32 %34 to i64
  %n_bytes60 = getelementptr %struct.dp_meter, ptr %call2, i32 0, i32 8, i32 %band_exceeded_max.1, i32 4, i32 1
  %35 = ptrtoint ptr %n_bytes60 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %n_bytes60, align 8
  %add61 = add i64 %36, %conv58
  store i64 %add61, ptr %n_bytes60, align 8
  %37 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp62 = icmp eq i32 %38, 1
  br i1 %cmp62, label %if.then51.cleanup.sink.split_crit_edge, label %if.then51.if.end67_crit_edge

if.then51.if.end67_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then51.cleanup.sink.split_crit_edge:           ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end67:                                         ; preds = %if.then51.if.end67_crit_edge, %for.end.if.end67_crit_edge, %cond.end18.if.end67_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end67, %if.then51.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i1 [ false, %if.end67 ], [ true, %if.then51.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup_meter(ptr noundef %tbl, i32 noundef %meter_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %tbl, align 4
  %call = tail call i32 @lockdep_ovsl_is_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @lookup_meter.__warned, align 1
  br i1 %.b47, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @lookup_meter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 57, ptr noundef nonnull @.str.1) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %entry.do.end10_crit_edge
  %n_meters.i = getelementptr inbounds %struct.dp_meter_instance, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %n_meters.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_meters.i, align 4
  %rem.i = urem i32 %meter_id, %3
  %arrayidx = getelementptr %struct.dp_meter_instance, ptr %1, i32 0, i32 2, i32 %rem.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %call18 = tail call i32 @lockdep_ovsl_is_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %do.end10.do.end31_crit_edge

do.end10.do.end31_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

lor.lhs.false20:                                  ; preds = %do.end10
  %call21 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %lor.lhs.false20.do.end31_crit_edge

lor.lhs.false20.do.end31_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

land.lhs.true23:                                  ; preds = %lor.lhs.false20
  %call24 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true23.do.end31_crit_edge, label %land.lhs.true26

land.lhs.true23.do.end31_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %.b4546 = load i1, ptr @lookup_meter.__warned.2, align 1
  br i1 %.b4546, label %land.lhs.true26.do.end31_crit_edge, label %if.then28

land.lhs.true26.do.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @lookup_meter.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 61, ptr noundef nonnull @.str.1) #7
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %land.lhs.true26.do.end31_crit_edge, %land.lhs.true23.do.end31_crit_edge, %lor.lhs.false20.do.end31_crit_edge, %do.end10.do.end31_crit_edge
  %tobool33.not = icmp eq ptr %5, null
  br i1 %tobool33.not, label %do.end31.if.end38_crit_edge, label %land.lhs.true34

do.end31.if.end38_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true34:                                  ; preds = %do.end31
  %id = getelementptr inbounds %struct.dp_meter, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %meter_id)
  %cmp = icmp eq i32 %7, %meter_id
  br i1 %cmp, label %land.lhs.true34.cleanup_crit_edge, label %land.lhs.true34.if.end38_crit_edge, !prof !53

land.lhs.true34.if.end38_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true34.if.end38_crit_edge, %do.end31.if.end38_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %land.lhs.true34.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end38 ], [ %5, %land.lhs.true34.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_meters_init(ptr noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %meter_tbl = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 8
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 4108, i32 noundef 3520, i32 noundef -1) #11
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_meters.i = getelementptr inbounds %struct.dp_meter_instance, ptr %call.i.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %n_meters.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1024, ptr %n_meters.i, align 4
  %call1 = tail call i32 @nr_free_buffer_pages() #7
  %mul = shl i32 %call1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 17600000, i32 %mul)
  %cmp = icmp ult i32 %mul, 17600000
  %div = udiv i32 %mul, 88
  %cond = select i1 %cmp, i32 %div, i32 200000
  %max_meters_allowed = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 8, i32 2
  %1 = ptrtoint ptr %max_meters_allowed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cond, ptr %max_meters_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool3.not = icmp eq i32 %cond, 0
  br i1 %tobool3.not, label %out_err, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !54
  %2 = ptrtoint ptr %meter_tbl to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call.i.i.i, ptr %meter_tbl, align 4
  %count = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %count, align 4
  br label %cleanup

out_err:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_err, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %out_err ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_free_buffer_pages() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_meters_exit(ptr noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %meter_tbl = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %meter_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %meter_tbl, align 4
  %n_meters = getelementptr inbounds %struct.dp_meter_instance, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %n_meters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_meters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not = icmp eq i32 %3, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %ovs_meter_free.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %ovs_meter_free.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dp_meter_instance, ptr %1, i32 0, i32 2, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.ovs_meter_free.exit_crit_edge, label %do.end.i

for.body.ovs_meter_free.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ovs_meter_free.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %rcu.i = getelementptr inbounds %struct.dp_meter, ptr %5, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 44 to ptr)) #7
  br label %ovs_meter_free.exit

ovs_meter_free.exit:                              ; preds = %do.end.i, %for.body.ovs_meter_free.exit_crit_edge
  %inc = add nuw i32 %i.013, 1
  %6 = ptrtoint ptr %n_meters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_meters, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %ovs_meter_free.exit.for.body_crit_edge, label %ovs_meter_free.exit.for.end_crit_edge

ovs_meter_free.exit.for.end_crit_edge:            ; preds = %ovs_meter_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

ovs_meter_free.exit.for.body_crit_edge:           ; preds = %ovs_meter_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %ovs_meter_free.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kvfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_ovsl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_meter_cmd_features(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %tmp.i59 = alloca i32, align 4
  %tmp.i52 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userhdr, align 4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.i:                                         ; preds = %entry
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_portid.i, align 4
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  %call2.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @dp_meter_genl_family, i32 noundef 0, i8 noundef zeroext 1) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %ovs_meter_cmd_reply_start.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #7
  br label %if.then

ovs_meter_cmd_reply_start.exit:                   ; preds = %if.end.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call2.i, align 4
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ovs_meter_cmd_reply_start.exit.if.then_crit_edge, label %if.end

ovs_meter_cmd_reply_start.exit.if.then_crit_edge: ; preds = %ovs_meter_cmd_reply_start.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %ovs_meter_cmd_reply_start.exit.if.then_crit_edge, %if.then4.i, %entry.if.then_crit_edge
  %retval.0.i72 = phi ptr [ %call.i.i.i, %ovs_meter_cmd_reply_start.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -90 to ptr), %if.then4.i ]
  %9 = ptrtoint ptr %retval.0.i72 to i32
  br label %cleanup

if.end:                                           ; preds = %ovs_meter_cmd_reply_start.exit
  tail call void @ovs_lock() #7
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_net.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %call4 = tail call fastcc ptr @get_dp(ptr noundef %14, i32 noundef %16)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.exit_unlock_crit_edge, label %if.end6

if.end.exit_unlock_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.end6:                                          ; preds = %if.end
  %max_meters_allowed = getelementptr inbounds %struct.datapath, ptr %call4, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %max_meters_allowed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_meters_allowed, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %19 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.exit_unlock_crit_edge

if.end6.exit_unlock_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.end10:                                         ; preds = %if.end6
  call void @ovs_unlock() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i52) #7
  %20 = ptrtoint ptr %tmp.i52 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %tmp.i52, align 4
  %call.i53 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i52) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool12.not = icmp eq i32 %call.i53, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.nla_put_failure_crit_edge

if.end10.nla_put_failure_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end14:                                         ; preds = %if.end10
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i54 = icmp slt i32 %call1.i, 0
  %tobool16.not75 = icmp eq ptr %22, null
  %tobool16.not = select i1 %cmp.i54, i1 true, i1 %tobool16.not75
  br i1 %tobool16.not, label %if.end14.nla_put_failure_crit_edge, label %if.end18

if.end14.nla_put_failure_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end18:                                         ; preds = %if.end14
  %23 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i, align 8
  %call1.i56 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56)
  %cmp.i57 = icmp slt i32 %call1.i56, 0
  %tobool20.not76 = icmp eq ptr %24, null
  %tobool20.not = select i1 %cmp.i57, i1 true, i1 %tobool20.not76
  br i1 %tobool20.not, label %if.end18.nla_put_failure_crit_edge, label %if.end22

if.end18.nla_put_failure_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end22:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i59) #7
  %25 = ptrtoint ptr %tmp.i59 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %tmp.i59, align 4
  %call.i60 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i59) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool24.not = icmp eq i32 %call.i60, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.nla_put_failure_crit_edge

if.end22.nla_put_failure_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i, ptr %24, align 2
  %29 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i63 = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i64 = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i65 = sub i32 %sub.ptr.lhs.cast.i63, %sub.ptr.rhs.cast.i64
  %conv.i66 = trunc i32 %sub.ptr.sub.i65 to i16
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i66, ptr %22, align 2
  %add.ptr1.i = getelementptr i8, ptr %call2.i, i32 -20
  %31 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %32 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %33 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_net.i.i, align 4
  %35 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %34, i32 0, i32 21
  %37 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i68 = call i32 @netlink_unicast(ptr noundef %38, ptr noundef nonnull %call.i.i.i, i32 noundef %36, i32 noundef 64) #7
  %39 = call i32 @llvm.smin.i32(i32 %call.i.i.i68, i32 0) #7
  br label %cleanup

exit_unlock:                                      ; preds = %if.end6.exit_unlock_crit_edge, %if.end.exit_unlock_crit_edge
  %err.0 = phi i32 [ -90, %if.end6.exit_unlock_crit_edge ], [ -19, %if.end.exit_unlock_crit_edge ]
  call void @ovs_unlock() #7
  br label %nla_put_failure

nla_put_failure:                                  ; preds = %exit_unlock, %if.end22.nla_put_failure_crit_edge, %if.end18.nla_put_failure_crit_edge, %if.end14.nla_put_failure_crit_edge, %if.end10.nla_put_failure_crit_edge
  %err.1 = phi i32 [ %err.0, %exit_unlock ], [ -90, %if.end10.nla_put_failure_crit_edge ], [ -90, %if.end22.nla_put_failure_crit_edge ], [ -90, %if.end18.nla_put_failure_crit_edge ], [ -90, %if.end14.nla_put_failure_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end26, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %err.1, %nla_put_failure ], [ %39, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_meter_cmd_set(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %attr.i = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %2 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %userhdr, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr ptr, ptr %1, i32 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.if.then2_crit_edge, label %if.end.i

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.end.i:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %conv.i.i = zext i16 %9 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %9)
  %cmp.i194.i = icmp ugt i16 %9, 7
  br i1 %cmp.i194.i, label %land.lhs.true.i.preheader.i, label %if.end.i.if.end8.i.i.i_crit_edge

if.end.i.if.end8.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

land.lhs.true.i.preheader.i:                      ; preds = %if.end.i
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %11)
  %cmp1.i.i = icmp ult i16 %11, 4
  %conv.i145.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv.i145.i)
  %cmp5.i.not.i = icmp ult i32 %sub.i.i, %conv.i145.i
  %or.cond.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.preheader.i.if.end8.i.i.i_crit_edge, label %for.body.i

land.lhs.true.i.preheader.i.if.end8.i.i.i_crit_edge: ; preds = %land.lhs.true.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

for.body.i:                                       ; preds = %land.lhs.true.i.preheader.i
  %sub.i147.i = add nuw nsw i32 %conv.i145.i, 3
  %and.i.i = and i32 %sub.i147.i, 131068
  %sub1.i.i = sub nsw i32 %sub.i.i, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i.i)
  %cmp.i.i = icmp sgt i32 %sub1.i.i, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.1.i, label %for.body.i.if.end8.i.i.i_crit_edge

for.body.i.if.end8.i.i.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

land.lhs.true.i.1.i:                              ; preds = %for.body.i
  %add.ptr.i148.i = getelementptr i8, ptr %add.ptr.i.i, i32 %and.i.i
  %12 = ptrtoint ptr %add.ptr.i148.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i148.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %13)
  %cmp1.i.1.i = icmp ult i16 %13, 4
  %conv.i145.1.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.i, i32 %conv.i145.1.i)
  %cmp5.i.not.1.i = icmp ult i32 %sub1.i.i, %conv.i145.1.i
  %or.cond.1.i = select i1 %cmp1.i.1.i, i1 true, i1 %cmp5.i.not.1.i
  br i1 %or.cond.1.i, label %land.lhs.true.i.1.i.if.end8.i.i.i_crit_edge, label %land.lhs.true.i.1.i.if.then2_crit_edge

land.lhs.true.i.1.i.if.then2_crit_edge:           ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

land.lhs.true.i.1.i.if.end8.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %land.lhs.true.i.1.i.if.end8.i.i.i_crit_edge, %for.body.i.if.end8.i.i.i_crit_edge, %land.lhs.true.i.preheader.i.if.end8.i.i.i_crit_edge, %if.end.i.if.end8.i.i.i_crit_edge
  %n_bands.0.lcssa.i = phi i16 [ 0, %if.end.i.if.end8.i.i.i_crit_edge ], [ 0, %land.lhs.true.i.preheader.i.if.end8.i.i.i_crit_edge ], [ 1, %for.body.i.if.end8.i.i.i_crit_edge ], [ 1, %land.lhs.true.i.1.i.if.end8.i.i.i_crit_edge ]
  %narrow.i = mul nuw nsw i16 %n_bands.0.lcssa.i, 40
  %narrow204.i = add nuw nsw i16 %narrow.i, 88
  %spec.select.i186.i = zext i16 %narrow204.i to i32
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i186.i, i32 noundef 3520) #11
  %tobool15.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool15.not.i, label %if.end8.i.i.i.if.then2_crit_edge, label %if.end18.i

if.end8.i.i.i.if.then2_crit_edge:                 ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.end18.i:                                       ; preds = %if.end8.i.i.i
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.dp_meter, ptr %call9.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %id.i, align 4
  %call.i.i = tail call i64 @ktime_get() #7
  %19 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %call.i.i) #10, !srcloc !51
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %call.i.i, i64 %19, i32 0) #10, !srcloc !52
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %20, 0
  %div158.i.i187.i = lshr i64 %asmresult10.i.i.i.i, 18
  %used.i = getelementptr inbounds %struct.dp_meter, ptr %call9.i.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %used.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %div158.i.i187.i, ptr %used.i, align 64
  %arrayidx23.i = getelementptr ptr, ptr %1, i32 2
  %22 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx23.i, align 4
  %tobool24.not.not.i = icmp eq ptr %23, null
  %kbps.i = getelementptr inbounds %struct.dp_meter, ptr %call9.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %kbps.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %kbps.i, align 8
  %bf.shl.i = select i1 %tobool24.not.not.i, i8 0, i8 -128
  %bf.clear.i = and i8 %bf.load.i, 63
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  %arrayidx26.i = getelementptr ptr, ptr %1, i32 6
  %25 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx26.i, align 4
  %tobool27.not.i = icmp eq ptr %26, null
  %bf.shl31.i = select i1 %tobool27.not.i, i8 64, i8 0
  %bf.set33.i = or i8 %bf.set.i, %bf.shl31.i
  store i8 %bf.set33.i, ptr %kbps.i, align 8
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @dp_meter_create.__key, i16 noundef signext 3) #7
  %27 = ptrtoint ptr %kbps.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load37.i = load i8, ptr %kbps.i, align 8
  %28 = and i8 %bf.load37.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool40.not.i = icmp eq i8 %28, 0
  br i1 %tobool40.not.i, label %if.end18.i.if.end46.i_crit_edge, label %land.lhs.true.i

if.end18.i.if.end46.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

land.lhs.true.i:                                  ; preds = %if.end18.i
  %arrayidx41.i = getelementptr ptr, ptr %1, i32 3
  %29 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx41.i, align 4
  %tobool42.not.i = icmp eq ptr %30, null
  br i1 %tobool42.not.i, label %land.lhs.true.i.if.end46.i_crit_edge, label %if.then43.i

land.lhs.true.i.if.end46.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.then43.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %stats.i = getelementptr inbounds %struct.dp_meter, ptr %call9.i.i.i, i32 0, i32 7
  %add.ptr.i149.i = getelementptr i8, ptr %30, i32 4
  %31 = call ptr @memcpy(ptr %stats.i, ptr %add.ptr.i149.i, i32 16)
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then43.i, %land.lhs.true.i.if.end46.i_crit_edge, %if.end18.i.if.end46.i_crit_edge
  %n_bands47.i = getelementptr inbounds %struct.dp_meter, ptr %call9.i.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %n_bands47.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %n_bands.0.lcssa.i, ptr %n_bands47.i, align 2
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %36)
  %cmp.i153199.i = icmp ugt i16 %36, 7
  br i1 %cmp.i153199.i, label %land.lhs.true.i155.lr.ph.i, label %if.end46.i.dp_meter_create.exit_crit_edge

if.end46.i.dp_meter_create.exit_crit_edge:        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_meter_create.exit

land.lhs.true.i155.lr.ph.i:                       ; preds = %if.end46.i
  %conv.i151.i = zext i16 %36 to i32
  %sub.i152.i = add nsw i32 %conv.i151.i, -4
  %add.ptr.i150.i = getelementptr i8, ptr %34, i32 4
  %bands.i = getelementptr inbounds %struct.dp_meter, ptr %call9.i.i.i, i32 0, i32 8
  %37 = getelementptr inbounds [5 x ptr], ptr %attr.i, i32 0, i32 1
  %38 = getelementptr inbounds [5 x ptr], ptr %attr.i, i32 0, i32 2
  %39 = getelementptr inbounds [5 x ptr], ptr %attr.i, i32 0, i32 3
  %max_delta_t.i = getelementptr inbounds %struct.dp_meter, ptr %call9.i.i.i, i32 0, i32 5
  br label %land.lhs.true.i155.i

land.lhs.true.i155.i:                             ; preds = %for.inc94.i.land.lhs.true.i155.i_crit_edge, %land.lhs.true.i155.lr.ph.i
  %band.0202.i = phi ptr [ %bands.i, %land.lhs.true.i155.lr.ph.i ], [ %incdec.ptr.i, %for.inc94.i.land.lhs.true.i155.i_crit_edge ]
  %nla.1201.i = phi ptr [ %add.ptr.i150.i, %land.lhs.true.i155.lr.ph.i ], [ %add.ptr.i176.i, %for.inc94.i.land.lhs.true.i155.i_crit_edge ]
  %rem.1200.i = phi i32 [ %sub.i152.i, %land.lhs.true.i155.lr.ph.i ], [ %sub1.i175.i, %for.inc94.i.land.lhs.true.i155.i_crit_edge ]
  %40 = ptrtoint ptr %nla.1201.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nla.1201.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %41)
  %cmp1.i154.i = icmp ult i16 %41, 4
  %conv.i156.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.1200.i, i32 %conv.i156.i)
  %cmp5.i157.not.i = icmp ult i32 %rem.1200.i, %conv.i156.i
  %or.cond191.i = select i1 %cmp1.i154.i, i1 true, i1 %cmp5.i157.not.i
  br i1 %or.cond191.i, label %land.lhs.true.i155.i.dp_meter_create.exit_crit_edge, label %for.body55.i

land.lhs.true.i155.i.dp_meter_create.exit_crit_edge: ; preds = %land.lhs.true.i155.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_meter_create.exit

for.body55.i:                                     ; preds = %land.lhs.true.i155.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %attr.i) #7
  %add.ptr.i161.i = getelementptr i8, ptr %nla.1201.i, i32 4
  %42 = call ptr @memset(ptr %attr.i, i32 255, i32 20)
  %43 = ptrtoint ptr %nla.1201.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %nla.1201.i, align 2
  %conv.i162.i = zext i16 %44 to i32
  %sub.i163.i = add nsw i32 %conv.i162.i, -4
  %call.i164.i = call i32 @__nla_parse(ptr noundef nonnull %attr.i, i32 noundef 4, ptr noundef %add.ptr.i161.i, i32 noundef %sub.i163.i, ptr noundef nonnull @band_policy, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164.i)
  %tobool59.not.i = icmp eq i32 %call.i164.i, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %for.body55.i.exit_free_meter.i_crit_edge

for.body55.i.exit_free_meter.i_crit_edge:         ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_free_meter.i

if.end61.i:                                       ; preds = %for.body55.i
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %37, align 4
  %tobool63.not.i = icmp eq ptr %46, null
  br i1 %tobool63.not.i, label %if.end61.i.exit_free_meter.i_crit_edge, label %lor.lhs.false.i

if.end61.i.exit_free_meter.i_crit_edge:           ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_free_meter.i

lor.lhs.false.i:                                  ; preds = %if.end61.i
  %47 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %38, align 4
  %tobool65.not.i = icmp eq ptr %48, null
  br i1 %tobool65.not.i, label %lor.lhs.false.i.exit_free_meter.i_crit_edge, label %lor.lhs.false66.i

lor.lhs.false.i.exit_free_meter.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_free_meter.i

lor.lhs.false66.i:                                ; preds = %lor.lhs.false.i
  %49 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %39, align 4
  %tobool68.not.i = icmp eq ptr %50, null
  br i1 %tobool68.not.i, label %lor.lhs.false66.i.exit_free_meter.i_crit_edge, label %if.end70.i

lor.lhs.false66.i.exit_free_meter.i_crit_edge:    ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_free_meter.i

if.end70.i:                                       ; preds = %lor.lhs.false66.i
  %add.ptr.i.i165.i = getelementptr i8, ptr %46, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i165.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i.i165.i, align 4
  %53 = ptrtoint ptr %band.0202.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %band.0202.i, align 8
  %add.ptr.i.i166.i = getelementptr i8, ptr %48, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i166.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i166.i, align 4
  %rate.i = getelementptr inbounds %struct.dp_meter_band, ptr %band.0202.i, i32 0, i32 1
  %56 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp76.i = icmp eq i32 %55, 0
  br i1 %cmp76.i, label %if.end70.i.exit_free_meter.i_crit_edge, label %if.end79.i

if.end70.i.exit_free_meter.i_crit_edge:           ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_free_meter.i

if.end79.i:                                       ; preds = %if.end70.i
  %57 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %39, align 4
  %add.ptr.i.i167.i = getelementptr i8, ptr %58, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i167.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i.i167.i, align 4
  %burst_size.i = getelementptr inbounds %struct.dp_meter_band, ptr %band.0202.i, i32 0, i32 2
  %61 = ptrtoint ptr %burst_size.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %burst_size.i, align 8
  %conv83.i = zext i32 %60 to i64
  %mul.i = mul nuw nsw i64 %conv83.i, 1000
  %bucket.i = getelementptr inbounds %struct.dp_meter_band, ptr %band.0202.i, i32 0, i32 3
  %62 = ptrtoint ptr %bucket.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %mul.i, ptr %bucket.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !53

if.then168.i.i.i:                                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %55
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %55, i64 %mul.i) #10, !srcloc !55
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %63, 1
  %extract.t189.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t189.i, %if.else174.i.i.i ]
  %64 = ptrtoint ptr %max_delta_t.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_delta_t.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %dividend.addr.0.i.i.off0.i)
  %cmp88.i = icmp ult i32 %65, %dividend.addr.0.i.i.off0.i
  br i1 %cmp88.i, label %if.then90.i, label %div_u64.exit.i.for.inc94.i_crit_edge

div_u64.exit.i.for.inc94.i_crit_edge:             ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc94.i

if.then90.i:                                      ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %max_delta_t.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %max_delta_t.i, align 4
  br label %for.inc94.i

for.inc94.i:                                      ; preds = %if.then90.i, %div_u64.exit.i.for.inc94.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.dp_meter_band, ptr %band.0202.i, i32 1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attr.i) #7
  %67 = ptrtoint ptr %nla.1201.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %nla.1201.i, align 2
  %conv.i172.i = zext i16 %68 to i32
  %sub.i173.i = add nuw nsw i32 %conv.i172.i, 3
  %and.i174.i = and i32 %sub.i173.i, 131068
  %sub1.i175.i = sub nsw i32 %rem.1200.i, %and.i174.i
  %add.ptr.i176.i = getelementptr i8, ptr %nla.1201.i, i32 %and.i174.i
  %cmp.i153.i = icmp sgt i32 %sub1.i175.i, 3
  br i1 %cmp.i153.i, label %for.inc94.i.land.lhs.true.i155.i_crit_edge, label %for.inc94.i.dp_meter_create.exit_crit_edge

for.inc94.i.dp_meter_create.exit_crit_edge:       ; preds = %for.inc94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_meter_create.exit

for.inc94.i.land.lhs.true.i155.i_crit_edge:       ; preds = %for.inc94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i155.i

exit_free_meter.i:                                ; preds = %if.end70.i.exit_free_meter.i_crit_edge, %lor.lhs.false66.i.exit_free_meter.i_crit_edge, %lor.lhs.false.i.exit_free_meter.i_crit_edge, %if.end61.i.exit_free_meter.i_crit_edge, %for.body55.i.exit_free_meter.i_crit_edge
  %err.0.ph.i = phi i32 [ -22, %if.end70.i.exit_free_meter.i_crit_edge ], [ -22, %if.end61.i.exit_free_meter.i_crit_edge ], [ -22, %lor.lhs.false.i.exit_free_meter.i_crit_edge ], [ -22, %lor.lhs.false66.i.exit_free_meter.i_crit_edge ], [ %call.i164.i, %for.body55.i.exit_free_meter.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %attr.i) #7
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #7
  %69 = inttoptr i32 %err.0.ph.i to ptr
  br label %dp_meter_create.exit

dp_meter_create.exit:                             ; preds = %exit_free_meter.i, %for.inc94.i.dp_meter_create.exit_crit_edge, %land.lhs.true.i155.i.dp_meter_create.exit_crit_edge, %if.end46.i.dp_meter_create.exit_crit_edge
  %retval.0.i = phi ptr [ %69, %exit_free_meter.i ], [ %call9.i.i.i, %if.end46.i.dp_meter_create.exit_crit_edge ], [ %call9.i.i.i, %for.inc94.i.dp_meter_create.exit_crit_edge ], [ %call9.i.i.i, %land.lhs.true.i155.i.dp_meter_create.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %dp_meter_create.exit.if.then2_crit_edge, label %if.end4

dp_meter_create.exit.if.then2_crit_edge:          ; preds = %dp_meter_create.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.then2:                                         ; preds = %dp_meter_create.exit.if.then2_crit_edge, %if.end8.i.i.i.if.then2_crit_edge, %land.lhs.true.i.1.i.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %retval.0.i150 = phi ptr [ %retval.0.i, %dp_meter_create.exit.if.then2_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.1.i.if.then2_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.if.then2_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then2_crit_edge ]
  %70 = ptrtoint ptr %retval.0.i150 to i32
  br label %cleanup

if.end4:                                          ; preds = %dp_meter_create.exit
  %71 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %userhdr, align 4
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i131 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i131, label %if.end4.if.then7_crit_edge, label %if.end.i132

if.end4.if.then7_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.end.i132:                                      ; preds = %if.end4
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %73 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %snd_portid.i, align 4
  %75 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %info, align 4
  %call2.i = call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %74, i32 noundef %76, ptr noundef nonnull @dp_meter_genl_family, i32 noundef 0, i8 noundef zeroext 2) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %ovs_meter_cmd_reply_start.exit

if.then4.i:                                       ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #7
  br label %if.then7

ovs_meter_cmd_reply_start.exit:                   ; preds = %if.end.i132
  %77 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %72, align 4
  %79 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %call2.i, align 4
  %cmp.i134 = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %ovs_meter_cmd_reply_start.exit.if.then7_crit_edge, label %if.end9

ovs_meter_cmd_reply_start.exit.if.then7_crit_edge: ; preds = %ovs_meter_cmd_reply_start.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %ovs_meter_cmd_reply_start.exit.if.then7_crit_edge, %if.then4.i, %if.end4.if.then7_crit_edge
  %retval.0.i133154 = phi ptr [ %call.i.i.i, %ovs_meter_cmd_reply_start.exit.if.then7_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end4.if.then7_crit_edge ], [ inttoptr (i32 -90 to ptr), %if.then4.i ]
  %80 = ptrtoint ptr %retval.0.i133154 to i32
  br label %exit_free_meter

if.end9:                                          ; preds = %ovs_meter_cmd_reply_start.exit
  call void @ovs_lock() #7
  %81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %83, i32 0, i32 9
  %84 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %skc_net.i, align 4
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %3, align 4
  %call11 = call fastcc ptr @get_dp(ptr noundef %85, i32 noundef %87)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.exit_unlock_crit_edge, label %if.end14

if.end9.exit_unlock_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.end14:                                         ; preds = %if.end9
  %meter_tbl15 = getelementptr inbounds %struct.datapath, ptr %call11, i32 0, i32 8
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i135 = getelementptr i8, ptr %89, i32 4
  %90 = ptrtoint ptr %add.ptr.i.i135 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i.i135, align 4
  %call18 = call fastcc ptr @lookup_meter(ptr noundef %meter_tbl15, i32 noundef %91)
  %call19 = call fastcc i32 @detach_meter(ptr noundef %meter_tbl15, ptr noundef %call18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end14.exit_unlock_crit_edge

if.end14.exit_unlock_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.end22:                                         ; preds = %if.end14
  %92 = ptrtoint ptr %meter_tbl15 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %meter_tbl15, align 4
  %call.i = call i32 @lockdep_ovsl_is_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i136 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i136, label %lor.lhs.false.i137, label %if.end22.do.end10.i_crit_edge

if.end22.do.end10.i_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i

lor.lhs.false.i137:                               ; preds = %if.end22
  %call3.i = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i138, label %lor.lhs.false.i137.do.end10.i_crit_edge

lor.lhs.false.i137.do.end10.i_crit_edge:          ; preds = %lor.lhs.false.i137
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i

land.lhs.true.i138:                               ; preds = %lor.lhs.false.i137
  %call5.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i138.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i138.do.end10.i_crit_edge:          ; preds = %land.lhs.true.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i138
  %.b67.i = load i1, ptr @attach_meter.__warned, align 1
  br i1 %.b67.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @attach_meter.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.1) #7
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i138.do.end10.i_crit_edge, %lor.lhs.false.i137.do.end10.i_crit_edge, %if.end22.do.end10.i_crit_edge
  %id.i139 = getelementptr inbounds %struct.dp_meter, ptr %retval.0.i, i32 0, i32 2
  %94 = ptrtoint ptr %id.i139 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %id.i139, align 4
  %n_meters.i.i = getelementptr inbounds %struct.dp_meter_instance, ptr %93, i32 0, i32 1
  %96 = ptrtoint ptr %n_meters.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %n_meters.i.i, align 4
  %rem.i.i = urem i32 %95, %97
  %arrayidx.i140 = getelementptr %struct.dp_meter_instance, ptr %93, i32 0, i32 2, i32 %rem.i.i
  %98 = ptrtoint ptr %arrayidx.i140 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %arrayidx.i140, align 4
  %call18.i = call i32 @lockdep_ovsl_is_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %lor.lhs.false20.i, label %do.end10.i.do.end31.i_crit_edge

do.end10.i.do.end31.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i

lor.lhs.false20.i:                                ; preds = %do.end10.i
  %call21.i = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true23.i, label %lor.lhs.false20.i.do.end31.i_crit_edge

lor.lhs.false20.i.do.end31.i_crit_edge:           ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i

land.lhs.true23.i:                                ; preds = %lor.lhs.false20.i
  %call24.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true23.i.do.end31.i_crit_edge, label %land.lhs.true26.i

land.lhs.true23.i.do.end31.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i

land.lhs.true26.i:                                ; preds = %land.lhs.true23.i
  %.b6566.i = load i1, ptr @attach_meter.__warned.10, align 1
  br i1 %.b6566.i, label %land.lhs.true26.i.do.end31.i_crit_edge, label %if.then28.i

land.lhs.true26.i.do.end31.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i

if.then28.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @attach_meter.__warned.10, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 145, ptr noundef nonnull @.str.1) #7
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then28.i, %land.lhs.true26.i.do.end31.i_crit_edge, %land.lhs.true23.i.do.end31.i_crit_edge, %lor.lhs.false20.i.do.end31.i_crit_edge, %do.end10.i.do.end31.i_crit_edge
  %tobool33.not.i = icmp eq ptr %99, null
  br i1 %tobool33.not.i, label %if.end37.i, label %do.end31.i.exit_unlock_crit_edge, !prof !53

do.end31.i.exit_unlock_crit_edge:                 ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.end37.i:                                       ; preds = %do.end31.i
  %100 = ptrtoint ptr %id.i139 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %id.i139, align 4
  %102 = ptrtoint ptr %n_meters.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %n_meters.i.i, align 4
  %rem.i.i.i141 = urem i32 %101, %103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  %arrayidx22.i.i = getelementptr %struct.dp_meter_instance, ptr %93, i32 0, i32 2, i32 %rem.i.i.i141
  %104 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %retval.0.i, ptr %arrayidx22.i.i, align 4
  %count.i = getelementptr inbounds %struct.datapath, ptr %call11, i32 0, i32 8, i32 1
  %105 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %106, 1
  store i32 %inc.i, ptr %count.i, align 4
  %max_meters_allowed.i = getelementptr inbounds %struct.datapath, ptr %call11, i32 0, i32 8, i32 2
  %107 = ptrtoint ptr %max_meters_allowed.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %max_meters_allowed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %108)
  %cmp.not.i = icmp ult i32 %inc.i, %108
  br i1 %cmp.not.i, label %if.end40.i, label %if.end37.i.attach_err.i_crit_edge

if.end37.i.attach_err.i_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %attach_err.i

if.end40.i:                                       ; preds = %if.end37.i
  %109 = ptrtoint ptr %n_meters.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %n_meters.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %110)
  %cmp42.not.i = icmp ult i32 %inc.i, %110
  br i1 %cmp42.not.i, label %if.end40.i.if.end26_crit_edge, label %land.lhs.true43.i

if.end40.i.if.end26_crit_edge:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true43.i:                                ; preds = %if.end40.i
  %mul.i142 = shl i32 %110, 1
  %call45.i = call fastcc i32 @dp_meter_instance_realloc(ptr noundef %meter_tbl15, i32 noundef %mul.i142) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %land.lhs.true43.i.if.end26_crit_edge, label %land.lhs.true43.i.attach_err.i_crit_edge

land.lhs.true43.i.attach_err.i_crit_edge:         ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %attach_err.i

land.lhs.true43.i.if.end26_crit_edge:             ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

attach_err.i:                                     ; preds = %land.lhs.true43.i.attach_err.i_crit_edge, %if.end37.i.attach_err.i_crit_edge
  %err.0.i = phi i32 [ -27, %if.end37.i.attach_err.i_crit_edge ], [ -12, %land.lhs.true43.i.attach_err.i_crit_edge ]
  %111 = ptrtoint ptr %id.i139 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %id.i139, align 4
  %113 = ptrtoint ptr %n_meters.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %n_meters.i.i, align 4
  %rem.i.i70.i = urem i32 %112, %114
  %arrayidx.i.i = getelementptr %struct.dp_meter_instance, ptr %93, i32 0, i32 2, i32 %rem.i.i70.i
  %115 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr null, ptr %arrayidx.i.i, align 4
  %116 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %117, -1
  store i32 %dec.i, ptr %count.i, align 4
  br label %exit_unlock

if.end26:                                         ; preds = %land.lhs.true43.i.if.end26_crit_edge, %if.end40.i.if.end26_crit_edge
  call void @ovs_unlock() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %118 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %91, ptr %tmp.i, align 4
  %call.i144 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool28.not = icmp eq i32 %call.i144, 0
  br i1 %tobool28.not, label %if.end26.if.end44_crit_edge, label %do.end, !prof !53

if.end26.if.end44_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.end:                                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 460, i32 noundef 9, ptr noundef null) #7
  br label %if.end44

if.end44:                                         ; preds = %do.end, %if.end26.if.end44_crit_edge
  %tobool51.not = icmp eq ptr %call18, null
  br i1 %tobool51.not, label %if.end44.if.end89_crit_edge, label %if.then52

if.end44.if.end89_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then52:                                        ; preds = %if.end44
  call void @_raw_spin_lock_bh(ptr noundef nonnull %call18) #7
  %keep_stats = getelementptr inbounds %struct.dp_meter, ptr %call18, i32 0, i32 3
  %119 = ptrtoint ptr %keep_stats to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load = load i8, ptr %keep_stats, align 8
  %120 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool53.not = icmp eq i8 %120, 0
  br i1 %tobool53.not, label %if.then52.ovs_meter_free.exit_crit_edge, label %if.then54

if.then52.ovs_meter_free.exit_crit_edge:          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %ovs_meter_free.exit

if.then54:                                        ; preds = %if.then52
  %call55 = call fastcc i32 @ovs_meter_cmd_reply_stats(ptr noundef nonnull %call.i.i.i, i32 noundef %91, ptr noundef nonnull %call18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool57.not = icmp eq i32 %call55, 0
  br i1 %tobool57.not, label %if.then54.ovs_meter_free.exit_crit_edge, label %do.end73, !prof !53

if.then54.ovs_meter_free.exit_crit_edge:          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %ovs_meter_free.exit

do.end73:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 466, i32 noundef 9, ptr noundef null) #7
  br label %ovs_meter_free.exit

ovs_meter_free.exit:                              ; preds = %do.end73, %if.then54.ovs_meter_free.exit_crit_edge, %if.then52.ovs_meter_free.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull %call18) #7
  %rcu.i = getelementptr inbounds %struct.dp_meter, ptr %call18, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 44 to ptr)) #7
  br label %if.end89

if.end89:                                         ; preds = %ovs_meter_free.exit, %if.end44.if.end89_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %call2.i, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %121 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %122 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %123 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %124 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %_net.i.i, align 4
  %126 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %125, i32 0, i32 21
  %128 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i147 = call i32 @netlink_unicast(ptr noundef %129, ptr noundef nonnull %call.i.i.i, i32 noundef %127, i32 noundef 64) #7
  %130 = call i32 @llvm.smin.i32(i32 %call.i.i.i147, i32 0) #7
  br label %cleanup

exit_unlock:                                      ; preds = %attach_err.i, %do.end31.i.exit_unlock_crit_edge, %if.end14.exit_unlock_crit_edge, %if.end9.exit_unlock_crit_edge
  %err.0 = phi i32 [ %call19, %if.end14.exit_unlock_crit_edge ], [ -19, %if.end9.exit_unlock_crit_edge ], [ %err.0.i, %attach_err.i ], [ -16, %do.end31.i.exit_unlock_crit_edge ]
  call void @ovs_unlock() #7
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #7
  br label %exit_free_meter

exit_free_meter:                                  ; preds = %exit_unlock, %if.then7
  %err.1 = phi i32 [ %80, %if.then7 ], [ %err.0, %exit_unlock ]
  call void @kfree(ptr noundef %retval.0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %exit_free_meter, %if.end89, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %70, %if.then2 ], [ %err.1, %exit_free_meter ], [ %130, %if.end89 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_meter_cmd_get(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userhdr, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %if.end.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %snd_portid.i, align 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info, align 4
  %call2.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %9, i32 noundef %11, ptr noundef nonnull @dp_meter_genl_family, i32 noundef 0, i8 noundef zeroext 4) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %ovs_meter_cmd_reply_start.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #7
  br label %if.then4

ovs_meter_cmd_reply_start.exit:                   ; preds = %if.end.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %14 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %call2.i, align 4
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ovs_meter_cmd_reply_start.exit.if.then4_crit_edge, label %if.end6

ovs_meter_cmd_reply_start.exit.if.then4_crit_edge: ; preds = %ovs_meter_cmd_reply_start.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %ovs_meter_cmd_reply_start.exit.if.then4_crit_edge, %if.then4.i, %if.end.if.then4_crit_edge
  %retval.0.i49 = phi ptr [ %call.i.i.i, %ovs_meter_cmd_reply_start.exit.if.then4_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.if.then4_crit_edge ], [ inttoptr (i32 -90 to ptr), %if.then4.i ]
  %15 = ptrtoint ptr %retval.0.i49 to i32
  br label %cleanup

if.end6:                                          ; preds = %ovs_meter_cmd_reply_start.exit
  tail call void @ovs_lock() #7
  %16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skc_net.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %call8 = tail call fastcc ptr @get_dp(ptr noundef %20, i32 noundef %22)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.exit_unlock_crit_edge, label %if.end11

if.end6.exit_unlock_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.end11:                                         ; preds = %if.end6
  %meter_tbl = getelementptr inbounds %struct.datapath, ptr %call8, i32 0, i32 8
  %call12 = tail call fastcc ptr @lookup_meter(ptr noundef %meter_tbl, i32 noundef %7)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.exit_unlock_crit_edge, label %if.end15

if.end11.exit_unlock_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.end15:                                         ; preds = %if.end11
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull %call12) #7
  %call16 = tail call fastcc i32 @ovs_meter_cmd_reply_stats(ptr noundef nonnull %call.i.i.i, i32 noundef %7, ptr noundef nonnull %call12)
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull %call12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.exit_unlock_crit_edge

if.end15.exit_unlock_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ovs_unlock() #7
  %add.ptr1.i = getelementptr i8, ptr %call2.i, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %25 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %26 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_net.i.i, align 4
  %28 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %27, i32 0, i32 21
  %30 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i45 = tail call i32 @netlink_unicast(ptr noundef %31, ptr noundef nonnull %call.i.i.i, i32 noundef %29, i32 noundef 64) #7
  %32 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i45, i32 0) #7
  br label %cleanup

exit_unlock:                                      ; preds = %if.end15.exit_unlock_crit_edge, %if.end11.exit_unlock_crit_edge, %if.end6.exit_unlock_crit_edge
  %err.0 = phi i32 [ %call16, %if.end15.exit_unlock_crit_edge ], [ -19, %if.end6.exit_unlock_crit_edge ], [ -2, %if.end11.exit_unlock_crit_edge ]
  tail call void @ovs_unlock() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %exit_unlock, %if.end20, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then4 ], [ %err.0, %exit_unlock ], [ %32, %if.end20 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_meter_cmd_del(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userhdr, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then2_crit_edge, label %if.end.i

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.end.i:                                         ; preds = %if.end
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %snd_portid.i, align 4
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %info, align 4
  %call2.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %7, i32 noundef %9, ptr noundef nonnull @dp_meter_genl_family, i32 noundef 0, i8 noundef zeroext 3) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %ovs_meter_cmd_reply_start.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #7
  br label %if.then2

ovs_meter_cmd_reply_start.exit:                   ; preds = %if.end.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %12 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call2.i, align 4
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ovs_meter_cmd_reply_start.exit.if.then2_crit_edge, label %if.end4

ovs_meter_cmd_reply_start.exit.if.then2_crit_edge: ; preds = %ovs_meter_cmd_reply_start.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.then2:                                         ; preds = %ovs_meter_cmd_reply_start.exit.if.then2_crit_edge, %if.then4.i, %if.end.if.then2_crit_edge
  %retval.0.i79 = phi ptr [ %call.i.i.i, %ovs_meter_cmd_reply_start.exit.if.then2_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.if.then2_crit_edge ], [ inttoptr (i32 -90 to ptr), %if.then4.i ]
  %13 = ptrtoint ptr %retval.0.i79 to i32
  br label %cleanup

if.end4:                                          ; preds = %ovs_meter_cmd_reply_start.exit
  tail call void @ovs_lock() #7
  %14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skc_net.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %call6 = tail call fastcc ptr @get_dp(ptr noundef %18, i32 noundef %20)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.exit_unlock_crit_edge, label %if.end9

if.end4.exit_unlock_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.end9:                                          ; preds = %if.end4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i, align 4
  %meter_tbl = getelementptr inbounds %struct.datapath, ptr %call6, i32 0, i32 8
  %call12 = tail call fastcc ptr @lookup_meter(ptr noundef %meter_tbl, i32 noundef %24)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end44.thread, label %if.then14

if.end44.thread:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ovs_unlock() #7
  br label %ovs_meter_free.exit

if.then14:                                        ; preds = %if.end9
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull %call12) #7
  %call15 = tail call fastcc i32 @ovs_meter_cmd_reply_stats(ptr noundef nonnull %call.i.i.i, i32 noundef %24, ptr noundef nonnull %call12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end31_crit_edge, label %do.end, !prof !53

if.then14.if.end31_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 568, i32 noundef 9, ptr noundef null) #7
  br label %if.end31

if.end31:                                         ; preds = %do.end, %if.then14.if.end31_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull %call12) #7
  %call40 = tail call fastcc i32 @detach_meter(ptr noundef %meter_tbl, ptr noundef nonnull %call12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.end.i, label %if.end31.exit_unlock_crit_edge

if.end31.exit_unlock_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

do.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ovs_unlock() #7
  %rcu.i = getelementptr inbounds %struct.dp_meter, ptr %call12, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 44 to ptr)) #7
  br label %ovs_meter_free.exit

ovs_meter_free.exit:                              ; preds = %do.end.i, %if.end44.thread
  %add.ptr1.i = getelementptr i8, ptr %call2.i, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %27 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %28 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_net.i.i, align 4
  %30 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %29, i32 0, i32 21
  %32 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i75 = tail call i32 @netlink_unicast(ptr noundef %33, ptr noundef nonnull %call.i.i.i, i32 noundef %31, i32 noundef 64) #7
  %34 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i75, i32 0) #7
  br label %cleanup

exit_unlock:                                      ; preds = %if.end31.exit_unlock_crit_edge, %if.end4.exit_unlock_crit_edge
  %err.0 = phi i32 [ %call40, %if.end31.exit_unlock_crit_edge ], [ -19, %if.end4.exit_unlock_crit_edge ]
  tail call void @ovs_unlock() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %exit_unlock, %ovs_meter_free.exit, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then2 ], [ %err.0, %exit_unlock ], [ %34, %ovs_meter_free.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_lock() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_dp(ptr noundef %net, i32 noundef %dp_ifindex) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.rhs:                                         ; preds = %entry
  %call1 = tail call i32 @lockdep_ovsl_is_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.rhs6, label %land.rhs.if.end33_crit_edge

land.rhs.if.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.rhs6:                                        ; preds = %land.rhs
  %.b44 = load i1, ptr @get_dp.__already_done, align 1
  br i1 %.b44, label %land.rhs6.if.end33_crit_edge, label %if.then, !prof !53

land.rhs6.if.end33_crit_edge:                     ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then:                                          ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @get_dp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 245, i32 noundef 9, ptr noundef null) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then, %land.rhs6.if.end33_crit_edge, %land.rhs.if.end33_crit_edge, %entry.if.end33_crit_edge
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end33.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end33.rcu_read_lock.exit_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end33
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end33.rcu_read_lock.exit_crit_edge
  %call.i46 = tail call ptr @dev_get_by_index_rcu(ptr noundef %net, i32 noundef %dp_ifindex) #7
  %tobool.not.i47 = icmp eq ptr %call.i46, null
  br i1 %tobool.not.i47, label %rcu_read_lock.exit.get_dp_rcu.exit_crit_edge, label %if.then.i49

rcu_read_lock.exit.get_dp_rcu.exit_crit_edge:     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_dp_rcu.exit

if.then.i49:                                      ; preds = %rcu_read_lock.exit
  %call1.i48 = tail call ptr @ovs_internal_dev_get_vport(ptr noundef nonnull %call.i46) #7
  %tobool2.not.i = icmp eq ptr %call1.i48, null
  br i1 %tobool2.not.i, label %if.then.i49.get_dp_rcu.exit_crit_edge, label %cleanup.i

if.then.i49.get_dp_rcu.exit_crit_edge:            ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_dp_rcu.exit

cleanup.i:                                        ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #9
  %dp.i = getelementptr inbounds %struct.vport, ptr %call1.i48, i32 0, i32 2
  %4 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp.i, align 4
  br label %get_dp_rcu.exit

get_dp_rcu.exit:                                  ; preds = %cleanup.i, %if.then.i49.get_dp_rcu.exit_crit_edge, %rcu_read_lock.exit.get_dp_rcu.exit_crit_edge
  %retval.1.i = phi ptr [ %5, %cleanup.i ], [ null, %rcu_read_lock.exit.get_dp_rcu.exit_crit_edge ], [ null, %if.then.i49.get_dp_rcu.exit_crit_edge ]
  %call.i50 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i50, label %get_dp_rcu.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i53

get_dp_rcu.exit.rcu_read_unlock.exit_crit_edge:   ; preds = %get_dp_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i53:                                ; preds = %get_dp_rcu.exit
  %call1.i51 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51)
  %tobool.not.i52 = icmp eq i32 %call1.i51, 0
  br i1 %tobool.not.i52, label %land.lhs.true.i53.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i55

land.lhs.true.i53.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i55:                               ; preds = %land.lhs.true.i53
  %.b4.i54 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i54, label %land.lhs.true2.i55.rcu_read_unlock.exit_crit_edge, label %if.then.i56

land.lhs.true2.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i56:                                      ; preds = %land.lhs.true2.i55
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i56, %land.lhs.true2.i55.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i53.rcu_read_unlock.exit_crit_edge, %get_dp_rcu.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !58
  %6 = tail call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i57 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i57 to ptr
  %preempt_count.i.i.i.i58 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i58, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i58, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret ptr %retval.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_internal_dev_get_vport(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
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
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @detach_meter(ptr noundef %tbl, ptr noundef %meter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lockdep_ovsl_is_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !59

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool21.not = icmp eq ptr %meter, null
  br i1 %tobool21.not, label %if.end.cleanup86_crit_edge, label %if.end23

if.end.cleanup86_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup86

if.end23:                                         ; preds = %if.end
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %tbl, align 4
  %call30 = tail call i32 @lockdep_ovsl_is_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %lor.lhs.false, label %if.end23.do.end41_crit_edge

if.end23.do.end41_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

lor.lhs.false:                                    ; preds = %if.end23
  %call32 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true, label %lor.lhs.false.do.end41_crit_edge

lor.lhs.false.do.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call34 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true.do.end41_crit_edge, label %land.lhs.true36

land.lhs.true.do.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

land.lhs.true36:                                  ; preds = %land.lhs.true
  %.b107 = load i1, ptr @detach_meter.__warned, align 1
  br i1 %.b107, label %land.lhs.true36.do.end41_crit_edge, label %if.then38

land.lhs.true36.do.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @detach_meter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 179, ptr noundef nonnull @.str.1) #7
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %land.lhs.true36.do.end41_crit_edge, %land.lhs.true.do.end41_crit_edge, %lor.lhs.false.do.end41_crit_edge, %if.end23.do.end41_crit_edge
  %id.i = getelementptr inbounds %struct.dp_meter, ptr %meter, i32 0, i32 2
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  %n_meters.i.i = getelementptr inbounds %struct.dp_meter_instance, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %n_meters.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_meters.i.i, align 4
  %rem.i.i = urem i32 %3, %5
  %arrayidx.i = getelementptr %struct.dp_meter_instance, ptr %1, i32 0, i32 2, i32 %rem.i.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %arrayidx.i, align 4
  %count = getelementptr inbounds %struct.dp_meter_table, ptr %tbl, i32 0, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %count, align 4
  %9 = load i32, ptr %n_meters.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %9)
  %cmp = icmp ult i32 %9, 1025
  %div104 = lshr i32 %9, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %dec, i32 %div104)
  %cmp47.not = icmp ugt i32 %dec, %div104
  %or.cond = select i1 %cmp, i1 true, i1 %cmp47.not
  br i1 %or.cond, label %do.end41.cleanup86_crit_edge, label %if.then49

do.end41.cleanup86_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup86

if.then49:                                        ; preds = %do.end41
  %div51105 = lshr i32 %9, 1
  %10 = ptrtoint ptr %n_meters.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_meters.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div51105, i32 %11)
  %cmp53113 = icmp ult i32 %div51105, %11
  br i1 %cmp53113, label %if.then49.for.body_crit_edge, label %if.then49.for.end_crit_edge

if.then49.for.end_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then49.for.body_crit_edge:                     ; preds = %if.then49
  br label %for.body

for.cond:                                         ; preds = %do.end73
  %inc = add nuw i32 %i.0114, 1
  %12 = ptrtoint ptr %n_meters.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_meters.i.i, align 4
  %cmp53 = icmp ult i32 %inc, %13
  br i1 %cmp53, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then49.for.body_crit_edge
  %i.0114 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %div51105, %if.then49.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dp_meter_instance, ptr %1, i32 0, i32 2, i32 %i.0114
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx, align 4
  %call60 = tail call i32 @lockdep_ovsl_is_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %for.body.do.end73_crit_edge

for.body.do.end73_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end73

lor.lhs.false62:                                  ; preds = %for.body
  %call63 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true65, label %lor.lhs.false62.do.end73_crit_edge

lor.lhs.false62.do.end73_crit_edge:               ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end73

land.lhs.true65:                                  ; preds = %lor.lhs.false62
  %call66 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true65.do.end73_crit_edge, label %land.lhs.true68

land.lhs.true65.do.end73_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end73

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %.b103106 = load i1, ptr @detach_meter.__warned.8, align 1
  br i1 %.b103106, label %land.lhs.true68.do.end73_crit_edge, label %if.then70

land.lhs.true68.do.end73_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end73

if.then70:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @detach_meter.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #7
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %land.lhs.true68.do.end73_crit_edge, %land.lhs.true65.do.end73_crit_edge, %lor.lhs.false62.do.end73_crit_edge, %for.body.do.end73_crit_edge
  %tobool75.not = icmp eq ptr %15, null
  br i1 %tobool75.not, label %for.cond, label %do.end73.cleanup86_crit_edge

do.end73.cleanup86_crit_edge:                     ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup86

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.then49.for.end_crit_edge
  %call78 = tail call fastcc i32 @dp_meter_instance_realloc(ptr noundef %tbl, i32 noundef %div51105)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %for.end.cleanup86_crit_edge, label %shrink_err

for.end.cleanup86_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup86

shrink_err:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 4
  %18 = ptrtoint ptr %n_meters.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_meters.i.i, align 4
  %rem.i.i110 = urem i32 %17, %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  %arrayidx22.i = getelementptr %struct.dp_meter_instance, ptr %1, i32 0, i32 2, i32 %rem.i.i110
  %20 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %meter, ptr %arrayidx22.i, align 4
  %21 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count, align 4
  %inc85 = add i32 %22, 1
  store i32 %inc85, ptr %count, align 4
  br label %cleanup86

cleanup86:                                        ; preds = %shrink_err, %for.end.cleanup86_crit_edge, %do.end73.cleanup86_crit_edge, %do.end41.cleanup86_crit_edge, %if.end.cleanup86_crit_edge
  %retval.0 = phi i32 [ -12, %shrink_err ], [ 0, %if.end.cleanup86_crit_edge ], [ 0, %do.end41.cleanup86_crit_edge ], [ 0, %for.end.cleanup86_crit_edge ], [ 0, %do.end73.cleanup86_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovs_meter_cmd_reply_stats(ptr noundef %reply, i32 noundef %meter_id, ptr noundef %meter) unnamed_addr #0 align 64 {
entry:
  %tmp.i42 = alloca i64, align 8
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %meter_id, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %reply, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup24_crit_edge

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.end:                                           ; preds = %entry
  %stats = getelementptr inbounds %struct.dp_meter, ptr %meter, i32 0, i32 7
  %call1 = call i32 @nla_put(ptr noundef %reply, i32 noundef 3, i32 noundef 16, ptr noundef %stats) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup24_crit_edge

if.end.cleanup24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.end4:                                          ; preds = %if.end
  %used = getelementptr inbounds %struct.dp_meter, ptr %meter, i32 0, i32 6
  %1 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %used, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i42) #7
  %3 = ptrtoint ptr %tmp.i42 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %tmp.i42, align 8
  %call.i43 = call i32 @nla_put_64bit(ptr noundef %reply, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i42, i32 noundef 9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool6.not = icmp eq i32 %call.i43, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup24_crit_edge

if.end4.cleanup24_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.end8:                                          ; preds = %if.end4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %reply, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %reply, i32 noundef 4, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool10.not56 = icmp eq ptr %5, null
  %tobool10.not = select i1 %cmp.i, i1 true, i1 %tobool10.not56
  br i1 %tobool10.not, label %if.end8.cleanup24_crit_edge, label %if.end12

if.end8.cleanup24_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.end12:                                         ; preds = %if.end8
  %n_bands = getelementptr inbounds %struct.dp_meter, ptr %meter, i32 0, i32 4
  %6 = ptrtoint ptr %n_bands to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %n_bands, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp58.not = icmp eq i16 %7, 0
  br i1 %cmp58.not, label %if.end12.for.end_crit_edge, label %for.body.preheader

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end12
  %bands = getelementptr inbounds %struct.dp_meter, ptr %meter, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.060 = phi i16 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %band.059 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %bands, %for.body.preheader ]
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %call1.i45 = call i32 @nla_put(ptr noundef %reply, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %cmp.i46 = icmp slt i32 %call1.i45, 0
  %tobool16.not57 = icmp eq ptr %9, null
  %tobool16.not = select i1 %cmp.i46, i1 true, i1 %tobool16.not57
  br i1 %tobool16.not, label %for.body.cleanup24_crit_edge, label %lor.lhs.false

for.body.cleanup24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

lor.lhs.false:                                    ; preds = %for.body
  %stats17 = getelementptr inbounds %struct.dp_meter_band, ptr %band.059, i32 0, i32 4
  %call18 = call i32 @nla_put(ptr noundef %reply, i32 noundef 4, i32 noundef 16, ptr noundef %stats17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.inc, label %lor.lhs.false.cleanup24_crit_edge

lor.lhs.false.cleanup24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

for.inc:                                          ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %9, align 2
  %inc = add nuw i16 %i.060, 1
  %incdec.ptr = getelementptr %struct.dp_meter_band, ptr %band.059, i32 1
  %13 = ptrtoint ptr %n_bands to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %n_bands, align 2
  %cmp = icmp ult i16 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end12.for.end_crit_edge
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i50 = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i51 = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i52 = sub i32 %sub.ptr.lhs.cast.i50, %sub.ptr.rhs.cast.i51
  %conv.i53 = trunc i32 %sub.ptr.sub.i52 to i16
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i53, ptr %5, align 2
  br label %cleanup24

cleanup24:                                        ; preds = %for.end, %lor.lhs.false.cleanup24_crit_edge, %for.body.cleanup24_crit_edge, %if.end8.cleanup24_crit_edge, %if.end4.cleanup24_crit_edge, %if.end.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -90, %if.end8.cleanup24_crit_edge ], [ -90, %if.end4.cleanup24_crit_edge ], [ -90, %if.end.cleanup24_crit_edge ], [ -90, %entry.cleanup24_crit_edge ], [ -90, %lor.lhs.false.cleanup24_crit_edge ], [ -90, %for.body.cleanup24_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp_meter_instance_realloc(ptr noundef %tbl, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %tbl, align 4
  %call = tail call i32 @lockdep_ovsl_is_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b103 = load i1, ptr @dp_meter_instance_realloc.__warned, align 1
  br i1 %.b103, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @dp_meter_instance_realloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 99, ptr noundef nonnull @.str.1) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %entry.do.end10_crit_edge
  %n_meters12 = getelementptr inbounds %struct.dp_meter_instance, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %n_meters12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_meters12, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 %size)
  %mul.i = shl i32 %size, 2
  %add.i = add i32 %mul.i, 12
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add.i, i32 noundef 3520, i32 noundef -1) #11
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %do.end10.cleanup_crit_edge, label %dp_meter_instance_alloc.exit

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dp_meter_instance_alloc.exit:                     ; preds = %do.end10
  %n_meters.i = getelementptr inbounds %struct.dp_meter_instance, ptr %call.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %n_meters.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %size, ptr %n_meters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp18104 = icmp sgt i32 %4, 0
  br i1 %cmp18104, label %dp_meter_instance_alloc.exit.for.body_crit_edge, label %dp_meter_instance_alloc.exit.do.body46_crit_edge

dp_meter_instance_alloc.exit.do.body46_crit_edge: ; preds = %dp_meter_instance_alloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body46

dp_meter_instance_alloc.exit.for.body_crit_edge:  ; preds = %dp_meter_instance_alloc.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %dp_meter_instance_alloc.exit.for.body_crit_edge
  %i.0105 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %dp_meter_instance_alloc.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dp_meter_instance, ptr %1, i32 0, i32 2, i32 %i.0105
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %call24 = tail call i32 @lockdep_ovsl_is_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false26, label %for.body.do.end37_crit_edge

for.body.do.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

lor.lhs.false26:                                  ; preds = %for.body
  %call27 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %lor.lhs.false26.do.end37_crit_edge

lor.lhs.false26.do.end37_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

land.lhs.true29:                                  ; preds = %lor.lhs.false26
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true29.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true29.do.end37_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %.b101102 = load i1, ptr @dp_meter_instance_realloc.__warned.9, align 1
  br i1 %.b101102, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @dp_meter_instance_realloc.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 109, ptr noundef nonnull @.str.1) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true29.do.end37_crit_edge, %lor.lhs.false26.do.end37_crit_edge, %for.body.do.end37_crit_edge
  %tobool39.not = icmp eq ptr %7, null
  br i1 %tobool39.not, label %do.end37.for.inc_crit_edge, label %if.then40

do.end37.for.inc_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then40:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %arrayidx44 = getelementptr %struct.dp_meter_instance, ptr %call.i.i.i, i32 0, i32 2, i32 %i.0105
  %10 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %arrayidx44, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %do.end37.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.inc.do.body46_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.body46_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body46

do.body46:                                        ; preds = %for.inc.do.body46_crit_edge, %dp_meter_instance_alloc.exit.do.body46_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  %11 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call.i.i.i, ptr %tbl, align 4
  tail call void @call_rcu(ptr noundef %1, ptr noundef nonnull @dp_meter_instance_free_rcu) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body46, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body46 ], [ -12, %do.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp_meter_instance_free_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kvfree(ptr noundef %rcu) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !15, !17, !18, !19, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @dp_meter_genl_family, !1, !"dp_meter_genl_family", i1 false, i1 false}
!1 = !{!"../net/openvswitch/meter.c", i32 713, i32 20}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/openvswitch/meter.c", i32 57, i32 33}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/openvswitch/meter.c", i32 61, i32 10}
!8 = !{ptr @meter_policy, !9, !"meter_policy", i1 false, i1 false}
!9 = !{!"../net/openvswitch/meter.c", i32 22, i32 32}
!10 = !{ptr @dp_meter_genl_ops, !11, !"dp_meter_genl_ops", i1 false, i1 false}
!11 = !{!"../net/openvswitch/meter.c", i32 682, i32 36}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../net/openvswitch/datapath.h", i32 245, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dp_meter_create.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../net/openvswitch/meter.c", i32 354, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @band_policy, !26, !"band_policy", i1 false, i1 false}
!26 = !{!"../net/openvswitch/meter.c", i32 33, i32 32}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/openvswitch/meter.c", i32 179, i32 7}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/openvswitch/meter.c", i32 195, i32 8}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/openvswitch/meter.c", i32 99, i32 33}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/openvswitch/meter.c", i32 109, i32 7}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/openvswitch/meter.c", i32 138, i32 33}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/openvswitch/meter.c", i32 145, i32 6}
!39 = !{ptr @ovs_meter_multicast_group, !40, !"ovs_meter_multicast_group", i1 false, i1 false}
!40 = !{!"../net/openvswitch/meter.c", i32 709, i32 42}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 1186109, i64 1186136}
!52 = !{i64 1186804, i64 1186831, i64 1186864, i64 1186885, i64 1186912, i64 1186938}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i64 2158050976}
!55 = !{i64 2148671940, i64 2148672220, i64 2148672554, i64 2148672888}
!56 = !{i64 2158015272}
!57 = !{i64 2149359245}
!58 = !{i64 2149359511}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 2158007529}
